.class Lcom/tns/NativeScriptHashMap$HashMapEntry;
.super Ljava/lang/Object;
.source "NativeScriptHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field next:Lcom/tns/NativeScriptHashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/tns/NativeScriptHashMap$HashMapEntry;)V
    .locals 0
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 702
    .local p0, "this":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-object p1, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 704
    iput-object p2, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 705
    iput p3, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->hash:I

    .line 706
    iput-object p4, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 707
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 725
    .local p0, "this":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 726
    return v1

    .line 728
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 729
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 710
    .local p0, "this":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 714
    .local p0, "this":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 734
    .local p0, "this":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    iget v0, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->hash:I

    iget-object v1, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 718
    .local p0, "this":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 719
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 720
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 739
    .local p0, "this":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
