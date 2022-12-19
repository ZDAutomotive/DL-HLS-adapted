#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

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
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
extern "C" void mac_logger(Byte<4>*, Byte<4>*, Byte<4>*, int, int, int, volatile void *, volatile void *, long long, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, int);
extern "C" void apatb_mac_logger_hw(volatile void * __xlx_apatb_param_fifo, volatile void * __xlx_apatb_param_ddr, volatile void * __xlx_apatb_param_driver, volatile void * __xlx_apatb_param_status, volatile void * __xlx_apatb_param_writeStatus, long long __xlx_apatb_param_timestamp, volatile void * __xlx_apatb_param_logger_vlan_enable_mask, volatile void * __xlx_apatb_param_vlan100_received, volatile void * __xlx_apatb_param_vlan101_received, volatile void * __xlx_apatb_param_vlan102_received, volatile void * __xlx_apatb_param_vlan103_received, volatile void * __xlx_apatb_param_vlan104_received, volatile void * __xlx_apatb_param_vlan105_received, volatile void * __xlx_apatb_param_vlan106_received, volatile void * __xlx_apatb_param_vlan107_received, volatile void * __xlx_apatb_param_vlan108_received, volatile void * __xlx_apatb_param_vlan109_received, volatile void * __xlx_apatb_param_droped, volatile void * __xlx_apatb_param_multicast_recv_enable, volatile void * __xlx_apatb_param_unicast_filter_enable, volatile void * __xlx_apatb_param_unicast_vlan100_macaddr_lsb, volatile void * __xlx_apatb_param_unicast_vlan100_macaddr_msb, volatile void * __xlx_apatb_param_unicast_vlan101_macaddr_lsb, volatile void * __xlx_apatb_param_unicast_vlan101_macaddr_msb, volatile void * __xlx_apatb_param_unicast_vlan102_macaddr_lsb, volatile void * __xlx_apatb_param_unicast_vlan102_macaddr_msb, volatile void * __xlx_apatb_param_unicast_vlan103_macaddr_lsb, volatile void * __xlx_apatb_param_unicast_vlan103_macaddr_msb, volatile void * __xlx_apatb_param_unicast_vlan104_macaddr_lsb, volatile void * __xlx_apatb_param_unicast_vlan104_macaddr_msb, volatile void * __xlx_apatb_param_unicast_vlan105_macaddr_lsb, volatile void * __xlx_apatb_param_unicast_vlan105_macaddr_msb, volatile void * __xlx_apatb_param_unicast_vlan106_macaddr_lsb, volatile void * __xlx_apatb_param_unicast_vlan106_macaddr_msb, volatile void * __xlx_apatb_param_unicast_vlan107_macaddr_lsb, volatile void * __xlx_apatb_param_unicast_vlan107_macaddr_msb, volatile void * __xlx_apatb_param_unicast_vlan108_macaddr_lsb, volatile void * __xlx_apatb_param_unicast_vlan108_macaddr_msb, volatile void * __xlx_apatb_param_unicast_vlan109_macaddr_lsb, volatile void * __xlx_apatb_param_unicast_vlan109_macaddr_msb, volatile void * __xlx_apatb_param_log_all_mask, volatile void * __xlx_apatb_param_fifo_axi_full) {
using hls::sim::createStream;
  // Collect __xlx_fifo__tmp_vec
std::vector<Byte<4>> __xlx_fifo__tmp_vec;
for (size_t i = 0; i < 5120; ++i){
__xlx_fifo__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_fifo)[i]);
}
  int __xlx_size_param_fifo = 5120;
  int __xlx_offset_param_fifo = 0;
  int __xlx_offset_byte_param_fifo = 0*4;
  // Collect __xlx_ddr_driver__tmp_vec
std::vector<Byte<4>> __xlx_ddr_driver__tmp_vec;
for (size_t i = 0; i < 102400; ++i){
__xlx_ddr_driver__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_ddr)[i]);
}
  int __xlx_size_param_ddr = 102400;
  int __xlx_offset_param_ddr = 0;
  int __xlx_offset_byte_param_ddr = 0*4;
for (size_t i = 0; i < 102400; ++i){
__xlx_ddr_driver__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_driver)[i]);
}
  int __xlx_size_param_driver = 102400;
  int __xlx_offset_param_driver = 102400;
  int __xlx_offset_byte_param_driver = 102400*4;
  // Collect __xlx_fifo_axi_full__tmp_vec
std::vector<Byte<4>> __xlx_fifo_axi_full__tmp_vec;
for (size_t i = 0; i < 1028; ++i){
__xlx_fifo_axi_full__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_fifo_axi_full)[i]);
}
  int __xlx_size_param_fifo_axi_full = 1028;
  int __xlx_offset_param_fifo_axi_full = 0;
  int __xlx_offset_byte_param_fifo_axi_full = 0*4;
  // DUT call
  mac_logger(__xlx_fifo__tmp_vec.data(), __xlx_ddr_driver__tmp_vec.data(), __xlx_fifo_axi_full__tmp_vec.data(), __xlx_offset_byte_param_fifo, __xlx_offset_byte_param_ddr, __xlx_offset_byte_param_driver, __xlx_apatb_param_status, __xlx_apatb_param_writeStatus, __xlx_apatb_param_timestamp, __xlx_apatb_param_logger_vlan_enable_mask, __xlx_apatb_param_vlan100_received, __xlx_apatb_param_vlan101_received, __xlx_apatb_param_vlan102_received, __xlx_apatb_param_vlan103_received, __xlx_apatb_param_vlan104_received, __xlx_apatb_param_vlan105_received, __xlx_apatb_param_vlan106_received, __xlx_apatb_param_vlan107_received, __xlx_apatb_param_vlan108_received, __xlx_apatb_param_vlan109_received, __xlx_apatb_param_droped, __xlx_apatb_param_multicast_recv_enable, __xlx_apatb_param_unicast_filter_enable, __xlx_apatb_param_unicast_vlan100_macaddr_lsb, __xlx_apatb_param_unicast_vlan100_macaddr_msb, __xlx_apatb_param_unicast_vlan101_macaddr_lsb, __xlx_apatb_param_unicast_vlan101_macaddr_msb, __xlx_apatb_param_unicast_vlan102_macaddr_lsb, __xlx_apatb_param_unicast_vlan102_macaddr_msb, __xlx_apatb_param_unicast_vlan103_macaddr_lsb, __xlx_apatb_param_unicast_vlan103_macaddr_msb, __xlx_apatb_param_unicast_vlan104_macaddr_lsb, __xlx_apatb_param_unicast_vlan104_macaddr_msb, __xlx_apatb_param_unicast_vlan105_macaddr_lsb, __xlx_apatb_param_unicast_vlan105_macaddr_msb, __xlx_apatb_param_unicast_vlan106_macaddr_lsb, __xlx_apatb_param_unicast_vlan106_macaddr_msb, __xlx_apatb_param_unicast_vlan107_macaddr_lsb, __xlx_apatb_param_unicast_vlan107_macaddr_msb, __xlx_apatb_param_unicast_vlan108_macaddr_lsb, __xlx_apatb_param_unicast_vlan108_macaddr_msb, __xlx_apatb_param_unicast_vlan109_macaddr_lsb, __xlx_apatb_param_unicast_vlan109_macaddr_msb, __xlx_apatb_param_log_all_mask, __xlx_offset_byte_param_fifo_axi_full);
// print __xlx_apatb_param_fifo
for (size_t i = 0; i < __xlx_size_param_fifo; ++i) {
((Byte<4>*)__xlx_apatb_param_fifo)[i] = __xlx_fifo__tmp_vec[__xlx_offset_param_fifo+i];
}
// print __xlx_apatb_param_ddr
for (size_t i = 0; i < __xlx_size_param_ddr; ++i) {
((Byte<4>*)__xlx_apatb_param_ddr)[i] = __xlx_ddr_driver__tmp_vec[__xlx_offset_param_ddr+i];
}
// print __xlx_apatb_param_driver
for (size_t i = 0; i < __xlx_size_param_driver; ++i) {
((Byte<4>*)__xlx_apatb_param_driver)[i] = __xlx_ddr_driver__tmp_vec[__xlx_offset_param_driver+i];
}
// print __xlx_apatb_param_fifo_axi_full
for (size_t i = 0; i < __xlx_size_param_fifo_axi_full; ++i) {
((Byte<4>*)__xlx_apatb_param_fifo_axi_full)[i] = __xlx_fifo_axi_full__tmp_vec[__xlx_offset_param_fifo_axi_full+i];
}
}
