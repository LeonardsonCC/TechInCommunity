.class public final Lcom/telerik/android/common/math/RadCircle;
.super Ljava/lang/Object;
.source "RadCircle.java"


# instance fields
.field public centerX:D

.field public centerY:D

.field public radius:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadCircle;->radius:D

    .line 24
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "centerX"    # D
    .param p3, "centerY"    # D
    .param p5, "radius"    # D

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/telerik/android/common/math/RadCircle;->centerX:D

    .line 38
    iput-wide p3, p0, Lcom/telerik/android/common/math/RadCircle;->centerY:D

    .line 39
    iput-wide p5, p0, Lcom/telerik/android/common/math/RadCircle;->radius:D

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/telerik/android/common/math/RadPoint;D)V
    .locals 7
    .param p1, "center"    # Lcom/telerik/android/common/math/RadPoint;
    .param p2, "radius"    # D

    .line 33
    invoke-virtual {p1}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v3

    move-object v0, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/telerik/android/common/math/RadCircle;-><init>(DDD)V

    .line 34
    return-void
.end method


# virtual methods
.method public center()Lcom/telerik/android/common/math/RadPoint;
    .locals 5

    .line 43
    new-instance v0, Lcom/telerik/android/common/math/RadPoint;

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadCircle;->centerX:D

    iget-wide v3, p0, Lcom/telerik/android/common/math/RadCircle;->centerY:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telerik/android/common/math/RadPoint;-><init>(DD)V

    return-object v0
.end method

.method public getBounds()Lcom/telerik/android/common/math/RadRect;
    .locals 14

    .line 52
    new-instance v9, Lcom/telerik/android/common/math/RadRect;

    iget-wide v0, p0, Lcom/telerik/android/common/math/RadCircle;->centerX:D

    iget-wide v2, p0, Lcom/telerik/android/common/math/RadCircle;->radius:D

    sub-double v4, v0, v2

    iget-wide v0, p0, Lcom/telerik/android/common/math/RadCircle;->centerY:D

    sub-double v6, v0, v2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v10, v2, v0

    mul-double v12, v2, v0

    move-object v0, v9

    move-wide v1, v4

    move-wide v3, v6

    move-wide v5, v10

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/telerik/android/common/math/RadRect;-><init>(DDDD)V

    return-object v9
.end method
