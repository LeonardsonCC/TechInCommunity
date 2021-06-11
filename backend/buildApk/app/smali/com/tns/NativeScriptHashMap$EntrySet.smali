.class final Lcom/tns/NativeScriptHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "NativeScriptHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/NativeScriptHashMap;


# direct methods
.method private constructor <init>(Lcom/tns/NativeScriptHashMap;)V
    .locals 0

    .line 935
    .local p0, "this":Lcom/tns/NativeScriptHashMap$EntrySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/tns/NativeScriptHashMap$EntrySet;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tns/NativeScriptHashMap;Lcom/tns/NativeScriptHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tns/NativeScriptHashMap;
    .param p2, "x1"    # Lcom/tns/NativeScriptHashMap$1;

    .line 935
    .local p0, "this":Lcom/tns/NativeScriptHashMap$EntrySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/tns/NativeScriptHashMap$EntrySet;-><init>(Lcom/tns/NativeScriptHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 965
    .local p0, "this":Lcom/tns/NativeScriptHashMap$EntrySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$EntrySet;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptHashMap;->clear()V

    .line 966
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 941
    .local p0, "this":Lcom/tns/NativeScriptHashMap$EntrySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 942
    const/4 v0, 0x0

    return v0

    .line 944
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 945
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/tns/NativeScriptHashMap$EntrySet;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tns/NativeScriptHashMap;->access$600(Lcom/tns/NativeScriptHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 961
    .local p0, "this":Lcom/tns/NativeScriptHashMap$EntrySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$EntrySet;->this$0:Lcom/tns/NativeScriptHashMap;

    iget v0, v0, Lcom/tns/NativeScriptHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 937
    .local p0, "this":Lcom/tns/NativeScriptHashMap$EntrySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$EntrySet;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptHashMap;->newEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 949
    .local p0, "this":Lcom/tns/NativeScriptHashMap$EntrySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 950
    const/4 v0, 0x0

    return v0

    .line 952
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 953
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/tns/NativeScriptHashMap$EntrySet;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tns/NativeScriptHashMap;->access$700(Lcom/tns/NativeScriptHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public size()I
    .locals 1

    .line 957
    .local p0, "this":Lcom/tns/NativeScriptHashMap$EntrySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$EntrySet;->this$0:Lcom/tns/NativeScriptHashMap;

    iget v0, v0, Lcom/tns/NativeScriptHashMap;->size:I

    return v0
.end method
