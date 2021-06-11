.class public Lcom/tns/NativeScriptAbstractMap$SimpleEntry;
.super Ljava/lang/Object;
.source "NativeScriptAbstractMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptAbstractMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleEntry"
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
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x75f5135a03a97fe1L


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$SimpleEntry;, "Lcom/tns/NativeScriptAbstractMap$SimpleEntry<TK;TV;>;"
    .local p1, "theKey":Ljava/lang/Object;, "TK;"
    .local p2, "theValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    .line 122
    iput-object p2, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$SimpleEntry;, "Lcom/tns/NativeScriptAbstractMap$SimpleEntry<TK;TV;>;"
    .local p1, "copyFrom":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    .line 130
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 131
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 149
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$SimpleEntry;, "Lcom/tns/NativeScriptAbstractMap$SimpleEntry<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 150
    return v0

    .line 152
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 153
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    iget-object v3, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 156
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_4
    return v2
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$SimpleEntry;, "Lcom/tns/NativeScriptAbstractMap$SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$SimpleEntry;, "Lcom/tns/NativeScriptAbstractMap$SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 161
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$SimpleEntry;, "Lcom/tns/NativeScriptAbstractMap$SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$SimpleEntry;, "Lcom/tns/NativeScriptAbstractMap$SimpleEntry<TK;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 143
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 144
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 166
    .local p0, "this":Lcom/tns/NativeScriptAbstractMap$SimpleEntry;, "Lcom/tns/NativeScriptAbstractMap$SimpleEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tns/NativeScriptAbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
