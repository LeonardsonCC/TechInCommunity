.class Lcom/tns/NativeScriptWeakHashMap$3$1;
.super Ljava/lang/Object;
.source "NativeScriptWeakHashMap.java"

# interfaces
.implements Lcom/tns/NativeScriptWeakHashMap$Entry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/NativeScriptWeakHashMap$3;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tns/NativeScriptWeakHashMap$Entry$Type<",
        "TV;TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tns/NativeScriptWeakHashMap$3;


# direct methods
.method constructor <init>(Lcom/tns/NativeScriptWeakHashMap$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tns/NativeScriptWeakHashMap$3;

    .line 427
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$3$1;, "Lcom/tns/NativeScriptWeakHashMap$3$1;"
    iput-object p1, p0, Lcom/tns/NativeScriptWeakHashMap$3$1;->this$1:Lcom/tns/NativeScriptWeakHashMap$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/Map$Entry;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$3$1;, "Lcom/tns/NativeScriptWeakHashMap$3$1;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0

    .line 427
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$3$1;, "Lcom/tns/NativeScriptWeakHashMap$3$1;"
    invoke-virtual {p0, p1}, Lcom/tns/NativeScriptWeakHashMap$3$1;->get(Ljava/util/Map$Entry;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
