; ModuleID = 'linear-algebra/kernels/3mm/3mm.c'
source_filename = "linear-algebra/kernels/3mm/3mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 800, ptr %6, align 4
  store i32 900, ptr %7, align 4
  store i32 1000, ptr %8, align 4
  store i32 1100, ptr %9, align 4
  store i32 1200, ptr %10, align 4
  %18 = call ptr @polybench_alloc_data(i64 noundef 720000, i32 noundef 4)
  store ptr %18, ptr %11, align 8
  %19 = call ptr @polybench_alloc_data(i64 noundef 800000, i32 noundef 4)
  store ptr %19, ptr %12, align 8
  %20 = call ptr @polybench_alloc_data(i64 noundef 900000, i32 noundef 4)
  store ptr %20, ptr %13, align 8
  %21 = call ptr @polybench_alloc_data(i64 noundef 990000, i32 noundef 4)
  store ptr %21, ptr %14, align 8
  %22 = call ptr @polybench_alloc_data(i64 noundef 1080000, i32 noundef 4)
  store ptr %22, ptr %15, align 8
  %23 = call ptr @polybench_alloc_data(i64 noundef 1320000, i32 noundef 4)
  store ptr %23, ptr %16, align 8
  %24 = call ptr @polybench_alloc_data(i64 noundef 880000, i32 noundef 4)
  store ptr %24, ptr %17, align 8
  %25 = load i32, ptr %6, align 4
  %26 = load i32, ptr %7, align 4
  %27 = load i32, ptr %8, align 4
  %28 = load i32, ptr %9, align 4
  %29 = load i32, ptr %10, align 4
  %30 = load ptr, ptr %12, align 8
  %31 = getelementptr inbounds [800 x [1000 x i32]], ptr %30, i64 0, i64 0
  %32 = load ptr, ptr %13, align 8
  %33 = getelementptr inbounds [1000 x [900 x i32]], ptr %32, i64 0, i64 0
  %34 = load ptr, ptr %15, align 8
  %35 = getelementptr inbounds [900 x [1200 x i32]], ptr %34, i64 0, i64 0
  %36 = load ptr, ptr %16, align 8
  %37 = getelementptr inbounds [1200 x [1100 x i32]], ptr %36, i64 0, i64 0
  call void @init_array(i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef %31, ptr noundef %33, ptr noundef %35, ptr noundef %37)
  %38 = load i32, ptr %6, align 4
  %39 = load i32, ptr %7, align 4
  %40 = load i32, ptr %8, align 4
  %41 = load i32, ptr %9, align 4
  %42 = load i32, ptr %10, align 4
  %43 = load ptr, ptr %11, align 8
  %44 = getelementptr inbounds [800 x [900 x i32]], ptr %43, i64 0, i64 0
  %45 = load ptr, ptr %12, align 8
  %46 = getelementptr inbounds [800 x [1000 x i32]], ptr %45, i64 0, i64 0
  %47 = load ptr, ptr %13, align 8
  %48 = getelementptr inbounds [1000 x [900 x i32]], ptr %47, i64 0, i64 0
  %49 = load ptr, ptr %14, align 8
  %50 = getelementptr inbounds [900 x [1100 x i32]], ptr %49, i64 0, i64 0
  %51 = load ptr, ptr %15, align 8
  %52 = getelementptr inbounds [900 x [1200 x i32]], ptr %51, i64 0, i64 0
  %53 = load ptr, ptr %16, align 8
  %54 = getelementptr inbounds [1200 x [1100 x i32]], ptr %53, i64 0, i64 0
  %55 = load ptr, ptr %17, align 8
  %56 = getelementptr inbounds [800 x [1100 x i32]], ptr %55, i64 0, i64 0
  call void @kernel_3mm(i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef %48, ptr noundef %50, ptr noundef %52, ptr noundef %54, ptr noundef %56)
  %57 = load i32, ptr %4, align 4
  %58 = icmp sgt i32 %57, 42
  br i1 %58, label %59, label %70

59:                                               ; preds = %2
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds ptr, ptr %60, i64 0
  %62 = load ptr, ptr %61, align 8
  %63 = call i32 @strcmp(ptr noundef %62, ptr noundef @.str) #4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load i32, ptr %6, align 4
  %67 = load i32, ptr %9, align 4
  %68 = load ptr, ptr %17, align 8
  %69 = getelementptr inbounds [800 x [1100 x i32]], ptr %68, i64 0, i64 0
  call void @print_array(i32 noundef %66, i32 noundef %67, ptr noundef %69)
  br label %70

70:                                               ; preds = %65, %59, %2
  %71 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %71) #5
  %72 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %72) #5
  %73 = load ptr, ptr %13, align 8
  call void @free(ptr noundef %73) #5
  %74 = load ptr, ptr %14, align 8
  call void @free(ptr noundef %74) #5
  %75 = load ptr, ptr %15, align 8
  call void @free(ptr noundef %75) #5
  %76 = load ptr, ptr %16, align 8
  call void @free(ptr noundef %76) #5
  %77 = load ptr, ptr %17, align 8
  call void @free(ptr noundef %77) #5
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, ptr %10, align 4
  store i32 %1, ptr %11, align 4
  store i32 %2, ptr %12, align 4
  store i32 %3, ptr %13, align 4
  store i32 %4, ptr %14, align 4
  store ptr %5, ptr %15, align 8
  store ptr %6, ptr %16, align 8
  store ptr %7, ptr %17, align 8
  store ptr %8, ptr %18, align 8
  store i32 0, ptr %19, align 4
  br label %21

21:                                               ; preds = %51, %9
  %22 = load i32, ptr %19, align 4
  %23 = load i32, ptr %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  store i32 0, ptr %20, align 4
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i32, ptr %20, align 4
  %28 = load i32, ptr %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load i32, ptr %19, align 4
  %32 = load i32, ptr %20, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %33, 1
  %35 = load i32, ptr %10, align 4
  %36 = srem i32 %34, %35
  %37 = load i32, ptr %10, align 4
  %38 = mul nsw i32 5, %37
  %39 = sdiv i32 %36, %38
  %40 = load ptr, ptr %15, align 8
  %41 = load i32, ptr %19, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1000 x i32], ptr %40, i64 %42
  %44 = load i32, ptr %20, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1000 x i32], ptr %43, i64 0, i64 %45
  store i32 %39, ptr %46, align 4
  br label %47

47:                                               ; preds = %30
  %48 = load i32, ptr %20, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %20, align 4
  br label %26, !llvm.loop !6

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %19, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %19, align 4
  br label %21, !llvm.loop !8

54:                                               ; preds = %21
  store i32 0, ptr %19, align 4
  br label %55

55:                                               ; preds = %86, %54
  %56 = load i32, ptr %19, align 4
  %57 = load i32, ptr %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %55
  store i32 0, ptr %20, align 4
  br label %60

60:                                               ; preds = %82, %59
  %61 = load i32, ptr %20, align 4
  %62 = load i32, ptr %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = load i32, ptr %19, align 4
  %66 = load i32, ptr %20, align 4
  %67 = add nsw i32 %66, 1
  %68 = mul nsw i32 %65, %67
  %69 = add nsw i32 %68, 2
  %70 = load i32, ptr %11, align 4
  %71 = srem i32 %69, %70
  %72 = load i32, ptr %11, align 4
  %73 = mul nsw i32 5, %72
  %74 = sdiv i32 %71, %73
  %75 = load ptr, ptr %16, align 8
  %76 = load i32, ptr %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [900 x i32], ptr %75, i64 %77
  %79 = load i32, ptr %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [900 x i32], ptr %78, i64 0, i64 %80
  store i32 %74, ptr %81, align 4
  br label %82

82:                                               ; preds = %64
  %83 = load i32, ptr %20, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %20, align 4
  br label %60, !llvm.loop !9

85:                                               ; preds = %60
  br label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %19, align 4
  br label %55, !llvm.loop !10

89:                                               ; preds = %55
  store i32 0, ptr %19, align 4
  br label %90

90:                                               ; preds = %120, %89
  %91 = load i32, ptr %19, align 4
  %92 = load i32, ptr %11, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %90
  store i32 0, ptr %20, align 4
  br label %95

95:                                               ; preds = %116, %94
  %96 = load i32, ptr %20, align 4
  %97 = load i32, ptr %14, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load i32, ptr %19, align 4
  %101 = load i32, ptr %20, align 4
  %102 = add nsw i32 %101, 3
  %103 = mul nsw i32 %100, %102
  %104 = load i32, ptr %13, align 4
  %105 = srem i32 %103, %104
  %106 = load i32, ptr %13, align 4
  %107 = mul nsw i32 5, %106
  %108 = sdiv i32 %105, %107
  %109 = load ptr, ptr %17, align 8
  %110 = load i32, ptr %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1200 x i32], ptr %109, i64 %111
  %113 = load i32, ptr %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [1200 x i32], ptr %112, i64 0, i64 %114
  store i32 %108, ptr %115, align 4
  br label %116

116:                                              ; preds = %99
  %117 = load i32, ptr %20, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %20, align 4
  br label %95, !llvm.loop !11

119:                                              ; preds = %95
  br label %120

120:                                              ; preds = %119
  %121 = load i32, ptr %19, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %19, align 4
  br label %90, !llvm.loop !12

123:                                              ; preds = %90
  store i32 0, ptr %19, align 4
  br label %124

124:                                              ; preds = %155, %123
  %125 = load i32, ptr %19, align 4
  %126 = load i32, ptr %14, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %158

128:                                              ; preds = %124
  store i32 0, ptr %20, align 4
  br label %129

129:                                              ; preds = %151, %128
  %130 = load i32, ptr %20, align 4
  %131 = load i32, ptr %13, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %129
  %134 = load i32, ptr %19, align 4
  %135 = load i32, ptr %20, align 4
  %136 = add nsw i32 %135, 2
  %137 = mul nsw i32 %134, %136
  %138 = add nsw i32 %137, 2
  %139 = load i32, ptr %12, align 4
  %140 = srem i32 %138, %139
  %141 = load i32, ptr %12, align 4
  %142 = mul nsw i32 5, %141
  %143 = sdiv i32 %140, %142
  %144 = load ptr, ptr %18, align 8
  %145 = load i32, ptr %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [1100 x i32], ptr %144, i64 %146
  %148 = load i32, ptr %20, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [1100 x i32], ptr %147, i64 0, i64 %149
  store i32 %143, ptr %150, align 4
  br label %151

151:                                              ; preds = %133
  %152 = load i32, ptr %20, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %20, align 4
  br label %129, !llvm.loop !13

154:                                              ; preds = %129
  br label %155

155:                                              ; preds = %154
  %156 = load i32, ptr %19, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %19, align 4
  br label %124, !llvm.loop !14

158:                                              ; preds = %124
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_3mm(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, ptr %13, align 4
  store i32 %1, ptr %14, align 4
  store i32 %2, ptr %15, align 4
  store i32 %3, ptr %16, align 4
  store i32 %4, ptr %17, align 4
  store ptr %5, ptr %18, align 8
  store ptr %6, ptr %19, align 8
  store ptr %7, ptr %20, align 8
  store ptr %8, ptr %21, align 8
  store ptr %9, ptr %22, align 8
  store ptr %10, ptr %23, align 8
  store ptr %11, ptr %24, align 8
  store i32 0, ptr %25, align 4
  br label %28

28:                                               ; preds = %84, %12
  %29 = load i32, ptr %25, align 4
  %30 = load i32, ptr %13, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %87

32:                                               ; preds = %28
  store i32 0, ptr %26, align 4
  br label %33

33:                                               ; preds = %80, %32
  %34 = load i32, ptr %26, align 4
  %35 = load i32, ptr %14, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %33
  %38 = load ptr, ptr %18, align 8
  %39 = load i32, ptr %25, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [900 x i32], ptr %38, i64 %40
  %42 = load i32, ptr %26, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [900 x i32], ptr %41, i64 0, i64 %43
  store i32 0, ptr %44, align 4
  store i32 0, ptr %27, align 4
  br label %45

45:                                               ; preds = %76, %37
  %46 = load i32, ptr %27, align 4
  %47 = load i32, ptr %15, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %45
  %50 = load ptr, ptr %19, align 8
  %51 = load i32, ptr %25, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1000 x i32], ptr %50, i64 %52
  %54 = load i32, ptr %27, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1000 x i32], ptr %53, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %20, align 8
  %59 = load i32, ptr %27, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [900 x i32], ptr %58, i64 %60
  %62 = load i32, ptr %26, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [900 x i32], ptr %61, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4
  %66 = mul nsw i32 %57, %65
  %67 = load ptr, ptr %18, align 8
  %68 = load i32, ptr %25, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [900 x i32], ptr %67, i64 %69
  %71 = load i32, ptr %26, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [900 x i32], ptr %70, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4
  %75 = add nsw i32 %74, %66
  store i32 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %49
  %77 = load i32, ptr %27, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %27, align 4
  br label %45, !llvm.loop !15

79:                                               ; preds = %45
  br label %80

80:                                               ; preds = %79
  %81 = load i32, ptr %26, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %26, align 4
  br label %33, !llvm.loop !16

83:                                               ; preds = %33
  br label %84

84:                                               ; preds = %83
  %85 = load i32, ptr %25, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %25, align 4
  br label %28, !llvm.loop !17

87:                                               ; preds = %28
  store i32 0, ptr %25, align 4
  br label %88

88:                                               ; preds = %144, %87
  %89 = load i32, ptr %25, align 4
  %90 = load i32, ptr %14, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %147

92:                                               ; preds = %88
  store i32 0, ptr %26, align 4
  br label %93

93:                                               ; preds = %140, %92
  %94 = load i32, ptr %26, align 4
  %95 = load i32, ptr %16, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %143

97:                                               ; preds = %93
  %98 = load ptr, ptr %21, align 8
  %99 = load i32, ptr %25, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [1100 x i32], ptr %98, i64 %100
  %102 = load i32, ptr %26, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [1100 x i32], ptr %101, i64 0, i64 %103
  store i32 0, ptr %104, align 4
  store i32 0, ptr %27, align 4
  br label %105

105:                                              ; preds = %136, %97
  %106 = load i32, ptr %27, align 4
  %107 = load i32, ptr %17, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %105
  %110 = load ptr, ptr %22, align 8
  %111 = load i32, ptr %25, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [1200 x i32], ptr %110, i64 %112
  %114 = load i32, ptr %27, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [1200 x i32], ptr %113, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4
  %118 = load ptr, ptr %23, align 8
  %119 = load i32, ptr %27, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [1100 x i32], ptr %118, i64 %120
  %122 = load i32, ptr %26, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [1100 x i32], ptr %121, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4
  %126 = mul nsw i32 %117, %125
  %127 = load ptr, ptr %21, align 8
  %128 = load i32, ptr %25, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [1100 x i32], ptr %127, i64 %129
  %131 = load i32, ptr %26, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [1100 x i32], ptr %130, i64 0, i64 %132
  %134 = load i32, ptr %133, align 4
  %135 = add nsw i32 %134, %126
  store i32 %135, ptr %133, align 4
  br label %136

136:                                              ; preds = %109
  %137 = load i32, ptr %27, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr %27, align 4
  br label %105, !llvm.loop !18

139:                                              ; preds = %105
  br label %140

140:                                              ; preds = %139
  %141 = load i32, ptr %26, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %26, align 4
  br label %93, !llvm.loop !19

143:                                              ; preds = %93
  br label %144

144:                                              ; preds = %143
  %145 = load i32, ptr %25, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %25, align 4
  br label %88, !llvm.loop !20

147:                                              ; preds = %88
  store i32 0, ptr %25, align 4
  br label %148

148:                                              ; preds = %204, %147
  %149 = load i32, ptr %25, align 4
  %150 = load i32, ptr %13, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %207

152:                                              ; preds = %148
  store i32 0, ptr %26, align 4
  br label %153

153:                                              ; preds = %200, %152
  %154 = load i32, ptr %26, align 4
  %155 = load i32, ptr %16, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %203

157:                                              ; preds = %153
  %158 = load ptr, ptr %24, align 8
  %159 = load i32, ptr %25, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [1100 x i32], ptr %158, i64 %160
  %162 = load i32, ptr %26, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [1100 x i32], ptr %161, i64 0, i64 %163
  store i32 0, ptr %164, align 4
  store i32 0, ptr %27, align 4
  br label %165

165:                                              ; preds = %196, %157
  %166 = load i32, ptr %27, align 4
  %167 = load i32, ptr %14, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %199

169:                                              ; preds = %165
  %170 = load ptr, ptr %18, align 8
  %171 = load i32, ptr %25, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [900 x i32], ptr %170, i64 %172
  %174 = load i32, ptr %27, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [900 x i32], ptr %173, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4
  %178 = load ptr, ptr %21, align 8
  %179 = load i32, ptr %27, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [1100 x i32], ptr %178, i64 %180
  %182 = load i32, ptr %26, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [1100 x i32], ptr %181, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4
  %186 = mul nsw i32 %177, %185
  %187 = load ptr, ptr %24, align 8
  %188 = load i32, ptr %25, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [1100 x i32], ptr %187, i64 %189
  %191 = load i32, ptr %26, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [1100 x i32], ptr %190, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4
  %195 = add nsw i32 %194, %186
  store i32 %195, ptr %193, align 4
  br label %196

196:                                              ; preds = %169
  %197 = load i32, ptr %27, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr %27, align 4
  br label %165, !llvm.loop !21

199:                                              ; preds = %165
  br label %200

200:                                              ; preds = %199
  %201 = load i32, ptr %26, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %26, align 4
  br label %153, !llvm.loop !22

203:                                              ; preds = %153
  br label %204

204:                                              ; preds = %203
  %205 = load i32, ptr %25, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr %25, align 4
  br label %148, !llvm.loop !23

207:                                              ; preds = %148
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %9 = load ptr, ptr @stderr, align 8
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.1)
  %11 = load ptr, ptr @stderr, align 8
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.2, ptr noundef @.str.3)
  store i32 0, ptr %7, align 4
  br label %13

13:                                               ; preds = %48, %3
  %14 = load i32, ptr %7, align 4
  %15 = load i32, ptr %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  store i32 0, ptr %8, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, ptr %8, align 4
  %20 = load i32, ptr %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %4, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, ptr %8, align 4
  %27 = add nsw i32 %25, %26
  %28 = srem i32 %27, 20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load ptr, ptr @stderr, align 8
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.4)
  br label %33

33:                                               ; preds = %30, %22
  %34 = load ptr, ptr @stderr, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [1100 x i32], ptr %35, i64 %37
  %39 = load i32, ptr %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1100 x i32], ptr %38, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.5, i32 noundef %42)
  br label %44

44:                                               ; preds = %33
  %45 = load i32, ptr %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %8, align 4
  br label %18, !llvm.loop !24

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %7, align 4
  br label %13, !llvm.loop !25

51:                                               ; preds = %13
  %52 = load ptr, ptr @stderr, align 8
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.6, ptr noundef @.str.3)
  %54 = load ptr, ptr @stderr, align 8
  %55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @.str.7)
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
