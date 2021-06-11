.class public Lcom/tns/NativeScriptWeakHashMap;
.super Lcom/tns/NativeScriptAbstractMap;
.source "NativeScriptWeakHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/NativeScriptWeakHashMap$HashIterator;,
        Lcom/tns/NativeScriptWeakHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Number;",
        ">",
        "Lcom/tns/NativeScriptAbstractMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x10


# instance fields
.field elementCount:I

.field elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/tns/NativeScriptWeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final loadFactor:I

.field volatile modCount:I

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 193
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/tns/NativeScriptWeakHashMap;-><init>(I)V

    .line 194
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .line 205
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/tns/NativeScriptAbstractMap;-><init>()V

    .line 206
    if-ltz p1, :cond_1

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/tns/NativeScriptWeakHashMap;->elementCount:I

    .line 210
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-static {v0}, Lcom/tns/NativeScriptWeakHashMap;->newEntryArray(I)[Lcom/tns/NativeScriptWeakHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 211
    const/16 v0, 0x1d4c

    iput v0, p0, Lcom/tns/NativeScriptWeakHashMap;->loadFactor:I

    .line 212
    invoke-direct {p0}, Lcom/tns/NativeScriptWeakHashMap;->computeMaxSize()V

    .line 213
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 214
    return-void

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    .line 228
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/tns/NativeScriptAbstractMap;-><init>()V

    .line 229
    if-ltz p1, :cond_2

    .line 232
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/tns/NativeScriptWeakHashMap;->elementCount:I

    .line 236
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-static {v0}, Lcom/tns/NativeScriptWeakHashMap;->newEntryArray(I)[Lcom/tns/NativeScriptWeakHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 237
    const v0, 0x461c4000    # 10000.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/tns/NativeScriptWeakHashMap;->loadFactor:I

    .line 238
    invoke-direct {p0}, Lcom/tns/NativeScriptWeakHashMap;->computeMaxSize()V

    .line 239
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 240
    return-void

    .line 233
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFactor <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 250
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-direct {p0, v0}, Lcom/tns/NativeScriptWeakHashMap;-><init>(I)V

    .line 251
    invoke-direct {p0, p1}, Lcom/tns/NativeScriptWeakHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 252
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 43
    invoke-static {p0}, Lcom/tns/NativeScriptWeakHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private computeMaxSize()V
    .locals 4

    .line 273
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    array-length v0, v0

    int-to-long v0, v0

    iget v2, p0, Lcom/tns/NativeScriptWeakHashMap;->loadFactor:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/tns/NativeScriptWeakHashMap;->threshold:I

    .line 274
    return-void
.end method

.method private static newEntryArray(I)[Lcom/tns/NativeScriptWeakHashMap$Entry;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lcom/tns/NativeScriptWeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 62
    new-array v0, p0, [Lcom/tns/NativeScriptWeakHashMap$Entry;

    return-object v0
.end method

.method private putAllImpl(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 697
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    invoke-super {p0, p1}, Lcom/tns/NativeScriptAbstractMap;->putAll(Ljava/util/Map;)V

    .line 700
    :cond_0
    return-void
.end method

.method private rehash()V
    .locals 7

    .line 611
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 612
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 613
    const/4 v0, 0x1

    .line 615
    :cond_0
    invoke-static {v0}, Lcom/tns/NativeScriptWeakHashMap;->newEntryArray(I)[Lcom/tns/NativeScriptWeakHashMap$Entry;

    move-result-object v1

    .line 616
    .local v1, "newData":[Lcom/tns/NativeScriptWeakHashMap$Entry;, "[Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 617
    aget-object v3, v3, v2

    .line 618
    .local v3, "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v3, :cond_2

    .line 619
    iget-boolean v4, v3, Lcom/tns/NativeScriptWeakHashMap$Entry;->isNull:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    iget v4, v3, Lcom/tns/NativeScriptWeakHashMap$Entry;->hash:I

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    rem-int/2addr v4, v0

    .line 620
    .local v4, "index":I
    :goto_2
    iget-object v5, v3, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 621
    .local v5, "next":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    aget-object v6, v1, v4

    iput-object v6, v3, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 622
    aput-object v3, v1, v4

    .line 623
    move-object v3, v5

    .line 624
    .end local v4    # "index":I
    .end local v5    # "next":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    goto :goto_1

    .line 616
    .end local v3    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 626
    .end local v2    # "i":I
    :cond_3
    iput-object v1, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 627
    invoke-direct {p0}, Lcom/tns/NativeScriptWeakHashMap;->computeMaxSize()V

    .line 628
    return-void
.end method

.method private static secondaryHashForInt(I)I
    .locals 2
    .param p0, "h"    # I

    .line 718
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 719
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 720
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 721
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 722
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 723
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private static secondaryHashForObject(Ljava/lang/Object;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 705
    instance-of v0, p0, Lcom/tns/NativeScriptHashCodeProvider;

    if-eqz v0, :cond_0

    .line 706
    move-object v0, p0

    check-cast v0, Lcom/tns/NativeScriptHashCodeProvider;

    .line 707
    .local v0, "provider":Lcom/tns/NativeScriptHashCodeProvider;
    invoke-interface {v0}, Lcom/tns/NativeScriptHashCodeProvider;->hashCode__super()I

    move-result v0

    .line 708
    .local v0, "intHash":I
    goto :goto_0

    .line 709
    .end local v0    # "intHash":I
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 712
    .restart local v0    # "intHash":I
    :goto_0
    invoke-static {v0}, Lcom/tns/NativeScriptWeakHashMap;->secondaryHashForInt(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 262
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    iget v0, p0, Lcom/tns/NativeScriptWeakHashMap;->elementCount:I

    if-lez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Lcom/tns/NativeScriptWeakHashMap;->elementCount:I

    .line 264
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    iget v0, p0, Lcom/tns/NativeScriptWeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tns/NativeScriptWeakHashMap;->modCount:I

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 285
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/tns/NativeScriptWeakHashMap;->getEntry(Ljava/lang/Object;)Lcom/tns/NativeScriptWeakHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 501
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptWeakHashMap;->poll()V

    .line 502
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 503
    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 504
    iget-object v2, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    aget-object v2, v2, v1

    .line 505
    .local v2, "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v2, :cond_2

    .line 506
    invoke-virtual {v2}, Lcom/tns/NativeScriptWeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    .line 507
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_0

    iget-boolean v4, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->isNull:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    if-ne p1, v4, :cond_1

    .line 508
    return v0

    .line 510
    :cond_1
    iget-object v2, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 511
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_1

    .line 512
    .end local v2    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :cond_2
    goto :goto_0

    .end local v1    # "i":I
    :cond_3
    goto :goto_4

    .line 514
    :cond_4
    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    array-length v1, v1

    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8

    .line 515
    iget-object v2, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    aget-object v2, v2, v1

    .line 516
    .restart local v2    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :goto_3
    if-eqz v2, :cond_7

    .line 517
    invoke-virtual {v2}, Lcom/tns/NativeScriptWeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    .line 518
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_5

    iget-boolean v4, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->isNull:Z

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v4, :cond_6

    .line 519
    return v0

    .line 521
    :cond_6
    iget-object v2, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 522
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_3

    .line 523
    .end local v2    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :cond_7
    goto :goto_2

    .line 525
    .end local v1    # "i":I
    :cond_8
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 298
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptWeakHashMap;->poll()V

    .line 299
    new-instance v0, Lcom/tns/NativeScriptWeakHashMap$1;

    invoke-direct {v0, p0}, Lcom/tns/NativeScriptWeakHashMap$1;-><init>(Lcom/tns/NativeScriptWeakHashMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 447
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptWeakHashMap;->poll()V

    .line 448
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 449
    invoke-static {p1}, Lcom/tns/NativeScriptWeakHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 450
    .local v1, "index":I
    aget-object v2, v2, v1

    .line 451
    .local v2, "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 452
    invoke-virtual {v2}, Lcom/tns/NativeScriptWeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 453
    iget-object v0, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 455
    :cond_0
    iget-object v2, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    goto :goto_0

    .line 457
    :cond_1
    return-object v0

    .line 459
    .end local v1    # "index":I
    .end local v2    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :cond_2
    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 460
    .local v1, "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_4

    .line 461
    iget-boolean v2, v1, Lcom/tns/NativeScriptWeakHashMap$Entry;->isNull:Z

    if-eqz v2, :cond_3

    .line 462
    iget-object v0, v1, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 464
    :cond_3
    iget-object v1, v1, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    goto :goto_1

    .line 466
    :cond_4
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/tns/NativeScriptWeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method getEntry(Ljava/lang/Object;)Lcom/tns/NativeScriptWeakHashMap$Entry;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/tns/NativeScriptWeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 470
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptWeakHashMap;->poll()V

    .line 471
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 472
    invoke-static {p1}, Lcom/tns/NativeScriptWeakHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 473
    .local v1, "index":I
    aget-object v2, v2, v1

    .line 474
    .local v2, "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 475
    invoke-virtual {v2}, Lcom/tns/NativeScriptWeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 476
    return-object v2

    .line 478
    :cond_0
    iget-object v2, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    goto :goto_0

    .line 480
    :cond_1
    return-object v0

    .line 482
    .end local v1    # "index":I
    .end local v2    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :cond_2
    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 483
    .local v1, "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_4

    .line 484
    iget-boolean v2, v1, Lcom/tns/NativeScriptWeakHashMap$Entry;->isNull:Z

    if-eqz v2, :cond_3

    .line 485
    return-object v1

    .line 487
    :cond_3
    iget-object v1, v1, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    goto :goto_1

    .line 489
    :cond_4
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 535
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptWeakHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptWeakHashMap;->poll()V

    .line 354
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/tns/NativeScriptWeakHashMap$2;

    invoke-direct {v0, p0}, Lcom/tns/NativeScriptWeakHashMap$2;-><init>(Lcom/tns/NativeScriptWeakHashMap;)V

    iput-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->keySet:Ljava/util/Set;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method poll()V
    .locals 2

    .line 541
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/tns/NativeScriptWeakHashMap$Entry;

    move-object v1, v0

    .local v1, "toRemove":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0, v1}, Lcom/tns/NativeScriptWeakHashMap;->removeEntry(Lcom/tns/NativeScriptWeakHashMap$Entry;)V

    goto :goto_0

    .line 544
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 579
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Number;, "TV;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptWeakHashMap;->poll()V

    .line 580
    const/4 v0, 0x0

    .line 582
    .local v0, "index":I
    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 583
    invoke-static {p1}, Lcom/tns/NativeScriptWeakHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v3

    and-int/2addr v3, v1

    iget-object v4, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    array-length v5, v4

    rem-int v0, v3, v5

    .line 584
    aget-object v3, v4, v0

    .line 585
    .local v3, "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/tns/NativeScriptWeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq p1, v4, :cond_1

    .line 586
    iget-object v3, v3, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    goto :goto_0

    .line 589
    .end local v3    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :cond_0
    iget-object v3, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    aget-object v3, v3, v2

    .line 590
    .restart local v3    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/tns/NativeScriptWeakHashMap$Entry;->isNull:Z

    if-nez v4, :cond_1

    .line 591
    iget-object v3, v3, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    goto :goto_1

    .line 594
    :cond_1
    if-nez v3, :cond_4

    .line 595
    iget v4, p0, Lcom/tns/NativeScriptWeakHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tns/NativeScriptWeakHashMap;->modCount:I

    .line 596
    iget v4, p0, Lcom/tns/NativeScriptWeakHashMap;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tns/NativeScriptWeakHashMap;->elementCount:I

    iget v5, p0, Lcom/tns/NativeScriptWeakHashMap;->threshold:I

    if-le v4, v5, :cond_3

    .line 597
    invoke-direct {p0}, Lcom/tns/NativeScriptWeakHashMap;->rehash()V

    .line 598
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/tns/NativeScriptWeakHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    array-length v2, v2

    rem-int v2, v1, v2

    :goto_2
    move v0, v2

    .line 600
    :cond_3
    new-instance v1, Lcom/tns/NativeScriptWeakHashMap$Entry;

    iget-object v2, p0, Lcom/tns/NativeScriptWeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p2, v2}, Lcom/tns/NativeScriptWeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 601
    .end local v3    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    .local v1, "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    iget-object v2, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 602
    iget-object v2, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    aput-object v1, v2, v0

    .line 603
    const/4 v2, 0x0

    return-object v2

    .line 605
    .end local v1    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    .restart local v3    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :cond_4
    iget-object v1, v3, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    .line 606
    .local v1, "result":Ljava/lang/Number;, "TV;"
    iput-object p2, v3, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 607
    return-object v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/tns/NativeScriptWeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 642
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lcom/tns/NativeScriptWeakHashMap;->putAllImpl(Ljava/util/Map;)V

    .line 643
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 655
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptWeakHashMap;->poll()V

    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, "index":I
    const/4 v1, 0x0

    .line 658
    .local v1, "last":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 659
    invoke-static {p1}, Lcom/tns/NativeScriptWeakHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iget-object v3, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    array-length v4, v3

    rem-int v0, v2, v4

    .line 660
    aget-object v2, v3, v0

    .line 661
    .local v2, "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tns/NativeScriptWeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq p1, v3, :cond_1

    .line 662
    move-object v1, v2

    .line 663
    iget-object v2, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    goto :goto_0

    .line 666
    .end local v2    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :cond_0
    iget-object v2, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 667
    .restart local v2    # "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->isNull:Z

    if-nez v3, :cond_1

    .line 668
    move-object v1, v2

    .line 669
    iget-object v2, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    goto :goto_1

    .line 672
    :cond_1
    if-eqz v2, :cond_3

    .line 673
    iget v3, p0, Lcom/tns/NativeScriptWeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tns/NativeScriptWeakHashMap;->modCount:I

    .line 674
    if-nez v1, :cond_2

    .line 675
    iget-object v3, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    iget-object v4, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    aput-object v4, v3, v0

    goto :goto_2

    .line 677
    :cond_2
    iget-object v3, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    iput-object v3, v1, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 679
    :goto_2
    iget v3, p0, Lcom/tns/NativeScriptWeakHashMap;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/tns/NativeScriptWeakHashMap;->elementCount:I

    .line 680
    iget-object v3, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    return-object v3

    .line 682
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/tns/NativeScriptWeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method removeEntry(Lcom/tns/NativeScriptWeakHashMap$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tns/NativeScriptWeakHashMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 547
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    .local p1, "toRemove":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    const/4 v0, 0x0

    .line 548
    .local v0, "last":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    iget v1, p1, Lcom/tns/NativeScriptWeakHashMap$Entry;->hash:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 549
    .local v1, "index":I
    aget-object v2, v2, v1

    .line 552
    .local v2, "entry":Lcom/tns/NativeScriptWeakHashMap$Entry;, "Lcom/tns/NativeScriptWeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 553
    if-ne p1, v2, :cond_1

    .line 554
    iget v3, p0, Lcom/tns/NativeScriptWeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tns/NativeScriptWeakHashMap;->modCount:I

    .line 555
    if-nez v0, :cond_0

    .line 556
    iget-object v3, p0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    iget-object v4, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    aput-object v4, v3, v1

    goto :goto_1

    .line 558
    :cond_0
    iget-object v3, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    iput-object v3, v0, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 560
    :goto_1
    iget v3, p0, Lcom/tns/NativeScriptWeakHashMap;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/tns/NativeScriptWeakHashMap;->elementCount:I

    .line 561
    goto :goto_2

    .line 563
    :cond_1
    move-object v0, v2

    .line 564
    iget-object v2, v2, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    goto :goto_0

    .line 566
    :cond_2
    :goto_2
    return-void
.end method

.method public size()I
    .locals 1

    .line 692
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptWeakHashMap;->poll()V

    .line 693
    iget v0, p0, Lcom/tns/NativeScriptWeakHashMap;->elementCount:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 407
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tns/NativeScriptWeakHashMap;->poll()V

    .line 408
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/tns/NativeScriptWeakHashMap$3;

    invoke-direct {v0, p0}, Lcom/tns/NativeScriptWeakHashMap$3;-><init>(Lcom/tns/NativeScriptWeakHashMap;)V

    iput-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->valuesCollection:Ljava/util/Collection;

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
