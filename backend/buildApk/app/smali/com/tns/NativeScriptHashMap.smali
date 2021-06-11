.class public Lcom/tns/NativeScriptHashMap;
.super Ljava/util/AbstractMap;
.source "NativeScriptHashMap.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/NativeScriptHashMap$EntrySet;,
        Lcom/tns/NativeScriptHashMap$Values;,
        Lcom/tns/NativeScriptHashMap$KeySet;,
        Lcom/tns/NativeScriptHashMap$EntryIterator;,
        Lcom/tns/NativeScriptHashMap$ValueIterator;,
        Lcom/tns/NativeScriptHashMap$KeyIterator;,
        Lcom/tns/NativeScriptHashMap$HashIterator;,
        Lcom/tns/NativeScriptHashMap$HashMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Number;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry;

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field transient entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient modCount:I

.field transient size:I

.field transient table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient threshold:I

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tns/NativeScriptHashMap$HashMapEntry;

    sput-object v0, Lcom/tns/NativeScriptHashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    .line 971
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v3, "loadFactor"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/tns/NativeScriptHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 112
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 113
    sget-object v0, Lcom/tns/NativeScriptHashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Lcom/tns/NativeScriptHashMap$HashMapEntry;

    iput-object v0, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/tns/NativeScriptHashMap;->threshold:I

    .line 115
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .line 123
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 124
    if-ltz p1, :cond_3

    .line 128
    if-nez p1, :cond_0

    .line 130
    sget-object v0, Lcom/tns/NativeScriptHashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 131
    .local v0, "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    iput-object v0, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 132
    const/4 v1, -0x1

    iput v1, p0, Lcom/tns/NativeScriptHashMap;->threshold:I

    .line 133
    return-void

    .line 136
    .end local v0    # "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_0
    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 137
    const/4 p1, 0x4

    goto :goto_0

    .line 138
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_2

    .line 139
    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    .line 141
    :cond_2
    invoke-static {p1}, Lcom/tns/NativeScriptHashMap;->roundUpToPowerOfTwo(I)I

    move-result p1

    .line 143
    :goto_0
    invoke-direct {p0, p1}, Lcom/tns/NativeScriptHashMap;->makeTable(I)[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 144
    return-void

    .line 125
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capacity: "

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

    .line 156
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/tns/NativeScriptHashMap;-><init>(I)V

    .line 158
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/tns/NativeScriptHashMap;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tns/NativeScriptHashMap;-><init>(I)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/tns/NativeScriptHashMap;->constructorPutAll(Ljava/util/Map;)V

    .line 178
    return-void
.end method

.method static synthetic access$600(Lcom/tns/NativeScriptHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tns/NativeScriptHashMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/tns/NativeScriptHashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/tns/NativeScriptHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tns/NativeScriptHashMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/tns/NativeScriptHashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static capacityForInitSize(I)I
    .locals 2
    .param p0, "size"    # I

    .line 200
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    .line 203
    .local v0, "result":I
    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    :goto_0
    return v1
.end method

.method private constructorPut(Ljava/lang/Object;Ljava/lang/Number;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 415
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Number;, "TV;"
    if-nez p1, :cond_1

    .line 416
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 417
    .local v0, "entry":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 418
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2, v1, v2}, Lcom/tns/NativeScriptHashMap;->constructorNewEntry(Ljava/lang/Object;Ljava/lang/Number;ILcom/tns/NativeScriptHashMap$HashMapEntry;)Lcom/tns/NativeScriptHashMap$HashMapEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 419
    iget v1, p0, Lcom/tns/NativeScriptHashMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tns/NativeScriptHashMap;->size:I

    goto :goto_0

    .line 421
    :cond_0
    iput-object p2, v0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 423
    :goto_0
    return-void

    .line 426
    .end local v0    # "entry":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Lcom/tns/NativeScriptHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v0

    .line 427
    .local v0, "hash":I
    iget-object v1, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 428
    .local v1, "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    .line 429
    .local v2, "index":I
    aget-object v3, v1, v2

    .line 430
    .local v3, "first":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    move-object v4, v3

    .local v4, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v4, :cond_3

    .line 431
    iget-object v5, v4, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-ne p1, v5, :cond_2

    .line 432
    iput-object p2, v4, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 433
    return-void

    .line 430
    :cond_2
    iget-object v4, v4, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    goto :goto_1

    .line 438
    .end local v4    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/tns/NativeScriptHashMap;->constructorNewEntry(Ljava/lang/Object;Ljava/lang/Number;ILcom/tns/NativeScriptHashMap$HashMapEntry;)Lcom/tns/NativeScriptHashMap$HashMapEntry;

    move-result-object v4

    aput-object v4, v1, v2

    .line 439
    iget v4, p0, Lcom/tns/NativeScriptHashMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tns/NativeScriptHashMap;->size:I

    .line 440
    return-void
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 817
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 818
    iget-object v2, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 819
    .local v2, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v3}, Lcom/tns/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 822
    .end local v2    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Lcom/tns/NativeScriptHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v2

    .line 823
    .local v2, "hash":I
    iget-object v3, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 824
    .local v3, "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    array-length v4, v3

    sub-int/2addr v4, v1

    and-int v1, v2, v4

    .line 825
    .local v1, "index":I
    aget-object v4, v3, v1

    .local v4, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_3

    .line 826
    iget-object v5, v4, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-ne p1, v5, :cond_2

    .line 827
    iget-object v0, v4, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/tns/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 825
    :cond_2
    iget-object v4, v4, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    goto :goto_0

    .line 830
    .end local v4    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    return v0
.end method

.method private doubleCapacity()[Lcom/tns/NativeScriptHashMap$HashMapEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 543
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 544
    .local v0, "oldTable":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    array-length v1, v0

    .line 545
    .local v1, "oldCapacity":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    .line 546
    return-object v0

    .line 548
    :cond_0
    mul-int/lit8 v2, v1, 0x2

    .line 549
    .local v2, "newCapacity":I
    invoke-direct {p0, v2}, Lcom/tns/NativeScriptHashMap;->makeTable(I)[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    move-result-object v3

    .line 550
    .local v3, "newTable":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    iget v4, p0, Lcom/tns/NativeScriptHashMap;->size:I

    if-nez v4, :cond_1

    .line 551
    return-object v3

    .line 554
    :cond_1
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v1, :cond_7

    .line 559
    aget-object v5, v0, v4

    .line 560
    .local v5, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    if-nez v5, :cond_2

    .line 561
    goto :goto_3

    .line 563
    :cond_2
    iget v6, v5, Lcom/tns/NativeScriptHashMap$HashMapEntry;->hash:I

    and-int/2addr v6, v1

    .line 564
    .local v6, "highBit":I
    const/4 v7, 0x0

    .line 565
    .local v7, "broken":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    or-int v8, v4, v6

    aput-object v5, v3, v8

    .line 566
    iget-object v8, v5, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .local v8, "n":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v8, :cond_5

    .line 567
    iget v9, v8, Lcom/tns/NativeScriptHashMap$HashMapEntry;->hash:I

    and-int/2addr v9, v1

    .line 568
    .local v9, "nextHighBit":I
    if-eq v9, v6, :cond_4

    .line 569
    if-nez v7, :cond_3

    .line 570
    or-int v10, v4, v9

    aput-object v8, v3, v10

    goto :goto_2

    .line 572
    :cond_3
    iput-object v8, v7, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 574
    :goto_2
    move-object v7, v5

    .line 575
    move v6, v9

    .line 566
    .end local v9    # "nextHighBit":I
    :cond_4
    move-object v5, v8

    iget-object v8, v8, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    goto :goto_1

    .line 578
    .end local v8    # "n":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_5
    if-eqz v7, :cond_6

    .line 579
    const/4 v8, 0x0

    iput-object v8, v7, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 554
    .end local v5    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    .end local v6    # "highBit":I
    .end local v7    # "broken":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 582
    .end local v4    # "j":I
    :cond_7
    return-object v3
.end method

.method private ensureCapacity(I)V
    .locals 10
    .param p1, "numMappings"    # I

    .line 495
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    invoke-static {p1}, Lcom/tns/NativeScriptHashMap;->capacityForInitSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/tns/NativeScriptHashMap;->roundUpToPowerOfTwo(I)I

    move-result v0

    .line 496
    .local v0, "newCapacity":I
    iget-object v1, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 497
    .local v1, "oldTable":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    array-length v2, v1

    .line 498
    .local v2, "oldCapacity":I
    if-gt v0, v2, :cond_0

    .line 499
    return-void

    .line 501
    :cond_0
    mul-int/lit8 v3, v2, 0x2

    if-ne v0, v3, :cond_1

    .line 502
    invoke-direct {p0}, Lcom/tns/NativeScriptHashMap;->doubleCapacity()[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 503
    return-void

    .line 507
    :cond_1
    invoke-direct {p0, v0}, Lcom/tns/NativeScriptHashMap;->makeTable(I)[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    move-result-object v3

    .line 508
    .local v3, "newTable":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    iget v4, p0, Lcom/tns/NativeScriptHashMap;->size:I

    if-eqz v4, :cond_3

    .line 509
    add-int/lit8 v4, v0, -0x1

    .line 510
    .local v4, "newMask":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 511
    aget-object v6, v1, v5

    .local v6, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v6, :cond_2

    .line 512
    iget-object v7, v6, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 513
    .local v7, "oldNext":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    iget v8, v6, Lcom/tns/NativeScriptHashMap$HashMapEntry;->hash:I

    and-int/2addr v8, v4

    .line 514
    .local v8, "newIndex":I
    aget-object v9, v3, v8

    .line 515
    .local v9, "newNext":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    aput-object v6, v3, v8

    .line 516
    iput-object v9, v6, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 517
    move-object v6, v7

    .line 518
    .end local v7    # "oldNext":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    .end local v8    # "newIndex":I
    .end local v9    # "newNext":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    goto :goto_1

    .line 510
    .end local v6    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 521
    .end local v4    # "newMask":I
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method private makeTable(I)[Lcom/tns/NativeScriptHashMap$HashMapEntry;
    .locals 3
    .param p1, "newCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 530
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    new-array v0, p1, [Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 531
    .local v0, "newTable":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    iput-object v0, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 532
    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tns/NativeScriptHashMap;->threshold:I

    .line 533
    return-object v0
.end method

.method private putValueForNullKey(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Number;, "TV;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 386
    .local v0, "entry":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0, p1}, Lcom/tns/NativeScriptHashMap;->addNewEntryForNullKey(Ljava/lang/Number;)V

    .line 388
    iget v1, p0, Lcom/tns/NativeScriptHashMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tns/NativeScriptHashMap;->size:I

    .line 389
    iget v1, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    .line 390
    const/4 v1, 0x0

    return-object v1

    .line 392
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tns/NativeScriptHashMap;->preModify(Lcom/tns/NativeScriptHashMap$HashMapEntry;)V

    .line 393
    iget-object v1, v0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    .line 394
    .local v1, "oldValue":Ljava/lang/Number;, "TV;"
    iput-object p1, v0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 395
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 989
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 990
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 991
    .local v0, "capacity":I
    if-ltz v0, :cond_4

    .line 994
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 995
    const/4 v0, 0x4

    goto :goto_0

    .line 996
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-le v0, v1, :cond_1

    .line 997
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 999
    :cond_1
    invoke-static {v0}, Lcom/tns/NativeScriptHashMap;->roundUpToPowerOfTwo(I)I

    move-result v0

    .line 1001
    :goto_0
    invoke-direct {p0, v0}, Lcom/tns/NativeScriptHashMap;->makeTable(I)[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 1003
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1004
    .local v1, "size":I
    if-ltz v1, :cond_3

    .line 1008
    invoke-virtual {p0}, Lcom/tns/NativeScriptHashMap;->init()V

    .line 1009
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1011
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1013
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 1014
    .local v4, "val":Ljava/lang/Number;, "TV;"
    invoke-direct {p0, v3, v4}, Lcom/tns/NativeScriptHashMap;->constructorPut(Ljava/lang/Object;Ljava/lang/Number;)V

    .line 1009
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "val":Ljava/lang/Number;, "TV;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1016
    .end local v2    # "i":I
    :cond_2
    return-void

    .line 1005
    :cond_3
    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 992
    .end local v1    # "size":I
    :cond_4
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 838
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 839
    iget-object v2, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 840
    .local v2, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v3}, Lcom/tns/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 843
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 844
    iget v0, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    .line 845
    iget v0, p0, Lcom/tns/NativeScriptHashMap;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tns/NativeScriptHashMap;->size:I

    .line 846
    invoke-virtual {p0, v2}, Lcom/tns/NativeScriptHashMap;->postRemove(Lcom/tns/NativeScriptHashMap$HashMapEntry;)V

    .line 847
    return v1

    .line 841
    :cond_1
    :goto_0
    return v0

    .line 850
    .end local v2    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    invoke-static {p1}, Lcom/tns/NativeScriptHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v2

    .line 851
    .local v2, "hash":I
    iget-object v3, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 852
    .local v3, "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    array-length v4, v3

    sub-int/2addr v4, v1

    and-int/2addr v4, v2

    .line 853
    .local v4, "index":I
    aget-object v5, v3, v4

    .local v5, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    const/4 v6, 0x0

    .local v6, "prev":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v5, :cond_6

    .line 854
    iget-object v7, v5, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-ne p1, v7, :cond_5

    .line 855
    iget-object v7, v5, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v7}, Lcom/tns/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 856
    return v0

    .line 858
    :cond_3
    if-nez v6, :cond_4

    .line 859
    iget-object v0, v5, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    aput-object v0, v3, v4

    goto :goto_2

    .line 861
    :cond_4
    iget-object v0, v5, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    iput-object v0, v6, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 863
    :goto_2
    iget v0, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    .line 864
    iget v0, p0, Lcom/tns/NativeScriptHashMap;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tns/NativeScriptHashMap;->size:I

    .line 865
    invoke-virtual {p0, v5}, Lcom/tns/NativeScriptHashMap;->postRemove(Lcom/tns/NativeScriptHashMap$HashMapEntry;)V

    .line 866
    return v1

    .line 853
    :cond_5
    move-object v6, v5

    iget-object v5, v5, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    goto :goto_1

    .line 869
    .end local v5    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    .end local v6    # "prev":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_6
    return v0
.end method

.method private removeNullKey()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 618
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 619
    .local v0, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 620
    return-object v1

    .line 622
    :cond_0
    iput-object v1, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 623
    iget v1, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    .line 624
    iget v1, p0, Lcom/tns/NativeScriptHashMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tns/NativeScriptHashMap;->size:I

    .line 625
    invoke-virtual {p0, v0}, Lcom/tns/NativeScriptHashMap;->postRemove(Lcom/tns/NativeScriptHashMap$HashMapEntry;)V

    .line 626
    iget-object v1, v0, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    return-object v1
.end method

.method private static roundUpToPowerOfTwo(I)I
    .locals 1
    .param p0, "i"    # I

    .line 1021
    add-int/lit8 p0, p0, -0x1

    .line 1024
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 1025
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 1026
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 1027
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 1028
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 1030
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private static secondaryHashForInt(I)I
    .locals 2
    .param p0, "h"    # I

    .line 1049
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 1050
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 1051
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 1052
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 1053
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 1054
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private static secondaryHashForObject(Ljava/lang/Object;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 1036
    instance-of v0, p0, Lcom/tns/NativeScriptHashCodeProvider;

    if-eqz v0, :cond_0

    .line 1037
    move-object v0, p0

    check-cast v0, Lcom/tns/NativeScriptHashCodeProvider;

    .line 1038
    .local v0, "provider":Lcom/tns/NativeScriptHashCodeProvider;
    invoke-interface {v0}, Lcom/tns/NativeScriptHashCodeProvider;->hashCode__super()I

    move-result v0

    .line 1039
    .local v0, "intHash":I
    goto :goto_0

    .line 1040
    .end local v0    # "intHash":I
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 1043
    .restart local v0    # "intHash":I
    :goto_0
    invoke-static {v0}, Lcom/tns/NativeScriptHashMap;->secondaryHashForInt(I)I

    move-result v1

    return v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 976
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 977
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "loadFactor"

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;F)V

    .line 978
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 980
    iget-object v1, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 981
    iget v1, p0, Lcom/tns/NativeScriptHashMap;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 982
    invoke-virtual {p0}, Lcom/tns/NativeScriptHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 983
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 984
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 985
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 986
    :cond_0
    return-void
.end method


# virtual methods
.method addNewEntry(Ljava/lang/Object;Ljava/lang/Number;II)V
    .locals 3
    .param p3, "hash"    # I
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)V"
        }
    .end annotation

    .line 449
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Number;, "TV;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    new-instance v1, Lcom/tns/NativeScriptHashMap$HashMapEntry;

    aget-object v2, v0, p4

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/tns/NativeScriptHashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/tns/NativeScriptHashMap$HashMapEntry;)V

    aput-object v1, v0, p4

    .line 450
    return-void
.end method

.method addNewEntryForNullKey(Ljava/lang/Number;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 458
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Number;, "TV;"
    new-instance v0, Lcom/tns/NativeScriptHashMap$HashMapEntry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v1}, Lcom/tns/NativeScriptHashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/tns/NativeScriptHashMap$HashMapEntry;)V

    iput-object v0, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 459
    return-void
.end method

.method public clear()V
    .locals 2

    .line 643
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    iget v0, p0, Lcom/tns/NativeScriptHashMap;->size:I

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 645
    iput-object v1, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 646
    iget v0, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    .line 647
    const/4 v0, 0x0

    iput v0, p0, Lcom/tns/NativeScriptHashMap;->size:I

    .line 649
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 220
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tns/NativeScriptHashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .local v0, "result":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    nop

    .line 226
    iget-object v1, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/tns/NativeScriptHashMap;->makeTable(I)[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 227
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 228
    const/4 v2, 0x0

    iput v2, v0, Lcom/tns/NativeScriptHashMap;->size:I

    .line 229
    iput-object v1, v0, Lcom/tns/NativeScriptHashMap;->keySet:Ljava/util/Set;

    .line 230
    iput-object v1, v0, Lcom/tns/NativeScriptHashMap;->entrySet:Ljava/util/Set;

    .line 231
    iput-object v1, v0, Lcom/tns/NativeScriptHashMap;->values:Ljava/util/Collection;

    .line 233
    invoke-virtual {v0}, Lcom/tns/NativeScriptHashMap;->init()V

    .line 234
    invoke-virtual {v0, p0}, Lcom/tns/NativeScriptHashMap;->constructorPutAll(Ljava/util/Map;)V

    .line 235
    return-object v0

    .line 221
    .end local v0    # "result":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method constructorNewEntry(Ljava/lang/Object;Ljava/lang/Number;ILcom/tns/NativeScriptHashMap$HashMapEntry;)Lcom/tns/NativeScriptHashMap$HashMapEntry;
    .locals 1
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;)",
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Number;, "TV;"
    .local p4, "first":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    new-instance v0, Lcom/tns/NativeScriptHashMap$HashMapEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tns/NativeScriptHashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/tns/NativeScriptHashMap$HashMapEntry;)V

    return-object v0
.end method

.method final constructorPutAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    sget-object v1, Lcom/tns/NativeScriptHashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    if-ne v0, v1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/tns/NativeScriptHashMap;->doubleCapacity()[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 189
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 190
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-direct {p0, v2, v3}, Lcom/tns/NativeScriptHashMap;->constructorPut(Ljava/lang/Object;Ljava/lang/Number;)V

    .line 191
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 192
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .line 301
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 302
    iget-object v2, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 305
    :cond_1
    invoke-static {p1}, Lcom/tns/NativeScriptHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v2

    .line 306
    .local v2, "hash":I
    iget-object v3, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 307
    .local v3, "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    array-length v4, v3

    sub-int/2addr v4, v1

    and-int/2addr v4, v2

    aget-object v4, v3, v4

    .local v4, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_3

    .line 308
    iget-object v5, v4, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 309
    .local v5, "eKey":Ljava/lang/Object;, "TK;"
    if-ne v5, p1, :cond_2

    .line 310
    return v1

    .line 307
    .end local v5    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_2
    iget-object v4, v4, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    goto :goto_0

    .line 313
    .end local v4    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .line 324
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 325
    .local v0, "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    array-length v1, v0

    .line 326
    .local v1, "len":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_4

    .line 327
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 328
    aget-object v5, v0, v4

    .local v5, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v5, :cond_1

    .line 329
    iget-object v6, v5, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 330
    return v3

    .line 328
    :cond_0
    iget-object v5, v5, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    goto :goto_1

    .line 327
    .end local v5    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 334
    .end local v4    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 338
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_7

    .line 339
    aget-object v5, v0, v4

    .restart local v5    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_3
    if-eqz v5, :cond_6

    .line 340
    iget-object v6, v5, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-ne p1, v6, :cond_5

    .line 341
    return v3

    .line 339
    :cond_5
    iget-object v5, v5, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    goto :goto_3

    .line 338
    .end local v5    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 345
    .end local v4    # "i":I
    :cond_7
    iget-object v4, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 692
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap;->entrySet:Ljava/util/Set;

    .line 693
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tns/NativeScriptHashMap$EntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tns/NativeScriptHashMap$EntrySet;-><init>(Lcom/tns/NativeScriptHashMap;Lcom/tns/NativeScriptHashMap$1;)V

    iput-object v1, p0, Lcom/tns/NativeScriptHashMap;->entrySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/tns/NativeScriptHashMap;->entryForNullKey:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 279
    .local v1, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    :goto_0
    return-object v0

    .line 282
    .end local v1    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Lcom/tns/NativeScriptHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v1

    .line 283
    .local v1, "hash":I
    iget-object v2, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 284
    .local v2, "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v1

    aget-object v3, v2, v3

    .local v3, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v3, :cond_3

    .line 285
    iget-object v4, v3, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 286
    .local v4, "eKey":Ljava/lang/Object;, "TK;"
    if-ne v4, p1, :cond_2

    .line 287
    iget-object v0, v3, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 284
    .end local v4    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_2
    iget-object v3, v3, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    goto :goto_1

    .line 290
    .end local v3    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/tns/NativeScriptHashMap;->get(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method init()V
    .locals 0

    .line 247
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 257
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    iget v0, p0, Lcom/tns/NativeScriptHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 660
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap;->keySet:Ljava/util/Set;

    .line 661
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tns/NativeScriptHashMap$KeySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tns/NativeScriptHashMap$KeySet;-><init>(Lcom/tns/NativeScriptHashMap;Lcom/tns/NativeScriptHashMap$1;)V

    iput-object v1, p0, Lcom/tns/NativeScriptHashMap;->keySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 882
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    new-instance v0, Lcom/tns/NativeScriptHashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tns/NativeScriptHashMap$EntryIterator;-><init>(Lcom/tns/NativeScriptHashMap;Lcom/tns/NativeScriptHashMap$1;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 874
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    new-instance v0, Lcom/tns/NativeScriptHashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tns/NativeScriptHashMap$KeyIterator;-><init>(Lcom/tns/NativeScriptHashMap;Lcom/tns/NativeScriptHashMap$1;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 878
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    new-instance v0, Lcom/tns/NativeScriptHashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tns/NativeScriptHashMap$ValueIterator;-><init>(Lcom/tns/NativeScriptHashMap;Lcom/tns/NativeScriptHashMap$1;)V

    return-object v0
.end method

.method postRemove(Lcom/tns/NativeScriptHashMap$HashMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 633
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    .local p1, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    return-void
.end method

.method preModify(Lcom/tns/NativeScriptHashMap$HashMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tns/NativeScriptHashMap$HashMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 406
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    .local p1, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 357
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Number;, "TV;"
    if-nez p1, :cond_0

    .line 358
    invoke-direct {p0, p2}, Lcom/tns/NativeScriptHashMap;->putValueForNullKey(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 361
    :cond_0
    invoke-static {p1}, Lcom/tns/NativeScriptHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v0

    .line 362
    .local v0, "hash":I
    iget-object v1, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 363
    .local v1, "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    .line 364
    .local v2, "index":I
    aget-object v3, v1, v2

    .local v3, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_2

    .line 365
    iget-object v4, v3, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 366
    .local v4, "eKey":Ljava/lang/Object;, "TK;"
    if-ne v4, p1, :cond_1

    .line 367
    invoke-virtual {p0, v3}, Lcom/tns/NativeScriptHashMap;->preModify(Lcom/tns/NativeScriptHashMap$HashMapEntry;)V

    .line 368
    iget-object v5, v3, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    .line 369
    .local v5, "oldValue":Ljava/lang/Number;, "TV;"
    iput-object p2, v3, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 370
    return-object v5

    .line 364
    .end local v4    # "eKey":Ljava/lang/Object;, "TK;"
    .end local v5    # "oldValue":Ljava/lang/Number;, "TV;"
    :cond_1
    iget-object v3, v3, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    goto :goto_0

    .line 375
    .end local v3    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    iget v3, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    .line 376
    iget v3, p0, Lcom/tns/NativeScriptHashMap;->size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tns/NativeScriptHashMap;->size:I

    iget v4, p0, Lcom/tns/NativeScriptHashMap;->threshold:I

    if-le v3, v4, :cond_3

    .line 377
    invoke-direct {p0}, Lcom/tns/NativeScriptHashMap;->doubleCapacity()[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    move-result-object v1

    .line 378
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    and-int v2, v0, v3

    .line 380
    :cond_3
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/tns/NativeScriptHashMap;->addNewEntry(Ljava/lang/Object;Ljava/lang/Number;II)V

    .line 381
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/tns/NativeScriptHashMap;->put(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 479
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tns/NativeScriptHashMap;->ensureCapacity(I)V

    .line 480
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 481
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 594
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 595
    invoke-direct {p0}, Lcom/tns/NativeScriptHashMap;->removeNullKey()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 597
    :cond_0
    invoke-static {p1}, Lcom/tns/NativeScriptHashMap;->secondaryHashForObject(Ljava/lang/Object;)I

    move-result v0

    .line 598
    .local v0, "hash":I
    iget-object v1, p0, Lcom/tns/NativeScriptHashMap;->table:[Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 599
    .local v1, "tab":[Lcom/tns/NativeScriptHashMap$HashMapEntry;, "[Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    .line 600
    .local v2, "index":I
    aget-object v3, v1, v2

    .local v3, "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    const/4 v4, 0x0

    .local v4, "prev":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_3

    .line 601
    iget-object v5, v3, Lcom/tns/NativeScriptHashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 602
    .local v5, "eKey":Ljava/lang/Object;, "TK;"
    if-ne v5, p1, :cond_2

    .line 603
    if-nez v4, :cond_1

    .line 604
    iget-object v6, v3, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    aput-object v6, v1, v2

    goto :goto_1

    .line 606
    :cond_1
    iget-object v6, v3, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    iput-object v6, v4, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    .line 608
    :goto_1
    iget v6, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/tns/NativeScriptHashMap;->modCount:I

    .line 609
    iget v6, p0, Lcom/tns/NativeScriptHashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/tns/NativeScriptHashMap;->size:I

    .line 610
    invoke-virtual {p0, v3}, Lcom/tns/NativeScriptHashMap;->postRemove(Lcom/tns/NativeScriptHashMap$HashMapEntry;)V

    .line 611
    iget-object v6, v3, Lcom/tns/NativeScriptHashMap$HashMapEntry;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    return-object v6

    .line 600
    .end local v5    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_2
    move-object v4, v3

    iget-object v3, v3, Lcom/tns/NativeScriptHashMap$HashMapEntry;->next:Lcom/tns/NativeScriptHashMap$HashMapEntry;

    goto :goto_0

    .line 614
    .end local v3    # "e":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    .end local v4    # "prev":Lcom/tns/NativeScriptHashMap$HashMapEntry;, "Lcom/tns/NativeScriptHashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/tns/NativeScriptHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 267
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    iget v0, p0, Lcom/tns/NativeScriptHashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 680
    .local p0, "this":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptHashMap;->values:Ljava/util/Collection;

    .line 681
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tns/NativeScriptHashMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tns/NativeScriptHashMap$Values;-><init>(Lcom/tns/NativeScriptHashMap;Lcom/tns/NativeScriptHashMap$1;)V

    iput-object v1, p0, Lcom/tns/NativeScriptHashMap;->values:Ljava/util/Collection;

    :goto_0
    return-object v1
.end method
