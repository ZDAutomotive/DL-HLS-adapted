; ModuleID = 'D:/maclogger_2022/maclogger/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_mac_logger_ir(i32* noalias nonnull %fifo, i32* noalias nocapture nonnull %log_ddr, i32* noalias nocapture nonnull %tap_ddr, i32* noalias nocapture nonnull readonly %status, i16* noalias nocapture nonnull readonly %writeStatus, i64 %timestamp, i32* noalias nocapture nonnull readonly %logger_vlan_enable_mask, i32* noalias nocapture nonnull %vlan100_received, i32* noalias nocapture nonnull %vlan101_received, i32* noalias nocapture nonnull %vlan102_received, i32* noalias nocapture nonnull %vlan103_received, i32* noalias nocapture nonnull %vlan104_received, i32* noalias nocapture nonnull %vlan105_received, i32* noalias nocapture nonnull %vlan106_received, i32* noalias nocapture nonnull %vlan107_received, i32* noalias nocapture nonnull %vlan108_received, i32* noalias nocapture nonnull %vlan109_received, i32* noalias nocapture nonnull %droped, i32* noalias nocapture nonnull readonly %multicast_recv_enable, i32* noalias nocapture nonnull readonly %unicast_filter_enable, i32* noalias nocapture nonnull readonly %unicast_vlan100_macaddr_lsb, i32* noalias nocapture nonnull readonly %unicast_vlan100_macaddr_msb, i32* noalias nocapture nonnull readonly %unicast_vlan101_macaddr_lsb, i32* noalias nocapture nonnull readonly %unicast_vlan101_macaddr_msb, i32* noalias nocapture nonnull readonly %unicast_vlan102_macaddr_lsb, i32* noalias nocapture nonnull readonly %unicast_vlan102_macaddr_msb, i32* noalias nocapture nonnull readonly %unicast_vlan103_macaddr_lsb, i32* noalias nocapture nonnull readonly %unicast_vlan103_macaddr_msb, i32* noalias nocapture nonnull readonly %unicast_vlan104_macaddr_lsb, i32* noalias nocapture nonnull readonly %unicast_vlan104_macaddr_msb, i32* noalias nocapture nonnull readonly %unicast_vlan105_macaddr_lsb, i32* noalias nocapture nonnull readonly %unicast_vlan105_macaddr_msb, i32* noalias nocapture nonnull readonly %unicast_vlan106_macaddr_lsb, i32* noalias nocapture nonnull readonly %unicast_vlan106_macaddr_msb, i32* noalias nocapture nonnull readonly %unicast_vlan107_macaddr_lsb, i32* noalias nocapture nonnull readonly %unicast_vlan107_macaddr_msb, i32* noalias nocapture nonnull readonly %unicast_vlan108_macaddr_lsb, i32* noalias nocapture nonnull readonly %unicast_vlan108_macaddr_msb, i32* noalias nocapture nonnull readonly %unicast_vlan109_macaddr_lsb, i32* noalias nocapture nonnull readonly %unicast_vlan109_macaddr_msb, i32* noalias nocapture nonnull readonly %log_all_mask, i32* noalias nonnull %fifo_axi_full) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 20480)
  %fifo_copy = bitcast i8* %malloccall to [5120 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 409600)
  %log_ddr_copy = bitcast i8* %malloccall1 to [102400 x i32]*
  %malloccall2 = tail call i8* @malloc(i64 409600)
  %tap_ddr_copy = bitcast i8* %malloccall2 to [102400 x i32]*
  %status_copy = alloca i32, align 512
  %writeStatus_copy = alloca i16, align 512
  %logger_vlan_enable_mask_copy = alloca i32, align 512
  %vlan100_received_copy = alloca i32, align 512
  %vlan101_received_copy = alloca i32, align 512
  %vlan102_received_copy = alloca i32, align 512
  %vlan103_received_copy = alloca i32, align 512
  %vlan104_received_copy = alloca i32, align 512
  %vlan105_received_copy = alloca i32, align 512
  %vlan106_received_copy = alloca i32, align 512
  %vlan107_received_copy = alloca i32, align 512
  %vlan108_received_copy = alloca i32, align 512
  %vlan109_received_copy = alloca i32, align 512
  %droped_copy = alloca i32, align 512
  %multicast_recv_enable_copy = alloca i32, align 512
  %unicast_filter_enable_copy = alloca i32, align 512
  %unicast_vlan100_macaddr_lsb_copy = alloca i32, align 512
  %unicast_vlan100_macaddr_msb_copy = alloca i32, align 512
  %unicast_vlan101_macaddr_lsb_copy = alloca i32, align 512
  %unicast_vlan101_macaddr_msb_copy = alloca i32, align 512
  %unicast_vlan102_macaddr_lsb_copy = alloca i32, align 512
  %unicast_vlan102_macaddr_msb_copy = alloca i32, align 512
  %unicast_vlan103_macaddr_lsb_copy = alloca i32, align 512
  %unicast_vlan103_macaddr_msb_copy = alloca i32, align 512
  %unicast_vlan104_macaddr_lsb_copy = alloca i32, align 512
  %unicast_vlan104_macaddr_msb_copy = alloca i32, align 512
  %unicast_vlan105_macaddr_lsb_copy = alloca i32, align 512
  %unicast_vlan105_macaddr_msb_copy = alloca i32, align 512
  %unicast_vlan106_macaddr_lsb_copy = alloca i32, align 512
  %unicast_vlan106_macaddr_msb_copy = alloca i32, align 512
  %unicast_vlan107_macaddr_lsb_copy = alloca i32, align 512
  %unicast_vlan107_macaddr_msb_copy = alloca i32, align 512
  %unicast_vlan108_macaddr_lsb_copy = alloca i32, align 512
  %unicast_vlan108_macaddr_msb_copy = alloca i32, align 512
  %unicast_vlan109_macaddr_lsb_copy = alloca i32, align 512
  %unicast_vlan109_macaddr_msb_copy = alloca i32, align 512
  %log_all_mask_copy = alloca i32, align 512
  %malloccall3 = tail call i8* @malloc(i64 4112)
  %fifo_axi_full_copy = bitcast i8* %malloccall3 to [1028 x i32]*
  %0 = bitcast i32* %fifo to [5120 x i32]*
  %1 = bitcast i32* %log_ddr to [102400 x i32]*
  %2 = bitcast i32* %tap_ddr to [102400 x i32]*
  %3 = bitcast i32* %fifo_axi_full to [1028 x i32]*
  call fastcc void @copy_in([5120 x i32]* nonnull %0, [5120 x i32]* %fifo_copy, [102400 x i32]* nonnull %1, [102400 x i32]* %log_ddr_copy, [102400 x i32]* nonnull %2, [102400 x i32]* %tap_ddr_copy, i32* nonnull %status, i32* nonnull align 512 %status_copy, i16* nonnull %writeStatus, i16* nonnull align 512 %writeStatus_copy, i32* nonnull %logger_vlan_enable_mask, i32* nonnull align 512 %logger_vlan_enable_mask_copy, i32* nonnull %vlan100_received, i32* nonnull align 512 %vlan100_received_copy, i32* nonnull %vlan101_received, i32* nonnull align 512 %vlan101_received_copy, i32* nonnull %vlan102_received, i32* nonnull align 512 %vlan102_received_copy, i32* nonnull %vlan103_received, i32* nonnull align 512 %vlan103_received_copy, i32* nonnull %vlan104_received, i32* nonnull align 512 %vlan104_received_copy, i32* nonnull %vlan105_received, i32* nonnull align 512 %vlan105_received_copy, i32* nonnull %vlan106_received, i32* nonnull align 512 %vlan106_received_copy, i32* nonnull %vlan107_received, i32* nonnull align 512 %vlan107_received_copy, i32* nonnull %vlan108_received, i32* nonnull align 512 %vlan108_received_copy, i32* nonnull %vlan109_received, i32* nonnull align 512 %vlan109_received_copy, i32* nonnull %droped, i32* nonnull align 512 %droped_copy, i32* nonnull %multicast_recv_enable, i32* nonnull align 512 %multicast_recv_enable_copy, i32* nonnull %unicast_filter_enable, i32* nonnull align 512 %unicast_filter_enable_copy, i32* nonnull %unicast_vlan100_macaddr_lsb, i32* nonnull align 512 %unicast_vlan100_macaddr_lsb_copy, i32* nonnull %unicast_vlan100_macaddr_msb, i32* nonnull align 512 %unicast_vlan100_macaddr_msb_copy, i32* nonnull %unicast_vlan101_macaddr_lsb, i32* nonnull align 512 %unicast_vlan101_macaddr_lsb_copy, i32* nonnull %unicast_vlan101_macaddr_msb, i32* nonnull align 512 %unicast_vlan101_macaddr_msb_copy, i32* nonnull %unicast_vlan102_macaddr_lsb, i32* nonnull align 512 %unicast_vlan102_macaddr_lsb_copy, i32* nonnull %unicast_vlan102_macaddr_msb, i32* nonnull align 512 %unicast_vlan102_macaddr_msb_copy, i32* nonnull %unicast_vlan103_macaddr_lsb, i32* nonnull align 512 %unicast_vlan103_macaddr_lsb_copy, i32* nonnull %unicast_vlan103_macaddr_msb, i32* nonnull align 512 %unicast_vlan103_macaddr_msb_copy, i32* nonnull %unicast_vlan104_macaddr_lsb, i32* nonnull align 512 %unicast_vlan104_macaddr_lsb_copy, i32* nonnull %unicast_vlan104_macaddr_msb, i32* nonnull align 512 %unicast_vlan104_macaddr_msb_copy, i32* nonnull %unicast_vlan105_macaddr_lsb, i32* nonnull align 512 %unicast_vlan105_macaddr_lsb_copy, i32* nonnull %unicast_vlan105_macaddr_msb, i32* nonnull align 512 %unicast_vlan105_macaddr_msb_copy, i32* nonnull %unicast_vlan106_macaddr_lsb, i32* nonnull align 512 %unicast_vlan106_macaddr_lsb_copy, i32* nonnull %unicast_vlan106_macaddr_msb, i32* nonnull align 512 %unicast_vlan106_macaddr_msb_copy, i32* nonnull %unicast_vlan107_macaddr_lsb, i32* nonnull align 512 %unicast_vlan107_macaddr_lsb_copy, i32* nonnull %unicast_vlan107_macaddr_msb, i32* nonnull align 512 %unicast_vlan107_macaddr_msb_copy, i32* nonnull %unicast_vlan108_macaddr_lsb, i32* nonnull align 512 %unicast_vlan108_macaddr_lsb_copy, i32* nonnull %unicast_vlan108_macaddr_msb, i32* nonnull align 512 %unicast_vlan108_macaddr_msb_copy, i32* nonnull %unicast_vlan109_macaddr_lsb, i32* nonnull align 512 %unicast_vlan109_macaddr_lsb_copy, i32* nonnull %unicast_vlan109_macaddr_msb, i32* nonnull align 512 %unicast_vlan109_macaddr_msb_copy, i32* nonnull %log_all_mask, i32* nonnull align 512 %log_all_mask_copy, [1028 x i32]* nonnull %3, [1028 x i32]* %fifo_axi_full_copy)
  %4 = getelementptr inbounds [5120 x i32], [5120 x i32]* %fifo_copy, i32 0, i32 0
  %5 = getelementptr inbounds [102400 x i32], [102400 x i32]* %log_ddr_copy, i32 0, i32 0
  %6 = getelementptr inbounds [102400 x i32], [102400 x i32]* %tap_ddr_copy, i32 0, i32 0
  %7 = getelementptr inbounds [1028 x i32], [1028 x i32]* %fifo_axi_full_copy, i32 0, i32 0
  call void @apatb_mac_logger_hw(i32* %4, i32* %5, i32* %6, i32* %status_copy, i16* %writeStatus_copy, i64 %timestamp, i32* %logger_vlan_enable_mask_copy, i32* %vlan100_received_copy, i32* %vlan101_received_copy, i32* %vlan102_received_copy, i32* %vlan103_received_copy, i32* %vlan104_received_copy, i32* %vlan105_received_copy, i32* %vlan106_received_copy, i32* %vlan107_received_copy, i32* %vlan108_received_copy, i32* %vlan109_received_copy, i32* %droped_copy, i32* %multicast_recv_enable_copy, i32* %unicast_filter_enable_copy, i32* %unicast_vlan100_macaddr_lsb_copy, i32* %unicast_vlan100_macaddr_msb_copy, i32* %unicast_vlan101_macaddr_lsb_copy, i32* %unicast_vlan101_macaddr_msb_copy, i32* %unicast_vlan102_macaddr_lsb_copy, i32* %unicast_vlan102_macaddr_msb_copy, i32* %unicast_vlan103_macaddr_lsb_copy, i32* %unicast_vlan103_macaddr_msb_copy, i32* %unicast_vlan104_macaddr_lsb_copy, i32* %unicast_vlan104_macaddr_msb_copy, i32* %unicast_vlan105_macaddr_lsb_copy, i32* %unicast_vlan105_macaddr_msb_copy, i32* %unicast_vlan106_macaddr_lsb_copy, i32* %unicast_vlan106_macaddr_msb_copy, i32* %unicast_vlan107_macaddr_lsb_copy, i32* %unicast_vlan107_macaddr_msb_copy, i32* %unicast_vlan108_macaddr_lsb_copy, i32* %unicast_vlan108_macaddr_msb_copy, i32* %unicast_vlan109_macaddr_lsb_copy, i32* %unicast_vlan109_macaddr_msb_copy, i32* %log_all_mask_copy, i32* %7)
  call void @copy_back([5120 x i32]* %0, [5120 x i32]* %fifo_copy, [102400 x i32]* %1, [102400 x i32]* %log_ddr_copy, [102400 x i32]* %2, [102400 x i32]* %tap_ddr_copy, i32* %status, i32* %status_copy, i16* %writeStatus, i16* %writeStatus_copy, i32* %logger_vlan_enable_mask, i32* %logger_vlan_enable_mask_copy, i32* %vlan100_received, i32* %vlan100_received_copy, i32* %vlan101_received, i32* %vlan101_received_copy, i32* %vlan102_received, i32* %vlan102_received_copy, i32* %vlan103_received, i32* %vlan103_received_copy, i32* %vlan104_received, i32* %vlan104_received_copy, i32* %vlan105_received, i32* %vlan105_received_copy, i32* %vlan106_received, i32* %vlan106_received_copy, i32* %vlan107_received, i32* %vlan107_received_copy, i32* %vlan108_received, i32* %vlan108_received_copy, i32* %vlan109_received, i32* %vlan109_received_copy, i32* %droped, i32* %droped_copy, i32* %multicast_recv_enable, i32* %multicast_recv_enable_copy, i32* %unicast_filter_enable, i32* %unicast_filter_enable_copy, i32* %unicast_vlan100_macaddr_lsb, i32* %unicast_vlan100_macaddr_lsb_copy, i32* %unicast_vlan100_macaddr_msb, i32* %unicast_vlan100_macaddr_msb_copy, i32* %unicast_vlan101_macaddr_lsb, i32* %unicast_vlan101_macaddr_lsb_copy, i32* %unicast_vlan101_macaddr_msb, i32* %unicast_vlan101_macaddr_msb_copy, i32* %unicast_vlan102_macaddr_lsb, i32* %unicast_vlan102_macaddr_lsb_copy, i32* %unicast_vlan102_macaddr_msb, i32* %unicast_vlan102_macaddr_msb_copy, i32* %unicast_vlan103_macaddr_lsb, i32* %unicast_vlan103_macaddr_lsb_copy, i32* %unicast_vlan103_macaddr_msb, i32* %unicast_vlan103_macaddr_msb_copy, i32* %unicast_vlan104_macaddr_lsb, i32* %unicast_vlan104_macaddr_lsb_copy, i32* %unicast_vlan104_macaddr_msb, i32* %unicast_vlan104_macaddr_msb_copy, i32* %unicast_vlan105_macaddr_lsb, i32* %unicast_vlan105_macaddr_lsb_copy, i32* %unicast_vlan105_macaddr_msb, i32* %unicast_vlan105_macaddr_msb_copy, i32* %unicast_vlan106_macaddr_lsb, i32* %unicast_vlan106_macaddr_lsb_copy, i32* %unicast_vlan106_macaddr_msb, i32* %unicast_vlan106_macaddr_msb_copy, i32* %unicast_vlan107_macaddr_lsb, i32* %unicast_vlan107_macaddr_lsb_copy, i32* %unicast_vlan107_macaddr_msb, i32* %unicast_vlan107_macaddr_msb_copy, i32* %unicast_vlan108_macaddr_lsb, i32* %unicast_vlan108_macaddr_lsb_copy, i32* %unicast_vlan108_macaddr_msb, i32* %unicast_vlan108_macaddr_msb_copy, i32* %unicast_vlan109_macaddr_lsb, i32* %unicast_vlan109_macaddr_lsb_copy, i32* %unicast_vlan109_macaddr_msb, i32* %unicast_vlan109_macaddr_msb_copy, i32* %log_all_mask, i32* %log_all_mask_copy, [1028 x i32]* %3, [1028 x i32]* %fifo_axi_full_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([5120 x i32]* noalias readonly, [5120 x i32]* noalias, [102400 x i32]* noalias readonly, [102400 x i32]* noalias, [102400 x i32]* noalias readonly, [102400 x i32]* noalias, i32* noalias readonly, i32* noalias align 512, i16* noalias readonly, i16* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, [1028 x i32]* noalias readonly, [1028 x i32]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a5120i32([5120 x i32]* %1, [5120 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a102400i32([102400 x i32]* %3, [102400 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a102400i32([102400 x i32]* %5, [102400 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %7, i32* %6)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %9, i16* %8)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %11, i32* %10)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %13, i32* %12)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %15, i32* %14)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %17, i32* %16)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %19, i32* %18)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %21, i32* %20)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %23, i32* %22)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %25, i32* %24)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %27, i32* %26)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %29, i32* %28)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %31, i32* %30)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %33, i32* %32)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %35, i32* %34)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %37, i32* %36)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %39, i32* %38)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %41, i32* %40)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %43, i32* %42)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %45, i32* %44)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %47, i32* %46)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %49, i32* %48)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %51, i32* %50)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %53, i32* %52)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %55, i32* %54)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %57, i32* %56)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %59, i32* %58)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %61, i32* %60)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %63, i32* %62)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %65, i32* %64)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %67, i32* %66)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %69, i32* %68)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %71, i32* %70)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %73, i32* %72)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %75, i32* %74)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %77, i32* %76)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %79, i32* %78)
  call fastcc void @onebyonecpy_hls.p0a1028i32([1028 x i32]* %81, [1028 x i32]* %80)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a5120i32([5120 x i32]* noalias, [5120 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [5120 x i32]* %0, null
  %3 = icmp eq [5120 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [5120 x i32], [5120 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [5120 x i32], [5120 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 5120
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a102400i32([102400 x i32]* noalias, [102400 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [102400 x i32]* %0, null
  %3 = icmp eq [102400 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [102400 x i32], [102400 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [102400 x i32], [102400 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 102400
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i16(i16* noalias align 512, i16* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i16* %0, null
  %3 = icmp eq i16* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i16, i16* %1, align 2
  store i16 %5, i16* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1028i32([1028 x i32]* noalias, [1028 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1028 x i32]* %0, null
  %3 = icmp eq [1028 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1028 x i32], [1028 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1028 x i32], [1028 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1028
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([5120 x i32]* noalias, [5120 x i32]* noalias readonly, [102400 x i32]* noalias, [102400 x i32]* noalias readonly, [102400 x i32]* noalias, [102400 x i32]* noalias readonly, i32* noalias, i32* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, [1028 x i32]* noalias, [1028 x i32]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a5120i32([5120 x i32]* %0, [5120 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a102400i32([102400 x i32]* %2, [102400 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a102400i32([102400 x i32]* %4, [102400 x i32]* %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %8, i16* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %10, i32* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %12, i32* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %14, i32* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %16, i32* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %18, i32* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %20, i32* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %22, i32* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %24, i32* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %26, i32* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %28, i32* align 512 %29)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %30, i32* align 512 %31)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %32, i32* align 512 %33)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %34, i32* align 512 %35)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %36, i32* align 512 %37)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %38, i32* align 512 %39)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %40, i32* align 512 %41)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %42, i32* align 512 %43)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %44, i32* align 512 %45)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %46, i32* align 512 %47)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %48, i32* align 512 %49)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %50, i32* align 512 %51)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %52, i32* align 512 %53)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %54, i32* align 512 %55)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %56, i32* align 512 %57)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %58, i32* align 512 %59)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %60, i32* align 512 %61)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %62, i32* align 512 %63)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %64, i32* align 512 %65)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %66, i32* align 512 %67)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %68, i32* align 512 %69)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %70, i32* align 512 %71)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %72, i32* align 512 %73)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %74, i32* align 512 %75)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %76, i32* align 512 %77)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %78, i32* align 512 %79)
  call fastcc void @onebyonecpy_hls.p0a1028i32([1028 x i32]* %80, [1028 x i32]* %81)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_mac_logger_hw(i32*, i32*, i32*, i32*, i16*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([5120 x i32]* noalias, [5120 x i32]* noalias readonly, [102400 x i32]* noalias, [102400 x i32]* noalias readonly, [102400 x i32]* noalias, [102400 x i32]* noalias readonly, i32* noalias, i32* noalias readonly align 512, i16* noalias, i16* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, [1028 x i32]* noalias, [1028 x i32]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a5120i32([5120 x i32]* %0, [5120 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a102400i32([102400 x i32]* %2, [102400 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a102400i32([102400 x i32]* %4, [102400 x i32]* %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %12, i32* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %14, i32* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %16, i32* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %18, i32* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %20, i32* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %22, i32* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %24, i32* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %26, i32* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %28, i32* align 512 %29)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %30, i32* align 512 %31)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %32, i32* align 512 %33)
  call fastcc void @onebyonecpy_hls.p0a1028i32([1028 x i32]* %80, [1028 x i32]* %81)
  ret void
}

define void @mac_logger_hw_stub_wrapper(i32*, i32*, i32*, i32*, i16*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #4 {
entry:
  %42 = bitcast i32* %0 to [5120 x i32]*
  %43 = bitcast i32* %1 to [102400 x i32]*
  %44 = bitcast i32* %2 to [102400 x i32]*
  %45 = bitcast i32* %41 to [1028 x i32]*
  call void @copy_out([5120 x i32]* null, [5120 x i32]* %42, [102400 x i32]* null, [102400 x i32]* %43, [102400 x i32]* null, [102400 x i32]* %44, i32* null, i32* %3, i16* null, i16* %4, i32* null, i32* %6, i32* null, i32* %7, i32* null, i32* %8, i32* null, i32* %9, i32* null, i32* %10, i32* null, i32* %11, i32* null, i32* %12, i32* null, i32* %13, i32* null, i32* %14, i32* null, i32* %15, i32* null, i32* %16, i32* null, i32* %17, i32* null, i32* %18, i32* null, i32* %19, i32* null, i32* %20, i32* null, i32* %21, i32* null, i32* %22, i32* null, i32* %23, i32* null, i32* %24, i32* null, i32* %25, i32* null, i32* %26, i32* null, i32* %27, i32* null, i32* %28, i32* null, i32* %29, i32* null, i32* %30, i32* null, i32* %31, i32* null, i32* %32, i32* null, i32* %33, i32* null, i32* %34, i32* null, i32* %35, i32* null, i32* %36, i32* null, i32* %37, i32* null, i32* %38, i32* null, i32* %39, i32* null, i32* %40, [1028 x i32]* null, [1028 x i32]* %45)
  %46 = bitcast [5120 x i32]* %42 to i32*
  %47 = bitcast [102400 x i32]* %43 to i32*
  %48 = bitcast [102400 x i32]* %44 to i32*
  %49 = bitcast [1028 x i32]* %45 to i32*
  call void @mac_logger_hw_stub(i32* %46, i32* %47, i32* %48, i32* %3, i16* %4, i64 %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %49)
  call void @copy_in([5120 x i32]* null, [5120 x i32]* %42, [102400 x i32]* null, [102400 x i32]* %43, [102400 x i32]* null, [102400 x i32]* %44, i32* null, i32* %3, i16* null, i16* %4, i32* null, i32* %6, i32* null, i32* %7, i32* null, i32* %8, i32* null, i32* %9, i32* null, i32* %10, i32* null, i32* %11, i32* null, i32* %12, i32* null, i32* %13, i32* null, i32* %14, i32* null, i32* %15, i32* null, i32* %16, i32* null, i32* %17, i32* null, i32* %18, i32* null, i32* %19, i32* null, i32* %20, i32* null, i32* %21, i32* null, i32* %22, i32* null, i32* %23, i32* null, i32* %24, i32* null, i32* %25, i32* null, i32* %26, i32* null, i32* %27, i32* null, i32* %28, i32* null, i32* %29, i32* null, i32* %30, i32* null, i32* %31, i32* null, i32* %32, i32* null, i32* %33, i32* null, i32* %34, i32* null, i32* %35, i32* null, i32* %36, i32* null, i32* %37, i32* null, i32* %38, i32* null, i32* %39, i32* null, i32* %40, [1028 x i32]* null, [1028 x i32]* %45)
  ret void
}

declare void @mac_logger_hw_stub(i32*, i32*, i32*, i32*, i16*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
