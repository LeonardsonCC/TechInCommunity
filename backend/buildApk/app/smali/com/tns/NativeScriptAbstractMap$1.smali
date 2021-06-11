.class Lcom/tns/NativeScriptAbstractMap$1;
.super Ljava/util/AbstractSet;
.source "NativeScriptAbstractMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/NativeScriptAbstractMap;->keySet()Ljava/util/Set;
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
.field final synthetic this$0:Lcom/tns/NativeScriptAbstractMap;


# direct methods
.method constructor <init>(Lcom/tns/NativeScriptAbstractMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tns/NativeScriptAbstractMap;

    .line 333
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$1;, "Lcom/tns/NativeScriptAbstractMap$1;"
    iput-object p1, p0, Lcom/tns/NativeScriptAbstractMap$1;->this$0:Lcom/tns/NativeScriptAbstractMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 336
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$1;, "Lcom/tns/NativeScriptAbstractMap$1;"
    iget-object v0, p0, Lcom/tns/NativeScriptAbstractMap$1;->this$0:Lcom/tns/NativeScriptAbstractMap;

    invoke-virtual {v0, p1}, Lcom/tns/NativeScriptAbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

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

    .line 346
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$1;, "Lcom/tns/NativeScriptAbstractMap$1;"
    new-instance v0, Lcom/tns/NativeScriptAbstractMap$1$1;

    invoke-direct {v0, p0}, Lcom/tns/NativeScriptAbstractMap$1$1;-><init>(Lcom/tns/NativeScriptAbstractMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 341
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$1;, "Lcom/tns/NativeScriptAbstractMap$1;"
    iget-object v0, p0, Lcom/tns/NativeScriptAbstractMap$1;->this$0:Lcom/tns/NativeScriptAbstractMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptAbstractMap;->size()I

    move-result v0

    return v0
.end method
