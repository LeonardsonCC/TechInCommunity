.class final Lcom/tns/NativeScriptWeakHashMap$Entry;
.super Ljava/lang/ref/WeakReference;
.source "NativeScriptWeakHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptWeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/NativeScriptWeakHashMap$Entry$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field isNull:Z

.field next:Lcom/tns/NativeScriptWeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tns/NativeScriptWeakHashMap$Entry<",
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
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "object":Ljava/lang/Object;, "TV;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 80
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/tns/NativeScriptWeakHashMap$Entry;->isNull:Z

    .line 81
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/tns/NativeScriptWeakHashMap;->access$000(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/tns/NativeScriptWeakHashMap$Entry;->hash:I

    .line 82
    iput-object p2, p0, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 101
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    return v1

    .line 104
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-super {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 106
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_3

    :goto_0
    iget-object v3, p0, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_2

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_3

    :goto_1
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    invoke-super {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 111
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    iget v0, p0, Lcom/tns/NativeScriptWeakHashMap$Entry;->hash:I

    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 95
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 96
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
