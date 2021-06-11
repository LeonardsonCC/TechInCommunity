.class public Lcom/telerik/widget/list/ListViewBehavior;
.super Ljava/lang/Object;
.source "ListViewBehavior.java"


# instance fields
.field private owner:Lcom/telerik/widget/list/RadListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "i"    # I

    .line 61
    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "suggestedViewType"    # I

    .line 71
    return p2
.end method

.method public isInProgress()Z
    .locals 1

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public managesViewHolders()Z
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public onActionUpOrCancel(Z)Z
    .locals 1
    .param p1, "isCanceled"    # Z

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 233
    return-void
.end method

.method public onAttached(Lcom/telerik/widget/list/RadListView;)V
    .locals 0
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 81
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    .line 82
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "clickedView"    # Landroid/view/View;

    .line 145
    return-void
.end method

.method public onDetached(Lcom/telerik/widget/list/RadListView;)V
    .locals 1
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    .line 92
    return-void
.end method

.method public onDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 201
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 31
    return-void
.end method

.method onLayoutChanged(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0
    .param p1, "layout"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 236
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "clickedView"    # Landroid/view/View;

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 137
    return-void
.end method

.method public onLongPressDrag(FFFF)V
    .locals 0
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 166
    return-void
.end method

.method public onLongPressDragEnded(Z)Z
    .locals 1
    .param p1, "isCanceled"    # Z

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 230
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 224
    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 193
    return-void
.end method

.method public onShortPressDrag(FFFF)Z
    .locals 1
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method protected owner()Lcom/telerik/widget/list/RadListView;
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    if-eqz v0, :cond_0

    .line 217
    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Behavior is not attached to RadListView. Use RadListView\'s addBehavior method to attach it."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
