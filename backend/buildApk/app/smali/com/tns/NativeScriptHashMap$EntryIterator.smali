.class final Lcom/tns/NativeScriptHashMap$EntryIterator;
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
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tns/NativeScriptHashMap<",
        "TK;TV;>.HashIterator;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/NativeScriptHashMap;


# direct methods
.method private constructor <init>(Lcom/tns/NativeScriptHashMap;)V
    .locals 0

    .line 807
    .local p0, "this":Lcom/tns/NativeScriptHashMap$EntryIterator;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lcom/tns/NativeScriptHashMap$EntryIterator;->this$0:Lcom/tns/NativeScriptHashMap;

    invoke-direct {p0, p1}, Lcom/tns/NativeScriptHashMap$HashIterator;-><init>(Lcom/tns/NativeScriptHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tns/NativeScriptHashMap;Lcom/tns/NativeScriptHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tns/NativeScriptHashMap;
    .param p2, "x1"    # Lcom/tns/NativeScriptHashMap$1;

    .line 807
    .local p0, "this":Lcom/tns/NativeScriptHashMap$EntryIterator;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Lcom/tns/NativeScriptHashMap$EntryIterator;-><init>(Lcom/tns/NativeScriptHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 807
    .local p0, "this":Lcom/tns/NativeScriptHashMap$EntryIterator;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 809
    .local p0, "this":Lcom/tns/NativeScriptHashMap$EntryIterator;, "Lcom/tns/NativeScriptHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptHashMap$EntryIterator;->nextEntry()Lcom/tns/NativeScriptHashMap$HashMapEntry;

    move-result-object v0

    return-object v0
.end method
