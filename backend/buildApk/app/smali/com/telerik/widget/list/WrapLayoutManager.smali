.class public Lcom/telerik/widget/list/WrapLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "WrapLayoutManager.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private availableHeight:I

.field private availableWidth:I

.field private currentLeft:I

.field private currentTop:I

.field private firstVisibleLine:I

.field private firstVisiblePosition:I

.field private gravity:I

.field private lastVisibleLine:I

.field private lastVisiblePosition:I

.field private layoutEnd:I

.field private layoutStart:I

.field private lineIndexToItemIndex:Landroid/util/SparseIntArray;

.field private lineIndexToLineSize:Landroid/util/SparseIntArray;

.field private lineSpacing:I

.field private maxSizeForCurrentLine:I

.field private minimumItemSpacing:I

.field private orientation:I

.field private recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field private scrollOffset:I

.field private scrollRangeCache:I

.field private state:Landroidx/recyclerview/widget/RecyclerView$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/WrapLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .line 71
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    .line 23
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->minimumItemSpacing:I

    .line 25
    const/4 v1, -0x1

    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollRangeCache:I

    .line 27
    const v2, 0x800033

    iput v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->gravity:I

    .line 29
    const/4 v2, 0x1

    iput v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    .line 40
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    .line 41
    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    .line 43
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->maxSizeForCurrentLine:I

    .line 44
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    .line 45
    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    .line 47
    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollOffset:I

    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    .line 72
    invoke-direct {p0, p2}, Lcom/telerik/widget/list/WrapLayoutManager;->setOrientation(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 78
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    .line 23
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->minimumItemSpacing:I

    .line 25
    const/4 v1, -0x1

    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollRangeCache:I

    .line 27
    const v2, 0x800033

    iput v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->gravity:I

    .line 29
    const/4 v2, 0x1

    iput v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    .line 40
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    .line 41
    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    .line 43
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->maxSizeForCurrentLine:I

    .line 44
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    .line 45
    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    .line 47
    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollOffset:I

    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    .line 79
    invoke-static {p1, p2, p3, p4}, Lcom/telerik/widget/list/WrapLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 80
    .local v0, "properties":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-direct {p0, v1}, Lcom/telerik/widget/list/WrapLayoutManager;->setOrientation(I)V

    .line 81
    return-void
.end method

.method private adjustLineForGravity(IZ)V
    .locals 4
    .param p1, "lineIndex"    # I
    .param p2, "addedToEnd"    # Z

    .line 607
    iget-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 608
    .local v0, "firstPosition":I
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    add-int/lit8 v2, p1, 0x1

    .line 610
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    nop

    .line 611
    .local v1, "count":I
    iget-object v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 612
    .local v2, "lineSize":I
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    sub-int v3, v0, v3

    .line 614
    .local v3, "firstLayoutIndex":I
    invoke-direct {p0, v3, v1, v2}, Lcom/telerik/widget/list/WrapLayoutManager;->adjustLineInLayoutDirection(III)V

    .line 615
    invoke-direct {p0, v3, v1}, Lcom/telerik/widget/list/WrapLayoutManager;->adjustLineInOrthogonalDirection(II)V

    .line 616
    return-void
.end method

.method private adjustLineInLayoutDirection(III)V
    .locals 7
    .param p1, "firstLayoutIndex"    # I
    .param p2, "count"    # I
    .param p3, "lineSize"    # I

    .line 662
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->viewsShouldBeMoved(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    return-void

    .line 666
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_3

    .line 667
    add-int v2, p1, v1

    .line 668
    .local v2, "position":I
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/WrapLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 669
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    if-ne v4, v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 670
    .local v4, "viewSize":I
    :goto_1
    sub-int v5, p3, v4

    .line 672
    .local v5, "difference":I
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->viewsShouldBeCentered(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 673
    div-int/lit8 v5, v5, 0x2

    .line 676
    :cond_2
    invoke-direct {p0, v3, v5, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->offsetView(Landroid/view/View;IZ)V

    .line 666
    .end local v2    # "position":I
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "viewSize":I
    .end local v5    # "difference":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 678
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private adjustLineInOrthogonalDirection(II)V
    .locals 11
    .param p1, "firstLayoutIndex"    # I
    .param p2, "count"    # I

    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->viewsShouldBeMoved(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    return-void

    .line 623
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/telerik/widget/list/WrapLayoutManager;->calculateUsedSpace(II)I

    move-result v1

    .line 624
    .local v1, "usedSpace":I
    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableWidth:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableHeight:I

    .line 626
    .local v2, "availableSize":I
    :goto_0
    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->viewsShouldBeStretched()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 627
    sub-int v4, v2, v1

    .line 628
    .local v4, "remainingSpace":I
    if-le p2, v3, :cond_2

    add-int/lit8 v3, p2, -0x1

    div-int v3, v4, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 629
    .local v3, "spacePerItem":I
    :goto_1
    add-int/lit8 v5, p2, -0x1

    mul-int v5, v5, v3

    sub-int v5, v4, v5

    .line 630
    .local v5, "remainingPixels":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, p2, :cond_4

    .line 631
    add-int v7, p1, v6

    .line 632
    .local v7, "position":I
    invoke-virtual {p0, v7}, Lcom/telerik/widget/list/WrapLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 633
    .local v8, "view":Landroid/view/View;
    mul-int v9, v3, v6

    .line 634
    .local v9, "offset":I
    if-lez v6, :cond_3

    .line 635
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v9, v10

    .line 637
    :cond_3
    invoke-direct {p0, v8, v9, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->offsetView(Landroid/view/View;IZ)V

    .line 630
    .end local v7    # "position":I
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "offset":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 639
    .end local v6    # "i":I
    :cond_4
    return-void

    .line 642
    .end local v3    # "spacePerItem":I
    .end local v4    # "remainingSpace":I
    .end local v5    # "remainingPixels":I
    :cond_5
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->viewsShouldBeCentered(Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 643
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, p2, :cond_6

    .line 644
    add-int v4, p1, v3

    .line 645
    .local v4, "position":I
    invoke-virtual {p0, v4}, Lcom/telerik/widget/list/WrapLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 646
    .local v5, "view":Landroid/view/View;
    sub-int v6, v2, v1

    div-int/lit8 v6, v6, 0x2

    .line 647
    .local v6, "offset":I
    invoke-direct {p0, v5, v6, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->offsetView(Landroid/view/View;IZ)V

    .line 643
    .end local v4    # "position":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "offset":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 649
    .end local v3    # "i":I
    :cond_6
    return-void

    .line 652
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, p2, :cond_8

    .line 653
    add-int v4, p1, v3

    .line 654
    .restart local v4    # "position":I
    invoke-virtual {p0, v4}, Lcom/telerik/widget/list/WrapLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 655
    .restart local v5    # "view":Landroid/view/View;
    sub-int v6, v2, v1

    .line 656
    .restart local v6    # "offset":I
    invoke-direct {p0, v5, v6, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->offsetView(Landroid/view/View;IZ)V

    .line 652
    .end local v4    # "position":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "offset":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 658
    .end local v3    # "i":I
    :cond_8
    return-void
.end method

.method private calculateAvailableSpace()V
    .locals 2

    .line 448
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableWidth:I

    .line 449
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableHeight:I

    .line 450
    return-void
.end method

.method private calculateOffset()I
    .locals 4

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "totalOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    if-ge v1, v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    add-int/2addr v2, v3

    .line 464
    .local v2, "offset":I
    add-int/2addr v0, v2

    .line 462
    .end local v2    # "offset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    neg-int v1, v1

    add-int/2addr v0, v1

    .line 467
    return v0
.end method

.method private calculateUsedSpace(II)I
    .locals 5
    .param p1, "firstIndex"    # I
    .param p2, "count"    # I

    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "space":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 585
    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/WrapLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 586
    .local v2, "view":Landroid/view/View;
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 587
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 589
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 591
    :goto_1
    if-lez v1, :cond_1

    .line 592
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->minimumItemSpacing:I

    add-int/2addr v0, v3

    .line 584
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private computeScrollOffset()I
    .locals 2

    .line 441
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->state:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->state:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method private ensureOnEdge(Z)V
    .locals 2
    .param p1, "isOnFirstRow"    # Z

    .line 425
    if-eqz p1, :cond_0

    .line 426
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->scrollInCorrectDirection(I)I

    goto :goto_0

    .line 427
    :cond_0
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableHeight:I

    if-le v0, v1, :cond_1

    .line 428
    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->scrollInCorrectDirection(I)I

    .line 430
    :cond_1
    :goto_0
    return-void
.end method

.method private ensureOnFirstRow(I)Z
    .locals 5
    .param p1, "position"    # I

    .line 412
    iget-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-gt v0, v2, :cond_0

    .line 413
    return v3

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 416
    .local v0, "secondLineFirst":I
    const/4 v1, 0x1

    .line 417
    .local v1, "scrollValue":I
    :goto_0
    if-gt v0, p1, :cond_1

    if-eqz v1, :cond_1

    .line 418
    iget-object v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/telerik/widget/list/WrapLayoutManager;->scrollInCorrectDirection(I)I

    move-result v1

    .line 419
    iget-object v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 421
    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private ensureVisible(I)V
    .locals 2
    .param p1, "position"    # I

    .line 402
    iget-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 403
    .local v0, "scrollValue":I
    :goto_0
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    if-ge p1, v1, :cond_0

    .line 404
    neg-int v1, v0

    invoke-direct {p0, v1}, Lcom/telerik/widget/list/WrapLayoutManager;->scrollInCorrectDirection(I)I

    goto :goto_0

    .line 406
    :cond_0
    :goto_1
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    if-le p1, v1, :cond_1

    .line 407
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->scrollInCorrectDirection(I)I

    goto :goto_1

    .line 409
    :cond_1
    return-void
.end method

.method private isThereEnoughSpaceForView(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 681
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 682
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableWidth:I

    if-le v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 684
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableHeight:I

    if-le v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private layoutView(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 744
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 745
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 747
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    add-int/2addr v2, v3

    .line 748
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    add-int/2addr v3, v4

    .line 749
    .local v3, "top":I
    add-int v4, v2, v0

    .line 750
    .local v4, "right":I
    add-int v5, v3, v1

    .line 752
    .local v5, "bottom":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 754
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v6, :cond_0

    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_0

    .line 755
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 756
    .local v7, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v8

    .line 757
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v8

    .line 758
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v8

    .line 759
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v8

    .line 762
    .end local v7    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    move-object v8, p0

    move-object v9, p1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/telerik/widget/list/WrapLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 763
    return-void
.end method

.method private makeRangeEstimate()I
    .locals 4

    .line 725
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableWidth:I

    .line 726
    .local v0, "size":I
    :goto_0
    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 727
    .local v2, "count":I
    if-gtz v2, :cond_1

    .line 728
    const/4 v1, 0x0

    return v1

    .line 730
    :cond_1
    int-to-float v1, v0

    int-to-float v3, v2

    div-float/2addr v1, v3

    .line 731
    .local v1, "factor":F
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    return v3
.end method

.method private moveToNextLine()V
    .locals 3

    .line 573
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 574
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->maxSizeForCurrentLine:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    goto :goto_0

    .line 576
    :cond_0
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->maxSizeForCurrentLine:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    .line 578
    :goto_0
    iget-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->maxSizeForCurrentLine:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 579
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->maxSizeForCurrentLine:I

    .line 580
    return-void
.end method

.method private offsetView(Landroid/view/View;IZ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "offsetInLayoutDirection"    # Z

    .line 735
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    .line 737
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 739
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 741
    :goto_0
    return-void
.end method

.method private realizeOneLineAtEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 7
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 537
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 538
    .local v0, "position":I
    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    .line 539
    iget-object v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 540
    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    .line 541
    iput v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    goto :goto_0

    .line 543
    :cond_0
    iput v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    .line 545
    :goto_0
    iget-object v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->state:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 546
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 547
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/WrapLayoutManager;->addView(Landroid/view/View;)V

    .line 548
    invoke-virtual {p0, v2, v3, v3}, Lcom/telerik/widget/list/WrapLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 549
    invoke-direct {p0, v2}, Lcom/telerik/widget/list/WrapLayoutManager;->isThereEnoughSpaceForView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 550
    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->moveToNextLine()V

    .line 551
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    invoke-direct {p0, v3, v1}, Lcom/telerik/widget/list/WrapLayoutManager;->adjustLineForGravity(IZ)V

    .line 552
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/WrapLayoutManager;->removeView(Landroid/view/View;)V

    .line 553
    return-void

    .line 555
    :cond_1
    invoke-direct {p0, v2}, Lcom/telerik/widget/list/WrapLayoutManager;->layoutView(Landroid/view/View;)V

    .line 556
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    .line 557
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    if-ne v4, v1, :cond_2

    .line 558
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/telerik/widget/list/WrapLayoutManager;->minimumItemSpacing:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    .line 559
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->maxSizeForCurrentLine:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->maxSizeForCurrentLine:I

    .line 560
    iget v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    goto :goto_1

    .line 562
    :cond_2
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/telerik/widget/list/WrapLayoutManager;->minimumItemSpacing:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    .line 563
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->maxSizeForCurrentLine:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->maxSizeForCurrentLine:I

    .line 564
    iget v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    .line 566
    :goto_1
    nop

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    .line 567
    goto :goto_0

    .line 568
    :cond_3
    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->moveToNextLine()V

    .line 569
    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    invoke-direct {p0, v2, v1}, Lcom/telerik/widget/list/WrapLayoutManager;->adjustLineForGravity(IZ)V

    .line 570
    return-void
.end method

.method private realizeOneLineAtStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 14
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 489
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 490
    .local v0, "previousLineIndex":I
    iget-object v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 491
    .local v2, "previousLineFirstPosition":I
    iget-object v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 493
    .local v3, "previousLineSize":I
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v5, 0x0

    if-ne v4, v1, :cond_0

    .line 494
    iput v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    .line 495
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    sub-int/2addr v4, v3

    iget v6, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    .line 496
    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    goto :goto_0

    .line 498
    :cond_0
    iput v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    .line 499
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    sub-int/2addr v4, v3

    iget v6, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    .line 500
    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    .line 503
    :goto_0
    move v4, v2

    .line 504
    .local v4, "firstPosition":I
    iget v6, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    .line 506
    .local v6, "lastPosition":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getChildCount()I

    move-result v7

    .line 507
    .local v7, "childCount":I
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 508
    .local v8, "viewCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v7, :cond_1

    .line 509
    invoke-virtual {p0, v9}, Lcom/telerik/widget/list/WrapLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 508
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 511
    .end local v9    # "i":I
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 512
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/telerik/widget/list/WrapLayoutManager;->detachView(Landroid/view/View;)V

    .line 511
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 515
    .end local v9    # "i":I
    :cond_2
    move v9, v4

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v6, :cond_4

    .line 516
    invoke-virtual {p1, v9}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v10

    .line 517
    .local v10, "view":Landroid/view/View;
    invoke-virtual {p0, v10}, Lcom/telerik/widget/list/WrapLayoutManager;->addView(Landroid/view/View;)V

    .line 518
    invoke-virtual {p0, v10, v5, v5}, Lcom/telerik/widget/list/WrapLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 519
    invoke-direct {p0, v10}, Lcom/telerik/widget/list/WrapLayoutManager;->layoutView(Landroid/view/View;)V

    .line 520
    iget v11, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    if-ne v11, v1, :cond_3

    .line 521
    iget v11, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget v13, p0, Lcom/telerik/widget/list/WrapLayoutManager;->minimumItemSpacing:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    iput v11, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    goto :goto_4

    .line 523
    :cond_3
    iget v11, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, p0, Lcom/telerik/widget/list/WrapLayoutManager;->minimumItemSpacing:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    iput v11, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    .line 515
    .end local v10    # "view":Landroid/view/View;
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 527
    .end local v9    # "i":I
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 528
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/telerik/widget/list/WrapLayoutManager;->attachView(Landroid/view/View;)V

    .line 527
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 531
    .end local v9    # "i":I
    :cond_5
    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    .line 532
    iget v9, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    sub-int/2addr v9, v1

    iput v9, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    .line 533
    invoke-direct {p0, v9, v5}, Lcom/telerik/widget/list/WrapLayoutManager;->adjustLineForGravity(IZ)V

    .line 534
    return-void
.end method

.method private recycleLine(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "lineIndex"    # I

    .line 471
    iget-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 473
    .local v0, "firstIndex":I
    iget-object v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    if-le v1, v2, :cond_0

    .line 474
    iget-object v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .local v1, "nextLineIndex":I
    goto :goto_0

    .line 477
    .end local v1    # "nextLineIndex":I
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getItemCount()I

    move-result v1

    .line 479
    .restart local v1    # "nextLineIndex":I
    :goto_0
    sub-int v2, v1, v0

    .line 480
    .local v2, "removedChildren":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 481
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/telerik/widget/list/WrapLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 482
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 483
    invoke-virtual {p0, v4, p1}, Lcom/telerik/widget/list/WrapLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 480
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 486
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private scrollInCorrectDirection(I)I
    .locals 2
    .param p1, "d"    # I

    .line 433
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->state:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, p1, v0, v1}, Lcom/telerik/widget/list/WrapLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->state:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, p1, v0, v1}, Lcom/telerik/widget/list/WrapLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method private setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .line 453
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_1
    :goto_0
    iput p1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    .line 458
    return-void
.end method

.method private spaceIsAvailable()Z
    .locals 4

    .line 714
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 715
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableHeight:I

    if-ge v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 717
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableWidth:I

    if-ge v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private thereAreMoreItems()Z
    .locals 3

    .line 721
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    iget-object v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->state:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private viewsShouldBeCentered(Z)Z
    .locals 4
    .param p1, "inLayoutDirection"    # Z

    .line 705
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    .line 707
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->gravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v3, 0x10

    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 709
    :cond_3
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->gravity:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private viewsShouldBeMoved(Z)Z
    .locals 4
    .param p1, "inLayoutDirection"    # Z

    .line 688
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 690
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->gravity:I

    const/16 v3, 0x70

    and-int/2addr v0, v3

    .line 691
    .local v0, "verticalGravity":I
    if-nez p1, :cond_2

    if-ne v0, v3, :cond_2

    .line 692
    return v2

    .line 694
    :cond_2
    const/16 v3, 0x10

    if-eq v0, v3, :cond_3

    const/16 v3, 0x50

    if-ne v0, v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    .line 696
    .end local v0    # "verticalGravity":I
    :cond_5
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->gravity:I

    const/4 v3, 0x7

    and-int/2addr v0, v3

    .line 697
    .local v0, "horizontalGravity":I
    if-nez p1, :cond_6

    if-ne v0, v3, :cond_6

    .line 698
    return v2

    .line 700
    :cond_6
    if-eq v0, v2, :cond_7

    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method private viewsShouldBeStretched()Z
    .locals 4

    .line 599
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 600
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->gravity:I

    const/4 v3, 0x7

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 602
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->gravity:I

    const/16 v3, 0x70

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .line 245
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 250
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 225
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableWidth:I

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 209
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    return v0

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->calculateOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 235
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollRangeCache:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->makeRangeEstimate()I

    move-result v0

    :cond_0
    return v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 230
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableHeight:I

    return v0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 217
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 218
    const/4 v0, 0x0

    return v0

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->calculateOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 240
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollRangeCache:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->makeRangeEstimate()I

    move-result v0

    :cond_0
    return v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 146
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->gravity:I

    return v0
.end method

.method public getLineSpacing()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    return v0
.end method

.method public getMinimumItemSpacing()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->minimumItemSpacing:I

    return v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 398
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->removeAllViews()V

    .line 399
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 366
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    if-le p2, v0, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->computeScrollOffset()I

    move-result v0

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollOffset:I

    .line 370
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->removeAllViews()V

    .line 371
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 375
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->removeAllViews()V

    .line 376
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 380
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    if-le p2, v0, :cond_0

    .line 381
    return-void

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->computeScrollOffset()I

    move-result v0

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollOffset:I

    .line 384
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->removeAllViews()V

    .line 385
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 389
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    if-le p2, v0, :cond_0

    .line 390
    return-void

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->computeScrollOffset()I

    move-result v0

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollOffset:I

    .line 393
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->removeAllViews()V

    .line 394
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 153
    iput-object p1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 154
    iput-object p2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->state:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 156
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/WrapLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 158
    return-void

    .line 160
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_5

    .line 164
    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->calculateAvailableSpace()V

    .line 166
    iput v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollRangeCache:I

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    .line 169
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    if-ne v3, v1, :cond_2

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableHeight:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableWidth:I

    :goto_0
    iput v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    .line 170
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    .line 171
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    .line 173
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    .line 174
    iput v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    .line 175
    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    .line 176
    iput v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    .line 178
    iget-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 179
    iget-object v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 181
    :goto_1
    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->spaceIsAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->thereAreMoreItems()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    if-ltz v0, :cond_4

    .line 183
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    if-ne v0, v1, :cond_3

    .line 184
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    goto :goto_2

    .line 186
    :cond_3
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    .line 189
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/WrapLayoutManager;->realizeOneLineAtEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_1

    .line 192
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 193
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 194
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->bindViewToPosition(Landroid/view/View;I)V

    .line 192
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 197
    .end local v0    # "i":I
    :cond_6
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollOffset:I

    if-eq v0, v2, :cond_8

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_8

    .line 198
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    if-ne v0, v1, :cond_7

    .line 199
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollOffset:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/telerik/widget/list/WrapLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    goto :goto_4

    .line 201
    :cond_7
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollOffset:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/telerik/widget/list/WrapLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 203
    :goto_4
    iput v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollOffset:I

    .line 205
    :cond_8
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 255
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    return v0

    .line 258
    :cond_0
    move v0, p1

    .line 259
    .local v0, "scrollDistance":I
    if-lez p1, :cond_2

    .line 260
    :goto_0
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableWidth:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_4

    .line 261
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 262
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentLeft:I

    .line 263
    invoke-direct {p0, p2}, Lcom/telerik/widget/list/WrapLayoutManager;->realizeOneLineAtEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_0

    .line 265
    :cond_1
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableWidth:I

    sub-int v0, v1, v2

    .line 266
    invoke-virtual {p0, p3}, Lcom/telerik/widget/list/WrapLayoutManager;->computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    invoke-virtual {p0, p3}, Lcom/telerik/widget/list/WrapLayoutManager;->computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollRangeCache:I

    goto :goto_0

    .line 270
    :cond_2
    :goto_1
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    if-ge v0, v1, :cond_4

    .line 271
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    if-lez v1, :cond_3

    .line 272
    invoke-direct {p0, p2}, Lcom/telerik/widget/list/WrapLayoutManager;->realizeOneLineAtStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_1

    .line 274
    :cond_3
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    goto :goto_1

    .line 278
    :cond_4
    neg-int v1, v0

    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/WrapLayoutManager;->offsetChildrenHorizontal(I)V

    .line 279
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    .line 280
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    .line 282
    iget-object v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 283
    .local v1, "firstLineWidth":I
    :goto_2
    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    if-gt v2, v3, :cond_5

    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 284
    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    invoke-direct {p0, p2, v2}, Lcom/telerik/widget/list/WrapLayoutManager;->recycleLine(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 285
    iget v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    .line 286
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    .line 287
    iget-object v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iput v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    .line 288
    iget-object v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    goto :goto_2

    .line 290
    :cond_5
    iget-object v2, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 291
    .local v2, "lastLineWidth":I
    :goto_3
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    if-lt v3, v4, :cond_6

    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    iget v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableWidth:I

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_6

    .line 292
    invoke-direct {p0, p2, v3}, Lcom/telerik/widget/list/WrapLayoutManager;->recycleLine(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 293
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    add-int/2addr v4, v2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    .line 294
    iget-object v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    .line 295
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    .line 296
    iget-object v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    goto :goto_3

    .line 298
    :cond_6
    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 356
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/WrapLayoutManager;->ensureVisible(I)V

    .line 360
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/WrapLayoutManager;->ensureOnFirstRow(I)Z

    move-result v0

    .line 361
    .local v0, "isOnFirstRow":Z
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/WrapLayoutManager;->ensureOnEdge(Z)V

    .line 362
    return-void

    .line 357
    .end local v0    # "isOnFirstRow":Z
    :cond_1
    :goto_0
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 7
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 303
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 304
    return v1

    .line 306
    :cond_0
    move v0, p1

    .line 307
    .local v0, "scrollDistance":I
    if-lez p1, :cond_3

    .line 308
    invoke-direct {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->thereAreMoreItems()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    :goto_0
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableHeight:I

    sub-int/2addr v1, v3

    if-ge v1, v0, :cond_5

    .line 310
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_1

    .line 311
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->currentTop:I

    .line 312
    invoke-direct {p0, p2}, Lcom/telerik/widget/list/WrapLayoutManager;->realizeOneLineAtEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_0

    .line 314
    :cond_1
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableHeight:I

    sub-int v0, v1, v3

    .line 315
    invoke-virtual {p0, p3}, Lcom/telerik/widget/list/WrapLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    invoke-virtual {p0, p3}, Lcom/telerik/widget/list/WrapLayoutManager;->computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->scrollRangeCache:I

    goto :goto_0

    .line 319
    :cond_2
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableHeight:I

    sub-int/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 320
    .local v1, "maxAvailableScroll":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 321
    .end local v1    # "maxAvailableScroll":I
    goto :goto_2

    .line 323
    :cond_3
    :goto_1
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    if-ge v0, v1, :cond_5

    .line 324
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    if-lez v1, :cond_4

    .line 325
    invoke-direct {p0, p2}, Lcom/telerik/widget/list/WrapLayoutManager;->realizeOneLineAtStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_1

    .line 327
    :cond_4
    iget v0, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    goto :goto_1

    .line 331
    :cond_5
    :goto_2
    neg-int v1, v0

    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/WrapLayoutManager;->offsetChildrenVertical(I)V

    .line 332
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    .line 333
    iget v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    .line 335
    iget-object v1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 336
    .local v1, "firstRowHeight":I
    :goto_3
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    if-gt v3, v4, :cond_6

    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 337
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    invoke-direct {p0, p2, v3}, Lcom/telerik/widget/list/WrapLayoutManager;->recycleLine(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 338
    iget v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    .line 339
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    iget v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutStart:I

    .line 340
    iget-object v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    iput v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisiblePosition:I

    .line 341
    iget-object v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    goto :goto_3

    .line 343
    :cond_6
    iget-object v3, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 344
    .local v3, "lastRowHeight":I
    :goto_4
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    iget v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->firstVisibleLine:I

    if-lt v4, v5, :cond_7

    iget v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    iget v6, p0, Lcom/telerik/widget/list/WrapLayoutManager;->availableHeight:I

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_7

    .line 345
    invoke-direct {p0, p2, v4}, Lcom/telerik/widget/list/WrapLayoutManager;->recycleLine(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    .line 346
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    iget v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    add-int/2addr v5, v3

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->layoutEnd:I

    .line 347
    iget-object v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToItemIndex:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisiblePosition:I

    .line 348
    iget v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lastVisibleLine:I

    .line 349
    iget-object v5, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineIndexToLineSize:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    goto :goto_4

    .line 351
    :cond_7
    return v0
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 100
    iput p1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->gravity:I

    .line 101
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->removeAllViews()V

    .line 102
    return-void
.end method

.method public setLineSpacing(I)V
    .locals 0
    .param p1, "lineSpacing"    # I

    .line 119
    iput p1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->lineSpacing:I

    .line 120
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->removeAllViews()V

    .line 121
    return-void
.end method

.method public setMinimumItemSpacing(I)V
    .locals 0
    .param p1, "minimumItemSpacing"    # I

    .line 140
    iput p1, p0, Lcom/telerik/widget/list/WrapLayoutManager;->minimumItemSpacing:I

    .line 141
    invoke-virtual {p0}, Lcom/telerik/widget/list/WrapLayoutManager;->removeAllViews()V

    .line 142
    return-void
.end method
