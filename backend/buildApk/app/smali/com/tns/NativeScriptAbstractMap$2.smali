.class Lcom/tns/NativeScriptAbstractMap$2;
.super Ljava/util/AbstractCollection;
.source "NativeScriptAbstractMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/NativeScriptAbstractMap;->values()Ljava/util/Collection;
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
.field final synthetic this$0:Lcom/tns/NativeScriptAbstractMap;


# direct methods
.method constructor <init>(Lcom/tns/NativeScriptAbstractMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tns/NativeScriptAbstractMap;

    .line 473
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$2;, "Lcom/tns/NativeScriptAbstractMap$2;"
    iput-object p1, p0, Lcom/tns/NativeScriptAbstractMap$2;->this$0:Lcom/tns/NativeScriptAbstractMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 481
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$2;, "Lcom/tns/NativeScriptAbstractMap$2;"
    iget-object v0, p0, Lcom/tns/NativeScriptAbstractMap$2;->this$0:Lcom/tns/NativeScriptAbstractMap;

    invoke-virtual {v0, p1}, Lcom/tns/NativeScriptAbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

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

    .line 486
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$2;, "Lcom/tns/NativeScriptAbstractMap$2;"
    new-instance v0, Lcom/tns/NativeScriptAbstractMap$2$1;

    invoke-direct {v0, p0}, Lcom/tns/NativeScriptAbstractMap$2$1;-><init>(Lcom/tns/NativeScriptAbstractMap$2;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 476
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$2;, "Lcom/tns/NativeScriptAbstractMap$2;"
    iget-object v0, p0, Lcom/tns/NativeScriptAbstractMap$2;->this$0:Lcom/tns/NativeScriptAbstractMap;

    invoke-virtual {v0}, Lcom/tns/NativeScriptAbstractMap;->size()I

    move-result v0

    return v0
.end method
