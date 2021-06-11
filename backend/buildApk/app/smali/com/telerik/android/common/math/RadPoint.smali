.class public final Lcom/telerik/android/common/math/RadPoint;
.super Ljava/lang/Object;
.source "RadPoint.java"


# instance fields
.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/telerik/android/common/math/RadPoint;->x:D

    .line 36
    iput-wide p3, p0, Lcom/telerik/android/common/math/RadPoint;->y:D

    .line 37
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadPoint;->x:D

    .line 55
    int-to-double v0, p2

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadPoint;->y:D

    .line 56
    return-void
.end method

.method public static getEmpty()Lcom/telerik/android/common/math/RadPoint;
    .locals 1

    .line 46
    new-instance v0, Lcom/telerik/android/common/math/RadPoint;

    invoke-direct {v0}, Lcom/telerik/android/common/math/RadPoint;-><init>()V

    return-object v0
.end method

.method public static getInfinityPoint()Lcom/telerik/android/common/math/RadPoint;
    .locals 3

    .line 50
    new-instance v0, Lcom/telerik/android/common/math/RadPoint;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/telerik/android/common/math/RadPoint;-><init>(DD)V

    return-object v0
.end method

.method public static round(Lcom/telerik/android/common/math/RadPoint;)Lcom/telerik/android/common/math/RadPoint;
    .locals 5
    .param p0, "point"    # Lcom/telerik/android/common/math/RadPoint;

    .line 66
    new-instance v0, Lcom/telerik/android/common/math/RadPoint;

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadPoint;->x:D

    iget-wide v3, p0, Lcom/telerik/android/common/math/RadPoint;->y:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telerik/android/common/math/RadPoint;-><init>(DD)V

    .line 67
    .local v0, "newPoint":Lcom/telerik/android/common/math/RadPoint;
    iget-wide v1, v0, Lcom/telerik/android/common/math/RadPoint;->x:D

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/telerik/android/common/math/RadPoint;->x:D

    .line 68
    iget-wide v1, v0, Lcom/telerik/android/common/math/RadPoint;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/telerik/android/common/math/RadPoint;->y:D

    .line 70
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    instance-of v0, p1, Lcom/telerik/android/common/math/RadPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    return v1

    .line 92
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 93
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/telerik/android/common/math/RadPoint;

    .line 94
    .local v2, "comparedPoint":Lcom/telerik/android/common/math/RadPoint;
    iget-wide v3, v2, Lcom/telerik/android/common/math/RadPoint;->y:D

    iget-wide v5, p0, Lcom/telerik/android/common/math/RadPoint;->y:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, v2, Lcom/telerik/android/common/math/RadPoint;->x:D

    iget-wide v5, p0, Lcom/telerik/android/common/math/RadPoint;->x:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getX()D
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadPoint;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadPoint;->y:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadPoint;->x:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadPoint;->y:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%f, %f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
