; ModuleID = 'datamining/correlation/correlation.c'
source_filename = "datamining/correlation/correlation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"corr\00", align 1
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
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 1400, ptr %6, align 4
  store i32 1200, ptr %7, align 4
  %13 = call ptr @polybench_alloc_data(i64 noundef 1680000, i32 noundef 4)
  store ptr %13, ptr %9, align 8
  %14 = call ptr @polybench_alloc_data(i64 noundef 1440000, i32 noundef 4)
  store ptr %14, ptr %10, align 8
  %15 = call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 4)
  store ptr %15, ptr %11, align 8
  %16 = call ptr @polybench_alloc_data(i64 noundef 1200, i32 noundef 4)
  store ptr %16, ptr %12, align 8
  %17 = load i32, ptr %7, align 4
  %18 = load i32, ptr %6, align 4
  %19 = load ptr, ptr %9, align 8
  %20 = getelementptr inbounds [1400 x [1200 x i32]], ptr %19, i64 0, i64 0
  call void @init_array(i32 noundef %17, i32 noundef %18, ptr noundef %8, ptr noundef %20)
  %21 = load i32, ptr %7, align 4
  %22 = load i32, ptr %6, align 4
  %23 = load i32, ptr %8, align 4
  %24 = load ptr, ptr %9, align 8
  %25 = getelementptr inbounds [1400 x [1200 x i32]], ptr %24, i64 0, i64 0
  %26 = load ptr, ptr %10, align 8
  %27 = getelementptr inbounds [1200 x [1200 x i32]], ptr %26, i64 0, i64 0
  %28 = load ptr, ptr %11, align 8
  %29 = getelementptr inbounds [1200 x i32], ptr %28, i64 0, i64 0
  %30 = load ptr, ptr %12, align 8
  %31 = getelementptr inbounds [1200 x i32], ptr %30, i64 0, i64 0
  call void @kernel_correlation(i32 noundef %21, i32 noundef %22, i32 noundef %23, ptr noundef %25, ptr noundef %27, ptr noundef %29, ptr noundef %31)
  %32 = load i32, ptr %4, align 4
  %33 = icmp sgt i32 %32, 42
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds ptr, ptr %35, i64 0
  %37 = load ptr, ptr %36, align 8
  %38 = call i32 @strcmp(ptr noundef %37, ptr noundef @.str) #4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr %7, align 4
  %42 = load ptr, ptr %10, align 8
  %43 = getelementptr inbounds [1200 x [1200 x i32]], ptr %42, i64 0, i64 0
  call void @print_array(i32 noundef %41, ptr noundef %43)
  br label %44

44:                                               ; preds = %40, %34, %2
  %45 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %45) #5
  %46 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %46) #5
  %47 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %47) #5
  %48 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %48) #5
  ret i32 0
}

declare ptr @polybench_alloc_data(i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %11 = load ptr, ptr %7, align 8
  store i32 1400, ptr %11, align 4
  store i32 0, ptr %9, align 4
  br label %12

12:                                               ; preds = %37, %4
  %13 = load i32, ptr %9, align 4
  %14 = icmp slt i32 %13, 1400
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  store i32 0, ptr %10, align 4
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i32, ptr %10, align 4
  %18 = icmp slt i32 %17, 1200
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i32, ptr %9, align 4
  %21 = load i32, ptr %10, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sdiv i32 %22, 1200
  %24 = load i32, ptr %9, align 4
  %25 = add nsw i32 %23, %24
  %26 = load ptr, ptr %8, align 8
  %27 = load i32, ptr %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1200 x i32], ptr %26, i64 %28
  %30 = load i32, ptr %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1200 x i32], ptr %29, i64 0, i64 %31
  store i32 %25, ptr %32, align 4
  br label %33

33:                                               ; preds = %19
  %34 = load i32, ptr %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %10, align 4
  br label %16, !llvm.loop !6

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %9, align 4
  br label %12, !llvm.loop !8

40:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_correlation(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, ptr %8, align 4
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %10, align 4
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  store i32 0, ptr %18, align 4
  store i32 0, ptr %16, align 4
  br label %19

19:                                               ; preds = %58, %7
  %20 = load i32, ptr %16, align 4
  %21 = load i32, ptr %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 8
  %25 = load i32, ptr %16, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  store i32 0, ptr %27, align 4
  store i32 0, ptr %15, align 4
  br label %28

28:                                               ; preds = %47, %23
  %29 = load i32, ptr %15, align 4
  %30 = load i32, ptr %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load ptr, ptr %11, align 8
  %34 = load i32, ptr %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1200 x i32], ptr %33, i64 %35
  %37 = load i32, ptr %16, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [1200 x i32], ptr %36, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %13, align 8
  %42 = load i32, ptr %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %41, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = add nsw i32 %45, %40
  store i32 %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %32
  %48 = load i32, ptr %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %15, align 4
  br label %28, !llvm.loop !9

50:                                               ; preds = %28
  %51 = load i32, ptr %10, align 4
  %52 = load ptr, ptr %13, align 8
  %53 = load i32, ptr %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %52, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = sdiv i32 %56, %51
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %50
  %59 = load i32, ptr %16, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %16, align 4
  br label %19, !llvm.loop !10

61:                                               ; preds = %19
  store i32 0, ptr %16, align 4
  br label %62

62:                                               ; preds = %156, %61
  %63 = load i32, ptr %16, align 4
  %64 = load i32, ptr %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %159

66:                                               ; preds = %62
  %67 = load ptr, ptr %14, align 8
  %68 = load i32, ptr %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %67, i64 %69
  store i32 0, ptr %70, align 4
  store i32 0, ptr %15, align 4
  br label %71

71:                                               ; preds = %111, %66
  %72 = load i32, ptr %15, align 4
  %73 = load i32, ptr %9, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %114

75:                                               ; preds = %71
  %76 = load ptr, ptr %11, align 8
  %77 = load i32, ptr %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [1200 x i32], ptr %76, i64 %78
  %80 = load i32, ptr %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [1200 x i32], ptr %79, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %13, align 8
  %85 = load i32, ptr %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %84, i64 %86
  %88 = load i32, ptr %87, align 4
  %89 = sub nsw i32 %83, %88
  %90 = load ptr, ptr %11, align 8
  %91 = load i32, ptr %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [1200 x i32], ptr %90, i64 %92
  %94 = load i32, ptr %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [1200 x i32], ptr %93, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4
  %98 = load ptr, ptr %13, align 8
  %99 = load i32, ptr %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %98, i64 %100
  %102 = load i32, ptr %101, align 4
  %103 = sub nsw i32 %97, %102
  %104 = mul nsw i32 %89, %103
  %105 = load ptr, ptr %14, align 8
  %106 = load i32, ptr %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, ptr %105, i64 %107
  %109 = load i32, ptr %108, align 4
  %110 = add nsw i32 %109, %104
  store i32 %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %75
  %112 = load i32, ptr %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %15, align 4
  br label %71, !llvm.loop !11

114:                                              ; preds = %71
  %115 = load i32, ptr %10, align 4
  %116 = load ptr, ptr %14, align 8
  %117 = load i32, ptr %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %116, i64 %118
  %120 = load i32, ptr %119, align 4
  %121 = sdiv i32 %120, %115
  store i32 %121, ptr %119, align 4
  %122 = load ptr, ptr %14, align 8
  %123 = load i32, ptr %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %122, i64 %124
  %126 = load i32, ptr %125, align 4
  %127 = sitofp i32 %126 to double
  %128 = call double @sqrt(double noundef %127) #5
  %129 = fptosi double %128 to i32
  %130 = load ptr, ptr %14, align 8
  %131 = load i32, ptr %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %130, i64 %132
  store i32 %129, ptr %133, align 4
  %134 = load ptr, ptr %14, align 8
  %135 = load i32, ptr %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, ptr %134, i64 %136
  %138 = load i32, ptr %137, align 4
  %139 = load i32, ptr %18, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %114
  br label %149

142:                                              ; preds = %114
  %143 = load ptr, ptr %14, align 8
  %144 = load i32, ptr %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, ptr %143, i64 %145
  %147 = load i32, ptr %146, align 4
  %148 = sitofp i32 %147 to double
  br label %149

149:                                              ; preds = %142, %141
  %150 = phi double [ 1.000000e+00, %141 ], [ %148, %142 ]
  %151 = fptosi double %150 to i32
  %152 = load ptr, ptr %14, align 8
  %153 = load i32, ptr %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, ptr %152, i64 %154
  store i32 %151, ptr %155, align 4
  br label %156

156:                                              ; preds = %149
  %157 = load i32, ptr %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, ptr %16, align 4
  br label %62, !llvm.loop !12

159:                                              ; preds = %62
  store i32 0, ptr %15, align 4
  br label %160

160:                                              ; preds = %209, %159
  %161 = load i32, ptr %15, align 4
  %162 = load i32, ptr %9, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %212

164:                                              ; preds = %160
  store i32 0, ptr %16, align 4
  br label %165

165:                                              ; preds = %205, %164
  %166 = load i32, ptr %16, align 4
  %167 = load i32, ptr %8, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %208

169:                                              ; preds = %165
  %170 = load ptr, ptr %13, align 8
  %171 = load i32, ptr %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, ptr %170, i64 %172
  %174 = load i32, ptr %173, align 4
  %175 = load ptr, ptr %11, align 8
  %176 = load i32, ptr %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [1200 x i32], ptr %175, i64 %177
  %179 = load i32, ptr %16, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [1200 x i32], ptr %178, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4
  %183 = sub nsw i32 %182, %174
  store i32 %183, ptr %181, align 4
  %184 = load i32, ptr %10, align 4
  %185 = sitofp i32 %184 to double
  %186 = call double @sqrt(double noundef %185) #5
  %187 = load ptr, ptr %14, align 8
  %188 = load i32, ptr %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, ptr %187, i64 %189
  %191 = load i32, ptr %190, align 4
  %192 = sitofp i32 %191 to double
  %193 = fmul double %186, %192
  %194 = load ptr, ptr %11, align 8
  %195 = load i32, ptr %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [1200 x i32], ptr %194, i64 %196
  %198 = load i32, ptr %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [1200 x i32], ptr %197, i64 0, i64 %199
  %201 = load i32, ptr %200, align 4
  %202 = sitofp i32 %201 to double
  %203 = fdiv double %202, %193
  %204 = fptosi double %203 to i32
  store i32 %204, ptr %200, align 4
  br label %205

205:                                              ; preds = %169
  %206 = load i32, ptr %16, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, ptr %16, align 4
  br label %165, !llvm.loop !13

208:                                              ; preds = %165
  br label %209

209:                                              ; preds = %208
  %210 = load i32, ptr %15, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr %15, align 4
  br label %160, !llvm.loop !14

212:                                              ; preds = %160
  store i32 0, ptr %15, align 4
  br label %213

213:                                              ; preds = %294, %212
  %214 = load i32, ptr %15, align 4
  %215 = load i32, ptr %8, align 4
  %216 = sub nsw i32 %215, 1
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %297

218:                                              ; preds = %213
  %219 = load ptr, ptr %12, align 8
  %220 = load i32, ptr %15, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [1200 x i32], ptr %219, i64 %221
  %223 = load i32, ptr %15, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [1200 x i32], ptr %222, i64 0, i64 %224
  store i32 1, ptr %225, align 4
  %226 = load i32, ptr %15, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, ptr %16, align 4
  br label %228

228:                                              ; preds = %290, %218
  %229 = load i32, ptr %16, align 4
  %230 = load i32, ptr %8, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %293

232:                                              ; preds = %228
  %233 = load ptr, ptr %12, align 8
  %234 = load i32, ptr %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [1200 x i32], ptr %233, i64 %235
  %237 = load i32, ptr %16, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [1200 x i32], ptr %236, i64 0, i64 %238
  store i32 0, ptr %239, align 4
  store i32 0, ptr %17, align 4
  br label %240

240:                                              ; preds = %271, %232
  %241 = load i32, ptr %17, align 4
  %242 = load i32, ptr %9, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %274

244:                                              ; preds = %240
  %245 = load ptr, ptr %11, align 8
  %246 = load i32, ptr %17, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [1200 x i32], ptr %245, i64 %247
  %249 = load i32, ptr %15, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [1200 x i32], ptr %248, i64 0, i64 %250
  %252 = load i32, ptr %251, align 4
  %253 = load ptr, ptr %11, align 8
  %254 = load i32, ptr %17, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [1200 x i32], ptr %253, i64 %255
  %257 = load i32, ptr %16, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [1200 x i32], ptr %256, i64 0, i64 %258
  %260 = load i32, ptr %259, align 4
  %261 = mul nsw i32 %252, %260
  %262 = load ptr, ptr %12, align 8
  %263 = load i32, ptr %15, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [1200 x i32], ptr %262, i64 %264
  %266 = load i32, ptr %16, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [1200 x i32], ptr %265, i64 0, i64 %267
  %269 = load i32, ptr %268, align 4
  %270 = add nsw i32 %269, %261
  store i32 %270, ptr %268, align 4
  br label %271

271:                                              ; preds = %244
  %272 = load i32, ptr %17, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, ptr %17, align 4
  br label %240, !llvm.loop !15

274:                                              ; preds = %240
  %275 = load ptr, ptr %12, align 8
  %276 = load i32, ptr %15, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [1200 x i32], ptr %275, i64 %277
  %279 = load i32, ptr %16, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [1200 x i32], ptr %278, i64 0, i64 %280
  %282 = load i32, ptr %281, align 4
  %283 = load ptr, ptr %12, align 8
  %284 = load i32, ptr %16, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [1200 x i32], ptr %283, i64 %285
  %287 = load i32, ptr %15, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [1200 x i32], ptr %286, i64 0, i64 %288
  store i32 %282, ptr %289, align 4
  br label %290

290:                                              ; preds = %274
  %291 = load i32, ptr %16, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, ptr %16, align 4
  br label %228, !llvm.loop !16

293:                                              ; preds = %228
  br label %294

294:                                              ; preds = %293
  %295 = load i32, ptr %15, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, ptr %15, align 4
  br label %213, !llvm.loop !17

297:                                              ; preds = %213
  %298 = load ptr, ptr %12, align 8
  %299 = load i32, ptr %8, align 4
  %300 = sub nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [1200 x i32], ptr %298, i64 %301
  %303 = load i32, ptr %8, align 4
  %304 = sub nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [1200 x i32], ptr %302, i64 0, i64 %305
  store i32 1, ptr %306, align 4
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr @stderr, align 8
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1)
  %9 = load ptr, ptr @stderr, align 8
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, ptr noundef @.str.3)
  store i32 0, ptr %5, align 4
  br label %11

11:                                               ; preds = %46, %2
  %12 = load i32, ptr %5, align 4
  %13 = load i32, ptr %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  store i32 0, ptr %6, align 4
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i32, ptr %5, align 4
  %22 = load i32, ptr %3, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, ptr %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = srem i32 %25, 20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load ptr, ptr @stderr, align 8
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.4)
  br label %31

31:                                               ; preds = %28, %20
  %32 = load ptr, ptr @stderr, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = load i32, ptr %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1200 x i32], ptr %33, i64 %35
  %37 = load i32, ptr %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [1200 x i32], ptr %36, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.5, i32 noundef %40)
  br label %42

42:                                               ; preds = %31
  %43 = load i32, ptr %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %6, align 4
  br label %16, !llvm.loop !18

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %5, align 4
  br label %11, !llvm.loop !19

49:                                               ; preds = %11
  %50 = load ptr, ptr @stderr, align 8
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.6, ptr noundef @.str.3)
  %52 = load ptr, ptr @stderr, align 8
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.7)
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

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
