.class public Lcom/telerik/widget/list/SwipeRefreshBehavior;
.super Lcom/telerik/widget/list/ListViewBehavior;
.source "SwipeRefreshBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshListener;,
        Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;,
        Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;
    }
.end annotation


# instance fields
.field private attachedAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

.field private isAttached:Z

.field private isLongPress:Z

.field private isRefreshing:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Lcom/telerik/widget/list/RadListView;

.field private refreshListener:Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;

.field private swipeRefreshIndicator:Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewBehavior;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isAttached:Z

    .line 20
    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isLongPress:Z

    .line 21
    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isRefreshing:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/telerik/widget/list/SwipeRefreshBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeRefreshBehavior;

    .line 15
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isLongPress:Z

    return v0
.end method

.method static synthetic access$100(Lcom/telerik/widget/list/SwipeRefreshBehavior;)Lcom/telerik/widget/list/RadListView;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeRefreshBehavior;

    .line 15
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/telerik/widget/list/SwipeRefreshBehavior;Lcom/telerik/widget/list/RadListView;)Lcom/telerik/widget/list/RadListView;
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeRefreshBehavior;
    .param p1, "x1"    # Lcom/telerik/widget/list/RadListView;

    .line 15
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    return-object p1
.end method

.method static synthetic access$202(Lcom/telerik/widget/list/SwipeRefreshBehavior;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeRefreshBehavior;
    .param p1, "x1"    # Z

    .line 15
    iput-boolean p1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isAttached:Z

    return p1
.end method

.method private attachIndicator(Lcom/telerik/widget/list/RadListView;)V
    .locals 2
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 189
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isAttached:Z

    if-eqz v0, :cond_0

    .line 190
    return-void

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    .line 195
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 196
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->swipeRefreshIndicator:Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;

    if-nez v0, :cond_2

    .line 200
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->init(Landroid/content/Context;)V

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->swipeRefreshIndicator:Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;

    new-instance v1, Lcom/telerik/widget/list/SwipeRefreshBehavior$2;

    invoke-direct {v1, p0}, Lcom/telerik/widget/list/SwipeRefreshBehavior$2;-><init>(Lcom/telerik/widget/list/SwipeRefreshBehavior;)V

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 210
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 211
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->swipeRefreshIndicator:Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->swipeRefreshIndicator:Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;

    invoke-virtual {p0, p1, v1}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->insertRefreshLayout(Lcom/telerik/widget/list/RadListView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isAttached:Z

    .line 216
    return-void
.end method

.method private detachIndicator(Lcom/telerik/widget/list/RadListView;)V
    .locals 2
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 219
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isAttached:Z

    if-nez v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->swipeRefreshIndicator:Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;

    invoke-virtual {v0}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->swipeRefreshIndicator:Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->hasToBeDetached:Z

    .line 224
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->swipeRefreshIndicator:Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->setRefreshing(Z)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->swipeRefreshIndicator:Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;

    invoke-virtual {v0}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->detach()V

    .line 228
    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshListener;

    .line 45
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public endRefresh(Z)V
    .locals 3
    .param p1, "scrollToStart"    # Z

    .line 66
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isRefreshing:Z

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isRefreshing:Z

    .line 70
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->attachedAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v1, :cond_1

    .line 71
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->refreshListener:Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;

    invoke-virtual {v1, v2}, Lcom/telerik/widget/list/ListViewAdapterBase;->removeRefreshListener(Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;)V

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->attachedAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->swipeRefreshIndicator:Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->setRefreshing(Z)V

    .line 75
    if-eqz p1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->scrollToStart()V

    .line 78
    :cond_2
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;

    invoke-direct {v0, p0, p1}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;-><init>(Lcom/telerik/widget/list/SwipeRefreshBehavior;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->swipeRefreshIndicator:Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;

    .line 107
    new-instance v0, Lcom/telerik/widget/list/SwipeRefreshBehavior$1;

    invoke-direct {v0, p0}, Lcom/telerik/widget/list/SwipeRefreshBehavior$1;-><init>(Lcom/telerik/widget/list/SwipeRefreshBehavior;)V

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->refreshListener:Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;

    .line 113
    return-void
.end method

.method protected insertRefreshLayout(Lcom/telerik/widget/list/RadListView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 2
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;
    .param p2, "swipeRefreshIndicator"    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 179
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 180
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 182
    .local v1, "listViewIndex":I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 183
    invoke-virtual {p2, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    .line 184
    invoke-virtual {v0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 186
    return-void
.end method

.method public isInProgress()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isRefreshing:Z

    return v0
.end method

.method public onActionUpOrCancel(Z)Z
    .locals 1
    .param p1, "isCanceled"    # Z

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isLongPress:Z

    .line 138
    return v0
.end method

.method onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "shouldAttach":Z
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->attachedAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->refreshListener:Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;

    invoke-virtual {v1, v2}, Lcom/telerik/widget/list/ListViewAdapterBase;->removeRefreshListener(Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;)V

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->attachedAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 86
    const/4 v0, 0x1

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V

    .line 90
    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 93
    .local v1, "ownerAdapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    iput-object v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->attachedAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 94
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->refreshListener:Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;

    invoke-virtual {v1, v2}, Lcom/telerik/widget/list/ListViewAdapterBase;->addRefreshListener(Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;)V

    .line 97
    .end local v1    # "ownerAdapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    :cond_1
    return-void
.end method

.method public onAttached(Lcom/telerik/widget/list/RadListView;)V
    .locals 0
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 122
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->attachIndicator(Lcom/telerik/widget/list/RadListView;)V

    .line 123
    return-void
.end method

.method public onDetached(Lcom/telerik/widget/list/RadListView;)V
    .locals 0
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 127
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->detachIndicator(Lcom/telerik/widget/list/RadListView;)V

    .line 128
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 143
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isAttached:Z

    if-eqz v0, :cond_0

    .line 144
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->attachIndicator(Lcom/telerik/widget/list/RadListView;)V

    .line 147
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isLongPress:Z

    .line 133
    return-void
.end method

.method protected owner()Lcom/telerik/widget/list/RadListView;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    if-eqz v0, :cond_0

    .line 154
    return-object v0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Behavior is not attached to RadListView. Use RadListView\'s addBehavior method to attach it."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeListener(Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshListener;

    .line 54
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method protected startRefresh()V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isRefreshing:Z

    if-eqz v0, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 165
    return-void

    .line 167
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->isRefreshing:Z

    .line 168
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 169
    .local v0, "adapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->refreshListener:Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->addRefreshListener(Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;)V

    .line 170
    iput-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->attachedAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 171
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshListener;

    .line 172
    .local v2, "listener":Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshListener;
    invoke-interface {v2}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshListener;->onRefreshRequested()V

    .line 173
    .end local v2    # "listener":Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshListener;
    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->notifySwipeExecuteFinished()V

    .line 175
    return-void
.end method

.method public swipeRefresh()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior;->swipeRefreshIndicator:Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;

    return-object v0
.end method
