; ModuleID = 'D:/clu_2022_stats/clu/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_clu_ir(i32* noalias nonnull %can_ptr, i32* noalias nonnull %uart_ptr, i32* noalias nonnull %lin_ptr, i32* noalias nonnull %can_0_received, i32* noalias nonnull %can_1_received, i32* noalias nonnull %can_2_received, i32* noalias nonnull %can_3_received, i32* noalias nonnull %can_4_received, i32* noalias nonnull %can_5_received, i32* noalias nonnull %can_6_received, i32* noalias nonnull %can_7_received, i32* noalias nonnull %can_8_received, i32* noalias nonnull %can_9_received, i32* noalias nonnull %can_10_received, i32* noalias nonnull %can_11_received, i32* noalias nocapture nonnull readonly %droped, i32* noalias nonnull %received_can, i32* noalias nonnull %received_uart, i32* noalias nonnull %received_lin, i32* noalias nocapture nonnull readonly %can_en, i8* noalias nocapture nonnull readonly %uart_en, i32* noalias nocapture nonnull readonly %lin_en, i8* noalias nonnull %can_ddr, i8* noalias nonnull %uart_ddr, i8* noalias nonnull %lin_ddr, i64 %timestamp) local_unnamed_addr #0 {
entry:
  %can_ptr_copy = alloca [1 x i32], align 512
  %uart_ptr_copy = alloca [1 x i32], align 512
  %lin_ptr_copy = alloca [1 x i32], align 512
  %can_0_received_copy = alloca i32, align 512
  %can_1_received_copy = alloca i32, align 512
  %can_2_received_copy = alloca i32, align 512
  %can_3_received_copy = alloca i32, align 512
  %can_4_received_copy = alloca i32, align 512
  %can_5_received_copy = alloca i32, align 512
  %can_6_received_copy = alloca i32, align 512
  %can_7_received_copy = alloca i32, align 512
  %can_8_received_copy = alloca i32, align 512
  %can_9_received_copy = alloca i32, align 512
  %can_10_received_copy = alloca i32, align 512
  %can_11_received_copy = alloca i32, align 512
  %droped_copy = alloca i32, align 512
  %received_can_copy = alloca i32, align 512
  %received_uart_copy = alloca i32, align 512
  %received_lin_copy = alloca i32, align 512
  %can_en_copy = alloca i32, align 512
  %uart_en_copy = alloca i8, align 512
  %lin_en_copy = alloca i32, align 512
  %can_ddr_copy = alloca [10 x i8], align 512
  %uart_ddr_copy = alloca [10 x i8], align 512
  %lin_ddr_copy = alloca [10 x i8], align 512
  %0 = bitcast i32* %can_ptr to [1 x i32]*
  %1 = bitcast i32* %uart_ptr to [1 x i32]*
  %2 = bitcast i32* %lin_ptr to [1 x i32]*
  %3 = bitcast i8* %can_ddr to [10 x i8]*
  %4 = bitcast i8* %uart_ddr to [10 x i8]*
  %5 = bitcast i8* %lin_ddr to [10 x i8]*
  call fastcc void @copy_in([1 x i32]* nonnull %0, [1 x i32]* nonnull align 512 %can_ptr_copy, [1 x i32]* nonnull %1, [1 x i32]* nonnull align 512 %uart_ptr_copy, [1 x i32]* nonnull %2, [1 x i32]* nonnull align 512 %lin_ptr_copy, i32* nonnull %can_0_received, i32* nonnull align 512 %can_0_received_copy, i32* nonnull %can_1_received, i32* nonnull align 512 %can_1_received_copy, i32* nonnull %can_2_received, i32* nonnull align 512 %can_2_received_copy, i32* nonnull %can_3_received, i32* nonnull align 512 %can_3_received_copy, i32* nonnull %can_4_received, i32* nonnull align 512 %can_4_received_copy, i32* nonnull %can_5_received, i32* nonnull align 512 %can_5_received_copy, i32* nonnull %can_6_received, i32* nonnull align 512 %can_6_received_copy, i32* nonnull %can_7_received, i32* nonnull align 512 %can_7_received_copy, i32* nonnull %can_8_received, i32* nonnull align 512 %can_8_received_copy, i32* nonnull %can_9_received, i32* nonnull align 512 %can_9_received_copy, i32* nonnull %can_10_received, i32* nonnull align 512 %can_10_received_copy, i32* nonnull %can_11_received, i32* nonnull align 512 %can_11_received_copy, i32* nonnull %droped, i32* nonnull align 512 %droped_copy, i32* nonnull %received_can, i32* nonnull align 512 %received_can_copy, i32* nonnull %received_uart, i32* nonnull align 512 %received_uart_copy, i32* nonnull %received_lin, i32* nonnull align 512 %received_lin_copy, i32* nonnull %can_en, i32* nonnull align 512 %can_en_copy, i8* nonnull %uart_en, i8* nonnull align 512 %uart_en_copy, i32* nonnull %lin_en, i32* nonnull align 512 %lin_en_copy, [10 x i8]* nonnull %3, [10 x i8]* nonnull align 512 %can_ddr_copy, [10 x i8]* nonnull %4, [10 x i8]* nonnull align 512 %uart_ddr_copy, [10 x i8]* nonnull %5, [10 x i8]* nonnull align 512 %lin_ddr_copy)
  %6 = getelementptr inbounds [1 x i32], [1 x i32]* %can_ptr_copy, i32 0, i32 0
  %7 = getelementptr inbounds [1 x i32], [1 x i32]* %uart_ptr_copy, i32 0, i32 0
  %8 = getelementptr inbounds [1 x i32], [1 x i32]* %lin_ptr_copy, i32 0, i32 0
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %can_ddr_copy, i32 0, i32 0
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %uart_ddr_copy, i32 0, i32 0
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %lin_ddr_copy, i32 0, i32 0
  call void @apatb_clu_hw(i32* %6, i32* %7, i32* %8, i32* %can_0_received_copy, i32* %can_1_received_copy, i32* %can_2_received_copy, i32* %can_3_received_copy, i32* %can_4_received_copy, i32* %can_5_received_copy, i32* %can_6_received_copy, i32* %can_7_received_copy, i32* %can_8_received_copy, i32* %can_9_received_copy, i32* %can_10_received_copy, i32* %can_11_received_copy, i32* %droped_copy, i32* %received_can_copy, i32* %received_uart_copy, i32* %received_lin_copy, i32* %can_en_copy, i8* %uart_en_copy, i32* %lin_en_copy, i8* %9, i8* %10, i8* %11, i64 %timestamp)
  call void @copy_back([1 x i32]* %0, [1 x i32]* %can_ptr_copy, [1 x i32]* %1, [1 x i32]* %uart_ptr_copy, [1 x i32]* %2, [1 x i32]* %lin_ptr_copy, i32* %can_0_received, i32* %can_0_received_copy, i32* %can_1_received, i32* %can_1_received_copy, i32* %can_2_received, i32* %can_2_received_copy, i32* %can_3_received, i32* %can_3_received_copy, i32* %can_4_received, i32* %can_4_received_copy, i32* %can_5_received, i32* %can_5_received_copy, i32* %can_6_received, i32* %can_6_received_copy, i32* %can_7_received, i32* %can_7_received_copy, i32* %can_8_received, i32* %can_8_received_copy, i32* %can_9_received, i32* %can_9_received_copy, i32* %can_10_received, i32* %can_10_received_copy, i32* %can_11_received, i32* %can_11_received_copy, i32* %droped, i32* %droped_copy, i32* %received_can, i32* %received_can_copy, i32* %received_uart, i32* %received_uart_copy, i32* %received_lin, i32* %received_lin_copy, i32* %can_en, i32* %can_en_copy, i8* %uart_en, i8* %uart_en_copy, i32* %lin_en, i32* %lin_en_copy, [10 x i8]* %3, [10 x i8]* %can_ddr_copy, [10 x i8]* %4, [10 x i8]* %uart_ddr_copy, [10 x i8]* %5, [10 x i8]* %lin_ddr_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1 x i32]* noalias readonly, [1 x i32]* noalias align 512, [1 x i32]* noalias readonly, [1 x i32]* noalias align 512, [1 x i32]* noalias readonly, [1 x i32]* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i8* noalias readonly, i8* noalias align 512, i32* noalias readonly, i32* noalias align 512, [10 x i8]* noalias readonly, [10 x i8]* noalias align 512, [10 x i8]* noalias readonly, [10 x i8]* noalias align 512, [10 x i8]* noalias readonly, [10 x i8]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* align 512 %1, [1 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* align 512 %3, [1 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* align 512 %5, [1 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %7, i32* %6)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %9, i32* %8)
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
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %41, i8* %40)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %43, i32* %42)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* align 512 %45, [10 x i8]* %44)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* align 512 %47, [10 x i8]* %46)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* align 512 %49, [10 x i8]* %48)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* noalias align 512, [1 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x i32]* %0, null
  %3 = icmp eq [1 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %ret.loopexit

ret.loopexit:                                     ; preds = %entry
  %dst.addr = getelementptr [1 x i32], [1 x i32]* %0, i64 0, i64 0
  %src.addr = getelementptr [1 x i32], [1 x i32]* %1, i64 0, i64 0
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 512
  br label %ret

ret:                                              ; preds = %ret.loopexit, %entry
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
define internal fastcc void @onebyonecpy_hls.p0i8(i8* noalias align 512, i8* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i8* %0, null
  %3 = icmp eq i8* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i8, i8* %1, align 1
  store i8 %5, i8* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* noalias align 512, [10 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [10 x i8]* %0, null
  %3 = icmp eq [10 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [10 x i8], [10 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [10 x i8], [10 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1 x i32]* noalias, [1 x i32]* noalias readonly align 512, [1 x i32]* noalias, [1 x i32]* noalias readonly align 512, [1 x i32]* noalias, [1 x i32]* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, [10 x i8]* noalias, [10 x i8]* noalias readonly align 512, [10 x i8]* noalias, [10 x i8]* noalias readonly align 512, [10 x i8]* noalias, [10 x i8]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %0, [1 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %2, [1 x i32]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %4, [1 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %8, i32* align 512 %9)
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
  call fastcc void @onebyonecpy_hls.p0i8(i8* %40, i8* align 512 %41)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %42, i32* align 512 %43)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* %44, [10 x i8]* align 512 %45)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* %46, [10 x i8]* align 512 %47)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* %48, [10 x i8]* align 512 %49)
  ret void
}

declare void @apatb_clu_hw(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i8*, i8*, i8*, i64)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1 x i32]* noalias, [1 x i32]* noalias readonly align 512, [1 x i32]* noalias, [1 x i32]* noalias readonly align 512, [1 x i32]* noalias, [1 x i32]* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, [10 x i8]* noalias, [10 x i8]* noalias readonly align 512, [10 x i8]* noalias, [10 x i8]* noalias readonly align 512, [10 x i8]* noalias, [10 x i8]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %0, [1 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %2, [1 x i32]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %4, [1 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %8, i32* align 512 %9)
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
  call fastcc void @onebyonecpy_hls.p0i32(i32* %32, i32* align 512 %33)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %34, i32* align 512 %35)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %36, i32* align 512 %37)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* %44, [10 x i8]* align 512 %45)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* %46, [10 x i8]* align 512 %47)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* %48, [10 x i8]* align 512 %49)
  ret void
}

define void @clu_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i8*, i8*, i8*, i64) #4 {
entry:
  %26 = bitcast i32* %0 to [1 x i32]*
  %27 = bitcast i32* %1 to [1 x i32]*
  %28 = bitcast i32* %2 to [1 x i32]*
  %29 = bitcast i8* %22 to [10 x i8]*
  %30 = bitcast i8* %23 to [10 x i8]*
  %31 = bitcast i8* %24 to [10 x i8]*
  call void @copy_out([1 x i32]* null, [1 x i32]* %26, [1 x i32]* null, [1 x i32]* %27, [1 x i32]* null, [1 x i32]* %28, i32* null, i32* %3, i32* null, i32* %4, i32* null, i32* %5, i32* null, i32* %6, i32* null, i32* %7, i32* null, i32* %8, i32* null, i32* %9, i32* null, i32* %10, i32* null, i32* %11, i32* null, i32* %12, i32* null, i32* %13, i32* null, i32* %14, i32* null, i32* %15, i32* null, i32* %16, i32* null, i32* %17, i32* null, i32* %18, i32* null, i32* %19, i8* null, i8* %20, i32* null, i32* %21, [10 x i8]* null, [10 x i8]* %29, [10 x i8]* null, [10 x i8]* %30, [10 x i8]* null, [10 x i8]* %31)
  %32 = bitcast [1 x i32]* %26 to i32*
  %33 = bitcast [1 x i32]* %27 to i32*
  %34 = bitcast [1 x i32]* %28 to i32*
  %35 = bitcast [10 x i8]* %29 to i8*
  %36 = bitcast [10 x i8]* %30 to i8*
  %37 = bitcast [10 x i8]* %31 to i8*
  call void @clu_hw_stub(i32* %32, i32* %33, i32* %34, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i8* %20, i32* %21, i8* %35, i8* %36, i8* %37, i64 %25)
  call void @copy_in([1 x i32]* null, [1 x i32]* %26, [1 x i32]* null, [1 x i32]* %27, [1 x i32]* null, [1 x i32]* %28, i32* null, i32* %3, i32* null, i32* %4, i32* null, i32* %5, i32* null, i32* %6, i32* null, i32* %7, i32* null, i32* %8, i32* null, i32* %9, i32* null, i32* %10, i32* null, i32* %11, i32* null, i32* %12, i32* null, i32* %13, i32* null, i32* %14, i32* null, i32* %15, i32* null, i32* %16, i32* null, i32* %17, i32* null, i32* %18, i32* null, i32* %19, i8* null, i8* %20, i32* null, i32* %21, [10 x i8]* null, [10 x i8]* %29, [10 x i8]* null, [10 x i8]* %30, [10 x i8]* null, [10 x i8]* %31)
  ret void
}

declare void @clu_hw_stub(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i8*, i8*, i8*, i64)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
