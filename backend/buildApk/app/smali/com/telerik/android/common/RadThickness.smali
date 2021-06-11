.class public Lcom/telerik/android/common/RadThickness;
.super Ljava/lang/Object;
.source "RadThickness.java"


# instance fields
.field public bottom:D

.field public left:D

.field public right:D

.field public top:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/telerik/android/common/RadThickness;->left:D

    .line 16
    iput-wide v0, p0, Lcom/telerik/android/common/RadThickness;->top:D

    .line 21
    iput-wide v0, p0, Lcom/telerik/android/common/RadThickness;->right:D

    .line 26
    iput-wide v0, p0, Lcom/telerik/android/common/RadThickness;->bottom:D

    .line 29
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 2
    .param p1, "left"    # D
    .param p3, "top"    # D
    .param p5, "right"    # D
    .param p7, "bottom"    # D

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/telerik/android/common/RadThickness;->left:D

    .line 16
    iput-wide v0, p0, Lcom/telerik/android/common/RadThickness;->top:D

    .line 21
    iput-wide v0, p0, Lcom/telerik/android/common/RadThickness;->right:D

    .line 26
    iput-wide v0, p0, Lcom/telerik/android/common/RadThickness;->bottom:D

    .line 41
    iput-wide p1, p0, Lcom/telerik/android/common/RadThickness;->left:D

    .line 42
    iput-wide p3, p0, Lcom/telerik/android/common/RadThickness;->top:D

    .line 43
    iput-wide p5, p0, Lcom/telerik/android/common/RadThickness;->right:D

    .line 44
    iput-wide p7, p0, Lcom/telerik/android/common/RadThickness;->bottom:D

    .line 45
    return-void
.end method

.method public static getEmpty()Lcom/telerik/android/common/RadThickness;
    .locals 1

    .line 53
    new-instance v0, Lcom/telerik/android/common/RadThickness;

    invoke-direct {v0}, Lcom/telerik/android/common/RadThickness;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/telerik/android/common/RadThickness;
    .locals 10

    .line 72
    new-instance v9, Lcom/telerik/android/common/RadThickness;

    iget-wide v1, p0, Lcom/telerik/android/common/RadThickness;->left:D

    iget-wide v3, p0, Lcom/telerik/android/common/RadThickness;->top:D

    iget-wide v5, p0, Lcom/telerik/android/common/RadThickness;->right:D

    iget-wide v7, p0, Lcom/telerik/android/common/RadThickness;->bottom:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/telerik/android/common/RadThickness;-><init>(DDDD)V

    return-object v9
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/telerik/android/common/RadThickness;->clone()Lcom/telerik/android/common/RadThickness;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 58
    instance-of v0, p1, Lcom/telerik/android/common/RadThickness;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    return v1

    .line 62
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 63
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/telerik/android/common/RadThickness;

    .line 64
    .local v2, "comparedThickness":Lcom/telerik/android/common/RadThickness;
    iget-wide v3, v2, Lcom/telerik/android/common/RadThickness;->bottom:D

    iget-wide v5, p0, Lcom/telerik/android/common/RadThickness;->bottom:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, v2, Lcom/telerik/android/common/RadThickness;->left:D

    iget-wide v5, p0, Lcom/telerik/android/common/RadThickness;->left:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, v2, Lcom/telerik/android/common/RadThickness;->right:D

    iget-wide v5, p0, Lcom/telerik/android/common/RadThickness;->right:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, v2, Lcom/telerik/android/common/RadThickness;->top:D

    iget-wide v5, p0, Lcom/telerik/android/common/RadThickness;->top:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
