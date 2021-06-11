.class Lcom/telerik/widget/list/ListViewWrapperAdapter;
.super Lcom/telerik/widget/list/ListViewAdapterBase;
.source "ListViewWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;
    }
.end annotation


# instance fields
.field adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

.field private bottomIndicatorView:Landroid/view/View;

.field collapsibleGroupsBehavior:Lcom/telerik/widget/list/CollapsibleGroupsBehavior;

.field private dataObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
            "Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;",
            ">;"
        }
    .end annotation
.end field

.field private emptyView:Landroid/view/View;

.field private footerView:Landroid/view/View;

.field private headerView:Landroid/view/View;

.field private isEmptyChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private isLoadAutomatic:Z

.field private listViewHeight:I

.field private listViewWidth:I

.field private orientationHorizontal:Z

.field private owner:Lcom/telerik/widget/list/RadListView;

.field private remainingItemsToLoad:I

.field private shouldLoadMoreOnDemand:Z

.field private swipeElementHeight:I

.field private swipeElementWidth:I

.field private swipePosition:I

.field private topIndicatorView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewAdapterBase;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipePosition:I

    .line 23
    iput v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipeElementWidth:I

    .line 24
    iput v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipeElementHeight:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->orientationHorizontal:Z

    .line 36
    iput-boolean v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->shouldLoadMoreOnDemand:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->dataObservers:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->isEmptyChangedListeners:Ljava/util/List;

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/telerik/widget/list/RadListView;Lcom/telerik/widget/list/ListViewAdapterBase;)V
    .locals 1
    .param p1, "owner"    # Lcom/telerik/widget/list/RadListView;
    .param p2, "adapter"    # Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 51
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewAdapterBase;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipePosition:I

    .line 23
    iput v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipeElementWidth:I

    .line 24
    iput v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipeElementHeight:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->orientationHorizontal:Z

    .line 36
    iput-boolean v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->shouldLoadMoreOnDemand:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->dataObservers:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->isEmptyChangedListeners:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->owner:Lcom/telerik/widget/list/RadListView;

    .line 53
    iput-object p2, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 54
    return-void
.end method

.method private bindEmptyContent(Lcom/telerik/widget/list/ListViewHolder;)V
    .locals 6
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;

    .line 326
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 327
    .local v0, "emptyViewVisibility":I
    :goto_1
    if-nez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 329
    .local v2, "emptyViewShouldBeVisible":Z
    :goto_2
    iget-object v3, p1, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 330
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_3

    .line 331
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    move-object v3, v4

    .line 333
    :cond_3
    if-eqz v2, :cond_4

    iget v4, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->listViewWidth:I

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 334
    if-eqz v2, :cond_5

    iget v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->listViewHeight:I

    :cond_5
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 335
    iget-object v1, p1, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v1, p1, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 338
    return-void

    .line 341
    :cond_6
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->isEmptyChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;

    .line 342
    .local v4, "listener":Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;
    invoke-interface {v4, v2}, Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;->onChanged(Z)V

    .line 343
    .end local v4    # "listener":Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;
    goto :goto_4

    .line 345
    :cond_7
    if-eqz v2, :cond_8

    .line 346
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/telerik/widget/list/ListViewWrapperAdapter$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter$1;-><init>(Lcom/telerik/widget/list/ListViewWrapperAdapter;Lcom/telerik/widget/list/ListViewHolder;I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 353
    :cond_8
    iget-object v1, p1, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :goto_5
    return-void
.end method

.method private bindHolderWithBehaviors(Lcom/telerik/widget/list/ListViewHolder;I)Z
    .locals 4
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "position"    # I

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "viewHolderBound":Z
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->owner:Lcom/telerik/widget/list/RadListView;

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 282
    .local v2, "b":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v2}, Lcom/telerik/widget/list/ListViewBehavior;->managesViewHolders()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {v2, p1, p2}, Lcom/telerik/widget/list/ListViewBehavior;->bindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V

    .line 284
    const/4 v0, 0x1

    .line 285
    goto :goto_1

    .line 287
    .end local v2    # "b":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_0
    goto :goto_0

    .line 290
    :cond_1
    :goto_1
    return v0
.end method

.method private bindSwipeContent(Lcom/telerik/widget/list/ListViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "position"    # I

    .line 294
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0, p1, p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->onBindSwipeContentHolder(Lcom/telerik/widget/list/ListViewHolder;I)V

    .line 296
    iget-object v0, p1, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 297
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 298
    iget v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipeElementHeight:I

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 299
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipeElementHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    .line 301
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipeElementWidth:I

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    .line 304
    :cond_1
    iget v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipeElementHeight:I

    if-eqz v1, :cond_2

    .line 305
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 307
    :cond_2
    iget v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipeElementWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 310
    :goto_0
    iget-object v1, p1, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    return-void
.end method

.method private createEmptyContentLayout()Landroid/view/View;
    .locals 4

    .line 476
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->emptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 477
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 479
    .local v1, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->emptyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->emptyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 483
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 484
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->emptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 486
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 487
    return-object v0
.end method

.method private emptyViewIsVisible()Z
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 509
    const/4 v0, 0x1

    return v0

    .line 511
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getViewTypeInternal(I)I
    .locals 4
    .param p1, "position"    # I

    .line 378
    move v0, p1

    .line 379
    .local v0, "adjustedPosition":I
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->headerView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 380
    const/16 v1, -0x67

    return v1

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->headerView:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    .line 383
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->topIndicatorView:Landroid/view/View;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 384
    const/16 v1, -0x69

    return v1

    .line 386
    :cond_2
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->topIndicatorView:Landroid/view/View;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    sub-int/2addr v0, v2

    .line 387
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->emptyViewIsVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 388
    const/16 v1, -0x6c

    return v1

    .line 390
    :cond_4
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->emptyViewIsVisible()Z

    move-result v1

    sub-int/2addr v0, v1

    .line 391
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v1, :cond_8

    .line 392
    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 393
    iget v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipePosition:I

    if-ne v0, v1, :cond_5

    .line 394
    const/16 v1, -0x6b

    return v1

    .line 396
    :cond_5
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->collapsibleGroupsBehavior:Lcom/telerik/widget/list/CollapsibleGroupsBehavior;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    instance-of v2, v1, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    if-eqz v2, :cond_6

    .line 397
    check-cast v1, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getHeaderPosition(I)I

    move-result v1

    .line 398
    .local v1, "groupHeader":I
    if-eq v1, v0, :cond_6

    iget-object v2, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->collapsibleGroupsBehavior:Lcom/telerik/widget/list/CollapsibleGroupsBehavior;

    invoke-virtual {v2, v1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->isGroupCollapsed(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 399
    const/16 v2, -0x6d

    return v2

    .line 402
    .end local v1    # "groupHeader":I
    :cond_6
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemViewType(I)I

    move-result v1

    return v1

    .line 404
    :cond_7
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 406
    :cond_8
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->bottomIndicatorView:Landroid/view/View;

    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    .line 407
    const/16 v1, -0x6a

    return v1

    .line 409
    :cond_9
    const/16 v1, -0x68

    return v1
.end method

.method private setIsLoadAutomatic(Z)V
    .locals 0
    .param p1, "isLoadAutomatic"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->isLoadAutomatic:Z

    .line 111
    return-void
.end method

.method private setRemainingItemsToLoad(I)V
    .locals 0
    .param p1, "remainingItemsToLoad"    # I

    .line 114
    iput p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->remainingItemsToLoad:I

    .line 115
    return-void
.end method


# virtual methods
.method addIsEmptyChangedListener(Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;

    .line 61
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->isEmptyChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public addLoadingListener(Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;

    .line 127
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->addLoadingListener(Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;)V

    .line 128
    return-void
.end method

.method public addRefreshListener(Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;

    .line 137
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->addRefreshListener(Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;)V

    .line 138
    return-void
.end method

.method public addSwipeExecuteDismissedListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;

    .line 147
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->addSwipeExecuteDismissedListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;)V

    .line 148
    return-void
.end method

.method getBottomViewsCount()I
    .locals 4

    .line 539
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->footerView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->bottomIndicatorView:Landroid/view/View;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 500
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getBottomViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 501
    .local v0, "additionalItemCount":I
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->emptyViewIsVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    add-int/lit8 v0, v0, 0x1

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .line 414
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    .line 418
    .local v0, "adjustedPosition":I
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v3}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 419
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemId(I)J

    move-result-wide v1

    return-wide v1

    .line 421
    :cond_1
    return-wide v1

    .line 415
    .end local v0    # "adjustedPosition":I
    :cond_2
    :goto_0
    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .line 364
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getViewTypeInternal(I)I

    move-result v0

    .line 366
    .local v0, "viewTypeResult":I
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->owner:Lcom/telerik/widget/list/RadListView;

    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 368
    .local v2, "b":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v2}, Lcom/telerik/widget/list/ListViewBehavior;->managesViewHolders()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    invoke-virtual {v2, p1, v0}, Lcom/telerik/widget/list/ListViewBehavior;->getItemViewType(II)I

    move-result v0

    .line 371
    .end local v2    # "b":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_0
    goto :goto_0

    .line 374
    :cond_1
    return v0
.end method

.method public getPositionInOriginalAdapter(I)I
    .locals 1
    .param p1, "positionInWrapperAdapter"    # I

    .line 102
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public getPositionInWrapperAdapter(I)I
    .locals 1
    .param p1, "positionInOriginalAdapter"    # I

    .line 106
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v0

    return-object v0
.end method

.method getShouldLoadMoreOnDemand()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->shouldLoadMoreOnDemand:Z

    return v0
.end method

.method getSpanSize(II)I
    .locals 2
    .param p1, "position"    # I
    .param p2, "max"    # I

    .line 89
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getPositionInOriginalAdapter(I)I

    move-result v0

    .line 90
    .local v0, "originalPosition":I
    if-gez v0, :cond_0

    .line 91
    return p2

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->isGroupHeader(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    :cond_1
    return p2

    .line 98
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method getTopViewsCount()I
    .locals 4

    .line 535
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->headerView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->topIndicatorView:Landroid/view/View;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method handleSwipeEnd()V
    .locals 1

    .line 521
    const/4 v0, -0x1

    iput v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipePosition:I

    .line 522
    return-void
.end method

.method public handleSwipeStart(III)V
    .locals 0
    .param p1, "swipePosition"    # I
    .param p2, "swipeElementWidth"    # I
    .param p3, "swipeElementHeight"    # I

    .line 515
    iput p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipePosition:I

    .line 516
    iput p2, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipeElementWidth:I

    .line 517
    iput p3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipeElementHeight:I

    .line 518
    return-void
.end method

.method public isGroupHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 168
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->isGroupHeader(I)Z

    move-result v0

    return v0
.end method

.method public onBindSwipeContentHolder(Lcom/telerik/widget/list/ListViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "position"    # I

    .line 173
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1, p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->onBindSwipeContentHolder(Lcom/telerik/widget/list/ListViewHolder;I)V

    .line 176
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/telerik/widget/list/ListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->onBindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "i"    # I

    .line 229
    invoke-virtual {p0, p2}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, -0x6d

    if-ne v0, v1, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0, p2}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, -0x6c

    if-ne v0, v1, :cond_1

    .line 233
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->bindEmptyContent(Lcom/telerik/widget/list/ListViewHolder;)V

    .line 234
    return-void

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 238
    return-void

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v0

    sub-int v0, p2, v0

    .line 243
    .local v0, "adjustedPosition":I
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v1, :cond_7

    .line 244
    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v1

    .line 245
    .local v1, "itemsCount":I
    if-ge v0, v1, :cond_7

    .line 246
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/telerik/android/data/SelectionAdapter;->isIndexSelected(I)Z

    move-result v2

    .line 247
    .local v2, "isSelected":Z
    iget-object v3, p1, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 249
    iget v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->swipePosition:I

    if-ne v0, v3, :cond_4

    .line 250
    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->bindHolderWithBehaviors(Lcom/telerik/widget/list/ListViewHolder;I)Z

    move-result v3

    .line 252
    .local v3, "viewHolderBound":Z
    if-nez v3, :cond_3

    .line 253
    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->bindSwipeContent(Lcom/telerik/widget/list/ListViewHolder;I)V

    .line 255
    .end local v3    # "viewHolderBound":Z
    :cond_3
    goto :goto_1

    .line 256
    :cond_4
    iget-boolean v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->isLoadAutomatic:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->remainingItemsToLoad:I

    sub-int v3, v1, v3

    if-le v0, v3, :cond_5

    .line 257
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v3}, Lcom/telerik/widget/list/ListViewAdapterBase;->notifyLoadingRequested()V

    .line 258
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v3}, Lcom/telerik/widget/list/ListViewAdapterBase;->getShouldLoadMoreOnDemand()Z

    move-result v3

    iput-boolean v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->shouldLoadMoreOnDemand:Z

    goto :goto_0

    .line 260
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->shouldLoadMoreOnDemand:Z

    .line 263
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->bindHolderWithBehaviors(Lcom/telerik/widget/list/ListViewHolder;I)Z

    move-result v3

    .line 265
    .restart local v3    # "viewHolderBound":Z
    if-nez v3, :cond_6

    .line 266
    iget-object v4, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v4, p1, v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->onBindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V

    .line 269
    :cond_6
    iget-object v4, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->collapsibleGroupsBehavior:Lcom/telerik/widget/list/CollapsibleGroupsBehavior;

    if-eqz v4, :cond_7

    .line 270
    iget-object v5, p1, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5, v0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->handleIsCollapsed(Landroid/view/View;I)V

    .line 275
    .end local v1    # "itemsCount":I
    .end local v2    # "isSelected":Z
    .end local v3    # "viewHolderBound":Z
    :cond_7
    :goto_1
    return-void
.end method

.method public onCreateSwipeContentHolder(Landroid/view/ViewGroup;)Lcom/telerik/widget/list/ListViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 159
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->onCreateSwipeContentHolder(Landroid/view/ViewGroup;)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object v0

    return-object v0

    .line 163
    :cond_0
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->onCreateSwipeContentHolder(Landroid/view/ViewGroup;)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 427
    const/16 v0, -0x67

    if-ne p2, v0, :cond_0

    .line 428
    new-instance v0, Lcom/telerik/widget/list/ListViewHolder;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->headerView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/telerik/widget/list/ListViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 431
    :cond_0
    const/16 v0, -0x68

    if-ne p2, v0, :cond_1

    .line 432
    new-instance v0, Lcom/telerik/widget/list/ListViewHolder;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->footerView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/telerik/widget/list/ListViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 435
    :cond_1
    const/16 v0, -0x69

    if-ne p2, v0, :cond_2

    .line 436
    new-instance v0, Lcom/telerik/widget/list/ListViewHolder;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->topIndicatorView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/telerik/widget/list/ListViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 439
    :cond_2
    const/16 v0, -0x6a

    if-ne p2, v0, :cond_3

    .line 440
    new-instance v0, Lcom/telerik/widget/list/ListViewHolder;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->bottomIndicatorView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/telerik/widget/list/ListViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 443
    :cond_3
    const/16 v0, -0x6b

    if-ne p2, v0, :cond_4

    .line 444
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->onCreateSwipeContentHolder(Landroid/view/ViewGroup;)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object v0

    .line 445
    .local v0, "createdSwipeHolder":Lcom/telerik/widget/list/ListViewHolder;
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    iget-boolean v2, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->orientationHorizontal:Z

    invoke-virtual {v1, v0, v2}, Lcom/telerik/widget/list/ListViewAdapterBase;->updateLayoutParams(Lcom/telerik/widget/list/ListViewHolder;Z)V

    .line 446
    return-object v0

    .line 449
    .end local v0    # "createdSwipeHolder":Lcom/telerik/widget/list/ListViewHolder;
    :cond_4
    const/16 v0, -0x6c

    if-ne p2, v0, :cond_5

    .line 450
    new-instance v0, Lcom/telerik/widget/list/ListViewHolder;

    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->createEmptyContentLayout()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/telerik/widget/list/ListViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 453
    :cond_5
    const/16 v0, -0x6d

    if-ne p2, v0, :cond_6

    .line 454
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 455
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/telerik/widget/list/CollapsedViewHolder;

    invoke-direct {v1, v0}, Lcom/telerik/widget/list/CollapsedViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 458
    .end local v0    # "v":Landroid/view/View;
    :cond_6
    const/4 v0, 0x0

    .line 459
    .local v0, "holder":Lcom/telerik/widget/list/ListViewHolder;
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->owner:Lcom/telerik/widget/list/RadListView;

    if-eqz v1, :cond_8

    .line 460
    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 461
    .local v2, "b":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v2}, Lcom/telerik/widget/list/ListViewBehavior;->managesViewHolders()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 462
    invoke-virtual {v2, p1, p2}, Lcom/telerik/widget/list/ListViewBehavior;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object v0

    .line 464
    .end local v2    # "b":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_7
    goto :goto_0

    .line 467
    :cond_8
    if-nez v0, :cond_9

    .line 468
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v1, p1, p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object v0

    .line 471
    :cond_9
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    iget-boolean v2, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->orientationHorizontal:Z

    invoke-virtual {v1, v0, v2}, Lcom/telerik/widget/list/ListViewAdapterBase;->updateLayoutParams(Lcom/telerik/widget/list/ListViewHolder;Z)V

    .line 472
    return-object v0
.end method

.method onMeasure(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 526
    iput p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->listViewWidth:I

    .line 527
    iput p2, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->listViewHeight:I

    .line 529
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->notifyDataSetChanged()V

    .line 532
    :cond_1
    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 2
    .param p1, "observer"    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 196
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 198
    new-instance v0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;

    invoke-direct {v0, p0, p1}, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;-><init>(Lcom/telerik/widget/list/ListViewWrapperAdapter;Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 199
    .local v0, "dataObserver":Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->dataObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 204
    :cond_0
    return-void
.end method

.method removeIsEmptyChangedListener(Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;

    .line 65
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->isEmptyChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public removeLoadingListener(Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;

    .line 132
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->removeLoadingListener(Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;)V

    .line 133
    return-void
.end method

.method public removeRefreshListener(Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;

    .line 142
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->removeRefreshListener(Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;)V

    .line 143
    return-void
.end method

.method public removeSwipeExecuteDismissedListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;

    .line 152
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->removeSwipeExecuteDismissedListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;)V

    .line 153
    return-void
.end method

.method public reorderItem(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 492
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0, p1, p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->reorderItem(II)Z

    move-result v0

    return v0

    .line 495
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setBottomIndicatorView(Landroid/view/View;)V
    .locals 1
    .param p1, "bottomIndicatorView"    # Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->bottomIndicatorView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->bottomIndicatorView:Landroid/view/View;

    .line 122
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->notifyDataSetChanged()V

    .line 123
    return-void
.end method

.method setCollapsibleBehavior(Lcom/telerik/widget/list/CollapsibleGroupsBehavior;)V
    .locals 0
    .param p1, "behavior"    # Lcom/telerik/widget/list/CollapsibleGroupsBehavior;

    .line 314
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->collapsibleGroupsBehavior:Lcom/telerik/widget/list/CollapsibleGroupsBehavior;

    .line 315
    return-void
.end method

.method setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->emptyView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->emptyView:Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->notifyDataSetChanged()V

    .line 74
    return-void
.end method

.method setFooter(Landroid/view/View;)V
    .locals 1
    .param p1, "footer"    # Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->footerView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->footerView:Landroid/view/View;

    .line 191
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->notifyDataSetChanged()V

    .line 192
    return-void
.end method

.method setHeader(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->headerView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->headerView:Landroid/view/View;

    .line 183
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->notifyDataSetChanged()V

    .line 184
    return-void
.end method

.method setOrientationHorizontal(Z)V
    .locals 1
    .param p1, "orientationHorizontal"    # Z

    .line 220
    iget-boolean v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->orientationHorizontal:Z

    if-ne v0, p1, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    iput-boolean p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->orientationHorizontal:Z

    .line 224
    return-void
.end method

.method setTopIndicatorView(Landroid/view/View;)V
    .locals 1
    .param p1, "topIndicatorView"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->topIndicatorView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->topIndicatorView:Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 2
    .param p1, "observer"    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 208
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "dataObserver":Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->dataObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->dataObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;

    .line 212
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->dataObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 217
    :cond_1
    return-void
.end method

.method updateOnDemandSettings(Landroid/view/ViewGroup;IZ)V
    .locals 0
    .param p1, "indicator"    # Landroid/view/ViewGroup;
    .param p2, "remainingItemsToLoad"    # I
    .param p3, "isLoadAutomatic"    # Z

    .line 318
    invoke-direct {p0, p2}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setRemainingItemsToLoad(I)V

    .line 319
    invoke-direct {p0, p3}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setIsLoadAutomatic(Z)V

    .line 320
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setBottomIndicatorView(Landroid/view/View;)V

    .line 321
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->notifyDataSetChanged()V

    .line 322
    return-void
.end method
