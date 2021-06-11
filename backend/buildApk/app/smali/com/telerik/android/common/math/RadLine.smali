.class public final Lcom/telerik/android/common/math/RadLine;
.super Ljava/lang/Object;
.source "RadLine.java"


# instance fields
.field public x1:D

.field public x2:D

.field public y1:D

.field public y2:D


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "y1"    # F
    .param p4, "y2"    # F

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadLine;->x1:D

    .line 39
    float-to-double v0, p2

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadLine;->x2:D

    .line 40
    float-to-double v0, p3

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadLine;->y1:D

    .line 41
    float-to-double v0, p4

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadLine;->y2:D

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/telerik/android/common/math/RadPoint;Lcom/telerik/android/common/math/RadPoint;)V
    .locals 2
    .param p1, "point1"    # Lcom/telerik/android/common/math/RadPoint;
    .param p2, "point2"    # Lcom/telerik/android/common/math/RadPoint;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadLine;->x1:D

    .line 52
    invoke-virtual {p1}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadLine;->y1:D

    .line 53
    invoke-virtual {p2}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadLine;->x2:D

    .line 54
    invoke-virtual {p2}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadLine;->y2:D

    .line 55
    return-void
.end method

.method public static round(Lcom/telerik/android/common/math/RadLine;)Lcom/telerik/android/common/math/RadLine;
    .locals 8
    .param p0, "line"    # Lcom/telerik/android/common/math/RadLine;

    .line 65
    new-instance v0, Lcom/telerik/android/common/math/RadLine;

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadLine;->x1:D

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float v1, v1

    iget-wide v5, p0, Lcom/telerik/android/common/math/RadLine;->x2:D

    add-double/2addr v5, v3

    double-to-int v2, v5

    int-to-float v2, v2

    iget-wide v5, p0, Lcom/telerik/android/common/math/RadLine;->y1:D

    add-double/2addr v5, v3

    double-to-int v5, v5

    int-to-float v5, v5

    iget-wide v6, p0, Lcom/telerik/android/common/math/RadLine;->y2:D

    add-double/2addr v6, v3

    double-to-int v3, v6

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/telerik/android/common/math/RadLine;-><init>(FFFF)V

    return-object v0
.end method
