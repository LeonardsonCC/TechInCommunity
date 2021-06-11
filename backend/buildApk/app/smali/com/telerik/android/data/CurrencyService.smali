.class public Lcom/telerik/android/data/CurrencyService;
.super Ljava/lang/Object;
.source "CurrencyService.java"


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
            "Lcom/telerik/android/data/CurrentItemChangedListener<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private currentItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/CurrencyService;->changeListeners:Ljava/util/ArrayList;

    .line 12
    iput-object p1, p0, Lcom/telerik/android/data/CurrencyService;->data:Ljava/util/List;

    .line 13
    return-void
.end method

.method private getFirstItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->data:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getLastItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getNextItem()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->data:Ljava/util/List;

    iget-object v1, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 103
    .local v0, "currentIndex":I
    add-int/lit8 v1, v0, 0x1

    .line 104
    .local v1, "nextIndex":I
    iget-object v2, p0, Lcom/telerik/android/data/CurrencyService;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 105
    const/4 v2, 0x0

    return-object v2

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/telerik/android/data/CurrencyService;->data:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private getPreviousItem()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->data:Ljava/util/List;

    iget-object v1, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 93
    .local v0, "currentIndex":I
    add-int/lit8 v1, v0, -0x1

    .line 94
    .local v1, "previousIndex":I
    if-gez v1, :cond_0

    .line 95
    const/4 v2, 0x0

    return-object v2

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/telerik/android/data/CurrencyService;->data:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addCurrentChangedListener(Lcom/telerik/android/data/CurrentItemChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/CurrentItemChangedListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    .local p1, "listener":Lcom/telerik/android/data/CurrentItemChangedListener;, "Lcom/telerik/android/data/CurrentItemChangedListener<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->changeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public getCurrentItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 16
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    return-object v0
.end method

.method public isCurrent(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 20
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveFirst()V
    .locals 2

    .line 52
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    .line 53
    .local v0, "oldItem":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/telerik/android/data/CurrencyService;->getFirstItem()Ljava/lang/Object;

    move-result-object v1

    .line 54
    .local v1, "firstItem":Ljava/lang/Object;, "TE;"
    iput-object v1, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/telerik/android/data/CurrencyService;->onCurrentItemChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public moveLast()V
    .locals 2

    .line 60
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    .line 61
    .local v0, "oldItem":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/telerik/android/data/CurrencyService;->getLastItem()Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "lastItem":Ljava/lang/Object;, "TE;"
    iput-object v1, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/telerik/android/data/CurrencyService;->onCurrentItemChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public moveNext()Z
    .locals 3

    .line 34
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    .line 35
    .local v0, "oldItem":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/telerik/android/data/CurrencyService;->getNextItem()Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "nextItem":Ljava/lang/Object;, "TE;"
    iput-object v1, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/telerik/android/data/CurrencyService;->onCurrentItemChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    const/4 v2, 0x0

    return v2
.end method

.method public movePrevious()Z
    .locals 3

    .line 43
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    .line 44
    .local v0, "oldItem":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/telerik/android/data/CurrencyService;->getPreviousItem()Ljava/lang/Object;

    move-result-object v1

    .line 45
    .local v1, "previousItem":Ljava/lang/Object;, "TE;"
    iput-object v1, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/telerik/android/data/CurrencyService;->onCurrentItemChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    const/4 v2, 0x0

    return v2
.end method

.method protected onCurrentItemChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    .local p1, "oldItem":Ljava/lang/Object;, "TE;"
    .local p2, "newItem":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->changeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/data/CurrentItemChangedListener;

    .line 113
    .local v1, "listener":Lcom/telerik/android/data/CurrentItemChangedListener;, "Lcom/telerik/android/data/CurrentItemChangedListener<TE;>;"
    new-instance v2, Lcom/telerik/android/data/CurrentItemChangedInfo;

    invoke-direct {v2, p1, p2}, Lcom/telerik/android/data/CurrentItemChangedInfo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/telerik/android/data/CurrentItemChangedListener;->currentItemChanged(Lcom/telerik/android/data/CurrentItemChangedInfo;)V

    .line 114
    .end local v1    # "listener":Lcom/telerik/android/data/CurrentItemChangedListener;, "Lcom/telerik/android/data/CurrentItemChangedListener<TE;>;"
    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public removeCurrentChangedListener(Lcom/telerik/android/data/CurrentItemChangedListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/CurrentItemChangedListener<",
            "TE;>;)Z"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    .local p1, "listener":Lcom/telerik/android/data/CurrentItemChangedListener;, "Lcom/telerik/android/data/CurrentItemChangedListener<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->changeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCurrentItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lcom/telerik/android/data/CurrencyService;, "Lcom/telerik/android/data/CurrencyService<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 25
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    .line 29
    .local v0, "oldItem":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lcom/telerik/android/data/CurrencyService;->currentItem:Ljava/lang/Object;

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/telerik/android/data/CurrencyService;->onCurrentItemChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return-void
.end method
