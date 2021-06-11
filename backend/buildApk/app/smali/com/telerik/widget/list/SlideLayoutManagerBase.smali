.class public abstract Lcom/telerik/widget/list/SlideLayoutManagerBase;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SlideLayoutManagerBase.java"


# static fields
.field static final ADJACENT_ITEM_COUNT:I = 0x1

.field static final DEFAULT_DURATION:J = 0xc8L

.field static final DIRECTION_BACKWARD:I = 0x2

.field static final DIRECTION_FORWARD:I = 0x1

.field static final DIRECTION_NONE:I = 0x0

.field static final HORIZONTAL:I = 0x0

.field static final VERTICAL:I = 0x1


# instance fields
.field private adapterChangeDeletedPositionsCount:I

.field private adapterChangeFirstDeletedPosition:I

.field private currentScrollDirection:I

.field protected frontViewHeight:I

.field protected frontViewPosition:I

.field protected frontViewWidth:I

.field private isScrollNew:Z

.field private isScrolling:Z

.field private lastScrollValue:I

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/CurrentPositionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:I

.field private pendingScrollPosition:I

.field private recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field private scrollEnabled:Z

.field private state:Landroidx/recyclerview/widget/RecyclerView$State;

.field private totalScrollValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scrollEnabled:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->listeners:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrolling:Z

    .line 36
    const/4 v1, -0x1

    iput v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterChangeFirstDeletedPosition:I

    .line 37
    iput v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterChangeDeletedPositionsCount:I

    .line 39
    iput v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->pendingScrollPosition:I

    .line 54
    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    return-void
.end method

.method private alphaForIndex(IIF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "progress"    # F

    .line 901
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->alphaForIndex(I)F

    move-result v0

    .line 902
    .local v0, "alphaStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousIndex(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextIndex(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->alphaForIndex(I)F

    move-result v1

    .line 903
    .local v1, "alphaEnd":F
    sub-float v2, v1, v0

    .line 904
    .local v2, "delta":F
    mul-float v3, v2, p3

    add-float/2addr v3, v0

    return v3
.end method

.method private isPositionValid(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 781
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getStateItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onScrollEnded()V
    .locals 2

    .line 785
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->lastScrollValue:I

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getDirection(I)I

    move-result v0

    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->currentScrollDirection:I

    if-ne v0, v1, :cond_1

    .line 786
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scrollToNext()V

    goto :goto_0

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scrollToPrevious()V

    goto :goto_0

    .line 792
    :cond_1
    invoke-direct {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scrollReset()V

    .line 794
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->currentScrollDirection:I

    .line 795
    return-void
.end method

.method private rotationForIndex(IIF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "progress"    # F

    .line 957
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationForIndex(I)F

    move-result v0

    .line 958
    .local v0, "rotationStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousIndex(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextIndex(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationForIndex(I)F

    move-result v1

    .line 959
    .local v1, "rotationEnd":F
    sub-float v2, v1, v0

    .line 960
    .local v2, "delta":F
    mul-float v3, v2, p3

    add-float/2addr v3, v0

    return v3
.end method

.method private rotationXForIndex(IIF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "progress"    # F

    .line 943
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationXForIndex(I)F

    move-result v0

    .line 944
    .local v0, "rotationXStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousIndex(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextIndex(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationXForIndex(I)F

    move-result v1

    .line 945
    .local v1, "rotationXEnd":F
    sub-float v2, v1, v0

    .line 946
    .local v2, "delta":F
    mul-float v3, v2, p3

    add-float/2addr v3, v0

    return v3
.end method

.method private rotationYForIndex(IIF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "progress"    # F

    .line 950
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationYForIndex(I)F

    move-result v0

    .line 951
    .local v0, "rotationYStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousIndex(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextIndex(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationYForIndex(I)F

    move-result v1

    .line 952
    .local v1, "rotationYEnd":F
    sub-float v2, v1, v0

    .line 953
    .local v2, "delta":F
    mul-float v3, v2, p3

    add-float/2addr v3, v0

    return v3
.end method

.method private scaleXForIndex(IIF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "progress"    # F

    .line 908
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scaleXForIndex(I)F

    move-result v0

    .line 909
    .local v0, "scaleStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousIndex(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextIndex(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scaleXForIndex(I)F

    move-result v1

    .line 910
    .local v1, "scaleEnd":F
    sub-float v2, v1, v0

    .line 911
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

    .line 915
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scaleYForIndex(I)F

    move-result v0

    .line 916
    .local v0, "scaleStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousIndex(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextIndex(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scaleYForIndex(I)F

    move-result v1

    .line 917
    .local v1, "scaleEnd":F
    sub-float v2, v1, v0

    .line 918
    .local v2, "delta":F
    mul-float v3, v2, p3

    add-float/2addr v3, v0

    return v3
.end method

.method private scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 5
    .param p1, "d"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 848
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrollEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 849
    iput-boolean v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrolling:Z

    .line 850
    return p1

    .line 853
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrolling:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_1

    goto :goto_1

    .line 857
    :cond_1
    iput p1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->lastScrollValue:I

    .line 859
    iget-boolean v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrollNew:Z

    if-eqz v0, :cond_3

    .line 860
    iput-boolean v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrollNew:Z

    .line 861
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getDirection(I)I

    move-result v0

    .line 862
    .local v0, "direction":I
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->canScroll(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 863
    iput-boolean v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrolling:Z

    .line 864
    return v1

    .line 866
    :cond_2
    iput-object p2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 867
    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->currentScrollDirection:I

    .line 868
    iput v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->totalScrollValue:I

    .line 871
    .end local v0    # "direction":I
    :cond_3
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->totalScrollValue:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->totalScrollValue:I

    .line 875
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->canScroll(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 876
    .local v0, "startBoundReached":Z
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->canScroll(I)Z

    move-result v2

    xor-int/2addr v2, v1

    .line 878
    .local v2, "endBoundReached":Z
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getDirection(I)I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 879
    if-eqz v2, :cond_4

    .line 880
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->findEndOffset()I

    move-result v1

    .line 881
    .local v1, "endOffset":I
    neg-int v3, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 882
    .local v1, "delta":I
    goto :goto_0

    .line 883
    .end local v1    # "delta":I
    :cond_4
    neg-int v1, p1

    .restart local v1    # "delta":I
    goto :goto_0

    .line 886
    .end local v1    # "delta":I
    :cond_5
    if-eqz v0, :cond_6

    .line 887
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->findStartOffset()I

    move-result v1

    .line 888
    .local v1, "startOffset":I
    neg-int v3, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 889
    .local v1, "delta":I
    goto :goto_0

    .line 890
    .end local v1    # "delta":I
    :cond_6
    neg-int v1, p1

    .line 894
    .restart local v1    # "delta":I
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->calculateScrollProgress()F

    move-result v3

    .line 895
    .local v3, "progress":F
    iget v4, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->currentScrollDirection:I

    invoke-virtual {p0, v4, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scrollViews(IF)V

    .line 897
    neg-int v4, v1

    return v4

    .line 854
    .end local v0    # "startBoundReached":Z
    .end local v1    # "delta":I
    .end local v2    # "endBoundReached":Z
    .end local v3    # "progress":F
    :cond_7
    :goto_1
    return v1
.end method

.method private scrollReset()V
    .locals 17

    .line 798
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 799
    .local v1, "childIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v2

    neg-int v2, v2

    .local v2, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v3

    if-gt v2, v3, :cond_9

    .line 800
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v3

    .line 801
    .local v3, "adapterPosition":I
    invoke-direct {v0, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 802
    goto/16 :goto_1

    .line 805
    :cond_0
    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 806
    .local v4, "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    .line 808
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->alphaForIndex(I)F

    move-result v5

    .line 809
    .local v5, "alpha":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationXForIndex(I)F

    move-result v6

    .line 810
    .local v6, "translationX":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationYForIndex(I)F

    move-result v7

    .line 811
    .local v7, "translationY":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scaleXForIndex(I)F

    move-result v8

    .line 812
    .local v8, "scaleX":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scaleYForIndex(I)F

    move-result v9

    .line 813
    .local v9, "scaleY":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationForIndex(I)F

    move-result v10

    .line 814
    .local v10, "rotation":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationXForIndex(I)F

    move-result v11

    .line 815
    .local v11, "rotationX":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationYForIndex(I)F

    move-result v12

    .line 817
    .local v12, "rotationY":F
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->animationDuration()J

    move-result-wide v13

    .line 818
    .local v13, "duration":J
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->animationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v15

    .line 820
    .local v15, "interpolator":Landroid/view/animation/Interpolator;
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v16

    cmpl-float v16, v16, v5

    if-eqz v16, :cond_1

    .line 821
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 823
    :cond_1
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_2

    .line 824
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 826
    :cond_2
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_3

    .line 827
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 829
    :cond_3
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_4

    .line 830
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 832
    :cond_4
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getScaleY(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_5

    .line 833
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 835
    :cond_5
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getRotation(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_6

    .line 836
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotation(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 838
    :cond_6
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getRotationX(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_7

    .line 839
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 841
    :cond_7
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getRotationY(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_8

    .line 842
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 799
    .end local v3    # "adapterPosition":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "alpha":F
    .end local v6    # "translationX":F
    .end local v7    # "translationY":F
    .end local v8    # "scaleX":F
    .end local v9    # "scaleY":F
    .end local v10    # "rotation":F
    .end local v11    # "rotationX":F
    .end local v12    # "rotationY":F
    .end local v13    # "duration":J
    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 845
    .end local v2    # "i":I
    :cond_9
    return-void
.end method

.method private translationXForIndex(IIF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "progress"    # F

    .line 922
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationXForIndex(I)F

    move-result v0

    .line 923
    .local v0, "translateXStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousIndex(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextIndex(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationXForIndex(I)F

    move-result v1

    .line 924
    .local v1, "translateXEnd":F
    sub-float v2, v1, v0

    .line 925
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

    .line 929
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationYForIndex(I)F

    move-result v0

    .line 930
    .local v0, "translateYStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousIndex(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextIndex(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationYForIndex(I)F

    move-result v1

    .line 931
    .local v1, "translateYEnd":F
    sub-float v2, v1, v0

    .line 932
    .local v2, "delta":F
    mul-float v3, v2, p3

    add-float/2addr v3, v0

    return v3
.end method

.method private translationZForIndex(IIF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "progress"    # F

    .line 936
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationZForIndex(I)F

    move-result v0

    .line 937
    .local v0, "translateZStart":F
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousIndex(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextIndex(I)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationZForIndex(I)F

    move-result v1

    .line 938
    .local v1, "translateZEnd":F
    sub-float v2, v1, v0

    .line 939
    .local v2, "delta":F
    mul-float v3, v2, p3

    add-float/2addr v3, v0

    return v3
.end method


# virtual methods
.method protected adapterPositionForLayoutIndex(I)I
    .locals 1
    .param p1, "layoutIndex"    # I

    .line 495
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    add-int/2addr v0, p1

    return v0
.end method

.method public addListener(Lcom/telerik/widget/list/CurrentPositionChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/CurrentPositionChangeListener;

    .line 62
    iget-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method protected alphaForIndex(I)F
    .locals 1
    .param p1, "layoutIndex"    # I

    .line 690
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected animationDuration()J
    .locals 2

    .line 572
    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method protected animationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 342
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0
.end method

.method protected applyLayoutTransformations(Landroid/view/View;IZ)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutIndex"    # I
    .param p3, "animate"    # Z

    .line 644
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->alphaForIndex(I)F

    move-result v3

    .line 645
    .local v3, "alpha":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationXForIndex(I)F

    move-result v4

    .line 646
    .local v4, "translationX":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationYForIndex(I)F

    move-result v5

    .line 647
    .local v5, "translationY":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationZForIndex(I)F

    move-result v6

    .line 648
    .local v6, "translationZ":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->elevationForIndex(I)I

    move-result v7

    int-to-float v7, v7

    .line 649
    .local v7, "elevation":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scaleXForIndex(I)F

    move-result v8

    .line 650
    .local v8, "scaleX":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scaleYForIndex(I)F

    move-result v9

    .line 651
    .local v9, "scaleY":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationForIndex(I)F

    move-result v10

    .line 652
    .local v10, "rotation":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationXForIndex(I)F

    move-result v11

    .line 653
    .local v11, "rotationX":F
    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationYForIndex(I)F

    move-result v12

    .line 655
    .local v12, "rotationY":F
    invoke-static {v1, v6}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 656
    invoke-static {v1, v7}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 658
    if-eqz p3, :cond_0

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->animationDuration()J

    move-result-wide v13

    .line 660
    .local v13, "duration":J
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->animationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v15

    .line 662
    .local v15, "interpolator":Landroid/view/animation/Interpolator;
    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 663
    invoke-virtual {v0, v15}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 664
    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 665
    invoke-virtual {v0, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 666
    invoke-virtual {v0, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 667
    invoke-virtual {v0, v8}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 668
    invoke-virtual {v0, v9}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 669
    invoke-virtual {v0, v10}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotation(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 670
    invoke-virtual {v0, v11}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 671
    invoke-virtual {v0, v12}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 673
    .end local v13    # "duration":J
    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 674
    :cond_0
    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 675
    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 676
    invoke-static {v1, v5}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 677
    invoke-static {v1, v8}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 678
    invoke-static {v1, v9}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 679
    invoke-static {v1, v10}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 680
    invoke-static {v1, v11}, Landroidx/core/view/ViewCompat;->setRotationX(Landroid/view/View;F)V

    .line 681
    invoke-static {v1, v12}, Landroidx/core/view/ViewCompat;->setRotationY(Landroid/view/View;F)V

    .line 683
    :goto_0
    return-void
.end method

.method protected calculateFrontViewSize()V
    .locals 2

    .line 364
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewWidth:I

    .line 365
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewHeight:I

    .line 366
    return-void
.end method

.method protected calculateScrollProgress()F
    .locals 3

    .line 613
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewHeight:I

    .line 614
    .local v0, "frontViewSize":I
    :goto_0
    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->currentScrollDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 615
    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->totalScrollValue:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 617
    :cond_1
    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->totalScrollValue:I

    neg-int v1, v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method protected canScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    .line 586
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getStateItemCount()I

    move-result v0

    .line 587
    .local v0, "itemCount":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    add-int/lit8 v4, v0, -0x1

    if-lt v3, v4, :cond_0

    .line 588
    return v1

    .line 590
    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    if-gtz v3, :cond_1

    .line 591
    return v1

    .line 593
    :cond_1
    return v2
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 143
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

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

    .line 148
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected elevationForIndex(I)I
    .locals 1
    .param p1, "layoutIndex"    # I

    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method protected fill(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 400
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->fillAtStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->fillAtEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 406
    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->fillAll(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 403
    nop

    .line 411
    :goto_0
    return-void
.end method

.method protected fillAll(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 414
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v0

    neg-int v0, v0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 415
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v1

    .line 416
    .local v1, "position":I
    invoke-direct {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 417
    goto :goto_1

    .line 419
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 420
    .local v2, "view":Landroid/view/View;
    iget v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewWidth:I

    iget v4, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewHeight:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->updateViewLayoutParams(Landroid/view/View;II)V

    .line 421
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->addView(Landroid/view/View;)V

    .line 422
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->measureChildWithMargins(Landroid/view/View;II)V

    .line 423
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->layoutView(Landroid/view/View;)V

    .line 424
    invoke-virtual {p0, v2, v0, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->applyLayoutTransformations(Landroid/view/View;IZ)V

    .line 414
    .end local v1    # "position":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected fillAtEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 504
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v0

    .line 505
    .local v0, "firstItemAdapterPosition":I
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 506
    invoke-virtual {p0, v3, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->detachAndScrapViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 509
    :cond_0
    const/4 v2, 0x0

    .line 510
    .local v2, "childIndex":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v4

    neg-int v4, v4

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v5

    sub-int/2addr v5, v1

    if-gt v4, v5, :cond_2

    .line 511
    invoke-virtual {p0, v4}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v5

    .line 512
    .local v5, "adapterPosition":I
    invoke-direct {p0, v5}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 513
    goto :goto_1

    .line 515
    :cond_1
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 516
    .local v6, "childView":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    .line 517
    invoke-virtual {p0, v6, v4, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->applyLayoutTransformations(Landroid/view/View;IZ)V

    .line 510
    .end local v5    # "adapterPosition":I
    .end local v6    # "childView":Landroid/view/View;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 519
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v1

    .line 521
    .local v1, "lastPosition":I
    invoke-direct {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 522
    return-void

    .line 524
    :cond_3
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    .line 525
    .local v4, "view":Landroid/view/View;
    iget v5, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewWidth:I

    iget v6, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewHeight:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->updateViewLayoutParams(Landroid/view/View;II)V

    .line 526
    invoke-virtual {p0, v4}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->addView(Landroid/view/View;)V

    .line 527
    invoke-virtual {p0, v4, v3, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->measureChildWithMargins(Landroid/view/View;II)V

    .line 528
    invoke-virtual {p0, v4}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->layoutView(Landroid/view/View;)V

    .line 529
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v5

    invoke-virtual {p0, v4, v5, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->applyLayoutTransformations(Landroid/view/View;IZ)V

    .line 530
    return-void
.end method

.method protected fillAtEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 6
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "layoutIndex"    # I

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "removedChildIndex":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v1

    neg-int v1, v1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 431
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v2

    .line 432
    .local v2, "adapterPosition":I
    if-ne v1, p3, :cond_1

    .line 433
    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getStateItemCount()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 434
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 438
    :cond_1
    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getStateItemCount()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 439
    add-int/lit8 v0, v0, 0x1

    .line 430
    .end local v2    # "adapterPosition":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "i":I
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 444
    invoke-virtual {p0, v0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->detachAndScrapViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 446
    :cond_4
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 447
    .local v1, "itemsToMoveCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 448
    add-int v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, p3, v2

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->applyLayoutTransformations(Landroid/view/View;IZ)V

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 450
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v2

    .line 451
    .local v2, "position":I
    invoke-direct {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 452
    return-void

    .line 454
    :cond_6
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v3

    .line 455
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewWidth:I

    iget v5, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewHeight:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->updateViewLayoutParams(Landroid/view/View;II)V

    .line 456
    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->addView(Landroid/view/View;)V

    .line 457
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->measureChildWithMargins(Landroid/view/View;II)V

    .line 458
    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->layoutView(Landroid/view/View;)V

    .line 459
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v5

    invoke-virtual {p0, v3, v5, v4}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->applyLayoutTransformations(Landroid/view/View;IZ)V

    .line 460
    return-void
.end method

.method protected fillAtStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 534
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v0

    .line 535
    .local v0, "lastItemAdapterPosition":I
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->detachAndScrapViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 539
    :cond_0
    const/4 v2, 0x0

    .line 540
    .local v2, "childIndex":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 541
    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v4

    .line 542
    .local v4, "adapterPosition":I
    invoke-direct {p0, v4}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 543
    goto :goto_1

    .line 545
    :cond_1
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 546
    .local v5, "childView":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    .line 547
    invoke-virtual {p0, v5, v3, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->applyLayoutTransformations(Landroid/view/View;IZ)V

    .line 540
    .end local v4    # "adapterPosition":I
    .end local v5    # "childView":Landroid/view/View;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 550
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v1

    .line 551
    .local v1, "firstPosition":I
    invoke-direct {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 552
    return-void

    .line 554
    :cond_3
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v3

    .line 555
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewWidth:I

    iget v5, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewHeight:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->updateViewLayoutParams(Landroid/view/View;II)V

    .line 556
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->addView(Landroid/view/View;I)V

    .line 557
    invoke-virtual {p0, v3, v4, v4}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->measureChildWithMargins(Landroid/view/View;II)V

    .line 558
    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->layoutView(Landroid/view/View;)V

    .line 559
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0, v3, v5, v4}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->applyLayoutTransformations(Landroid/view/View;IZ)V

    .line 560
    return-void
.end method

.method protected fillAtStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 5
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "layoutIndex"    # I

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "removedChildIndex":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v1

    neg-int v1, v1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 465
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v2

    .line 466
    .local v2, "adapterPosition":I
    if-ne v1, p3, :cond_1

    .line 467
    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getStateItemCount()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 468
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 472
    :cond_1
    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getStateItemCount()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 473
    add-int/lit8 v0, v0, 0x1

    .line 464
    .end local v2    # "adapterPosition":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    .end local v1    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->detachAndScrapViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 479
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 480
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v3, p3

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->applyLayoutTransformations(Landroid/view/View;IZ)V

    .line 479
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 482
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v1

    .line 483
    .local v1, "position":I
    invoke-direct {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 484
    return-void

    .line 486
    :cond_5
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 487
    .local v2, "view":Landroid/view/View;
    iget v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewWidth:I

    iget v4, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewHeight:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->updateViewLayoutParams(Landroid/view/View;II)V

    .line 488
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->addView(Landroid/view/View;I)V

    .line 489
    invoke-virtual {p0, v2, v3, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->measureChildWithMargins(Landroid/view/View;II)V

    .line 490
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->layoutView(Landroid/view/View;)V

    .line 491
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0, v2, v4, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->applyLayoutTransformations(Landroid/view/View;IZ)V

    .line 492
    return-void
.end method

.method protected findEndOffset()I
    .locals 6

    .line 604
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewHeight:I

    .line 605
    .local v0, "frontViewSize":I
    :goto_0
    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getPaddingEnd()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getPaddingBottom()I

    move-result v1

    .line 606
    .local v1, "padding":I
    :goto_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 607
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 608
    .local v3, "lastView":Landroid/view/View;
    iget v4, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getDecoratedRight(Landroid/view/View;)I

    move-result v4

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getDecoratedBottom(Landroid/view/View;)I

    move-result v4

    .line 609
    .local v4, "edge":I
    :goto_2
    sub-int v5, v0, v4

    add-int/2addr v5, v1

    return v5
.end method

.method protected findStartOffset()I
    .locals 2

    .line 597
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 598
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 600
    :cond_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 249
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method getChildAtFront()Landroid/view/View;
    .locals 4

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "childIndex":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v1

    neg-int v1, v1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 768
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v2

    .line 769
    .local v2, "adapterPosition":I
    invoke-direct {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 770
    goto :goto_1

    .line 772
    :cond_0
    if-nez v1, :cond_1

    .line 773
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 775
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 767
    .end local v2    # "adapterPosition":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 777
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    return v0
.end method

.method protected getDirection(I)I
    .locals 1
    .param p1, "scrollValue"    # I

    .line 576
    if-lez p1, :cond_0

    .line 577
    const/4 v0, 0x1

    return v0

    .line 579
    :cond_0
    if-gez p1, :cond_1

    .line 580
    const/4 v0, 0x2

    return v0

    .line 582
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected getOrientation()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

    return v0
.end method

.method protected getStateItemCount()I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->state:Landroidx/recyclerview/widget/RecyclerView$State;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected handleItemRemoved(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "layoutIndex"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 378
    if-gez p1, :cond_0

    .line 379
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 380
    .local v0, "oldPosition":I
    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 381
    invoke-virtual {p0, v0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->notifyListeners(II)V

    .line 382
    invoke-virtual {p0, p2, p3, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->fillAtStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 384
    .end local v0    # "oldPosition":I
    :cond_0
    if-nez p1, :cond_2

    .line 385
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getStateItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 386
    invoke-virtual {p0, p2, p3, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->fillAtEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    goto :goto_0

    .line 388
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 389
    .restart local v0    # "oldPosition":I
    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 390
    invoke-virtual {p0, v0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->notifyListeners(II)V

    .line 391
    invoke-virtual {p0, p2, p3, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->fillAtStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 394
    .end local v0    # "oldPosition":I
    :cond_2
    :goto_0
    if-lez p1, :cond_3

    .line 395
    invoke-virtual {p0, p2, p3, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->fillAtEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 397
    :cond_3
    return-void
.end method

.method public isScrollEnabled()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scrollEnabled:Z

    return v0
.end method

.method protected layoutIndexForAdapterPosition(I)I
    .locals 1
    .param p1, "adapterPosition"    # I

    .line 499
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected layoutView(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 622
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewWidth:I

    .line 623
    .local v0, "width":I
    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewHeight:I

    .line 625
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getPaddingLeft()I

    move-result v2

    .line 626
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getPaddingTop()I

    move-result v3

    .line 627
    .local v3, "top":I
    add-int v4, v2, v0

    .line 628
    .local v4, "right":I
    add-int v5, v3, v1

    .line 630
    .local v5, "bottom":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 632
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v6, :cond_0

    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_0

    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 634
    .local v7, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v8

    .line 635
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v8

    .line 636
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v8

    .line 637
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v8

    .line 640
    .end local v7    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    move-object v8, p0

    move-object v9, p1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->layoutDecorated(Landroid/view/View;IIII)V

    .line 641
    return-void
.end method

.method protected nextIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 736
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method protected nextItemsCount()I
    .locals 1

    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method protected notifyListeners(II)V
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 346
    iget-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/CurrentPositionChangeListener;

    .line 347
    .local v1, "listener":Lcom/telerik/widget/list/CurrentPositionChangeListener;
    invoke-interface {v1, p1, p2}, Lcom/telerik/widget/list/CurrentPositionChangeListener;->onCurrentPositionChanged(II)V

    .line 348
    .end local v1    # "listener":Lcom/telerik/widget/list/CurrentPositionChangeListener;
    goto :goto_0

    .line 349
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 189
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->removeAllViews()V

    .line 190
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 194
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v0

    .line 195
    .local v0, "lastAdapterPosition":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v1

    .line 196
    .local v1, "firstAdapterPosition":I
    if-le p2, v0, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    if-ge v2, v1, :cond_1

    .line 200
    iget v2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 201
    .local v2, "oldPosition":I
    iget v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 202
    invoke-virtual {p0, v2, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->notifyListeners(II)V

    .line 203
    return-void

    .line 205
    .end local v2    # "oldPosition":I
    :cond_1
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    if-gt v2, v3, :cond_2

    if-eqz v3, :cond_2

    .line 206
    iget v2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 207
    .restart local v2    # "oldPosition":I
    add-int/2addr v3, p3

    iput v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 208
    invoke-virtual {p0, v2, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->notifyListeners(II)V

    .line 210
    .end local v2    # "oldPosition":I
    :cond_2
    iget-object v2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 211
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 221
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->removeAllViews()V

    .line 222
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 226
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->removeAllViews()V

    .line 227
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 215
    iput p2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterChangeFirstDeletedPosition:I

    .line 216
    iput p3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterChangeDeletedPositionsCount:I

    .line 217
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "childIndex":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v1

    neg-int v1, v1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 233
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v2

    .line 234
    .local v2, "adapterPosition":I
    invoke-direct {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    goto :goto_1

    .line 237
    :cond_0
    if-lt v2, p2, :cond_2

    add-int v3, p2, p3

    if-ge v2, v3, :cond_2

    .line 238
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    return-void

    .line 241
    :cond_1
    iget-object v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->bindViewToPosition(Landroid/view/View;I)V

    .line 243
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 232
    .end local v2    # "adapterPosition":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 261
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 265
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 266
    return-void

    .line 269
    :cond_1
    iput-object p1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 270
    iput-object p2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->state:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 272
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->calculateFrontViewSize()V

    .line 274
    invoke-virtual {p0, v1, p1, p2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->fill(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto/16 :goto_5

    .line 275
    :cond_2
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->pendingScrollPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 276
    iget v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    if-eq v0, v3, :cond_3

    .line 277
    iget v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 278
    .local v3, "oldPosition":I
    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 279
    invoke-virtual {p0, v3, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->notifyListeners(II)V

    .line 281
    .end local v3    # "oldPosition":I
    :cond_3
    iput v2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->pendingScrollPosition:I

    .line 282
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 283
    invoke-virtual {p0, v1, p1, p2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->fill(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto/16 :goto_5

    .line 285
    :cond_4
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterChangeFirstDeletedPosition:I

    if-eq v0, v2, :cond_8

    .line 286
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v0

    .line 287
    .local v0, "lastAdapterPosition":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v1

    .line 288
    .local v1, "firstAdapterPosition":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 289
    .local v3, "minVisiblePosition":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 291
    .local v4, "maxVisiblePosition":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterChangeDeletedPositionsCount:I

    if-ge v5, v6, :cond_7

    .line 292
    iget v6, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterChangeFirstDeletedPosition:I

    add-int v7, v6, v5

    if-lt v7, v3, :cond_5

    add-int v7, v6, v5

    if-gt v7, v4, :cond_5

    .line 293
    add-int/2addr v6, v5

    invoke-virtual {p0, v6}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->layoutIndexForAdapterPosition(I)I

    move-result v6

    .line 294
    .local v6, "layoutIndex":I
    invoke-virtual {p0, v6, p1, p2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->handleItemRemoved(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .end local v6    # "layoutIndex":I
    goto :goto_1

    .line 295
    :cond_5
    iget v6, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterChangeFirstDeletedPosition:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    if-ge v6, v7, :cond_6

    .line 296
    iget v6, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 297
    .local v6, "oldPosition":I
    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 298
    invoke-virtual {p0, v6, v7}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->notifyListeners(II)V

    goto :goto_2

    .line 295
    .end local v6    # "oldPosition":I
    :cond_6
    :goto_1
    nop

    .line 291
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 301
    .end local v5    # "i":I
    :cond_7
    iput v2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterChangeFirstDeletedPosition:I

    .line 302
    iput v2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterChangeDeletedPositionsCount:I

    .line 303
    .end local v0    # "lastAdapterPosition":I
    .end local v1    # "firstAdapterPosition":I
    .end local v3    # "minVisiblePosition":I
    .end local v4    # "maxVisiblePosition":I
    goto :goto_5

    .line 304
    :cond_8
    const/4 v0, 0x0

    .line 305
    .local v0, "childIndex":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v1

    neg-int v1, v1

    .local v1, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v2

    if-gt v1, v2, :cond_a

    .line 306
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v2

    .line 307
    .local v2, "adapterPosition":I
    invoke-direct {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 308
    goto :goto_4

    .line 310
    :cond_9
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 311
    .local v3, "childView":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    .line 312
    invoke-virtual {p1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->bindViewToPosition(Landroid/view/View;I)V

    .line 305
    .end local v2    # "adapterPosition":I
    .end local v3    # "childView":Landroid/view/View;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 316
    .end local v0    # "childIndex":I
    .end local v1    # "i":I
    :cond_a
    :goto_5
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 167
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-boolean v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrolling:Z

    if-eqz v1, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->onScrollEnded()V

    .line 182
    :cond_1
    iput-boolean v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrolling:Z

    goto :goto_0

    .line 175
    :cond_2
    iput-boolean v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrolling:Z

    .line 176
    iput-boolean v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrollNew:Z

    .line 177
    goto :goto_0

    .line 169
    :cond_3
    iget-boolean v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrolling:Z

    if-eqz v1, :cond_4

    .line 170
    invoke-direct {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->onScrollEnded()V

    .line 172
    :cond_4
    iput-boolean v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isScrolling:Z

    .line 173
    nop

    .line 185
    :goto_0
    return-void
.end method

.method protected previousIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 732
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method protected previousItemsCount()I
    .locals 1

    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public removeListener(Lcom/telerik/widget/list/CurrentPositionChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/CurrentPositionChangeListener;

    .line 71
    iget-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method protected rotationForIndex(I)F
    .locals 1
    .param p1, "layoutIndex"    # I

    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method protected rotationXForIndex(I)F
    .locals 1
    .param p1, "layoutIndex"    # I

    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method protected rotationYForIndex(I)F
    .locals 1
    .param p1, "layoutIndex"    # I

    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method protected scaleXForIndex(I)F
    .locals 1
    .param p1, "layoutIndex"    # I

    .line 712
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected scaleYForIndex(I)F
    .locals 1
    .param p1, "layoutIndex"    # I

    .line 716
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 321
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    return v0

    .line 325
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToNext()V
    .locals 4

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->canScroll(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 83
    .local v1, "oldPosition":I
    iget v2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 84
    invoke-virtual {p0, v1, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->notifyListeners(II)V

    .line 85
    iget-object v2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->state:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v2, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->fill(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 86
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 153
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->notifyListeners(II)V

    .line 158
    iput p1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    goto :goto_0

    .line 160
    :cond_1
    iput p1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->pendingScrollPosition:I

    .line 161
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->requestLayout()V

    .line 163
    :goto_0
    return-void
.end method

.method public scrollToPrevious()V
    .locals 4

    .line 92
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->canScroll(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    return-void

    .line 96
    :cond_0
    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 97
    .local v1, "oldPosition":I
    iget v2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewPosition:I

    .line 98
    invoke-virtual {p0, v1, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->notifyListeners(II)V

    .line 99
    iget-object v2, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->recycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->state:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v2, v3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->fill(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 100
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 330
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 331
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method protected scrollViews(IF)V
    .locals 5
    .param p1, "direction"    # I
    .param p2, "progress"    # F

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "childIndex":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v1

    neg-int v1, v1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 742
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->adapterPositionForLayoutIndex(I)I

    move-result v2

    .line 743
    .local v2, "adapterPosition":I
    invoke-direct {p0, v2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 744
    goto :goto_1

    .line 747
    :cond_0
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 748
    .local v3, "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    .line 750
    invoke-direct {p0, v1, p1, p2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->alphaForIndex(IIF)F

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 752
    invoke-direct {p0, v1, p1, p2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scaleXForIndex(IIF)F

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 753
    invoke-direct {p0, v1, p1, p2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scaleYForIndex(IIF)F

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 755
    invoke-direct {p0, v1, p1, p2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationXForIndex(IIF)F

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 756
    invoke-direct {p0, v1, p1, p2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationYForIndex(IIF)F

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 757
    invoke-direct {p0, v1, p1, p2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->translationZForIndex(IIF)F

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 759
    invoke-direct {p0, v1, p1, p2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationForIndex(IIF)F

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 760
    invoke-direct {p0, v1, p1, p2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationXForIndex(IIF)F

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setRotationX(Landroid/view/View;F)V

    .line 761
    invoke-direct {p0, v1, p1, p2}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->rotationYForIndex(IIF)F

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setRotationY(Landroid/view/View;F)V

    .line 741
    .end local v2    # "adapterPosition":I
    .end local v3    # "view":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 763
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 135
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->isPositionValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scrollToPosition(I)V

    .line 139
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "position can\'t be less than 0 or more than the number of items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .line 352
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 353
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

    .line 356
    :cond_1
    :goto_0
    iput p1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

    .line 357
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "scrollEnabled"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scrollEnabled:Z

    .line 118
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method protected translationXForIndex(I)F
    .locals 1
    .param p1, "layoutIndex"    # I

    .line 694
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

    if-nez v0, :cond_0

    .line 695
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewWidth:I

    mul-int v0, v0, p1

    int-to-float v0, v0

    return v0

    .line 697
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected translationYForIndex(I)F
    .locals 2
    .param p1, "layoutIndex"    # I

    .line 701
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 702
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManagerBase;->frontViewHeight:I

    mul-int v0, v0, p1

    int-to-float v0, v0

    return v0

    .line 704
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected translationZForIndex(I)F
    .locals 1
    .param p1, "layoutIndex"    # I

    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method protected updateViewLayoutParams(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 567
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    :goto_0
    return-void
.end method
