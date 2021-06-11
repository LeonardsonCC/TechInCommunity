.class Lcom/tns/NativeScriptWeakHashMap$2;
.super Ljava/util/AbstractSet;
.source "NativeScriptWeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/NativeScriptWeakHashMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/NativeScriptWeakHashMap;


# direct methods
.method constructor <init>(Lcom/tns/NativeScriptWeakHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tns/NativeScriptWeakHashMap;

    .line 355
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$2;, "Lcom/tns/NativeScriptWeakHashMap$2;"
    iput-object p1, p0, Lcom/tns/NativeScriptWeakHashMap$2;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 368
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$2;, "Lcom/tns/NativeScriptWeakHashMap$2;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$2;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptWeakHashMap;->clear()V

    .line 369
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 358
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$2;, "Lcom/tns/NativeScriptWeakHashMap$2;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$2;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v0, p1}, Lcom/tns/NativeScriptWeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$2;, "Lcom/tns/NativeScriptWeakHashMap$2;"
    new-instance v0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;

    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap$2;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    new-instance v2, Lcom/tns/NativeScriptWeakHashMap$2$1;

    invoke-direct {v2, p0}, Lcom/tns/NativeScriptWeakHashMap$2$1;-><init>(Lcom/tns/NativeScriptWeakHashMap$2;)V

    invoke-direct {v0, v1, v2}, Lcom/tns/NativeScriptWeakHashMap$HashIterator;-><init>(Lcom/tns/NativeScriptWeakHashMap;Lcom/tns/NativeScriptWeakHashMap$Entry$Type;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 373
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$2;, "Lcom/tns/NativeScriptWeakHashMap$2;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$2;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v0, p1}, Lcom/tns/NativeScriptWeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$2;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v0, p1}, Lcom/tns/NativeScriptWeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Number;

    .line 375
    const/4 v0, 0x1

    return v0

    .line 377
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 363
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$2;, "Lcom/tns/NativeScriptWeakHashMap$2;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$2;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptWeakHashMap;->size()I

    move-result v0

    return v0
.end method
