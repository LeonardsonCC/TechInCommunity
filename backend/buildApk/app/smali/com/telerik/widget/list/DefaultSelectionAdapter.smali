.class public Lcom/telerik/widget/list/DefaultSelectionAdapter;
.super Ljava/lang/Object;
.source "DefaultSelectionAdapter.java"

# interfaces
.implements Lcom/telerik/android/data/SelectionAdapter;
.implements Lcom/telerik/android/data/SelectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/telerik/android/data/SelectionAdapter;",
        "Lcom/telerik/android/data/SelectionChangeListener<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Lcom/telerik/widget/list/ListViewAdapter;

.field private peer:Lcom/telerik/android/data/SelectionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/telerik/android/data/SelectionService<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/telerik/android/data/SelectionService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/SelectionService<",
            "TE;>;)V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    .local p1, "peer":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->listeners:Ljava/util/List;

    .line 18
    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->peer:Lcom/telerik/android/data/SelectionService;

    .line 23
    invoke-virtual {p1, p0}, Lcom/telerik/android/data/SelectionService;->addSelectionChangeListener(Lcom/telerik/android/data/SelectionChangeListener;)V

    .line 24
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 32
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public clearSelection()V
    .locals 1

    .line 49
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->peer:Lcom/telerik/android/data/SelectionService;

    invoke-virtual {v0}, Lcom/telerik/android/data/SelectionService;->clearSelection()V

    .line 50
    return-void
.end method

.method public deselectIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 63
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->owner:Lcom/telerik/widget/list/ListViewAdapter;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "item":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->peer:Lcom/telerik/android/data/SelectionService;

    invoke-virtual {v1, v0}, Lcom/telerik/android/data/SelectionService;->deselectItem(Ljava/lang/Object;)V

    .line 69
    return-void

    .line 64
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getSelectedIndices()[I
    .locals 4

    .line 102
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->peer:Lcom/telerik/android/data/SelectionService;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/telerik/android/data/SelectionService;->selectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 107
    .local v0, "positions":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->peer:Lcom/telerik/android/data/SelectionService;

    invoke-virtual {v2}, Lcom/telerik/android/data/SelectionService;->selectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->peer:Lcom/telerik/android/data/SelectionService;

    invoke-virtual {v2}, Lcom/telerik/android/data/SelectionService;->selectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 109
    .local v2, "item":Ljava/lang/Object;
    iget-object v3, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->owner:Lcom/telerik/widget/list/ListViewAdapter;

    invoke-virtual {v3, v2}, Lcom/telerik/widget/list/ListViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    .line 110
    .local v3, "position":I
    aput v3, v0, v1

    .line 107
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "position":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 1

    .line 94
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->peer:Lcom/telerik/android/data/SelectionService;

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/telerik/android/data/SelectionService;->selectedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionMode()Lcom/telerik/android/data/SelectionMode;
    .locals 1

    .line 90
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->peer:Lcom/telerik/android/data/SelectionService;

    invoke-virtual {v0}, Lcom/telerik/android/data/SelectionService;->getSelectionMode()Lcom/telerik/android/data/SelectionMode;

    move-result-object v0

    return-object v0
.end method

.method public isIndexSelected(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 54
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->owner:Lcom/telerik/widget/list/ListViewAdapter;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 59
    .local v0, "item":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->peer:Lcom/telerik/android/data/SelectionService;

    invoke-virtual {v1, v0}, Lcom/telerik/android/data/SelectionService;->isItemSelected(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 55
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public removeListener(Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 41
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public selectIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 73
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->owner:Lcom/telerik/widget/list/ListViewAdapter;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "item":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->peer:Lcom/telerik/android/data/SelectionService;

    invoke-virtual {v1, v0}, Lcom/telerik/android/data/SelectionService;->selectItem(Ljava/lang/Object;)V

    .line 79
    return-void

    .line 74
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public selectedItemsSize()I
    .locals 1

    .line 82
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->peer:Lcom/telerik/android/data/SelectionService;

    invoke-virtual {v0}, Lcom/telerik/android/data/SelectionService;->selectedItemsSize()I

    move-result v0

    return v0
.end method

.method public selectionChanged(Lcom/telerik/android/data/SelectionChangeInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/SelectionChangeInfo<",
            "TE;>;)V"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    .local p1, "info":Lcom/telerik/android/data/SelectionChangeInfo;, "Lcom/telerik/android/data/SelectionChangeInfo<TE;>;"
    invoke-virtual {p1}, Lcom/telerik/android/data/SelectionChangeInfo;->deselectedItems()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 119
    .local v1, "deselected":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 120
    .local v3, "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    iget-object v4, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->owner:Lcom/telerik/widget/list/ListViewAdapter;

    invoke-virtual {v4, v1}, Lcom/telerik/widget/list/ListViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;->onItemIsSelectedChanged(IZ)V

    .line 121
    .end local v3    # "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    goto :goto_1

    .line 122
    .end local v1    # "deselected":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/telerik/android/data/SelectionChangeInfo;->selectedItems()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "selected":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 125
    .restart local v3    # "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    iget-object v4, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->owner:Lcom/telerik/widget/list/ListViewAdapter;

    invoke-virtual {v4, v1}, Lcom/telerik/widget/list/ListViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;->onItemIsSelectedChanged(IZ)V

    .line 126
    .end local v3    # "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    goto :goto_3

    .line 127
    .end local v1    # "selected":Ljava/lang/Object;, "TE;"
    :cond_2
    goto :goto_2

    .line 128
    :cond_3
    return-void
.end method

.method public setOwner(Lcom/telerik/widget/list/ListViewAdapter;)V
    .locals 0
    .param p1, "owner"    # Lcom/telerik/widget/list/ListViewAdapter;

    .line 45
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    iput-object p1, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->owner:Lcom/telerik/widget/list/ListViewAdapter;

    .line 46
    return-void
.end method

.method public setSelectionMode(Lcom/telerik/android/data/SelectionMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/telerik/android/data/SelectionMode;

    .line 86
    .local p0, "this":Lcom/telerik/widget/list/DefaultSelectionAdapter;, "Lcom/telerik/widget/list/DefaultSelectionAdapter<TE;>;"
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultSelectionAdapter;->peer:Lcom/telerik/android/data/SelectionService;

    invoke-virtual {v0, p1}, Lcom/telerik/android/data/SelectionService;->setSelectionMode(Lcom/telerik/android/data/SelectionMode;)V

    .line 87
    return-void
.end method
