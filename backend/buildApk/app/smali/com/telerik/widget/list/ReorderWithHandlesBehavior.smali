.class public Lcom/telerik/widget/list/ReorderWithHandlesBehavior;
.super Lcom/telerik/widget/list/ItemReorderBehavior;
.source "ReorderWithHandlesBehavior.java"


# instance fields
.field private handleId:I

.field private owner:Lcom/telerik/widget/list/RadListView;

.field private reorderAttached:Z

.field private reorderStarted:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "handleId"    # I

    .line 20
    invoke-direct {p0}, Lcom/telerik/widget/list/ItemReorderBehavior;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->reorderStarted:Z

    .line 17
    iput-boolean v0, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->reorderAttached:Z

    .line 21
    iput p1, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->handleId:I

    .line 22
    return-void
.end method


# virtual methods
.method protected endReorder(Z)V
    .locals 1
    .param p1, "isCanceled"    # Z

    .line 88
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ItemReorderBehavior;->endReorder(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->invalidate()V

    .line 90
    return-void
.end method

.method public getReorderHandleOverride(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "itemView"    # Landroid/view/ViewGroup;

    .line 113
    iget v0, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->handleId:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->reorderAttached:Z

    return v0
.end method

.method public onActionUpOrCancel(Z)Z
    .locals 2
    .param p1, "isCanceled"    # Z

    .line 47
    iget-boolean v0, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->reorderStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    return v1

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->endReorder(Z)V

    .line 51
    iput-boolean v1, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->reorderStarted:Z

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onAttached(Lcom/telerik/widget/list/RadListView;)V
    .locals 1
    .param p1, "owner"    # Lcom/telerik/widget/list/RadListView;

    .line 67
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ItemReorderBehavior;->onAttached(Lcom/telerik/widget/list/RadListView;)V

    .line 68
    iput-object p1, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->reorderAttached:Z

    .line 70
    return-void
.end method

.method public onDetached(Lcom/telerik/widget/list/RadListView;)V
    .locals 1
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 74
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ItemReorderBehavior;->onDetached(Lcom/telerik/widget/list/RadListView;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->reorderAttached:Z

    .line 76
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent2"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v2"    # F

    .line 62
    iget-boolean v0, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->reorderStarted:Z

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 80
    return-void
.end method

.method public onLongPressDrag(FFFF)V
    .locals 0
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 84
    return-void
.end method

.method public onLongPressDragEnded(Z)Z
    .locals 1
    .param p1, "isCanceled"    # Z

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onShortPressDrag(FFFF)Z
    .locals 5
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 27
    iget-boolean v0, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->reorderStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->resolveHandleViewForCoordinates(FF)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 30
    .local v0, "view":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 31
    return v2

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->getReorderHandleOverride(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 34
    .local v3, "handleView":Landroid/view/View;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, p1

    if-gtz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->startReorder(FF)V

    .line 38
    iput-boolean v1, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->reorderStarted:Z

    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    return v2

    .line 41
    .end local v0    # "view":Landroid/view/ViewGroup;
    .end local v3    # "handleView":Landroid/view/View;
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->moveReorderImage(FFFF)V

    .line 42
    return v1
.end method

.method public resolveHandleViewForCoordinates(FF)Landroid/view/View;
    .locals 1
    .param p1, "startX"    # F
    .param p2, "startY"    # F

    .line 104
    iget-object v0, p0, Lcom/telerik/widget/list/ReorderWithHandlesBehavior;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0, p1, p2}, Lcom/telerik/widget/list/RadListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
