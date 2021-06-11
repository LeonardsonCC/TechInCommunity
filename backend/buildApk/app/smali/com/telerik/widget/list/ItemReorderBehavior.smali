.class public Lcom/telerik/widget/list/ItemReorderBehavior;
.super Lcom/telerik/widget/list/ListViewBehavior;
.source "ItemReorderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final SHADE_WIDTH:I = 0x8

.field private static final SMOOTH_SCROLL_DISTANCE:I = 0x3e8

.field private static final SMOOTH_SCROLL_TIMER_DELAY:I = 0x32


# instance fields
.field private currentScrollDirection:I

.field private isChangingPositions:Z

.field private isReorderInProgress:Z

.field private lastFoundView:Landroid/view/View;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;",
            ">;"
        }
    .end annotation
.end field

.field private previousReorderFromPosition:I

.field private reorderFromPosition:I

.field private reorderImage:Landroid/graphics/drawable/BitmapDrawable;

.field private reorderImageBoundsCurrent:Landroid/graphics/Rect;

.field private reorderImageBoundsOriginal:Landroid/graphics/Rect;

.field private reorderView:Landroid/view/View;

.field private scrollSpeedFactor:F

.field private scrollValue:I

.field private shadeBottom:Landroid/graphics/drawable/Drawable;

.field private shadeCorner:Landroid/graphics/drawable/Drawable;

.field private shadePaint:Landroid/graphics/Paint;

.field private shadeRight:Landroid/graphics/drawable/Drawable;

.field private shouldUpdateReorderView:Z

.field private timerHandler:Landroid/os/Handler;

.field private timerIsRunning:Z

.field private timerRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewBehavior;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->listeners:Ljava/util/List;

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->scrollSpeedFactor:F

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shouldUpdateReorderView:Z

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderFromPosition:I

    .line 51
    iput v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->previousReorderFromPosition:I

    .line 387
    iput-boolean v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->isChangingPositions:Z

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/telerik/widget/list/ItemReorderBehavior;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/ItemReorderBehavior;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->isChangingPositions:Z

    return p1
.end method

.method static synthetic access$100(Lcom/telerik/widget/list/ItemReorderBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/ItemReorderBehavior;

    .line 23
    iget v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->currentScrollDirection:I

    return v0
.end method

.method static synthetic access$200(Lcom/telerik/widget/list/ItemReorderBehavior;)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/ItemReorderBehavior;

    .line 23
    invoke-direct {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->performSmoothScroll()V

    return-void
.end method

.method static synthetic access$300(Lcom/telerik/widget/list/ItemReorderBehavior;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/ItemReorderBehavior;

    .line 23
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/telerik/widget/list/ItemReorderBehavior;)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/ItemReorderBehavior;

    .line 23
    invoke-direct {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderOnEdge()V

    return-void
.end method

.method private findViewByCoordinates(FFZ)Landroid/view/View;
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "returnNullOnHeaderViews"    # Z

    .line 474
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->lastFoundView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lcom/telerik/widget/list/ItemReorderBehavior;->isPointWithinView(FFLandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 475
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->lastFoundView:Landroid/view/View;

    return-object v0

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 478
    .local v0, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 479
    .local v1, "viewsCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_5

    .line 480
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 481
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, p1, p2, v4}, Lcom/telerik/widget/list/ItemReorderBehavior;->isPointWithinView(FFLandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 482
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/telerik/widget/list/RadListView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    .line 483
    .local v5, "itemViewType":I
    const/16 v6, -0x67

    if-eq v5, v6, :cond_2

    const/16 v6, -0x68

    if-eq v5, v6, :cond_2

    const/16 v6, -0x69

    if-eq v5, v6, :cond_2

    const/16 v6, -0x6a

    if-eq v5, v6, :cond_2

    const/16 v6, -0x6c

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 490
    :cond_1
    iput-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->lastFoundView:Landroid/view/View;

    .line 491
    return-object v4

    .line 488
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->lastFoundView:Landroid/view/View;

    :goto_2
    return-object v3

    .line 479
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "itemViewType":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 494
    .end local v2    # "i":I
    :cond_5
    return-object v3
.end method

.method private findViewById(J)Landroid/view/View;
    .locals 8
    .param p1, "id"    # J

    .line 461
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 462
    .local v0, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 463
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 464
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 465
    .local v3, "childView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/telerik/widget/list/RadListView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 466
    .local v4, "childViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_0

    .line 467
    return-object v3

    .line 463
    .end local v3    # "childView":Landroid/view/View;
    .end local v4    # "childViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private init()V
    .locals 3

    .line 499
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->scrollValue:I

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->currentScrollDirection:I

    .line 502
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerHandler:Landroid/os/Handler;

    .line 503
    new-instance v0, Lcom/telerik/widget/list/ItemReorderBehavior$2;

    invoke-direct {v0, p0}, Lcom/telerik/widget/list/ItemReorderBehavior$2;-><init>(Lcom/telerik/widget/list/ItemReorderBehavior;)V

    iput-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerRunnable:Ljava/lang/Runnable;

    .line 515
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadePaint:Landroid/graphics/Paint;

    .line 516
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/telerik/widget/list/R$color;->shadeColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 517
    .local v0, "shadeColor":I
    iget-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 519
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/telerik/widget/list/R$drawable;->shade_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadeBottom:Landroid/graphics/drawable/Drawable;

    .line 520
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/telerik/widget/list/R$drawable;->shade_corner:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadeCorner:Landroid/graphics/drawable/Drawable;

    .line 521
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/telerik/widget/list/R$drawable;->shade_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadeRight:Landroid/graphics/drawable/Drawable;

    .line 522
    return-void
.end method

.method private isPointWithinView(FFLandroid/view/View;)Z
    .locals 3
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "view"    # Landroid/view/View;

    .line 525
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    .line 526
    .local v0, "translationX":F
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    .line 527
    .local v1, "translationY":F
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    .line 528
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 529
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 530
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 527
    :goto_0
    return v2
.end method

.method private isReorderViewUpdated()Z
    .locals 5

    .line 450
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 451
    .local v0, "manager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 452
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 453
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    if-ne v3, v4, :cond_0

    .line 454
    const/4 v3, 0x0

    return v3

    .line 452
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 457
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private performSmoothScroll()V
    .locals 5

    .line 307
    iget v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->scrollValue:I

    int-to-float v0, v0

    iget v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->scrollSpeedFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 308
    .local v0, "distance":I
    iget v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->currentScrollDirection:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    neg-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 313
    .local v1, "scrollDistanceX":I
    :goto_0
    iget v3, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->currentScrollDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    neg-int v2, v0

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    move v2, v0

    .line 319
    .local v2, "scrollDistanceY":I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/telerik/widget/list/RadListView;->smoothScrollBy(II)V

    .line 320
    return-void
.end method

.method private reorderOnEdge()V
    .locals 4

    .line 368
    iget v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->currentScrollDirection:I

    if-nez v0, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 372
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 375
    .local v0, "elementIndex":I
    :goto_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v1

    .line 376
    .local v1, "wrapperAdapter":Lcom/telerik/widget/list/ListViewWrapperAdapter;
    if-nez v0, :cond_3

    .line 377
    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v2

    goto :goto_2

    .line 378
    :cond_3
    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getBottomViewsCount()I

    move-result v2

    neg-int v2, v2

    :goto_2
    nop

    .line 381
    .local v2, "correction":I
    add-int/2addr v0, v2

    .line 383
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 384
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderToView(Landroid/view/View;)V

    .line 385
    return-void
.end method

.method private reorderToView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 391
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    goto/16 :goto_4

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 398
    .local v0, "originalAdapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 399
    .local v1, "reorderToPosition":I
    iget v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->previousReorderFromPosition:I

    if-ne v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->isChangingPositions:Z

    if-eqz v2, :cond_1

    .line 405
    return-void

    .line 408
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->isChangingPositions:Z

    .line 409
    iget v3, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderFromPosition:I

    if-ltz v3, :cond_c

    if-gez v1, :cond_2

    goto/16 :goto_3

    .line 413
    :cond_2
    iget-object v3, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;

    .line 414
    .local v4, "listener":Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;
    iget v5, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderFromPosition:I

    invoke-interface {v4, v5, v1}, Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;->onReorderItem(II)V

    .line 415
    .end local v4    # "listener":Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;
    goto :goto_0

    .line 416
    :cond_3
    iget v3, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderFromPosition:I

    invoke-virtual {v0, v3, v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->reorderItem(II)Z

    move-result v3

    .line 417
    .local v3, "isReordered":Z
    if-nez v3, :cond_4

    .line 418
    return-void

    .line 420
    :cond_4
    invoke-direct {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->isReorderViewUpdated()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 421
    iput-boolean v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shouldUpdateReorderView:Z

    .line 424
    :cond_5
    iget v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderFromPosition:I

    if-eqz v4, :cond_a

    if-nez v1, :cond_6

    goto :goto_1

    .line 427
    :cond_6
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    .line 428
    .local v4, "lastIndexInOriginal":I
    if-eq v1, v4, :cond_7

    iget v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderFromPosition:I

    if-ne v2, v4, :cond_b

    .line 429
    :cond_7
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 430
    .local v2, "firstView":Landroid/view/View;
    if-ne p1, v2, :cond_8

    .line 431
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/telerik/widget/list/RadListView;->scrollToPosition(I)V

    goto :goto_2

    .line 432
    :cond_8
    iget-object v5, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    if-ne v5, v2, :cond_9

    .line 433
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/telerik/widget/list/RadListView;->scrollToPosition(I)V

    goto :goto_2

    .line 435
    :cond_9
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telerik/widget/list/RadListView;->scrollToEnd()V

    goto :goto_2

    .line 425
    .end local v2    # "firstView":Landroid/view/View;
    .end local v4    # "lastIndexInOriginal":I
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->scrollToStart()V

    .line 439
    :cond_b
    :goto_2
    iget v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderFromPosition:I

    iput v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->previousReorderFromPosition:I

    .line 440
    iput v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderFromPosition:I

    .line 441
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/telerik/widget/list/ItemReorderBehavior$1;

    invoke-direct {v4, p0}, Lcom/telerik/widget/list/ItemReorderBehavior$1;-><init>(Lcom/telerik/widget/list/ItemReorderBehavior;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    return-void

    .line 410
    .end local v3    # "isReordered":Z
    :cond_c
    :goto_3
    return-void

    .line 392
    .end local v0    # "originalAdapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    .end local v1    # "reorderToPosition":I
    :cond_d
    :goto_4
    return-void
.end method

.method private resetReordering()V
    .locals 3

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->isReorderInProgress:Z

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 297
    iput-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsOriginal:Landroid/graphics/Rect;

    .line 298
    iput-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    .line 299
    iput-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->lastFoundView:Landroid/view/View;

    .line 301
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/telerik/widget/list/RadListView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 302
    .local v1, "reorderViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 303
    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 304
    return-void
.end method

.method private tryScroll()Z
    .locals 4

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 325
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/telerik/widget/list/ItemReorderBehavior;->tryScroll(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/telerik/widget/list/ItemReorderBehavior;->tryScroll(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 328
    if-nez v0, :cond_3

    invoke-direct {p0, v3}, Lcom/telerik/widget/list/ItemReorderBehavior;->tryScroll(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/telerik/widget/list/ItemReorderBehavior;->tryScroll(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    move v0, v2

    .line 330
    :cond_5
    return v0
.end method

.method private tryScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "isImageOnEdge":Z
    const/4 v1, 0x0

    .line 336
    .local v1, "partOut":F
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    goto/16 :goto_4

    .line 350
    :cond_0
    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telerik/widget/list/RadListView;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v0, v4

    .line 351
    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telerik/widget/list/RadListView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    goto/16 :goto_4

    .line 342
    :cond_2
    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telerik/widget/list/RadListView;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v0, v4

    .line 343
    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telerik/widget/list/RadListView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 344
    goto :goto_4

    .line 346
    :cond_4
    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_5

    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telerik/widget/list/RadListView;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    move v0, v4

    .line 347
    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 348
    goto :goto_4

    .line 338
    :cond_6
    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_7

    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telerik/widget/list/RadListView;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_7

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    move v0, v4

    .line 339
    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 340
    nop

    .line 354
    :goto_4
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/telerik/widget/list/RadListView;->canScroll(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 355
    iput p1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->currentScrollDirection:I

    .line 356
    iput v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->scrollSpeedFactor:F

    .line 358
    iget-boolean v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerIsRunning:Z

    if-nez v2, :cond_8

    .line 359
    iput-boolean v3, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerIsRunning:Z

    .line 360
    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    :cond_8
    return v3

    .line 364
    :cond_9
    return v2
.end method


# virtual methods
.method public addListener(Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;

    .line 65
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method protected createReorderImage(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 273
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 275
    const/4 v8, 0x4

    .line 276
    .local v8, "offset":I
    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadeBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v2, v8, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 277
    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadeCorner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 278
    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadeRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    iget-object v7, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v6, v2

    iget-object v7, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v6, v2

    iget-object v7, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadePaint:Landroid/graphics/Paint;

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    iget-object v7, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 285
    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadeBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 286
    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadeCorner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 287
    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shadeRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 289
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 291
    .local v2, "reorderImage":Landroid/graphics/drawable/BitmapDrawable;
    return-object v2
.end method

.method protected endReorder(Z)V
    .locals 4
    .param p1, "isCanceled"    # Z

    .line 239
    iget-boolean v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->isReorderInProgress:Z

    if-nez v0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerIsRunning:Z

    if-eqz v0, :cond_1

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerIsRunning:Z

    .line 244
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;

    .line 248
    .local v1, "listener":Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;
    invoke-interface {v1}, Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;->onReorderFinished()V

    .line 249
    .end local v1    # "listener":Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;
    goto :goto_0

    .line 251
    :cond_2
    if-nez p1, :cond_3

    .line 253
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    .line 254
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    .line 256
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 258
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 259
    iget-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 263
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_3
    invoke-direct {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->resetReordering()V

    .line 264
    return-void
.end method

.method public getScrollValue()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->scrollValue:I

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->isReorderInProgress:Z

    return v0
.end method

.method protected moveReorderImage(FFFF)V
    .locals 7
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 209
    iget-boolean v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->isReorderInProgress:Z

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 213
    :cond_0
    sub-float v0, p3, p1

    .line 214
    .local v0, "distanceX":F
    sub-float v1, p4, p2

    .line 216
    .local v1, "distanceY":F
    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsOriginal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    float-to-int v3, v0

    add-int/2addr v2, v3

    .line 217
    .local v2, "reorderImageX":I
    iget-object v3, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsOriginal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    float-to-int v4, v1

    add-int/2addr v3, v4

    .line 219
    .local v3, "reorderImageY":I
    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 220
    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImage:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 221
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/telerik/widget/list/RadListView;->invalidate()V

    .line 223
    const/4 v4, 0x0

    invoke-direct {p0, p3, p4, v4}, Lcom/telerik/widget/list/ItemReorderBehavior;->findViewByCoordinates(FFZ)Landroid/view/View;

    move-result-object v5

    .line 225
    .local v5, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->tryScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 226
    iget-boolean v6, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerIsRunning:Z

    if-eqz v6, :cond_1

    .line 227
    iput-boolean v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerIsRunning:Z

    .line 228
    iget-object v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    :cond_1
    invoke-direct {p0, v5}, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderToView(Landroid/view/View;)V

    .line 233
    :cond_2
    return-void
.end method

.method public onAttached(Lcom/telerik/widget/list/RadListView;)V
    .locals 0
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 84
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAttached(Lcom/telerik/widget/list/RadListView;)V

    .line 85
    invoke-direct {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->init()V

    .line 86
    return-void
.end method

.method public onDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 122
    iget-boolean v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->isReorderInProgress:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImage:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    :cond_0
    iget-boolean v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shouldUpdateReorderView:Z

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/RadListView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    .line 128
    .local v0, "id":J
    invoke-direct {p0, v0, v1}, Lcom/telerik/widget/list/ItemReorderBehavior;->findViewById(J)Landroid/view/View;

    move-result-object v2

    .line 129
    .local v2, "reorderedView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/telerik/widget/list/RadListView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 132
    .local v3, "reorderedViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 133
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    iget-object v6, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/telerik/widget/list/RadListView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 136
    .local v5, "reorderViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 137
    iget-object v6, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iput-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    .line 140
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v6

    iget-object v7, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderFromPosition:I

    .line 141
    iput-boolean v4, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->shouldUpdateReorderView:Z

    .line 144
    .end local v0    # "id":J
    .end local v2    # "reorderedView":Landroid/view/View;
    .end local v3    # "reorderedViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v5    # "reorderViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent2"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v2"    # F

    .line 107
    iget-boolean v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->isReorderInProgress:Z

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "clickedView"    # Landroid/view/View;

    .line 90
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ItemReorderBehavior;->startReorder(Landroid/view/View;)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/telerik/widget/list/ItemReorderBehavior;->startReorder(FF)V

    .line 98
    return-void
.end method

.method public onLongPressDrag(FFFF)V
    .locals 0
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 102
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/telerik/widget/list/ItemReorderBehavior;->moveReorderImage(FFFF)V

    .line 103
    return-void
.end method

.method public onLongPressDragEnded(Z)Z
    .locals 1
    .param p1, "isCanceled"    # Z

    .line 112
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ItemReorderBehavior;->endReorder(Z)V

    .line 114
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeListener(Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;

    .line 74
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public setScrollValue(I)V
    .locals 0
    .param p1, "scrollValue"    # I

    .line 151
    iput p1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->scrollValue:I

    .line 152
    return-void
.end method

.method protected startReorder(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/telerik/widget/list/ItemReorderBehavior;->findViewByCoordinates(FFZ)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/ItemReorderBehavior;->startReorder(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method protected startReorder(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .line 155
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 160
    .local v0, "reorderFromPosition":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->canReorder(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    return-void

    .line 164
    :cond_1
    iput-object p1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    .line 165
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    iget-object v2, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderFromPosition:I

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->isReorderInProgress:Z

    .line 169
    iget-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;

    .line 170
    .local v2, "listener":Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;
    invoke-interface {v2, v0}, Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;->onReorderStarted(I)V

    .line 171
    .end local v2    # "listener":Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;
    goto :goto_0

    .line 172
    :cond_2
    const/4 v1, 0x4

    .line 173
    .local v1, "shadeOffset":I
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    float-to-int v2, v2

    .line 174
    .local v2, "translateX":I
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    float-to-int v3, v3

    .line 176
    .local v3, "translateY":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v1

    .line 177
    .local v4, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v5, v1

    .line 179
    .local v5, "top":I
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v6

    .line 180
    .local v6, "scaleX":F
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getScaleY(Landroid/view/View;)F

    move-result v7

    .line 182
    .local v7, "scaleY":F
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v6

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 183
    .local v8, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v7

    float-to-int v10, v10

    add-int/2addr v9, v10

    .line 185
    .local v9, "bottom":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v4, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsOriginal:Landroid/graphics/Rect;

    .line 186
    new-instance v10, Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsOriginal:Landroid/graphics/Rect;

    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v10, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    .line 188
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ItemReorderBehavior;->createReorderImage(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v11

    iput-object v11, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImage:Landroid/graphics/drawable/BitmapDrawable;

    .line 190
    iget-object v12, p0, Lcom/telerik/widget/list/ItemReorderBehavior;->reorderImageBoundsCurrent:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 192
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/telerik/widget/list/RadListView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v11

    .line 193
    .local v11, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 194
    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 195
    return-void

    .line 156
    .end local v0    # "reorderFromPosition":I
    .end local v1    # "shadeOffset":I
    .end local v2    # "translateX":I
    .end local v3    # "translateY":I
    .end local v4    # "left":I
    .end local v5    # "top":I
    .end local v6    # "scaleX":F
    .end local v7    # "scaleY":F
    .end local v8    # "right":I
    .end local v9    # "bottom":I
    .end local v11    # "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_3
    :goto_1
    return-void
.end method
