.class public Lorg/ow2/asmdex/structureWriter/TypeList;
.super Ljava/lang/Object;
.source "TypeList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ow2/asmdex/structureWriter/TypeList;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field private final types:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 5
    .param p1, "types"    # [Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 61
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/TypeList;->types:[Ljava/lang/String;

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "result":I
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 66
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    .line 65
    .end local v3    # "string":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    iput v1, p0, Lorg/ow2/asmdex/structureWriter/TypeList;->hashCode:I

    .line 70
    .end local v1    # "result":I
    goto :goto_1

    .line 71
    :cond_1
    iput v0, p0, Lorg/ow2/asmdex/structureWriter/TypeList;->hashCode:I

    .line 72
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/TypeList;->types:[Ljava/lang/String;

    .line 74
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lorg/ow2/asmdex/structureWriter/TypeList;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/TypeList;->compareTo(Lorg/ow2/asmdex/structureWriter/TypeList;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ow2/asmdex/structureWriter/TypeList;)I
    .locals 8
    .param p1, "o"    # Lorg/ow2/asmdex/structureWriter/TypeList;

    .line 132
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 133
    return v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/TypeList;->getTypeList()[Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "secondTypes":[Ljava/lang/String;
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/TypeList;->types:[Ljava/lang/String;

    array-length v2, v2

    .line 140
    .local v2, "sizeFirstArray":I
    array-length v3, v1

    .line 141
    .local v3, "sizeSecondArray":I
    if-ge v2, v3, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 142
    .local v4, "minSize":I
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 143
    iget-object v6, p0, Lorg/ow2/asmdex/structureWriter/TypeList;->types:[Ljava/lang/String;

    aget-object v6, v6, v5

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .line 144
    .local v6, "compare":I
    if-eqz v6, :cond_2

    .line 145
    return v6

    .line 142
    .end local v6    # "compare":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 150
    .end local v5    # "i":I
    :cond_3
    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    if-ge v2, v3, :cond_5

    const/4 v0, -0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 113
    if-ne p0, p1, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_0
    instance-of v0, p1, Lorg/ow2/asmdex/structureWriter/TypeList;

    if-eqz v0, :cond_1

    .line 118
    move-object v0, p1

    check-cast v0, Lorg/ow2/asmdex/structureWriter/TypeList;

    .line 119
    .local v0, "secondTypeList":Lorg/ow2/asmdex/structureWriter/TypeList;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/TypeList;->types:[Ljava/lang/String;

    iget-object v2, v0, Lorg/ow2/asmdex/structureWriter/TypeList;->types:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 122
    .end local v0    # "secondTypeList":Lorg/ow2/asmdex/structureWriter/TypeList;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 103
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/TypeList;->types:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTypeList()[Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/TypeList;->types:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 127
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/TypeList;->hashCode:I

    return v0
.end method

.method public size()I
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/TypeList;->types:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
