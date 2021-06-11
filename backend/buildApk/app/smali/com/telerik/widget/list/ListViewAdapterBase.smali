.class public abstract Lcom/telerik/widget/list/ListViewAdapterBase;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListViewAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/telerik/widget/list/ListViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field protected static final INVALID_ID:I = -0x1

.field protected static final ITEM_VIEW_TYPE_BOTTOM_INDICATOR:I = -0x6a

.field protected static final ITEM_VIEW_TYPE_COLLAPSED:I = -0x6d

.field protected static final ITEM_VIEW_TYPE_EMPTY_CONTENT:I = -0x6c

.field protected static final ITEM_VIEW_TYPE_FOOTER:I = -0x68

.field protected static final ITEM_VIEW_TYPE_HEADER:I = -0x67

.field protected static final ITEM_VIEW_TYPE_SWIPE_CONTENT:I = -0x6b

.field protected static final ITEM_VIEW_TYPE_TOP_INDICATOR:I = -0x69


# instance fields
.field private loadingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;",
            ">;"
        }
    .end annotation
.end field

.field private refreshListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field shouldLoadMoreOnDemand:Z

.field private swipeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->loadingListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->refreshListeners:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->swipeListeners:Ljava/util/List;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->setHasStableIds(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method addLoadingListener(Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;

    .line 53
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->loadingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method addRefreshListener(Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;

    .line 69
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->refreshListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method addSwipeExecuteDismissedListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;

    .line 61
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->swipeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public canDeselect(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 205
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->canSelect(I)Z

    move-result v0

    return v0
.end method

.method public canReorder(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 230
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->isPositionValid(I)Z

    move-result v0

    return v0
.end method

.method public canSelect(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 196
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->isPositionValid(I)Z

    move-result v0

    return v0
.end method

.method public canSwipe(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 214
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->isPositionValid(I)Z

    move-result v0

    return v0
.end method

.method public abstract getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;
.end method

.method getShouldLoadMoreOnDemand()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->shouldLoadMoreOnDemand:Z

    return v0
.end method

.method public isGroupHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected isPositionValid(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 218
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyLoadingFinished()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->loadingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;

    .line 96
    .local v1, "listener":Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;
    invoke-interface {v1}, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;->onLoadingFinished()V

    .line 97
    .end local v1    # "listener":Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;
    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method notifyLoadingRequested()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->loadingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->shouldLoadMoreOnDemand:Z

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->loadingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;

    .line 84
    .local v1, "listener":Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;
    invoke-interface {v1}, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;->onLoadingRequested()V

    .line 85
    .end local v1    # "listener":Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;
    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method

.method public notifyRefreshFinished()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->refreshListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;

    .line 108
    .local v1, "listener":Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;
    invoke-interface {v1}, Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;->onRefreshFinished()V

    .line 109
    .end local v1    # "listener":Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;
    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public notifySwipeExecuteFinished()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->swipeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;

    .line 120
    .local v1, "listener":Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;
    invoke-interface {v1}, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;->onSwipeContentDismissed()V

    .line 121
    .end local v1    # "listener":Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;
    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public onBindSwipeContentHolder(Lcom/telerik/widget/list/ListViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "position"    # I

    .line 171
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/telerik/widget/list/ListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->onBindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V

    return-void
.end method

.method public abstract onBindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V
.end method

.method public onCreateSwipeContentHolder(Landroid/view/ViewGroup;)Lcom/telerik/widget/list/ListViewHolder;
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 144
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    .local v1, "leftLayout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v3, "paramsLeft":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0x9

    invoke-virtual {v3, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 155
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 156
    .local v6, "rightLayout":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v4, v7

    .line 159
    .local v4, "paramsRight":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v4, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 160
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 166
    new-instance v2, Lcom/telerik/widget/list/ListViewHolder;

    invoke-direct {v2, v0}, Lcom/telerik/widget/list/ListViewHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;
.end method

.method removeLoadingListener(Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;

    .line 57
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->loadingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method removeRefreshListener(Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;

    .line 73
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->refreshListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method removeSwipeExecuteDismissedListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;

    .line 65
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapterBase;->swipeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public abstract reorderItem(II)Z
.end method

.method protected updateLayoutParams(Lcom/telerik/widget/list/ListViewHolder;Z)V
    .locals 3
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "orientationHorizontal"    # Z

    .line 177
    instance-of v0, p1, Lcom/telerik/widget/list/ListViewTextHolder;

    if-nez v0, :cond_0

    .line 178
    return-void

    .line 182
    :cond_0
    const/4 v0, -0x2

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    .line 183
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    move-object v0, v2

    .local v0, "layoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    goto :goto_0

    .line 185
    .end local v0    # "layoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_1
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    move-object v0, v2

    .line 187
    .restart local v0    # "layoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/telerik/widget/list/ListViewTextHolder;

    iget-object v1, v1, Lcom/telerik/widget/list/ListViewTextHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    return-void
.end method
