.class final Lcom/tns/NativeScriptHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "NativeScriptHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/NativeScriptHashMap;


# direct methods
.method private constructor <init>(Lcom/tns/NativeScriptHashMap;)V
    .locals 0

    .line 885
    .local p0, "this":Lcom/tns/NativeScriptHashMap$KeySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/tns/NativeScriptHashMap$KeySet;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tns/NativeScriptHashMap;Lcom/tns/NativeScriptHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tns/NativeScriptHashMap;
    .param p2, "x1"    # Lcom/tns/NativeScriptHashMap$1;

    .line 885
    .local p0, "this":Lcom/tns/NativeScriptHashMap$KeySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Lcom/tns/NativeScriptHashMap$KeySet;-><init>(Lcom/tns/NativeScriptHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 909
    .local p0, "this":Lcom/tns/NativeScriptHashMap$KeySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$KeySet;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptHashMap;->clear()V

    .line 910
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 899
    .local p0, "this":Lcom/tns/NativeScriptHashMap$KeySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$KeySet;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v0, p1}, Lcom/tns/NativeScriptHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 895
    .local p0, "this":Lcom/tns/NativeScriptHashMap$KeySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$KeySet;->this$0:Lcom/tns/NativeScriptHashMap;

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
            "TK;>;"
        }
    .end annotation

    .line 887
    .local p0, "this":Lcom/tns/NativeScriptHashMap$KeySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$KeySet;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptHashMap;->newKeyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 903
    .local p0, "this":Lcom/tns/NativeScriptHashMap$KeySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$KeySet;->this$0:Lcom/tns/NativeScriptHashMap;

    iget v0, v0, Lcom/tns/NativeScriptHashMap;->size:I

    .line 904
    .local v0, "oldSize":I
    iget-object v1, p0, Lcom/tns/NativeScriptHashMap$KeySet;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v1, p1}, Lcom/tns/NativeScriptHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Number;

    .line 905
    iget-object v1, p0, Lcom/tns/NativeScriptHashMap$KeySet;->this$0:Lcom/tns/NativeScriptHashMap;

    iget v1, v1, Lcom/tns/NativeScriptHashMap;->size:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public size()I
    .locals 1

    .line 891
    .local p0, "this":Lcom/tns/NativeScriptHashMap$KeySet;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$KeySet;->this$0:Lcom/tns/NativeScriptHashMap;

    iget v0, v0, Lcom/tns/NativeScriptHashMap;->size:I

    return v0
.end method
