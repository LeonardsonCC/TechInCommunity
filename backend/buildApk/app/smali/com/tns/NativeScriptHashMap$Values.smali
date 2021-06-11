.class final Lcom/tns/NativeScriptHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "NativeScriptHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/NativeScriptHashMap;


# direct methods
.method private constructor <init>(Lcom/tns/NativeScriptHashMap;)V
    .locals 0

    .line 913
    .local p0, "this":Lcom/tns/NativeScriptHashMap$Values;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.Values;"
    iput-object p1, p0, Lcom/tns/NativeScriptHashMap$Values;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tns/NativeScriptHashMap;Lcom/tns/NativeScriptHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tns/NativeScriptHashMap;
    .param p2, "x1"    # Lcom/tns/NativeScriptHashMap$1;

    .line 913
    .local p0, "this":Lcom/tns/NativeScriptHashMap$Values;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Lcom/tns/NativeScriptHashMap$Values;-><init>(Lcom/tns/NativeScriptHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 931
    .local p0, "this":Lcom/tns/NativeScriptHashMap$Values;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$Values;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptHashMap;->clear()V

    .line 932
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 927
    .local p0, "this":Lcom/tns/NativeScriptHashMap$Values;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$Values;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v0, p1}, Lcom/tns/NativeScriptHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 923
    .local p0, "this":Lcom/tns/NativeScriptHashMap$Values;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$Values;->this$0:Lcom/tns/NativeScriptHashMap;

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
            "TV;>;"
        }
    .end annotation

    .line 915
    .local p0, "this":Lcom/tns/NativeScriptHashMap$Values;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$Values;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptHashMap;->newValueIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 919
    .local p0, "this":Lcom/tns/NativeScriptHashMap$Values;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$Values;->this$0:Lcom/tns/NativeScriptHashMap;

    iget v0, v0, Lcom/tns/NativeScriptHashMap;->size:I

    return v0
.end method
