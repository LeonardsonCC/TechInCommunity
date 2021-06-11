.class abstract Lcom/tns/NativeScriptHashMap$HashIterator;
.super Ljava/lang/Object;
.source "NativeScriptHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation


# instance fields
.field expectedModCount:I

.field lastEntryReturned:Lcom/tns/NativeScriptHashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Lcom/tns/NativeScriptHashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field final synthetic this$0:Lcom/tns/NativeScriptHashMap;


# direct methods
.method constructor <init>(Lcom/tns/NativeScriptHashMap;)V
    .locals 3

    .line 749
    .local p0, "this":Lcom/tns/NativeScriptHashMap$HashIterator;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.HashIterator;"
    iput-object p1, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptHashMap;

    iget-object v0, v0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    iput-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 747
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptHashMap;

    iget v0, v0, Lcom/tns/NativeScriptHashMap;->modCount:I

    iput v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->expectedModCount:I

    .line 750
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    if-nez v0, :cond_1

    .line 751
    iget-object p1, p1, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 752
    .local p1, "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 753
    .local v0, "next":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-nez v0, :cond_0

    iget v1, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->nextIndex:I

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 754
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->nextIndex:I

    aget-object v0, p1, v1

    goto :goto_0

    .line 756
    :cond_0
    iput-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 758
    .end local v0    # "next":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    .end local p1    # "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 761
    .local p0, "this":Lcom/tns/NativeScriptHashMap$HashIterator;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method nextEntry()Lcom/tns/NativeScriptHashMap$HashMapEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 765
    .local p0, "this":Lcom/tns/NativeScriptHashMap$HashIterator;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptHashMap;

    iget v0, v0, Lcom/tns/NativeScriptHashMap;->modCount:I

    iget v1, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_2

    .line 768
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 773
    .local v0, "entryToReturn":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptHashMap;

    iget-object v1, v1, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 774
    .local v1, "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    iget-object v2, v0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 775
    .local v2, "next":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-nez v2, :cond_0

    iget v3, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->nextIndex:I

    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 776
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->nextIndex:I

    aget-object v2, v1, v3

    goto :goto_0

    .line 778
    :cond_0
    iput-object v2, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 779
    iput-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->lastEntryReturned:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    return-object v0

    .line 769
    .end local v0    # "entryToReturn":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    .end local v2    # "next":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 766
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public remove()V
    .locals 2

    .line 783
    .local p0, "this":Lcom/tns/NativeScriptHashMap$HashIterator;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->lastEntryReturned:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptHashMap;

    iget v0, v0, Lcom/tns/NativeScriptHashMap;->modCount:I

    iget v1, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptHashMap;

    iget-object v1, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->lastEntryReturned:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    iget-object v1, v1, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tns/NativeScriptHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Number;

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->lastEntryReturned:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 791
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptHashMap;

    iget v0, v0, Lcom/tns/NativeScriptHashMap;->modCount:I

    iput v0, p0, Lcom/tns/NativeScriptHashMap$HashIterator;->expectedModCount:I

    .line 792
    return-void

    .line 787
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 784
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
