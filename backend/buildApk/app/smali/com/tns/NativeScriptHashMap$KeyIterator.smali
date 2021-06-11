.class final Lcom/tns/NativeScriptHashMap$KeyIterator;
.super Lcom/tns/NativeScriptHashMap$HashIterator;
.source "NativeScriptHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tns/NativeScriptHashMap<",
        "TK;TV;>.HashIterator;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/NativeScriptHashMap;


# direct methods
.method private constructor <init>(Lcom/tns/NativeScriptHashMap;)V
    .locals 0

    .line 795
    .local p0, "this":Lcom/tns/NativeScriptHashMap$KeyIterator;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Lcom/tns/NativeScriptHashMap$KeyIterator;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-direct {p0, p1}, Lcom/tns/NativeScriptHashMap$HashIterator;-><init>(Lcom/tns/NativeScriptHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tns/NativeScriptHashMap;Lcom/tns/NativeScriptHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tns/NativeScriptHashMap;
    .param p2, "x1"    # Lcom/tns/NativeScriptHashMap$1;

    .line 795
    .local p0, "this":Lcom/tns/NativeScriptHashMap$KeyIterator;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Lcom/tns/NativeScriptHashMap$KeyIterator;-><init>(Lcom/tns/NativeScriptHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 797
    .local p0, "this":Lcom/tns/NativeScriptHashMap$KeyIterator;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptHashMap$KeyIterator;->nextEntry()Lcom/tns/NativeScriptHashMap$HashMapEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method
