.class Lcom/tns/NativeScriptWeakHashMap$3;
.super Ljava/util/AbstractCollection;
.source "NativeScriptWeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/NativeScriptWeakHashMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/NativeScriptWeakHashMap;


# direct methods
.method constructor <init>(Lcom/tns/NativeScriptWeakHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tns/NativeScriptWeakHashMap;

    .line 409
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$3;, "Lcom/tns/NativeScriptWeakHashMap$3;"
    iput-object p1, p0, Lcom/tns/NativeScriptWeakHashMap$3;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 417
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$3;, "Lcom/tns/NativeScriptWeakHashMap$3;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$3;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptWeakHashMap;->clear()V

    .line 418
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 422
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$3;, "Lcom/tns/NativeScriptWeakHashMap$3;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$3;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v0, p1}, Lcom/tns/NativeScriptWeakHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 427
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$3;, "Lcom/tns/NativeScriptWeakHashMap$3;"
    new-instance v0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;

    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap$3;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    new-instance v2, Lcom/tns/NativeScriptWeakHashMap$3$1;

    invoke-direct {v2, p0}, Lcom/tns/NativeScriptWeakHashMap$3$1;-><init>(Lcom/tns/NativeScriptWeakHashMap$3;)V

    invoke-direct {v0, v1, v2}, Lcom/tns/NativeScriptWeakHashMap$HashIterator;-><init>(Lcom/tns/NativeScriptWeakHashMap;Lcom/tns/NativeScriptWeakHashMap$Entry$Type;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 412
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$3;, "Lcom/tns/NativeScriptWeakHashMap$3;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$3;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptWeakHashMap;->size()I

    move-result v0

    return v0
.end method
