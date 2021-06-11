.class public final Lcom/telerik/android/common/math/RadRect;
.super Ljava/lang/Object;
.source "RadRect.java"


# instance fields
.field private height:D

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "width"    # D
    .param p3, "height"    # D

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/telerik/android/common/math/RadRect;->width:D

    .line 43
    iput-wide p3, p0, Lcom/telerik/android/common/math/RadRect;->height:D

    .line 44
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "width"    # D
    .param p7, "height"    # D

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide p1, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    .line 70
    iput-wide p3, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    .line 71
    iput-wide p5, p0, Lcom/telerik/android/common/math/RadRect;->width:D

    .line 72
    iput-wide p7, p0, Lcom/telerik/android/common/math/RadRect;->height:D

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/telerik/android/common/math/RadPoint;Lcom/telerik/android/common/math/RadPoint;)V
    .locals 6
    .param p1, "point1"    # Lcom/telerik/android/common/math/RadPoint;
    .param p2, "point2"    # Lcom/telerik/android/common/math/RadPoint;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    .line 55
    invoke-virtual {p1}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    .line 56
    invoke-virtual {p1}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/telerik/android/common/math/RadPoint;->getX()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->width:D

    .line 57
    invoke-virtual {p1}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/telerik/android/common/math/RadPoint;->getY()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    sub-double/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->height:D

    .line 58
    return-void
.end method

.method public static centerRect(Lcom/telerik/android/common/math/RadRect;Lcom/telerik/android/common/math/RadRect;)Lcom/telerik/android/common/math/RadRect;
    .locals 9
    .param p0, "rect"    # Lcom/telerik/android/common/math/RadRect;
    .param p1, "bounds"    # Lcom/telerik/android/common/math/RadRect;

    .line 127
    move-object v0, p0

    .line 128
    .local v0, "newRect":Lcom/telerik/android/common/math/RadRect;
    iget-wide v1, p1, Lcom/telerik/android/common/math/RadRect;->width:D

    iget-wide v3, v0, Lcom/telerik/android/common/math/RadRect;->width:D

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 129
    .local v1, "offsetX":D
    iget-wide v5, p1, Lcom/telerik/android/common/math/RadRect;->height:D

    iget-wide v7, v0, Lcom/telerik/android/common/math/RadRect;->height:D

    sub-double/2addr v5, v7

    div-double/2addr v5, v3

    .line 131
    .local v5, "offsetY":D
    iget-wide v3, p1, Lcom/telerik/android/common/math/RadRect;->x:D

    add-double/2addr v3, v1

    iput-wide v3, v0, Lcom/telerik/android/common/math/RadRect;->x:D

    .line 132
    iget-wide v3, p1, Lcom/telerik/android/common/math/RadRect;->y:D

    add-double/2addr v3, v5

    iput-wide v3, v0, Lcom/telerik/android/common/math/RadRect;->y:D

    .line 134
    return-object v0
.end method

.method public static getEmpty()Lcom/telerik/android/common/math/RadRect;
    .locals 3

    .line 82
    new-instance v0, Lcom/telerik/android/common/math/RadRect;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/telerik/android/common/math/RadRect;-><init>(DD)V

    return-object v0
.end method

.method public static inflate(Lcom/telerik/android/common/math/RadRect;Lcom/telerik/android/common/RadThickness;)Lcom/telerik/android/common/math/RadRect;
    .locals 12
    .param p0, "rect"    # Lcom/telerik/android/common/math/RadRect;
    .param p1, "margins"    # Lcom/telerik/android/common/RadThickness;

    .line 146
    new-instance v9, Lcom/telerik/android/common/math/RadRect;

    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    iget-wide v2, p1, Lcom/telerik/android/common/RadThickness;->left:D

    add-double v1, v0, v2

    iget-wide v3, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    iget-wide v5, p1, Lcom/telerik/android/common/RadThickness;->top:D

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/telerik/android/common/math/RadRect;->width:D

    iget-wide v7, p1, Lcom/telerik/android/common/RadThickness;->left:D

    sub-double/2addr v5, v7

    iget-wide v7, p1, Lcom/telerik/android/common/RadThickness;->right:D

    sub-double/2addr v5, v7

    iget-wide v7, p0, Lcom/telerik/android/common/math/RadRect;->height:D

    iget-wide v10, p1, Lcom/telerik/android/common/RadThickness;->top:D

    sub-double/2addr v7, v10

    iget-wide v10, p1, Lcom/telerik/android/common/RadThickness;->bottom:D

    sub-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/telerik/android/common/math/RadRect;-><init>(DDDD)V

    return-object v9
.end method

.method public static round(Lcom/telerik/android/common/math/RadRect;)Lcom/telerik/android/common/math/RadRect;
    .locals 14
    .param p0, "rect"    # Lcom/telerik/android/common/math/RadRect;

    .line 92
    new-instance v9, Lcom/telerik/android/common/math/RadRect;

    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v4, v0

    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v6, v0

    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->width:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v10, v0

    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->height:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v12, v0

    move-object v0, v9

    move-wide v1, v4

    move-wide v3, v6

    move-wide v5, v10

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/telerik/android/common/math/RadRect;-><init>(DDDD)V

    return-object v9
.end method

.method public static toSquare(Lcom/telerik/android/common/math/RadRect;Z)Lcom/telerik/android/common/math/RadRect;
    .locals 9
    .param p0, "rect"    # Lcom/telerik/android/common/math/RadRect;
    .param p1, "offset"    # Z

    .line 105
    move-object v0, p0

    .line 106
    .local v0, "newRect":Lcom/telerik/android/common/math/RadRect;
    iget-wide v1, v0, Lcom/telerik/android/common/math/RadRect;->width:D

    iget-wide v3, v0, Lcom/telerik/android/common/math/RadRect;->height:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 108
    .local v1, "minLength":D
    if-eqz p1, :cond_0

    .line 109
    iget-wide v3, v0, Lcom/telerik/android/common/math/RadRect;->x:D

    iget-wide v5, v0, Lcom/telerik/android/common/math/RadRect;->width:D

    sub-double/2addr v5, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    iput-wide v3, v0, Lcom/telerik/android/common/math/RadRect;->x:D

    .line 110
    iget-wide v3, v0, Lcom/telerik/android/common/math/RadRect;->y:D

    iget-wide v5, v0, Lcom/telerik/android/common/math/RadRect;->height:D

    sub-double/2addr v5, v1

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    iput-wide v3, v0, Lcom/telerik/android/common/math/RadRect;->y:D

    .line 113
    :cond_0
    iput-wide v1, v0, Lcom/telerik/android/common/math/RadRect;->width:D

    .line 114
    iput-wide v1, v0, Lcom/telerik/android/common/math/RadRect;->height:D

    .line 116
    return-object v0
.end method


# virtual methods
.method public contains(DD)Z
    .locals 4
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 224
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/telerik/android/common/math/RadRect;->width:D

    add-double/2addr v0, v2

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    cmpl-double v2, p3, v0

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/telerik/android/common/math/RadRect;->height:D

    add-double/2addr v0, v2

    cmpg-double v2, p3, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Lcom/telerik/android/common/math/RadRect;)Z
    .locals 5
    .param p1, "rect"    # Lcom/telerik/android/common/math/RadRect;

    .line 235
    iget-wide v0, p1, Lcom/telerik/android/common/math/RadRect;->x:D

    iget-wide v2, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Lcom/telerik/android/common/math/RadRect;->getRight()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadRect;->getRight()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p1, Lcom/telerik/android/common/math/RadRect;->y:D

    iget-wide v2, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/telerik/android/common/math/RadRect;->getBottom()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadRect;->getBottom()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 206
    instance-of v0, p1, Lcom/telerik/android/common/math/RadRect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 207
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 208
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/telerik/android/common/math/RadRect;

    .line 209
    .local v2, "comparedRect":Lcom/telerik/android/common/math/RadRect;
    iget-wide v3, v2, Lcom/telerik/android/common/math/RadRect;->width:D

    iget-wide v5, p0, Lcom/telerik/android/common/math/RadRect;->width:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, v2, Lcom/telerik/android/common/math/RadRect;->height:D

    iget-wide v5, p0, Lcom/telerik/android/common/math/RadRect;->height:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, v2, Lcom/telerik/android/common/math/RadRect;->x:D

    iget-wide v5, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, v2, Lcom/telerik/android/common/math/RadRect;->y:D

    iget-wide v5, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getBottom()D
    .locals 4

    .line 155
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    iget-wide v2, p0, Lcom/telerik/android/common/math/RadRect;->height:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getCenter()Lcom/telerik/android/common/math/RadPoint;
    .locals 9

    .line 173
    new-instance v0, Lcom/telerik/android/common/math/RadPoint;

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    iget-wide v3, p0, Lcom/telerik/android/common/math/RadRect;->width:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    iget-wide v7, p0, Lcom/telerik/android/common/math/RadRect;->height:D

    div-double/2addr v7, v5

    add-double/2addr v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telerik/android/common/math/RadPoint;-><init>(DD)V

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->height:D

    return-wide v0
.end method

.method public getLocation()Lcom/telerik/android/common/math/RadPoint;
    .locals 5

    .line 182
    new-instance v0, Lcom/telerik/android/common/math/RadPoint;

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    iget-wide v3, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telerik/android/common/math/RadPoint;-><init>(DD)V

    return-object v0
.end method

.method public getRight()D
    .locals 4

    .line 164
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    iget-wide v2, p0, Lcom/telerik/android/common/math/RadRect;->width:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    return-wide v0
.end method

.method public intersectsWith(Lcom/telerik/android/common/math/RadRect;)Z
    .locals 5
    .param p1, "rect"    # Lcom/telerik/android/common/math/RadRect;

    .line 192
    iget-wide v0, p1, Lcom/telerik/android/common/math/RadRect;->x:D

    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadRect;->getRight()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Lcom/telerik/android/common/math/RadRect;->getRight()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p1, Lcom/telerik/android/common/math/RadRect;->y:D

    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadRect;->getBottom()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Lcom/telerik/android/common/math/RadRect;->getBottom()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSizeValid()Z
    .locals 5

    .line 201
    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->width:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lcom/telerik/android/common/math/RadRect;->height:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 241
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadRect;->x:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadRect;->y:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadRect;->width:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadRect;->height:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "X: %f, Y: %f, W: %f, H: %f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
