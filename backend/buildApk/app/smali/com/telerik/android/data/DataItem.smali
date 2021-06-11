.class public Lcom/telerik/android/data/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"


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
.field private groupKey:Ljava/lang/Object;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private sourceObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .local p1, "forObject":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/telerik/android/data/DataItem;->sourceObject:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2, "groupKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .local p1, "fromObject":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/telerik/android/data/DataItem;->sourceObject:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lcom/telerik/android/data/DataItem;->groupKey:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/DataItem;->items:Ljava/util/ArrayList;

    .line 29
    return-void
.end method


# virtual methods
.method public entity()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/DataItem;->sourceObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/DataItem;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public groupKey()Ljava/lang/Object;
    .locals 1

    .line 55
    .local p0, "this":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/DataItem;->groupKey:Ljava/lang/Object;

    return-object v0
.end method

.method setItems(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .local p1, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/telerik/android/data/DataItem<TE;>;>;"
    if-eqz p1, :cond_2

    .line 74
    iget-object v0, p0, Lcom/telerik/android/data/DataItem;->items:Ljava/util/ArrayList;

    if-ne p1, v0, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/data/DataItem;

    .line 80
    .local v1, "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    iget-object v2, p0, Lcom/telerik/android/data/DataItem;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v1    # "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    goto :goto_0

    .line 82
    :cond_1
    return-void

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "items cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public setListItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    invoke-virtual {p0, p1}, Lcom/telerik/android/data/DataItem;->setItems(Ljava/lang/Iterable;)V

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    .local p0, "this":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/DataItem;->groupKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/telerik/android/data/DataItem;->sourceObject:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
