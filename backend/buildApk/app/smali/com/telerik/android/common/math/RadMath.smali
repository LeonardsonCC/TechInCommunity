.class public final Lcom/telerik/android/common/math/RadMath;
.super Ljava/lang/Object;
.source "RadMath.java"


# static fields
.field public static final DEG_TO_RAD_FACTOR:D = 0.017453292519943295

.field public static final EPSILON:D = 2.220446049250313E-9

.field public static final RAD_TO_DEG_FACTOR:D = 57.29577951308232


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static areClose(DD)Z
    .locals 8
    .param p0, "value1"    # D
    .param p2, "value2"    # D

    .line 60
    const/4 v0, 0x1

    cmpl-double v1, p0, p2

    if-nez v1, :cond_0

    .line 61
    return v0

    .line 65
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    add-double/2addr v1, v3

    const-wide v3, 0x3e2312d000000000L    # 2.220446049250313E-9

    mul-double v1, v1, v3

    .line 66
    .local v1, "eps":D
    sub-double v3, p0, p2

    .line 67
    .local v3, "delta":D
    neg-double v5, v1

    cmpg-double v7, v5, v3

    if-gez v7, :cond_1

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static areClose(DDD)Z
    .locals 8
    .param p0, "value1"    # D
    .param p2, "value2"    # D
    .param p4, "tolerance"    # D

    .line 81
    const/4 v0, 0x1

    cmpl-double v1, p0, p2

    if-nez v1, :cond_0

    .line 82
    return v0

    .line 86
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    add-double/2addr v1, v3

    mul-double v1, v1, p4

    .line 87
    .local v1, "eps":D
    sub-double v3, p0, p2

    .line 88
    .local v3, "delta":D
    neg-double v5, v1

    cmpg-double v7, v5, v3

    if-gez v7, :cond_1

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getArcPoint(DLcom/telerik/android/common/math/RadPoint;D)Lcom/telerik/android/common/math/RadPoint;
    .locals 8
    .param p0, "angle"    # D
    .param p2, "center"    # Lcom/telerik/android/common/math/RadPoint;
    .param p3, "radius"    # D

    .line 118
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v0, v0, p0

    .line 120
    .local v0, "angleInRad":D
    invoke-virtual {p2}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, p3

    add-double/2addr v2, v4

    .line 121
    .local v2, "x":D
    invoke-virtual {p2}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, p3

    add-double/2addr v4, v6

    .line 123
    .local v4, "y":D
    new-instance v6, Lcom/telerik/android/common/math/RadPoint;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/telerik/android/common/math/RadPoint;-><init>(DD)V

    return-object v6
.end method

.method public static getPointDistance(DDDD)D
    .locals 8
    .param p0, "x1"    # D
    .param p2, "x2"    # D
    .param p4, "y1"    # D
    .param p6, "y2"    # D

    .line 102
    sub-double v0, p0, p2

    .line 103
    .local v0, "dx":D
    sub-double v2, p4, p6

    .line 105
    .local v2, "dy":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method

.method public static getPolarCoordinates(Lcom/telerik/android/common/math/RadPoint;Lcom/telerik/android/common/math/RadPoint;)Lcom/telerik/android/common/math/RadPolarCoordinates;
    .locals 15
    .param p0, "arcPoint"    # Lcom/telerik/android/common/math/RadPoint;
    .param p1, "center"    # Lcom/telerik/android/common/math/RadPoint;

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 136
    .local v0, "x":D
    invoke-virtual/range {p1 .. p1}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 138
    .local v2, "y":D
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 139
    .local v4, "radius":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 140
    .local v6, "angle":D
    const-wide v8, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v6, v6, v8

    .line 141
    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v10

    cmpl-double v12, v8, v10

    if-ltz v12, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v10

    cmpl-double v12, v8, v10

    if-lez v12, :cond_2

    .line 144
    const-wide v8, 0x4076800000000000L    # 360.0

    sub-double v6, v8, v6

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    cmpg-double v14, v8, v10

    if-gez v14, :cond_1

    .line 149
    sub-double v6, v12, v6

    goto :goto_0

    .line 152
    :cond_1
    add-double/2addr v6, v12

    .line 155
    :cond_2
    :goto_0
    new-instance v8, Lcom/telerik/android/common/math/RadPolarCoordinates;

    invoke-direct {v8, v6, v7, v4, v5}, Lcom/telerik/android/common/math/RadPolarCoordinates;-><init>(DD)V

    return-object v8
.end method

.method public static getRotatedSize(Lcom/telerik/android/common/math/RadSize;D)Lcom/telerik/android/common/math/RadSize;
    .locals 25
    .param p0, "size"    # Lcom/telerik/android/common/math/RadSize;
    .param p1, "radians"    # D

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, "rotatedPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/android/common/math/RadPoint;>;"
    new-instance v1, Lcom/telerik/android/common/math/RadPoint;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/telerik/android/common/math/RadPoint;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lcom/telerik/android/common/math/RadPoint;

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/android/common/math/RadSize;->getWidth()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/telerik/android/common/math/RadPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v1, Lcom/telerik/android/common/math/RadPoint;

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/android/common/math/RadSize;->getWidth()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/android/common/math/RadSize;->getHeight()D

    move-result-wide v6

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/telerik/android/common/math/RadPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v1, Lcom/telerik/android/common/math/RadPoint;

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/android/common/math/RadSize;->getHeight()D

    move-result-wide v2

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/telerik/android/common/math/RadPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 174
    .local v1, "minX":D
    const-wide/16 v3, 0x1

    .line 175
    .local v3, "maxX":D
    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 176
    .local v5, "minY":D
    const-wide/16 v7, 0x1

    .line 178
    .local v7, "maxY":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 179
    .local v9, "cos":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 180
    .local v11, "sin":D
    neg-double v13, v11

    .line 182
    .local v13, "minusSin":D
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-wide/from16 v16, v7

    .end local v7    # "maxY":D
    .local v16, "maxY":D
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v15, v7, :cond_4

    .line 183
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/telerik/android/common/math/RadPoint;

    .line 184
    .local v7, "point":Lcom/telerik/android/common/math/RadPoint;
    invoke-virtual {v7}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v18

    mul-double v18, v18, v9

    invoke-virtual {v7}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v20

    mul-double v20, v20, v11

    move-wide/from16 v22, v11

    .end local v11    # "sin":D
    .local v22, "sin":D
    add-double v11, v18, v20

    .line 185
    .local v11, "x":D
    invoke-virtual {v7}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v18

    mul-double v18, v18, v13

    invoke-virtual {v7}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v20

    mul-double v20, v20, v9

    move-object/from16 v24, v7

    .end local v7    # "point":Lcom/telerik/android/common/math/RadPoint;
    .local v24, "point":Lcom/telerik/android/common/math/RadPoint;
    add-double v7, v18, v20

    .line 187
    .local v7, "y":D
    cmpg-double v18, v11, v1

    if-gez v18, :cond_0

    .line 188
    move-wide v1, v11

    .line 191
    :cond_0
    cmpl-double v18, v11, v3

    if-lez v18, :cond_1

    .line 192
    move-wide v3, v11

    .line 195
    :cond_1
    cmpg-double v18, v7, v5

    if-gez v18, :cond_2

    .line 196
    move-wide v5, v7

    .line 199
    :cond_2
    cmpl-double v18, v7, v16

    if-lez v18, :cond_3

    .line 200
    move-wide/from16 v16, v7

    .line 203
    :cond_3
    move-wide/from16 v18, v1

    .end local v1    # "minX":D
    .local v18, "minX":D
    new-instance v1, Lcom/telerik/android/common/math/RadPoint;

    invoke-direct {v1, v11, v12, v7, v8}, Lcom/telerik/android/common/math/RadPoint;-><init>(DD)V

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v7    # "y":D
    .end local v11    # "x":D
    .end local v24    # "point":Lcom/telerik/android/common/math/RadPoint;
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v7, v16

    move-wide/from16 v1, v18

    move-wide/from16 v11, v22

    goto :goto_0

    .end local v18    # "minX":D
    .end local v22    # "sin":D
    .restart local v1    # "minX":D
    .local v11, "sin":D
    :cond_4
    move-wide/from16 v22, v11

    .line 206
    .end local v11    # "sin":D
    .end local v15    # "i":I
    .restart local v22    # "sin":D
    new-instance v7, Lcom/telerik/android/common/math/RadSize;

    sub-double v11, v3, v1

    move-object v8, v0

    move-wide/from16 v18, v1

    .end local v0    # "rotatedPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/android/common/math/RadPoint;>;"
    .end local v1    # "minX":D
    .local v8, "rotatedPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/android/common/math/RadPoint;>;"
    .restart local v18    # "minX":D
    sub-double v0, v16, v5

    invoke-direct {v7, v11, v12, v0, v1}, Lcom/telerik/android/common/math/RadSize;-><init>(DD)V

    return-object v7
.end method

.method public static isOne(D)Z
    .locals 5
    .param p0, "value"    # D

    .line 48
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e57d78400000000L    # 2.220446049250313E-8

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isZero(D)Z
    .locals 5
    .param p0, "value"    # D

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e57d78400000000L    # 2.220446049250313E-8

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
