.class public Lcom/telerik/android/common/ObservableCollection;
.super Ljava/util/ArrayList;
.source "ObservableCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private changeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telerik/android/common/CollectionChangeListener<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/common/ObservableCollection;->changeListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private createList(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/List<",
            "+TE;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 123
    .local v2, "item":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 126
    :cond_0
    return-object v0
.end method

.method private createList2(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/List<",
            "+TE;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 132
    .local v2, "item":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v2    # "item":Ljava/lang/Object;
    goto :goto_0

    .line 135
    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    .local p2, "item":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "newItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v8, Lcom/telerik/android/common/CollectionChangedEvent;

    sget-object v3, Lcom/telerik/android/common/CollectionChangeAction;->ADD:Lcom/telerik/android/common/CollectionChangeAction;

    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v1, v8

    move-object v2, p0

    move-object v5, v0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/telerik/android/common/CollectionChangedEvent;-><init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;Ljava/util/List;Ljava/util/List;II)V

    .line 70
    .local v1, "event":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p0, v1}, Lcom/telerik/android/common/ObservableCollection;->notifyListeners(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 71
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    .local v0, "result":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "newItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v9, Lcom/telerik/android/common/CollectionChangedEvent;

    sget-object v4, Lcom/telerik/android/common/CollectionChangeAction;->ADD:Lcom/telerik/android/common/CollectionChangeAction;

    invoke-virtual {p0}, Lcom/telerik/android/common/ObservableCollection;->size()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    move-object v2, v9

    move-object v3, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/telerik/android/common/CollectionChangedEvent;-><init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;Ljava/util/List;Ljava/util/List;II)V

    .line 59
    .local v2, "event":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p0, v2}, Lcom/telerik/android/common/ObservableCollection;->notifyListeners(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 60
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 143
    .local v0, "result":Z
    invoke-direct {p0, p2}, Lcom/telerik/android/common/ObservableCollection;->createList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    .line 144
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    new-instance v9, Lcom/telerik/android/common/CollectionChangedEvent;

    sget-object v3, Lcom/telerik/android/common/CollectionChangeAction;->ADD:Lcom/telerik/android/common/CollectionChangeAction;

    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v1, v9

    move-object v2, p0

    move-object v5, v8

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/telerik/android/common/CollectionChangedEvent;-><init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;Ljava/util/List;Ljava/util/List;II)V

    .line 145
    .local v1, "event":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p0, v1}, Lcom/telerik/android/common/ObservableCollection;->notifyListeners(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 147
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/telerik/android/common/ObservableCollection;->size()I

    move-result v7

    .line 111
    .local v7, "index":I
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v8

    .line 113
    .local v8, "result":Z
    invoke-direct {p0, p1}, Lcom/telerik/android/common/ObservableCollection;->createList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    .line 114
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    new-instance v10, Lcom/telerik/android/common/CollectionChangedEvent;

    sget-object v2, Lcom/telerik/android/common/CollectionChangeAction;->ADD:Lcom/telerik/android/common/CollectionChangeAction;

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, v10

    move-object v1, p0

    move-object v4, v9

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/telerik/android/common/CollectionChangedEvent;-><init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;Ljava/util/List;Ljava/util/List;II)V

    .line 115
    .local v0, "event":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p0, v0}, Lcom/telerik/android/common/ObservableCollection;->notifyListeners(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 116
    return v8
.end method

.method public addCollectionChangeListener(Lcom/telerik/android/common/CollectionChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/common/CollectionChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    .local p1, "listener":Lcom/telerik/android/common/CollectionChangeListener;, "Lcom/telerik/android/common/CollectionChangeListener<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/common/ObservableCollection;->changeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public beginUpdate()V
    .locals 1

    .line 18
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/android/common/ObservableCollection;->updateSuspended:Z

    .line 19
    return-void
.end method

.method public clear()V
    .locals 2

    .line 99
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    invoke-virtual {p0}, Lcom/telerik/android/common/ObservableCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    return-void

    .line 103
    :cond_0
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 104
    new-instance v0, Lcom/telerik/android/common/CollectionChangedEvent;

    sget-object v1, Lcom/telerik/android/common/CollectionChangeAction;->RESET:Lcom/telerik/android/common/CollectionChangeAction;

    invoke-direct {v0, p0, v1}, Lcom/telerik/android/common/CollectionChangedEvent;-><init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;)V

    .line 105
    .local v0, "event":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p0, v0}, Lcom/telerik/android/common/ObservableCollection;->notifyListeners(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 106
    return-void
.end method

.method public endUpdate()V
    .locals 2

    .line 22
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/android/common/ObservableCollection;->updateSuspended:Z

    .line 24
    new-instance v0, Lcom/telerik/android/common/CollectionChangedEvent;

    sget-object v1, Lcom/telerik/android/common/CollectionChangeAction;->RESET:Lcom/telerik/android/common/CollectionChangeAction;

    invoke-direct {v0, p0, v1}, Lcom/telerik/android/common/CollectionChangedEvent;-><init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;)V

    invoke-virtual {p0, v0}, Lcom/telerik/android/common/ObservableCollection;->notifyListeners(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 25
    return-void
.end method

.method protected notifyListeners(Lcom/telerik/android/common/CollectionChangedEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/common/CollectionChangedEvent<",
            "TE;>;)V"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    .local p1, "event":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    iget-boolean v0, p0, Lcom/telerik/android/common/ObservableCollection;->updateSuspended:Z

    if-eqz v0, :cond_0

    .line 187
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/telerik/android/common/ObservableCollection;->changeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/common/CollectionChangeListener;

    .line 191
    .local v1, "listener":Lcom/telerik/android/common/CollectionChangeListener;, "Lcom/telerik/android/common/CollectionChangeListener<TE;>;"
    invoke-interface {v1, p1}, Lcom/telerik/android/common/CollectionChangeListener;->collectionChanged(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 192
    .end local v1    # "listener":Lcom/telerik/android/common/CollectionChangeListener;, "Lcom/telerik/android/common/CollectionChangeListener<TE;>;"
    goto :goto_0

    .line 193
    :cond_1
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "result":Ljava/lang/Object;, "TE;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "newItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v9, Lcom/telerik/android/common/CollectionChangedEvent;

    sget-object v4, Lcom/telerik/android/common/CollectionChangeAction;->REMOVE:Lcom/telerik/android/common/CollectionChangeAction;

    const/4 v6, 0x0

    const/4 v8, -0x1

    move-object v2, v9

    move-object v3, p0

    move-object v5, v1

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/telerik/android/common/CollectionChangedEvent;-><init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;Ljava/util/List;Ljava/util/List;II)V

    .line 93
    .local v2, "event":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p0, v2}, Lcom/telerik/android/common/ObservableCollection;->notifyListeners(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 94
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "item"    # Ljava/lang/Object;

    .line 75
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    move-object v0, p1

    .line 76
    .local v0, "typedItem":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/telerik/android/common/ObservableCollection;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 77
    .local v8, "oldIndex":I
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 79
    .local v9, "result":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    .line 80
    .local v10, "newItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v11, Lcom/telerik/android/common/CollectionChangedEvent;

    sget-object v3, Lcom/telerik/android/common/CollectionChangeAction;->REMOVE:Lcom/telerik/android/common/CollectionChangeAction;

    const/4 v5, 0x0

    const/4 v7, -0x1

    move-object v1, v11

    move-object v2, p0

    move-object v4, v10

    move v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/telerik/android/common/CollectionChangedEvent;-><init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;Ljava/util/List;Ljava/util/List;II)V

    .line 82
    .local v1, "event":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p0, v1}, Lcom/telerik/android/common/ObservableCollection;->notifyListeners(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 83
    return v9
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 154
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/telerik/android/common/ObservableCollection;->createList2(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    .line 155
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    new-instance v9, Lcom/telerik/android/common/CollectionChangedEvent;

    sget-object v3, Lcom/telerik/android/common/CollectionChangeAction;->REMOVE:Lcom/telerik/android/common/CollectionChangeAction;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v1, v9

    move-object v2, p0

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/telerik/android/common/CollectionChangedEvent;-><init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;Ljava/util/List;Ljava/util/List;II)V

    .line 156
    .local v1, "event":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p0, v1}, Lcom/telerik/android/common/ObservableCollection;->notifyListeners(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 158
    return v0
.end method

.method public removeCollectionChangeListener(Lcom/telerik/android/common/CollectionChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/common/CollectionChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    .local p1, "listener":Lcom/telerik/android/common/CollectionChangeListener;, "Lcom/telerik/android/common/CollectionChangeListener<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/common/ObservableCollection;->changeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method protected removeRange(II)V
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 163
    .local p0, "this":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    if-ne p1, p2, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 169
    invoke-virtual {p0, v1}, Lcom/telerik/android/common/ObservableCollection;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 174
    new-instance v8, Lcom/telerik/android/common/CollectionChangedEvent;

    sget-object v3, Lcom/telerik/android/common/CollectionChangeAction;->REMOVE:Lcom/telerik/android/common/CollectionChangeAction;

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v4, v0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/telerik/android/common/CollectionChangedEvent;-><init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;Ljava/util/List;Ljava/util/List;II)V

    .line 175
    .local v1, "event":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p0, v1}, Lcom/telerik/android/common/ObservableCollection;->notifyListeners(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 176
    return-void
.end method
