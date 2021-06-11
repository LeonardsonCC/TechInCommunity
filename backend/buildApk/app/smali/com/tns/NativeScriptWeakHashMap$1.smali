.class Lcom/tns/NativeScriptWeakHashMap$1;
.super Ljava/util/AbstractSet;
.source "NativeScriptWeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/NativeScriptWeakHashMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/NativeScriptWeakHashMap;


# direct methods
.method constructor <init>(Lcom/tns/NativeScriptWeakHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tns/NativeScriptWeakHashMap;

    .line 299
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$1;, "Lcom/tns/NativeScriptWeakHashMap$1;"
    iput-object p1, p0, Lcom/tns/NativeScriptWeakHashMap$1;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 307
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$1;, "Lcom/tns/NativeScriptWeakHashMap$1;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$1;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptWeakHashMap;->clear()V

    .line 308
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 321
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$1;, "Lcom/tns/NativeScriptWeakHashMap$1;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$1;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tns/NativeScriptWeakHashMap;->getEntry(Ljava/lang/Object;)Lcom/tns/NativeScriptWeakHashMap$Entry;

    move-result-object v0

    .line 323
    .local v0, "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<**>;"
    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {v0}, Lcom/tns/NativeScriptWeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v1

    .line 325
    .local v1, "key":Ljava/lang/Object;
    if-nez v1, :cond_0

    iget-boolean v2, v0, Lcom/tns/NativeScriptWeakHashMap$Entry;->isNull:Z

    if-eqz v2, :cond_1

    .line 326
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 330
    .end local v0    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<**>;"
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 335
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$1;, "Lcom/tns/NativeScriptWeakHashMap$1;"
    new-instance v0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;

    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap$1;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    new-instance v2, Lcom/tns/NativeScriptWeakHashMap$1$1;

    invoke-direct {v2, p0}, Lcom/tns/NativeScriptWeakHashMap$1$1;-><init>(Lcom/tns/NativeScriptWeakHashMap$1;)V

    invoke-direct {v0, v1, v2}, Lcom/tns/NativeScriptWeakHashMap$HashIterator;-><init>(Lcom/tns/NativeScriptWeakHashMap;Lcom/tns/NativeScriptWeakHashMap$Entry$Type;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 312
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$1;, "Lcom/tns/NativeScriptWeakHashMap$1;"
    invoke-virtual {p0, p1}, Lcom/tns/NativeScriptWeakHashMap$1;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$1;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tns/NativeScriptWeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Number;

    .line 314
    const/4 v0, 0x1

    return v0

    .line 316
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 302
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$1;, "Lcom/tns/NativeScriptWeakHashMap$1;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$1;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptWeakHashMap;->size()I

    move-result v0

    return v0
.end method
