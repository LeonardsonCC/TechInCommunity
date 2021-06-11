.class Lcom/tns/NativeScriptWeakHashMap$2$1;
.super Ljava/lang/Object;
.source "NativeScriptWeakHashMap.java"

# interfaces
.implements Lcom/tns/NativeScriptWeakHashMap$Entry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/NativeScriptWeakHashMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tns/NativeScriptWeakHashMap$Entry$Type<",
        "TK;TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tns/NativeScriptWeakHashMap$2;


# direct methods
.method constructor <init>(Lcom/tns/NativeScriptWeakHashMap$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tns/NativeScriptWeakHashMap$2;

    .line 382
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$2$1;, "Lcom/tns/NativeScriptWeakHashMap$2$1;"
    iput-object p1, p0, Lcom/tns/NativeScriptWeakHashMap$2$1;->this$1:Lcom/tns/NativeScriptWeakHashMap$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TK;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$2$1;, "Lcom/tns/NativeScriptWeakHashMap$2$1;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
