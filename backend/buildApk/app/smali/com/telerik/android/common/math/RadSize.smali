.class public final Lcom/telerik/android/common/math/RadSize;
.super Ljava/lang/Object;
.source "RadSize.java"


# instance fields
.field private height:D

.field private width:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "width"    # D
    .param p3, "height"    # D

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/telerik/android/common/math/RadSize;->width:D

    .line 23
    iput-wide p3, p0, Lcom/telerik/android/common/math/RadSize;->height:D

    .line 24
    return-void
.end method

.method public static getEmpty()Lcom/telerik/android/common/math/RadSize;
    .locals 3

    .line 33
    new-instance v0, Lcom/telerik/android/common/math/RadSize;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/telerik/android/common/math/RadSize;-><init>(DD)V

    return-object v0
.end method

.method public static getInfinitySize()Lcom/telerik/android/common/math/RadSize;
    .locals 3

    .line 52
    new-instance v0, Lcom/telerik/android/common/math/RadSize;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/telerik/android/common/math/RadSize;-><init>(DD)V

    return-object v0
.end method

.method public static getInvalid()Lcom/telerik/android/common/math/RadSize;
    .locals 3

    .line 43
    new-instance v0, Lcom/telerik/android/common/math/RadSize;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/telerik/android/common/math/RadSize;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 73
    instance-of v0, p1, Lcom/telerik/android/common/math/RadSize;

    if-eqz v0, :cond_1

    .line 74
    move-object v0, p1

    check-cast v0, Lcom/telerik/android/common/math/RadSize;

    .line 76
    .local v0, "source":Lcom/telerik/android/common/math/RadSize;
    iget-wide v1, v0, Lcom/telerik/android/common/math/RadSize;->width:D

    iget-wide v3, p0, Lcom/telerik/android/common/math/RadSize;->width:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    iget-wide v1, v0, Lcom/telerik/android/common/math/RadSize;->height:D

    iget-wide v3, p0, Lcom/telerik/android/common/math/RadSize;->height:D

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 80
    .end local v0    # "source":Lcom/telerik/android/common/math/RadSize;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHeight()D
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadSize;->height:D

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadSize;->width:D

    return-wide v0
.end method

.method public halfHeight()D
    .locals 4

    .line 68
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadSize;->height:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public halfWidth()D
    .locals 4

    .line 64
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadSize;->width:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method
