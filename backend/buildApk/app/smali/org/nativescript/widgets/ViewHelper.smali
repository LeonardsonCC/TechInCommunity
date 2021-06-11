.class public Lorg/nativescript/widgets/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# static fields
.field static final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lorg/nativescript/widgets/ViewHelper;->version:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getHeight(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 86
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 87
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v1

    .line 90
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getHorizontalAlignment(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 333
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_3

    .line 334
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 335
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    const-string v2, "center"

    return-object v2

    .line 342
    :cond_1
    const-string v2, "right"

    return-object v2

    .line 338
    :cond_2
    const-string v2, "left"

    return-object v2

    .line 350
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    :goto_0
    const-string v1, "stretch"

    return-object v1
.end method

.method public static getLetterspacing(Landroid/widget/TextView;)F
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 551
    sget v0, Lorg/nativescript/widgets/ViewHelper;->version:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 552
    invoke-virtual {p0}, Landroid/widget/TextView;->getLetterSpacing()F

    move-result v0

    return v0

    .line 555
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getMargin(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 125
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 126
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 127
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 130
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    return-object v1
.end method

.method public static getMarginBottom(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 288
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 289
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 290
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return v2

    .line 293
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getMarginLeft(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 153
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 154
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 155
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v2

    .line 158
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getMarginRight(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 243
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 244
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 245
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v2

    .line 248
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getMarginTop(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 198
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 199
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 200
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return v2

    .line 203
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getMinHeight(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public static getMinWidth(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public static getPadding(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 434
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getPaddingBottom(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public static getPaddingLeft(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public static getPaddingRight(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public static getPaddingTop(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 450
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public static getRotate(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 474
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    return v0
.end method

.method public static getRotateX(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 482
    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result v0

    return v0
.end method

.method public static getRotateY(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 490
    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result v0

    return v0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 502
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 510
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    return v0
.end method

.method public static getTranslateX(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 518
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public static getTranslateY(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 526
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public static getVerticalAlignment(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 383
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 384
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_3

    .line 385
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 386
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    const/16 v3, 0x50

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    const-string v2, "bottom"

    return-object v2

    .line 389
    :cond_1
    const-string v2, "top"

    return-object v2

    .line 391
    :cond_2
    const-string v2, "center"

    return-object v2

    .line 401
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    :goto_0
    const-string v1, "stretch"

    return-object v1
.end method

.method public static getWidth(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 47
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 48
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v1

    .line 51
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getZIndex(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 535
    sget v0, Lorg/nativescript/widgets/ViewHelper;->version:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 536
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v0

    return v0

    .line 539
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setHeight(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 95
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 96
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 99
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    instance-of v1, v0, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v1, :cond_1

    .line 101
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->heightPercent:F

    .line 104
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method public static setHeightPercent(Landroid/view/View;F)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 109
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 110
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 113
    :cond_0
    nop

    instance-of v1, v0, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v1, :cond_2

    .line 114
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 115
    .local v1, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    iput p1, v1, Lorg/nativescript/widgets/CommonLayoutParams;->heightPercent:F

    .line 116
    iget v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->gravity:I

    const/16 v3, 0x70

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    :goto_0
    iput v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->height:I

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .end local v1    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_2
    return-void
.end method

.method public static setHorizontalAlignment(Landroid/view/View;Ljava/lang/String;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 356
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 357
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 361
    :cond_0
    nop

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_6

    .line 362
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 363
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "right"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "left"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_2
    const-string v3, "middle"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "center"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v3, "stretch"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v5, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    goto :goto_1

    .line 375
    :cond_2
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x7

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 372
    :cond_3
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 373
    goto :goto_1

    .line 369
    :cond_4
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v2, v7

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 370
    goto :goto_1

    .line 365
    :cond_5
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v2, v6

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 366
    nop

    .line 378
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_4
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch
.end method

.method public static setLetterspacing(Landroid/widget/TextView;F)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "value"    # F

    .line 560
    sget v0, Lorg/nativescript/widgets/ViewHelper;->version:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 561
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 563
    :cond_0
    return-void
.end method

.method public static setMargin(Landroid/view/View;IIII)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 136
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 137
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 141
    :cond_0
    nop

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 142
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 143
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 144
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 145
    iput p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 146
    iput p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void
.end method

.method public static setMarginBottom(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 299
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 300
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 304
    :cond_0
    nop

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 305
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 306
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 307
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    instance-of v1, v0, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v1, :cond_2

    .line 311
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 312
    .local v1, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginPercent:F

    .line 313
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    .end local v1    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_2
    return-void
.end method

.method public static setMarginBottomPercent(Landroid/view/View;F)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 319
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 320
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 323
    :cond_0
    nop

    instance-of v1, v0, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v1, :cond_1

    .line 324
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 325
    .local v1, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    .line 326
    iput p1, v1, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginPercent:F

    .line 327
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    .end local v1    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_1
    return-void
.end method

.method public static setMarginLeft(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 164
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 165
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 169
    :cond_0
    nop

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 170
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 172
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    instance-of v1, v0, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v1, :cond_2

    .line 176
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 177
    .local v1, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginPercent:F

    .line 178
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .end local v1    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_2
    return-void
.end method

.method public static setMarginLeftPercent(Landroid/view/View;F)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 184
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 185
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 188
    :cond_0
    nop

    instance-of v1, v0, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v1, :cond_1

    .line 189
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 190
    .local v1, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    .line 191
    iput p1, v1, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginPercent:F

    .line 192
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .end local v1    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_1
    return-void
.end method

.method public static setMarginRight(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 254
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 255
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 259
    :cond_0
    nop

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 260
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 261
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 262
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    instance-of v1, v0, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v1, :cond_2

    .line 266
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 267
    .local v1, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginPercent:F

    .line 268
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .end local v1    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_2
    return-void
.end method

.method public static setMarginRightPercent(Landroid/view/View;F)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 273
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 274
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 275
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 278
    :cond_0
    nop

    instance-of v1, v0, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v1, :cond_1

    .line 279
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 280
    .local v1, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    .line 281
    iput p1, v1, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginPercent:F

    .line 282
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    .end local v1    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_1
    return-void
.end method

.method public static setMarginTop(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 209
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 210
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 214
    :cond_0
    nop

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 215
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 216
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 217
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    instance-of v1, v0, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v1, :cond_2

    .line 221
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 222
    .local v1, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginPercent:F

    .line 223
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    .end local v1    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_2
    return-void
.end method

.method public static setMarginTopPercent(Landroid/view/View;F)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 229
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 230
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 233
    :cond_0
    nop

    instance-of v1, v0, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v1, :cond_1

    .line 234
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 235
    .local v1, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    .line 236
    iput p1, v1, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginPercent:F

    .line 237
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    .end local v1    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_1
    return-void
.end method

.method public static setMinHeight(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 38
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 43
    return-void
.end method

.method public static setMinWidth(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 26
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 27
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 31
    return-void
.end method

.method public static setPadding(Landroid/view/View;IIII)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 438
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 439
    return-void
.end method

.method public static setPaddingBottom(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 470
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 471
    return-void
.end method

.method public static setPaddingLeft(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 446
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 447
    return-void
.end method

.method public static setPaddingRight(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 462
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 463
    return-void
.end method

.method public static setPaddingTop(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 455
    return-void
.end method

.method public static setPerspective(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 498
    invoke-virtual {p0, p1}, Landroid/view/View;->setCameraDistance(F)V

    .line 499
    return-void
.end method

.method public static setRotate(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 478
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 479
    return-void
.end method

.method public static setRotateX(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 486
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 487
    return-void
.end method

.method public static setRotateY(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 494
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 495
    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 506
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 507
    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 514
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 515
    return-void
.end method

.method public static setTranslateX(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 522
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 523
    return-void
.end method

.method public static setTranslateY(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 530
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 531
    return-void
.end method

.method public static setVerticalAlignment(Landroid/view/View;Ljava/lang/String;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # Ljava/lang/String;

    .line 405
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 407
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 408
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 412
    :cond_0
    nop

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_6

    .line 413
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 414
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "top"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "middle"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "center"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "bottom"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "stretch"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    goto :goto_1

    .line 426
    :cond_2
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x7

    or-int/lit8 v2, v2, 0x70

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 423
    :cond_3
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x7

    or-int/lit8 v2, v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 424
    goto :goto_1

    .line 420
    :cond_4
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x7

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 421
    goto :goto_1

    .line 416
    :cond_5
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x7

    or-int/lit8 v2, v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 417
    nop

    .line 429
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_4
        -0x527265d5 -> :sswitch_3
        -0x514d33ab -> :sswitch_2
        -0x4009266b -> :sswitch_1
        0x1c155 -> :sswitch_0
    .end sparse-switch
.end method

.method public static setWidth(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 56
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 57
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 60
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    instance-of v1, v0, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->widthPercent:F

    .line 65
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
.end method

.method public static setWidthPercent(Landroid/view/View;F)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 70
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 71
    new-instance v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    move-object v0, v1

    .line 74
    :cond_0
    nop

    instance-of v1, v0, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v1, :cond_2

    .line 75
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 76
    .local v1, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    iput p1, v1, Lorg/nativescript/widgets/CommonLayoutParams;->widthPercent:F

    .line 77
    iget v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->gravity:I

    const/4 v3, 0x7

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    :goto_0
    iput v2, v1, Lorg/nativescript/widgets/CommonLayoutParams;->width:I

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .end local v1    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_2
    return-void
.end method

.method public static setZIndex(Landroid/view/View;F)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F

    .line 544
    sget v0, Lorg/nativescript/widgets/ViewHelper;->version:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 545
    invoke-virtual {p0, p1}, Landroid/view/View;->setZ(F)V

    .line 547
    :cond_0
    return-void
.end method
