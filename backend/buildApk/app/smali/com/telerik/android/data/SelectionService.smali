.class public Lcom/telerik/android/data/SelectionService;
.super Ljava/lang/Object;
.source "SelectionService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private changeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telerik/android/data/SelectionChangeListener<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private selectedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private selectionMode:Lcom/telerik/android/data/SelectionMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/telerik/android/data/SelectionMode;->SINGLE:Lcom/telerik/android/data/SelectionMode;

    iput-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectionMode:Lcom/telerik/android/data/SelectionMode;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/SelectionService;->changeListeners:Ljava/util/ArrayList;

    .line 12
    return-void
.end method


# virtual methods
.method public addSelectionChangeListener(Lcom/telerik/android/data/SelectionChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/SelectionChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 15
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    .local p1, "listener":Lcom/telerik/android/data/SelectionChangeListener;, "Lcom/telerik/android/data/SelectionChangeListener<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->changeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public clearSelection()V
    .locals 3

    .line 116
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectionMode:Lcom/telerik/android/data/SelectionMode;

    sget-object v1, Lcom/telerik/android/data/SelectionMode;->NONE:Lcom/telerik/android/data/SelectionMode;

    if-ne v0, v1, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "deselectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v1, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 122
    .local v2, "item":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/telerik/android/data/SelectionService;->onSelectionChanged(Ljava/util/List;Ljava/util/List;)V

    .line 128
    return-void
.end method

.method public deselectItem(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectionMode:Lcom/telerik/android/data/SelectionMode;

    sget-object v1, Lcom/telerik/android/data/SelectionMode;->NONE:Lcom/telerik/android/data/SelectionMode;

    if-ne v0, v1, :cond_0

    .line 85
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "deselectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/telerik/android/data/SelectionService;->onSelectionChanged(Ljava/util/List;Ljava/util/List;)V

    .line 97
    .end local v0    # "deselectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :cond_2
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionMode()Lcom/telerik/android/data/SelectionMode;
    .locals 1

    .line 23
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectionMode:Lcom/telerik/android/data/SelectionMode;

    return-object v0
.end method

.method public isItemSelected(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 35
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onSelectionChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "deselectedItems":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->changeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/data/SelectionChangeListener;

    .line 132
    .local v1, "listener":Lcom/telerik/android/data/SelectionChangeListener;, "Lcom/telerik/android/data/SelectionChangeListener<TE;>;"
    new-instance v2, Lcom/telerik/android/data/SelectionChangeInfo;

    invoke-direct {v2, p1, p2}, Lcom/telerik/android/data/SelectionChangeInfo;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/telerik/android/data/SelectionChangeListener;->selectionChanged(Lcom/telerik/android/data/SelectionChangeInfo;)V

    .line 133
    .end local v1    # "listener":Lcom/telerik/android/data/SelectionChangeListener;, "Lcom/telerik/android/data/SelectionChangeListener<TE;>;"
    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method public removeSelectionChangeListener(Lcom/telerik/android/data/SelectionChangeListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/SelectionChangeListener<",
            "TE;>;)Z"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    .local p1, "listener":Lcom/telerik/android/data/SelectionChangeListener;, "Lcom/telerik/android/data/SelectionChangeListener<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->changeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public selectItem(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectionMode:Lcom/telerik/android/data/SelectionMode;

    sget-object v1, Lcom/telerik/android/data/SelectionMode;->NONE:Lcom/telerik/android/data/SelectionMode;

    if-ne v0, v1, :cond_0

    .line 52
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "deselectedItems":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v1, "selectedItems":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v2, p0, Lcom/telerik/android/data/SelectionService;->selectionMode:Lcom/telerik/android/data/SelectionMode;

    sget-object v3, Lcom/telerik/android/data/SelectionMode;->SINGLE:Lcom/telerik/android/data/SelectionMode;

    if-ne v2, v3, :cond_3

    .line 59
    iget-object v2, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 60
    .local v3, "selectedItem":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v3    # "selectedItem":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0, p1}, Lcom/telerik/android/data/SelectionService;->isItemSelected(Ljava/lang/Object;)Z

    move-result v2

    .line 64
    .local v2, "wasItemSelected":Z
    iget-object v3, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 65
    if-nez v2, :cond_2

    .line 66
    iget-object v3, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v2    # "wasItemSelected":Z
    :cond_2
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {p0, p1}, Lcom/telerik/android/data/SelectionService;->isItemSelected(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    iget-object v2, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_4
    iget-object v2, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/telerik/android/data/SelectionService;->onSelectionChanged(Ljava/util/List;Ljava/util/List;)V

    .line 81
    return-void
.end method

.method public selectItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    if-ne p1, v0, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectionMode:Lcom/telerik/android/data/SelectionMode;

    sget-object v1, Lcom/telerik/android/data/SelectionMode;->NONE:Lcom/telerik/android/data/SelectionMode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectionMode:Lcom/telerik/android/data/SelectionMode;

    sget-object v1, Lcom/telerik/android/data/SelectionMode;->SINGLE:Lcom/telerik/android/data/SelectionMode;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 108
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 109
    .local v1, "item":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v1    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 112
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/telerik/android/data/SelectionService;->onSelectionChanged(Ljava/util/List;Ljava/util/List;)V

    .line 113
    return-void

    .line 105
    :cond_3
    :goto_1
    return-void
.end method

.method public selectedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public selectedItemsSize()I
    .locals 1

    .line 47
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setSelectionMode(Lcom/telerik/android/data/SelectionMode;)V
    .locals 1
    .param p1, "value"    # Lcom/telerik/android/data/SelectionMode;

    .line 27
    .local p0, "this":Lcom/telerik/android/data/SelectionService;, "Lcom/telerik/android/data/SelectionService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionService;->selectionMode:Lcom/telerik/android/data/SelectionMode;

    if-ne p1, v0, :cond_0

    .line 28
    return-void

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/telerik/android/data/SelectionService;->selectionMode:Lcom/telerik/android/data/SelectionMode;

    .line 32
    return-void
.end method
