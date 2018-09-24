; ModuleID = './outputs/translated.bc'
source_filename = "qsort_large.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.my3DVertexStruct = type { i32, i32, i32, double }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_large <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c" [target] Execution Time: %ld\0A\00", align 1
@is_signature_queue_full = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @compare(i8*, i8*) #0 {
  call void @enqueue_signature(i32 65537)
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.my3DVertexStruct*
  %9 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %8, i32 0, i32 3
  %10 = load double, double* %9, align 8
  store double %10, double* %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.my3DVertexStruct*
  %13 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %12, i32 0, i32 3
  %14 = load double, double* %13, align 8
  store double %14, double* %6, align 8
  %15 = load double, double* %5, align 8
  %16 = load double, double* %6, align 8
  %17 = fcmp ogt double %15, %16
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %2
  call void @enqueue_signature(i32 65538)
  br label %25

; <label>:19:                                     ; preds = %2
  call void @enqueue_signature(i32 65539)
  %20 = load double, double* %5, align 8
  %21 = load double, double* %6, align 8
  %22 = fcmp oeq double %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 -1
  br label %25

; <label>:25:                                     ; preds = %19, %18
  %26 = phi i32 [ 1, %18 ], [ %24, %19 ]
  call void @enqueue_signature_with_return(i32 65540)
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  call void @init_monitor()
  call void @enqueue_signature(i32 131073)
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [60000 x %struct.my3DVertexStruct], align 16
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = call i32 @gettimeofday(%struct.timeval* %13, %struct.timezone* null) #4
  br label %16

; <label>:16:                                     ; preds = %2
  call void @enqueue_signature(i32 131074)
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %16
  call void @enqueue_signature(i32 131075)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  br label %22

; <label>:22:                                     ; preds = %19
  call void @enqueue_signature(i32 131076)
  call void @exit(i32 -1) #5
  br label %23

; <label>:23:                                     ; preds = %22
  call void @enqueue_signature(i32 131077)
  unreachable

; <label>:24:                                     ; preds = %16
  call void @enqueue_signature(i32 131078)
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct._IO_FILE* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %29

; <label>:29:                                     ; preds = %24
  call void @enqueue_signature(i32 131079)
  store %struct._IO_FILE* %28, %struct._IO_FILE** %7, align 8
  br label %30

; <label>:30:                                     ; preds = %81, %29
  call void @enqueue_signature(i32 131080)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %10)
  br label %33

; <label>:33:                                     ; preds = %30
  call void @enqueue_signature(i32 131081)
  %34 = icmp eq i32 %32, 1
  br i1 %34, label %35, label %48

; <label>:35:                                     ; preds = %33
  call void @enqueue_signature(i32 131082)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %11)
  br label %38

; <label>:38:                                     ; preds = %35
  call void @enqueue_signature(i32 131083)
  %39 = icmp eq i32 %37, 1
  br i1 %39, label %40, label %48

; <label>:40:                                     ; preds = %38
  call void @enqueue_signature(i32 131084)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %12)
  br label %43

; <label>:43:                                     ; preds = %40
  call void @enqueue_signature(i32 131085)
  %44 = icmp eq i32 %42, 1
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %43
  call void @enqueue_signature(i32 131086)
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 60000
  br label %48

; <label>:48:                                     ; preds = %45, %43, %38, %33
  %49 = phi i1 [ false, %43 ], [ false, %38 ], [ false, %33 ], [ %47, %45 ]
  call void @enqueue_signature(i32 131087)
  br i1 %49, label %50, label %88

; <label>:50:                                     ; preds = %48
  call void @enqueue_signature(i32 131088)
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %64, i32 0, i32 2
  store i32 %61, i32* %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sitofp i32 %66 to double
  %68 = call double @pow(double %67, double 2.000000e+00) #4
  br label %69

; <label>:69:                                     ; preds = %50
  call void @enqueue_signature(i32 131089)
  %70 = load i32, i32* %11, align 4
  %71 = sitofp i32 %70 to double
  %72 = call double @pow(double %71, double 2.000000e+00) #4
  br label %73

; <label>:73:                                     ; preds = %69
  call void @enqueue_signature(i32 131090)
  %74 = fadd double %68, %72
  %75 = load i32, i32* %12, align 4
  %76 = sitofp i32 %75 to double
  %77 = call double @pow(double %76, double 2.000000e+00) #4
  br label %78

; <label>:78:                                     ; preds = %73
  call void @enqueue_signature(i32 131091)
  %79 = fadd double %74, %77
  %80 = call double @sqrt(double %79) #4
  br label %81

; <label>:81:                                     ; preds = %78
  call void @enqueue_signature(i32 131092)
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.my3DVertexStruct, %struct.my3DVertexStruct* %84, i32 0, i32 3
  store double %80, double* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %30

; <label>:88:                                     ; preds = %48
  call void @enqueue_signature(i32 131093)
  br label %89

; <label>:89:                                     ; preds = %88
  call void @enqueue_signature(i32 131094)
  %90 = getelementptr inbounds [60000 x %struct.my3DVertexStruct], [60000 x %struct.my3DVertexStruct]* %6, i32 0, i32 0
  %91 = bitcast %struct.my3DVertexStruct* %90 to i8*
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  call void @qsort(i8* %91, i64 %93, i64 24, i32 (i8*, i8*)* @compare)
  br label %94

; <label>:94:                                     ; preds = %89
  call void @enqueue_signature(i32 131095)
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  br label %96

; <label>:96:                                     ; preds = %94
  call void @enqueue_signature(i32 131096)
  %97 = call i32 @gettimeofday(%struct.timeval* %14, %struct.timezone* null) #4
  br label %98

; <label>:98:                                     ; preds = %96
  call void @enqueue_signature(i32 131097)
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %100, %102
  %104 = mul nsw i64 %103, 1000000
  %105 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %106, %108
  %110 = add nsw i64 %104, %109
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i64 %110)
  br label %112

; <label>:112:                                    ; preds = %98
  call void @enqueue_signature_with_remainder_process(i32 131098)
  store i32 1, i32* @is_signature_queue_full, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @pow(double, double) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

declare i32 @printf(i8*, ...) #2

declare void @init_monitor()

declare void @enqueue_signature(i32)

declare void @enqueue_signature_with_call(i32)

declare void @enqueue_signature_with_return(i32)

declare void @enqueue_signature_with_remainder_process(i32)

define void @CallcheckerSet() {
entry:
  call void @init_monitor()
  call void @enqueue_signature(i32 1)
  call void @enqueue_signature_with_call(i32 1)
  call void @enqueue_signature_with_return(i32 1)
  call void @enqueue_signature_with_remainder_process(i32 1)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
