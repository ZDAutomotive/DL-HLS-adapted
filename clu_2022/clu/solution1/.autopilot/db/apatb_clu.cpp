#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_signal_handler.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_can_ptr "../tv/cdatafile/c.clu.autotvin_can_ptr.dat"
#define AUTOTB_TVOUT_can_ptr "../tv/cdatafile/c.clu.autotvout_can_ptr.dat"
#define AUTOTB_TVIN_uart_ptr "../tv/cdatafile/c.clu.autotvin_uart_ptr.dat"
#define AUTOTB_TVOUT_uart_ptr "../tv/cdatafile/c.clu.autotvout_uart_ptr.dat"
#define AUTOTB_TVIN_lin_ptr "../tv/cdatafile/c.clu.autotvin_lin_ptr.dat"
#define AUTOTB_TVOUT_lin_ptr "../tv/cdatafile/c.clu.autotvout_lin_ptr.dat"
#define AUTOTB_TVIN_received_can "../tv/cdatafile/c.clu.autotvin_received_can.dat"
#define AUTOTB_TVOUT_received_can "../tv/cdatafile/c.clu.autotvout_received_can.dat"
#define AUTOTB_TVIN_received_uart "../tv/cdatafile/c.clu.autotvin_received_uart.dat"
#define AUTOTB_TVOUT_received_uart "../tv/cdatafile/c.clu.autotvout_received_uart.dat"
#define AUTOTB_TVIN_received_lin "../tv/cdatafile/c.clu.autotvin_received_lin.dat"
#define AUTOTB_TVOUT_received_lin "../tv/cdatafile/c.clu.autotvout_received_lin.dat"
#define AUTOTB_TVIN_can_en "../tv/cdatafile/c.clu.autotvin_can_en.dat"
#define AUTOTB_TVOUT_can_en "../tv/cdatafile/c.clu.autotvout_can_en.dat"
#define AUTOTB_TVIN_uart_en "../tv/cdatafile/c.clu.autotvin_uart_en.dat"
#define AUTOTB_TVOUT_uart_en "../tv/cdatafile/c.clu.autotvout_uart_en.dat"
#define AUTOTB_TVIN_lin_en "../tv/cdatafile/c.clu.autotvin_lin_en.dat"
#define AUTOTB_TVOUT_lin_en "../tv/cdatafile/c.clu.autotvout_lin_en.dat"
#define AUTOTB_TVIN_can_ddr "../tv/cdatafile/c.clu.autotvin_can_ddr.dat"
#define AUTOTB_TVOUT_can_ddr "../tv/cdatafile/c.clu.autotvout_can_ddr.dat"
#define AUTOTB_TVIN_uart_ddr "../tv/cdatafile/c.clu.autotvin_uart_ddr.dat"
#define AUTOTB_TVOUT_uart_ddr "../tv/cdatafile/c.clu.autotvout_uart_ddr.dat"
#define AUTOTB_TVIN_lin_ddr "../tv/cdatafile/c.clu.autotvin_lin_ddr.dat"
#define AUTOTB_TVOUT_lin_ddr "../tv/cdatafile/c.clu.autotvout_lin_ddr.dat"
#define AUTOTB_TVIN_timestamp "../tv/cdatafile/c.clu.autotvin_timestamp.dat"
#define AUTOTB_TVOUT_timestamp "../tv/cdatafile/c.clu.autotvout_timestamp.dat"
#define AUTOTB_TVIN_clu_addr "../tv/cdatafile/c.clu.autotvin_clu_addr.dat"
#define AUTOTB_TVOUT_clu_addr "../tv/cdatafile/c.clu.autotvout_clu_addr.dat"
#define AUTOTB_TVIN_ps_ddr "../tv/cdatafile/c.clu.autotvin_ps_ddr.dat"
#define AUTOTB_TVOUT_ps_ddr "../tv/cdatafile/c.clu.autotvout_ps_ddr.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_received_can "../tv/rtldatafile/rtl.clu.autotvout_received_can.dat"
#define AUTOTB_TVOUT_PC_received_uart "../tv/rtldatafile/rtl.clu.autotvout_received_uart.dat"
#define AUTOTB_TVOUT_PC_received_lin "../tv/rtldatafile/rtl.clu.autotvout_received_lin.dat"
#define AUTOTB_TVOUT_PC_clu_addr "../tv/rtldatafile/rtl.clu.autotvout_clu_addr.dat"
#define AUTOTB_TVOUT_PC_ps_ddr "../tv/rtldatafile/rtl.clu.autotvout_ps_ddr.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}

namespace hls::sim
{
  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put)
  {
    size_t wbytes = (strlen(data)-2+1)>>1;
    put = LE ? put : put+wbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + strlen(data) - 1;
    auto next = [&] () {
      char res = ord(*c);
      --c;
      return res;
    };
    size_t fbytes = (strlen(data)-2)>>1;
    for (size_t i = 0; i < fbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
    if (wbytes > fbytes) {
      *nextp() = next();
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t psize, size_t depth)
    {
      for (size_t i = 0; i < depth; ++i) {
        read(param, wbytes);
        param += psize;
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t psize, size_t depth, size_t skip)
    {
      param -= psize*skip;
      for (size_t i = 0; i < depth; ++i) {
        write(param, wbytes);
        param += psize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> depth;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = depth[0];
      } else {
        tcl.set(name[0], sum(depth));
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct FIFO {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t depth;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~FIFO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = port.offset[i];
        size_t depth = port.depth[i] - skip;
        port.reader->advance(wbytes*skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                          port.asize, depth);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                            port.asize, port.depth[i]);
        } else {
          port.reader->advance(wbytes*port.depth[i]);
        }
      }
    }
  }
#endif
  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        for (size_t j = 0; j < port.depth[i]-port.offset[i]; ++j) {
          if (char *s = port.reader->next()) {
            foundX |= RTLOutputCheckAndReplacement(s);
            unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
          }
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          for (size_t j = 0; j < port.depth[i]; ++j) {
            if (char *s = port.reader->next()) {
              foundX |= RTLOutputCheckAndReplacement(s);
              unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
            }
          }
        } else {
          port.reader->skip(port.depth[i]);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(FIFO &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      for (size_t j = 0; j < port.depth; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, (unsigned char*)port.param+j*port.asize);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(sum(port.depth));
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.depth[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      for (size_t j = 0; j < port.depth[i]; ++j) {
        std::string &&s {
          formatData((unsigned char*)port.param[i]+j*port.asize, port.width)
        };
        writer->next(s.data());
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(FIFO &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)port.param+j*port.asize, port.width)
      };
      writer->next(s.data());
    }
    writer->end();
  }


  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void clu_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<8>);

extern "C"
void apatb_clu_hw(void* __xlx_apatb_param_can_ptr, void* __xlx_apatb_param_uart_ptr, void* __xlx_apatb_param_lin_ptr, void* __xlx_apatb_param_received_can, void* __xlx_apatb_param_received_uart, void* __xlx_apatb_param_received_lin, void* __xlx_apatb_param_can_en, void* __xlx_apatb_param_uart_en, void* __xlx_apatb_param_lin_en, void* __xlx_apatb_param_can_ddr, void* __xlx_apatb_param_uart_ddr, void* __xlx_apatb_param_lin_ddr, hls::sim::Byte<8> __xlx_apatb_param_timestamp)
{
  hls::sim::Byte<4> __xlx_offset_byte_param_can_ptr;
  static hls::sim::Register port0 {
    .name = "can_ptr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_can_ptr),
#endif
  };
  port0.param = &__xlx_offset_byte_param_can_ptr;

  hls::sim::Byte<4> __xlx_offset_byte_param_uart_ptr;
  static hls::sim::Register port1 {
    .name = "uart_ptr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_uart_ptr),
#endif
  };
  port1.param = &__xlx_offset_byte_param_uart_ptr;

  hls::sim::Byte<4> __xlx_offset_byte_param_lin_ptr;
  static hls::sim::Register port2 {
    .name = "lin_ptr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_lin_ptr),
#endif
  };
  port2.param = &__xlx_offset_byte_param_lin_ptr;

  static hls::sim::Register port3 {
    .name = "received_can",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_received_can),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_received_can),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_received_can),
#endif
  };
  port3.param = __xlx_apatb_param_received_can;

  static hls::sim::Register port4 {
    .name = "received_uart",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_received_uart),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_received_uart),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_received_uart),
#endif
  };
  port4.param = __xlx_apatb_param_received_uart;

  static hls::sim::Register port5 {
    .name = "received_lin",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_received_lin),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_received_lin),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_received_lin),
#endif
  };
  port5.param = __xlx_apatb_param_received_lin;

  static hls::sim::Register port6 {
    .name = "can_en",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_can_en),
#endif
  };
  port6.param = __xlx_apatb_param_can_en;

  static hls::sim::Register port7 {
    .name = "uart_en",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_uart_en),
#endif
  };
  port7.param = __xlx_apatb_param_uart_en;

  static hls::sim::Register port8 {
    .name = "lin_en",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_lin_en),
#endif
  };
  port8.param = __xlx_apatb_param_lin_en;

  hls::sim::Byte<4> __xlx_offset_byte_param_can_ddr;
  static hls::sim::Register port9 {
    .name = "can_ddr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_can_ddr),
#endif
  };
  port9.param = &__xlx_offset_byte_param_can_ddr;

  hls::sim::Byte<4> __xlx_offset_byte_param_uart_ddr;
  static hls::sim::Register port10 {
    .name = "uart_ddr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_uart_ddr),
#endif
  };
  port10.param = &__xlx_offset_byte_param_uart_ddr;

  hls::sim::Byte<4> __xlx_offset_byte_param_lin_ddr;
  static hls::sim::Register port11 {
    .name = "lin_ddr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_lin_ddr),
#endif
  };
  port11.param = &__xlx_offset_byte_param_lin_ddr;

  static hls::sim::Register port12 {
    .name = "timestamp",
    .width = 64,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_timestamp),
#endif
  };
  port12.param = &__xlx_apatb_param_timestamp;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port13 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port13 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "clu_addr" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_clu_addr),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_clu_addr),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_clu_addr),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_clu_addr),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_clu_addr),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_clu_addr),
#endif
#endif
  };
  __xlx_offset_byte_param_can_ptr = 0*4;
  __xlx_offset_byte_param_uart_ptr = 1*4;
  __xlx_offset_byte_param_lin_ptr = 2*4;
  port13.param = { __xlx_apatb_param_can_ptr, __xlx_apatb_param_uart_ptr, __xlx_apatb_param_lin_ptr };
  port13.depth = { 1, 1, 1 };
  port13.offset = { 0, 1, 2 };
  port13.hasWrite = { true, true, true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port14 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port14 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "ps_ddr" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_ps_ddr),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_ps_ddr),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_ps_ddr),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_ps_ddr),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_ps_ddr),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ps_ddr),
#endif
#endif
  };
  __xlx_offset_byte_param_can_ddr = 0*1;
  __xlx_offset_byte_param_uart_ddr = 10*1;
  __xlx_offset_byte_param_lin_ddr = 20*1;
  port14.param = { __xlx_apatb_param_can_ddr, __xlx_apatb_param_uart_ddr, __xlx_apatb_param_lin_ddr };
  port14.depth = { 10, 10, 10 };
  port14.offset = { 0, 10, 20 };
  port14.hasWrite = { true, true, true };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port3);
    check(port4);
    check(port5);
    check(port13);
    check(port14);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    CodeState = CALL_C_DUT;
    clu_hw_stub_wrapper(__xlx_apatb_param_can_ptr, __xlx_apatb_param_uart_ptr, __xlx_apatb_param_lin_ptr, __xlx_apatb_param_received_can, __xlx_apatb_param_received_uart, __xlx_apatb_param_received_lin, __xlx_apatb_param_can_en, __xlx_apatb_param_uart_en, __xlx_apatb_param_lin_en, __xlx_apatb_param_can_ddr, __xlx_apatb_param_uart_ddr, __xlx_apatb_param_lin_ddr, __xlx_apatb_param_timestamp);
    CodeState = DUMP_OUTPUTS;
    dump(port3, port3.owriter, tcl.AESL_transaction);
    dump(port4, port4.owriter, tcl.AESL_transaction);
    dump(port5, port5.owriter, tcl.AESL_transaction);
    dump(port13, port13.owriter, tcl.AESL_transaction);
    dump(port14, port14.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}