.class public Lcom/telerik/widget/list/DeckOfCardsLayoutManager;
.super Lcom/telerik/widget/list/SlideLayoutManagerBase;
.source "DeckOfCardsLayoutManager.java"


# static fields
.field private static final DEFAULT_PERSPECTIVES_COUNT:I = 0x2

.field private static final DIRECTION_BACKWARD:I = 0x2

.field private static final DIRECTION_FORWARD:I = 0x1

.field private static final DIRECTION_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private actualTranslateBottom:F

.field private actualTranslateLeft:F

.field private actualTranslateRight:F

.field private actualTranslateTop:F

.field private autoDissolve:Z

.field private defaultTranslation:F

.field private perspectiveChanges:Lcom/telerik/widget/list/PerspectiveChangeInfo;

.field private perspectiveItemsCount:I

.field private reverseLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .line 59
    invoke-direct {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->autoDissolve:Z

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveItemsCount:I

    .line 60
    invoke-virtual {p0, p2}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->setOrientation(I)V

    .line 61
    iput-boolean p3, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    .line 62
    new-instance v0, Lcom/telerik/widget/list/PerspectiveChangeInfo;

    invoke-direct {v0, p0}, Lcom/telerik/widget/list/PerspectiveChangeInfo;-><init>(Lcom/telerik/widget/list/DeckOfCardsLayoutManager;)V

    iput-object v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveChanges:Lcom/telerik/widget/list/PerspectiveChangeInfo;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/telerik/widget/list/R$dimen;->card_deck_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->defaultTranslation:F

    .line 64
    return-void
.end method

.method private alphaForIndex(IIF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "progress"    # F

    .line 444
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 p3, 0x0

    .line 445
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    .line 446
    :cond_1
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->alphaForIndex(I)F

    move-result v0

    .line 447
    .local v0, "alphaStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->alphaForIndex(I)F

    move-result v1

    .line 448
    .local v1, "alphaEnd":F
    sub-float v2, v1, v0

    .line 449
    .local v2, "delta":F
    mul-float v3, v2, p3

    add-float/2addr v3, v0

    return v3
.end method

.method private getHorizontalSpace()I
    .locals 2

    .line 505
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getVerticalSpace()I
    .locals 2

    .line 509
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private scaleForIndex(I)F
    .locals 4
    .param p1, "index"    # I

    .line 453
    if-ltz p1, :cond_0

    .line 454
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->previousItemsCount()I

    move-result v0

    neg-int v0, v0

    if-ge p1, v0, :cond_1

    .line 457
    const/4 p1, 0x1

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 460
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewWidth:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateLeft:F

    iget v3, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateRight:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 461
    .local v0, "targetWidth":F
    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewWidth:I

    int-to-float v1, v1

    div-float v1, v0, v1

    return v1

    .line 463
    .end local v0    # "targetWidth":F
    :cond_2
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewHeight:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateTop:F

    iget v3, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateBottom:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 464
    .local v0, "targetHeight":F
    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewHeight:I

    int-to-float v1, v1

    div-float v1, v0, v1

    return v1
.end method

.method private scaleXForIndex(IIF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "progress"    # F

    .line 469
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 p3, 0x0

    .line 470
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    .line 471
    :cond_1
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->scaleXForIndex(I)F

    move-result v0

    .line 472
    .local v0, "scaleStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->scaleXForIndex(I)F

    move-result v1

    .line 473
    .local v1, "scaleEnd":F
    sub-float v2, v1, v0

    .line 474
    .local v2, "delta":F
    mul-float v3, v2, p3

    add-float/2addr v3, v0

    return v3
.end method

.method private scaleYForIndex(IIF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "progress"    # F

    .line 478
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 p3, 0x0

    .line 479
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    .line 480
    :cond_1
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->scaleYForIndex(I)F

    move-result v0

    .line 481
    .local v0, "scaleStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->scaleYForIndex(I)F

    move-result v1

    .line 482
    .local v1, "scaleEnd":F
    sub-float v2, v1, v0

    .line 483
    .local v2, "delta":F
    mul-float v3, v2, p3

    add-float/2addr v3, v0

    return v3
.end method

.method private translationXForIndex(IIF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "progress"    # F

    .line 487
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 p3, 0x0

    .line 488
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    .line 489
    :cond_1
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->translationXForIndex(I)F

    move-result v0

    .line 490
    .local v0, "translateXStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->translationXForIndex(I)F

    move-result v1

    .line 491
    .local v1, "translateXEnd":F
    sub-float v2, v1, v0

    .line 492
    .local v2, "delta":F
    mul-float v3, v2, p3

    add-float/2addr v3, v0

    return v3
.end method

.method private translationYForIndex(IIF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "progress"    # F

    .line 496
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 p3, 0x0

    .line 497
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    .line 498
    :cond_1
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->translationYForIndex(I)F

    move-result v0

    .line 499
    .local v0, "translateYStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->translationYForIndex(I)F

    move-result v1

    .line 500
    .local v1, "translateYEnd":F
    sub-float v2, v1, v0

    .line 501
    .local v2, "delta":F
    mul-float v3, v2, p3

    add-float/2addr v3, v0

    return v3
.end method


# virtual methods
.method protected adapterPositionForLayoutIndex(I)I
    .locals 1
    .param p1, "layoutIndex"    # I

    .line 396
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    sub-int/2addr v0, p1

    return v0
.end method

.method protected alphaForIndex(I)F
    .locals 5
    .param p1, "index"    # I

    .line 284
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->previousItemsCount()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    .line 285
    return v1

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->autoDissolve:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->nextItemsCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 288
    return v1

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveChanges:Lcom/telerik/widget/list/PerspectiveChangeInfo;

    invoke-virtual {v0}, Lcom/telerik/widget/list/PerspectiveChangeInfo;->getAlpha()F

    move-result v0

    .line 291
    .local v0, "alpha":F
    float-to-double v1, v0

    neg-int v3, p1

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method protected animationDuration()J
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspective()Lcom/telerik/widget/list/PerspectiveChangeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/PerspectiveChangeInfo;->getAnimationDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateFrontViewSize()V
    .locals 5

    .line 227
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->removeAllViews()V

    .line 228
    iget-object v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveChanges:Lcom/telerik/widget/list/PerspectiveChangeInfo;

    invoke-virtual {v0}, Lcom/telerik/widget/list/PerspectiveChangeInfo;->getTranslateStart()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveChanges:Lcom/telerik/widget/list/PerspectiveChangeInfo;

    invoke-virtual {v0}, Lcom/telerik/widget/list/PerspectiveChangeInfo;->getTranslateStart()F

    move-result v0

    iput v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateLeft:F

    goto :goto_1

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->defaultTranslation:F

    neg-float v0, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->defaultTranslation:F

    :goto_0
    iput v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateLeft:F

    .line 233
    :goto_1
    iget-object v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveChanges:Lcom/telerik/widget/list/PerspectiveChangeInfo;

    invoke-virtual {v0}, Lcom/telerik/widget/list/PerspectiveChangeInfo;->getTranslateTop()F

    move-result v0

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveChanges:Lcom/telerik/widget/list/PerspectiveChangeInfo;

    invoke-virtual {v0}, Lcom/telerik/widget/list/PerspectiveChangeInfo;->getTranslateTop()F

    move-result v0

    iput v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateTop:F

    goto :goto_3

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getOrientation()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->defaultTranslation:F

    neg-float v0, v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->defaultTranslation:F

    :goto_2
    iput v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateTop:F

    .line 238
    :goto_3
    iget-object v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveChanges:Lcom/telerik/widget/list/PerspectiveChangeInfo;

    invoke-virtual {v0}, Lcom/telerik/widget/list/PerspectiveChangeInfo;->getTranslateEnd()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveChanges:Lcom/telerik/widget/list/PerspectiveChangeInfo;

    invoke-virtual {v0}, Lcom/telerik/widget/list/PerspectiveChangeInfo;->getTranslateEnd()F

    move-result v0

    iput v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateRight:F

    goto :goto_5

    .line 241
    :cond_4
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateLeft:F

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateLeft:F

    neg-float v0, v0

    :goto_4
    iput v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateRight:F

    .line 243
    :goto_5
    iget-object v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveChanges:Lcom/telerik/widget/list/PerspectiveChangeInfo;

    invoke-virtual {v0}, Lcom/telerik/widget/list/PerspectiveChangeInfo;->getTranslateBottom()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 244
    iget-object v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveChanges:Lcom/telerik/widget/list/PerspectiveChangeInfo;

    invoke-virtual {v0}, Lcom/telerik/widget/list/PerspectiveChangeInfo;->getTranslateBottom()F

    move-result v0

    iput v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateBottom:F

    goto :goto_7

    .line 246
    :cond_6
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getOrientation()I

    move-result v0

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateTop:F

    goto :goto_6

    :cond_7
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateTop:F

    neg-float v0, v0

    :goto_6
    iput v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateBottom:F

    .line 248
    :goto_7
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateLeft:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateRight:F

    neg-float v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v0, v2

    .line 249
    .local v0, "horizontalOffset":F
    invoke-direct {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getHorizontalSpace()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveItemsCount:I

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewWidth:I

    .line 250
    iget v2, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateTop:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateBottom:F

    neg-float v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v2, v1

    .line 251
    .local v2, "verticalOffset":F
    invoke-direct {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getVerticalSpace()I

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveItemsCount:I

    mul-int v3, v3, v4

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewHeight:I

    .line 252
    return-void
.end method

.method protected calculateScrollProgress()F
    .locals 3

    .line 256
    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 257
    .local v0, "sign":I
    :goto_0
    int-to-float v1, v0

    invoke-super {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->calculateScrollProgress()F

    move-result v2

    mul-float v1, v1, v2

    return v1
.end method

.method protected canScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    .line 267
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getStateItemCount()I

    move-result v0

    .line 268
    .local v0, "itemCount":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget v3, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    add-int/lit8 v4, v0, -0x1

    if-lt v3, v4, :cond_0

    .line 269
    return v1

    .line 271
    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    if-gtz v3, :cond_1

    .line 272
    return v1

    .line 274
    :cond_1
    return v2
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 163
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewWidth:I

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 168
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    return v0

    .line 171
    :cond_0
    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-eqz v0, :cond_1

    .line 172
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateRight:F

    neg-float v0, v0

    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 174
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateLeft:F

    neg-float v0, v0

    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 179
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    return v0

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-eqz v0, :cond_1

    .line 183
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewWidth:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateRight:F

    neg-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 185
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewWidth:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateLeft:F

    neg-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 5
    .param p1, "targetPosition"    # I

    .line 153
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 157
    .local v0, "firstChildPos":I
    if-ge p1, v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 158
    .local v1, "direction":I
    :goto_0
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    int-to-float v4, v1

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 190
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewHeight:I

    return v0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 195
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-eqz v0, :cond_1

    .line 199
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateBottom:F

    neg-float v0, v0

    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 201
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateTop:F

    neg-float v0, v0

    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 206
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-eqz v0, :cond_1

    .line 210
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewHeight:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateBottom:F

    neg-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 212
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewHeight:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateTop:F

    neg-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected elevationForIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 279
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspective()Lcom/telerik/widget/list/PerspectiveChangeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/PerspectiveChangeInfo;->getElevation()I

    move-result v0

    neg-int v0, v0

    mul-int v0, v0, p1

    return v0
.end method

.method protected fill(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 406
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->fillAtEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->fillAtStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 412
    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->fillAll(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 409
    nop

    .line 417
    :goto_0
    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 135
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getDirection(I)I
    .locals 1
    .param p1, "scrollValue"    # I

    .line 216
    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-eqz v0, :cond_1

    :cond_0
    if-gez p1, :cond_2

    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-eqz v0, :cond_2

    .line 217
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 219
    :cond_2
    if-gez p1, :cond_3

    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-eqz v0, :cond_4

    :cond_3
    if-lez p1, :cond_5

    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-eqz v0, :cond_5

    .line 220
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public getPerspectiveItemsCount()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveItemsCount:I

    return v0
.end method

.method protected handleItemRemoved(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "layoutIndex"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 422
    if-gez p1, :cond_0

    .line 423
    invoke-virtual {p0, p2, p3, p1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->fillAtStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 425
    :cond_0
    if-nez p1, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getStateItemCount()I

    move-result v0

    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    if-ne v0, v1, :cond_1

    .line 427
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    .line 428
    .local v0, "oldPosition":I
    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    .line 429
    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    invoke-virtual {p0, v0, v1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->notifyListeners(II)V

    .line 430
    invoke-virtual {p0, p2, p3, p1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->fillAtEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 431
    .end local v0    # "oldPosition":I
    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {p0, p2, p3, p1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->fillAtStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 435
    :cond_2
    :goto_0
    if-lez p1, :cond_3

    .line 436
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    .line 437
    .restart local v0    # "oldPosition":I
    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    .line 438
    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    invoke-virtual {p0, v0, v1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->notifyListeners(II)V

    .line 439
    invoke-virtual {p0, p2, p3, p1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->fillAtEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 441
    .end local v0    # "oldPosition":I
    :cond_3
    return-void
.end method

.method public isAutoDissolveFrontView()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->autoDissolve:Z

    return v0
.end method

.method protected layoutIndexForAdapterPosition(I)I
    .locals 1
    .param p1, "adapterPosition"    # I

    .line 401
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    sub-int/2addr v0, p1

    return v0
.end method

.method protected layoutView(Landroid/view/View;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;

    .line 358
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget v8, v6, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewWidth:I

    .line 359
    .local v8, "width":I
    iget v9, v6, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewHeight:I

    .line 360
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getPaddingLeft()I

    move-result v0

    iget v1, v6, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveItemsCount:I

    iget v2, v6, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateLeft:F

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    .line 361
    .local v0, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getPaddingTop()I

    move-result v1

    iget v2, v6, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveItemsCount:I

    iget v4, v6, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateTop:F

    neg-float v4, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    .line 362
    .local v1, "top":I
    add-int v2, v0, v8

    .line 363
    .local v2, "right":I
    add-int v3, v1, v9

    .line 365
    .local v3, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getOrientation()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iget-boolean v4, v6, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-eqz v4, :cond_0

    iget v4, v6, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewWidth:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v10, v4

    .line 366
    .local v10, "pivotX":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getOrientation()I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_1

    iget-boolean v4, v6, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-eqz v4, :cond_1

    iget v5, v6, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewHeight:I

    :cond_1
    move v11, v5

    .line 368
    .local v11, "pivotY":I
    int-to-float v4, v10

    invoke-static {v7, v4}, Landroidx/core/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 369
    int-to-float v4, v11

    invoke-static {v7, v4}, Landroidx/core/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 373
    .local v12, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v12, :cond_2

    instance-of v4, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 375
    .local v4, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v5

    .line 376
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v5

    .line 377
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 378
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    move v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    goto :goto_1

    .line 381
    .end local v4    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    .end local v0    # "left":I
    .end local v1    # "top":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    .local v13, "left":I
    .local v14, "top":I
    .local v15, "right":I
    .local v16, "bottom":I
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 382
    return-void
.end method

.method protected nextIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 353
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method protected nextItemsCount()I
    .locals 1

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 126
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 127
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 128
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "currentPosition"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 129
    .local v1, "currentPosition":I
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->scrollToPosition(I)V

    .line 131
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "currentPosition":I
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->frontViewPosition:I

    const-string v2, "currentPosition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    return-object v0
.end method

.method public perspective()Lcom/telerik/widget/list/PerspectiveChangeInfo;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveChanges:Lcom/telerik/widget/list/PerspectiveChangeInfo;

    return-object v0
.end method

.method protected previousIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 348
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method protected previousItemsCount()I
    .locals 1

    .line 391
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveItemsCount:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected scaleXForIndex(I)F
    .locals 1
    .param p1, "index"    # I

    .line 296
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->scaleForIndex(I)F

    move-result v0

    return v0
.end method

.method protected scaleYForIndex(I)F
    .locals 1
    .param p1, "index"    # I

    .line 301
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->scaleForIndex(I)F

    move-result v0

    return v0
.end method

.method public setAutoDissolveFrontView(Z)V
    .locals 0
    .param p1, "changeFrontViewAlpha"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->autoDissolve:Z

    .line 90
    return-void
.end method

.method public setPerspectiveItemsCount(I)V
    .locals 2
    .param p1, "perspectiveItemsCount"    # I

    .line 107
    if-ltz p1, :cond_1

    .line 110
    iget v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveItemsCount:I

    if-ne v0, p1, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    iput p1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->perspectiveItemsCount:I

    .line 114
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->calculateFrontViewSize()V

    .line 115
    return-void

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The perspective items count can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 141
    new-instance v0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager$1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager$1;-><init>(Lcom/telerik/widget/list/DeckOfCardsLayoutManager;Landroid/content/Context;)V

    .line 148
    .local v0, "smoothScroller":Landroidx/recyclerview/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 150
    return-void
.end method

.method protected translationXForIndex(I)F
    .locals 2
    .param p1, "index"    # I

    .line 306
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->previousItemsCount()I

    move-result v0

    neg-int v0, v0

    if-gt p1, v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->previousItemsCount()I

    move-result v0

    neg-int v0, v0

    add-int/lit8 p1, v0, 0x1

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->nextItemsCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 311
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_2

    .line 312
    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-nez v0, :cond_1

    .line 313
    invoke-direct {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getHorizontalSpace()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getHorizontalSpace()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    return v0

    .line 318
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 322
    :cond_3
    neg-int v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateLeft:F

    mul-float v0, v0, v1

    return v0
.end method

.method protected translationYForIndex(I)F
    .locals 2
    .param p1, "index"    # I

    .line 327
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->previousItemsCount()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x1

    if-gt p1, v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->previousItemsCount()I

    move-result v0

    neg-int v0, v0

    add-int/lit8 p1, v0, 0x1

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->nextItemsCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getOrientation()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 333
    iget-boolean v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->reverseLayout:Z

    if-nez v0, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getVerticalSpace()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 336
    :cond_1
    invoke-direct {p0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->getVerticalSpace()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    return v0

    .line 339
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 343
    :cond_3
    neg-int v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->actualTranslateTop:F

    mul-float v0, v0, v1

    return v0
.end method
