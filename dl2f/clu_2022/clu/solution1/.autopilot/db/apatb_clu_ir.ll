; ModuleID = 'D:/clu_2022/clu/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_clu_ir(i32* noalias nonnull %can_ptr, i32* noalias nonnull %uart_ptr, i32* noalias nonnull %lin_ptr, i32* noalias nonnull %received_can, i32* noalias nonnull %received_uart, i32* noalias nonnull %received_lin, i32* noalias nocapture nonnull readonly %can_en, i8* noalias nocapture nonnull readonly %uart_en, i32* noalias nocapture nonnull readonly %lin_en, i8* noalias nonnull %can_ddr, i8* noalias nonnull %uart_ddr, i8* noalias nonnull %lin_ddr, i64 %timestamp) local_unnamed_addr #0 {
entry:
  %can_ptr_copy = alloca [1 x i32], align 512
  %uart_ptr_copy = alloca [1 x i32], align 512
  %lin_ptr_copy = alloca [1 x i32], align 512
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
  call fastcc void @copy_in([1 x i32]* nonnull %0, [1 x i32]* nonnull align 512 %can_ptr_copy, [1 x i32]* nonnull %1, [1 x i32]* nonnull align 512 %uart_ptr_copy, [1 x i32]* nonnull %2, [1 x i32]* nonnull align 512 %lin_ptr_copy, i32* nonnull %received_can, i32* nonnull align 512 %received_can_copy, i32* nonnull %received_uart, i32* nonnull align 512 %received_uart_copy, i32* nonnull %received_lin, i32* nonnull align 512 %received_lin_copy, i32* nonnull %can_en, i32* nonnull align 512 %can_en_copy, i8* nonnull %uart_en, i8* nonnull align 512 %uart_en_copy, i32* nonnull %lin_en, i32* nonnull align 512 %lin_en_copy, [10 x i8]* nonnull %3, [10 x i8]* nonnull align 512 %can_ddr_copy, [10 x i8]* nonnull %4, [10 x i8]* nonnull align 512 %uart_ddr_copy, [10 x i8]* nonnull %5, [10 x i8]* nonnull align 512 %lin_ddr_copy)
  %6 = getelementptr inbounds [1 x i32], [1 x i32]* %can_ptr_copy, i32 0, i32 0
  %7 = getelementptr inbounds [1 x i32], [1 x i32]* %uart_ptr_copy, i32 0, i32 0
  %8 = getelementptr inbounds [1 x i32], [1 x i32]* %lin_ptr_copy, i32 0, i32 0
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %can_ddr_copy, i32 0, i32 0
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %uart_ddr_copy, i32 0, i32 0
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %lin_ddr_copy, i32 0, i32 0
  call void @apatb_clu_hw(i32* %6, i32* %7, i32* %8, i32* %received_can_copy, i32* %received_uart_copy, i32* %received_lin_copy, i32* %can_en_copy, i8* %uart_en_copy, i32* %lin_en_copy, i8* %9, i8* %10, i8* %11, i64 %timestamp)
  call void @copy_back([1 x i32]* %0, [1 x i32]* %can_ptr_copy, [1 x i32]* %1, [1 x i32]* %uart_ptr_copy, [1 x i32]* %2, [1 x i32]* %lin_ptr_copy, i32* %received_can, i32* %received_can_copy, i32* %received_uart, i32* %received_uart_copy, i32* %received_lin, i32* %received_lin_copy, i32* %can_en, i32* %can_en_copy, i8* %uart_en, i8* %uart_en_copy, i32* %lin_en, i32* %lin_en_copy, [10 x i8]* %3, [10 x i8]* %can_ddr_copy, [10 x i8]* %4, [10 x i8]* %uart_ddr_copy, [10 x i8]* %5, [10 x i8]* %lin_ddr_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1 x i32]* noalias readonly, [1 x i32]* noalias align 512, [1 x i32]* noalias readonly, [1 x i32]* noalias align 512, [1 x i32]* noalias readonly, [1 x i32]* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i8* noalias readonly, i8* noalias align 512, i32* noalias readonly, i32* noalias align 512, [10 x i8]* noalias readonly, [10 x i8]* noalias align 512, [10 x i8]* noalias readonly, [10 x i8]* noalias align 512, [10 x i8]* noalias readonly, [10 x i8]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* align 512 %1, [1 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* align 512 %3, [1 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* align 512 %5, [1 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %7, i32* %6)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %9, i32* %8)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %11, i32* %10)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %13, i32* %12)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %15, i8* %14)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %17, i32* %16)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* align 512 %19, [10 x i8]* %18)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* align 512 %21, [10 x i8]* %20)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* align 512 %23, [10 x i8]* %22)
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
define internal fastcc void @copy_out([1 x i32]* noalias, [1 x i32]* noalias readonly align 512, [1 x i32]* noalias, [1 x i32]* noalias readonly align 512, [1 x i32]* noalias, [1 x i32]* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, [10 x i8]* noalias, [10 x i8]* noalias readonly align 512, [10 x i8]* noalias, [10 x i8]* noalias readonly align 512, [10 x i8]* noalias, [10 x i8]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %0, [1 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %2, [1 x i32]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %4, [1 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %8, i32* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %10, i32* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %12, i32* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %14, i8* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %16, i32* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* %18, [10 x i8]* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* %20, [10 x i8]* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* %22, [10 x i8]* align 512 %23)
  ret void
}

declare void @apatb_clu_hw(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i8*, i8*, i8*, i64)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1 x i32]* noalias, [1 x i32]* noalias readonly align 512, [1 x i32]* noalias, [1 x i32]* noalias readonly align 512, [1 x i32]* noalias, [1 x i32]* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, [10 x i8]* noalias, [10 x i8]* noalias readonly align 512, [10 x i8]* noalias, [10 x i8]* noalias readonly align 512, [10 x i8]* noalias, [10 x i8]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %0, [1 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %2, [1 x i32]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %4, [1 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %8, i32* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %10, i32* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* %18, [10 x i8]* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* %20, [10 x i8]* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0a10i8([10 x i8]* %22, [10 x i8]* align 512 %23)
  ret void
}

define void @clu_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i8*, i8*, i8*, i64) #4 {
entry:
  %13 = bitcast i32* %0 to [1 x i32]*
  %14 = bitcast i32* %1 to [1 x i32]*
  %15 = bitcast i32* %2 to [1 x i32]*
  %16 = bitcast i8* %9 to [10 x i8]*
  %17 = bitcast i8* %10 to [10 x i8]*
  %18 = bitcast i8* %11 to [10 x i8]*
  call void @copy_out([1 x i32]* null, [1 x i32]* %13, [1 x i32]* null, [1 x i32]* %14, [1 x i32]* null, [1 x i32]* %15, i32* null, i32* %3, i32* null, i32* %4, i32* null, i32* %5, i32* null, i32* %6, i8* null, i8* %7, i32* null, i32* %8, [10 x i8]* null, [10 x i8]* %16, [10 x i8]* null, [10 x i8]* %17, [10 x i8]* null, [10 x i8]* %18)
  %19 = bitcast [1 x i32]* %13 to i32*
  %20 = bitcast [1 x i32]* %14 to i32*
  %21 = bitcast [1 x i32]* %15 to i32*
  %22 = bitcast [10 x i8]* %16 to i8*
  %23 = bitcast [10 x i8]* %17 to i8*
  %24 = bitcast [10 x i8]* %18 to i8*
  call void @clu_hw_stub(i32* %19, i32* %20, i32* %21, i32* %3, i32* %4, i32* %5, i32* %6, i8* %7, i32* %8, i8* %22, i8* %23, i8* %24, i64 %12)
  call void @copy_in([1 x i32]* null, [1 x i32]* %13, [1 x i32]* null, [1 x i32]* %14, [1 x i32]* null, [1 x i32]* %15, i32* null, i32* %3, i32* null, i32* %4, i32* null, i32* %5, i32* null, i32* %6, i8* null, i8* %7, i32* null, i32* %8, [10 x i8]* null, [10 x i8]* %16, [10 x i8]* null, [10 x i8]* %17, [10 x i8]* null, [10 x i8]* %18)
  ret void
}

declare void @clu_hw_stub(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i8*, i8*, i8*, i64)

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
