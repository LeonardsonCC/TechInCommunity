.class public Lcom/telerik/android/common/animations/AnimationEasingHelper;
.super Ljava/lang/Object;
.source "AnimationEasingHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static circularEaseIn(DDDD)D
    .locals 6
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 356
    div-double/2addr p0, p6

    .line 357
    neg-double v0, p4

    mul-double v2, p0, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v2, v4

    mul-double v0, v0, v2

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static circularEaseInOut(DDDD)D
    .locals 6
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 391
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p6, v0

    div-double/2addr p0, v2

    .line 392
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    .line 393
    neg-double v4, p4

    div-double/2addr v4, v0

    mul-double v0, p0, p0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v2

    mul-double v4, v4, v0

    add-double/2addr v4, p2

    return-wide v4

    .line 394
    :cond_0
    sub-double/2addr p0, v0

    .line 395
    div-double v0, p4, v0

    mul-double v4, p0, p0

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v4, v2

    mul-double v0, v0, v4

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static circularEaseOut(DDDD)D
    .locals 4
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 373
    div-double/2addr p0, p6

    .line 374
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v0

    .line 375
    mul-double v2, p0, p0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v0, v0, p4

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static cubicEaseIn(DDDD)D
    .locals 2
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 91
    div-double/2addr p0, p6

    .line 92
    mul-double v0, p4, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static cubicEaseInOut(DDDD)D
    .locals 6
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 126
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p6, v0

    div-double/2addr p0, v2

    .line 127
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    .line 128
    div-double v0, p4, v0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    add-double/2addr v0, p2

    return-wide v0

    .line 129
    :cond_0
    sub-double/2addr p0, v0

    .line 130
    div-double v2, p4, v0

    mul-double v4, p0, p0

    mul-double v4, v4, p0

    add-double/2addr v4, v0

    mul-double v2, v2, v4

    add-double/2addr v2, p2

    return-wide v2
.end method

.method public static cubicEaseOut(DDDD)D
    .locals 4
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 108
    div-double/2addr p0, p6

    .line 109
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v0

    .line 110
    mul-double v2, p0, p0

    mul-double v2, v2, p0

    add-double/2addr v2, v0

    mul-double v2, v2, p4

    add-double/2addr v2, p2

    return-wide v2
.end method

.method public static exponentialEaseIn(DDDD)D
    .locals 4
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 304
    div-double v0, p0, p6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, p4

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static exponentialEaseInOut(DDDD)D
    .locals 8
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 336
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p6, v0

    div-double/2addr p0, v2

    .line 337
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    .line 338
    div-double v4, p4, v0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    sub-double v2, p0, v2

    mul-double v2, v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v4, v4, v0

    add-double/2addr v4, p2

    return-wide v4

    .line 339
    :cond_0
    sub-double/2addr p0, v2

    .line 340
    div-double v2, p4, v0

    const-wide/high16 v4, -0x3fdc000000000000L    # -10.0

    mul-double v4, v4, p0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v0

    mul-double v2, v2, v4

    add-double/2addr v2, p2

    return-wide v2
.end method

.method public static exponentialEaseOut(DDDD)D
    .locals 4
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 320
    const-wide/high16 v0, -0x3fdc000000000000L    # -10.0

    mul-double v0, v0, p0

    div-double/2addr v0, p6

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    mul-double v0, v0, p4

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static linear(DDDD)D
    .locals 2
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 21
    mul-double v0, p4, p0

    div-double/2addr v0, p6

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static quadraticEaseIn(DDDD)D
    .locals 2
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 37
    div-double/2addr p0, p6

    .line 38
    mul-double v0, p4, p0

    mul-double v0, v0, p0

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static quadraticEaseInOut(DDDD)D
    .locals 6
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 71
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p6, v0

    div-double/2addr p0, v2

    .line 72
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    .line 73
    div-double v0, p4, v0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    add-double/2addr v0, p2

    return-wide v0

    .line 74
    :cond_0
    sub-double/2addr p0, v2

    .line 75
    neg-double v4, p4

    div-double/2addr v4, v0

    sub-double v0, p0, v0

    mul-double v0, v0, p0

    sub-double/2addr v0, v2

    mul-double v4, v4, v0

    add-double/2addr v4, p2

    return-wide v4
.end method

.method public static quadraticEaseOut(DDDD)D
    .locals 4
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 54
    div-double/2addr p0, p6

    .line 55
    neg-double v0, p4

    mul-double v0, v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double v2, p0, v2

    mul-double v0, v0, v2

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static quarticEaseIn(DDDD)D
    .locals 2
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 146
    div-double/2addr p0, p6

    .line 147
    mul-double v0, p4, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static quarticEaseInOut(DDDD)D
    .locals 6
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 181
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p6, v0

    div-double/2addr p0, v2

    .line 182
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    .line 183
    div-double v0, p4, v0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    add-double/2addr v0, p2

    return-wide v0

    .line 184
    :cond_0
    sub-double/2addr p0, v0

    .line 185
    neg-double v2, p4

    div-double/2addr v2, v0

    mul-double v4, p0, p0

    mul-double v4, v4, p0

    mul-double v4, v4, p0

    sub-double/2addr v4, v0

    mul-double v2, v2, v4

    add-double/2addr v2, p2

    return-wide v2
.end method

.method public static quarticEaseOut(DDDD)D
    .locals 6
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 163
    div-double/2addr p0, p6

    .line 164
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v0

    .line 165
    neg-double v2, p4

    mul-double v4, p0, p0

    mul-double v4, v4, p0

    mul-double v4, v4, p0

    sub-double/2addr v4, v0

    mul-double v2, v2, v4

    add-double/2addr v2, p2

    return-wide v2
.end method

.method public static quinticEaseIn(DDDD)D
    .locals 2
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 201
    div-double/2addr p0, p6

    .line 202
    mul-double v0, p4, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static quinticEaseInOut(DDDD)D
    .locals 6
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 236
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p6, v0

    div-double/2addr p0, v2

    .line 237
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    .line 238
    div-double v0, p4, v0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p0

    add-double/2addr v0, p2

    return-wide v0

    .line 239
    :cond_0
    sub-double/2addr p0, v0

    .line 240
    div-double v2, p4, v0

    mul-double v4, p0, p0

    mul-double v4, v4, p0

    mul-double v4, v4, p0

    mul-double v4, v4, p0

    add-double/2addr v4, v0

    mul-double v2, v2, v4

    add-double/2addr v2, p2

    return-wide v2
.end method

.method public static quinticEaseOut(DDDD)D
    .locals 4
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 218
    div-double/2addr p0, p6

    .line 219
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v0

    .line 220
    mul-double v2, p0, p0

    mul-double v2, v2, p0

    mul-double v2, v2, p0

    mul-double v2, v2, p0

    add-double/2addr v2, v0

    mul-double v2, v2, p4

    add-double/2addr v2, p2

    return-wide v2
.end method

.method public static sinusoidalEaseIn(DDDD)D
    .locals 6
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 256
    neg-double v0, p4

    div-double v2, p0, p6

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    add-double/2addr v0, p4

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static sinusoidalEaseInOut(DDDD)D
    .locals 6
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 288
    neg-double v0, p4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, p0

    div-double/2addr v2, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double v0, v0, v2

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static sinusoidalEaseOut(DDDD)D
    .locals 4
    .param p0, "currentTime"    # D
    .param p2, "startValue"    # D
    .param p4, "totalValueChange"    # D
    .param p6, "endTime"    # D

    .line 272
    div-double v0, p0, p6

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, p4

    add-double/2addr v0, p2

    return-wide v0
.end method
