.class public Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;
.super Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;
.source "DexFileReader.java"

# interfaces
.implements Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;


# instance fields
.field private contents:[B

.field protected pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    return-void
.end method

.method public static final sint(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 408
    .local v1, "contents":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 411
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    return v0

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Cannot read integer"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bytes([B)V
    .locals 3
    .param p1, "b"    # [B

    .line 589
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 590
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    iget v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    aput-byte v1, p1, v0

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    .line 593
    return-void
.end method

.method public final completeSignSizedLong(JI)J
    .locals 3
    .param p1, "l"    # J
    .param p3, "sz"    # I

    .line 579
    add-int/lit8 p3, p3, 0x1

    .line 580
    rsub-int/lit8 v0, p3, 0x8

    mul-int/lit8 v0, v0, 0x8

    .line 581
    .local v0, "shift":I
    shl-long v1, p1, v0

    shr-long/2addr v1, v0

    return-wide v1
.end method

.method public fillOffsetHashMap(I)Ljava/util/HashMap;
    .locals 4
    .param p1, "nbFields"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 91
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getAnnotationItemOffsetsFromAnnotationSetItem()[I
    .locals 4

    .line 202
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v0

    .line 203
    .local v0, "nbEntries":I
    new-array v1, v0, [I

    .line 204
    .local v1, "offsets":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v3

    aput v3, v1, v2

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getClassDefinitionItem(I)Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;
    .locals 2
    .param p1, "classIndex"    # I

    .line 274
    new-instance v0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getClassDefinitionOffset(I)I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;-><init>(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;II)V

    return-object v0
.end method

.method public getContents()[B
    .locals 1

    .line 685
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    return-object v0
.end method

.method public getDescriptorFromPrototypeIndex(I)Ljava/lang/String;
    .locals 7
    .param p1, "prototypeIndex"    # I

    .line 219
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v0

    .line 221
    .local v0, "savedPosition":I
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getOffsetProtoIdItem(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 222
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->skipInt()V

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v1, "methodDescriptor":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v2

    .line 228
    .local v2, "parametersListOffset":I
    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 230
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getTypeIdIndexesFromTypeList()[I

    move-result-object v3

    .line 231
    .local v3, "parameterIndexes":[I
    const/4 v4, 0x0

    .local v4, "paramIndex":I
    array-length v5, v3

    .local v5, "parameterIndexesSize":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 232
    aget v6, v3, v4

    invoke-virtual {p0, v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    .end local v3    # "parameterIndexes":[I
    .end local v4    # "paramIndex":I
    .end local v5    # "parameterIndexesSize":I
    :cond_0
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getFieldIdItem(I)Lorg/ow2/asmdex/structureReader/FieldIdItem;
    .locals 4
    .param p1, "index"    # I

    .line 261
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getOffsetFieldIdItem(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 262
    new-instance v0, Lorg/ow2/asmdex/structureReader/FieldIdItem;

    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v1

    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v2

    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/ow2/asmdex/structureReader/FieldIdItem;-><init>(III)V

    return-object v0
.end method

.method public getMethodIdItem(I)Lorg/ow2/asmdex/structureReader/MethodIdItem;
    .locals 4
    .param p1, "methodId"    # I

    .line 249
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getOffsetMethodIdItem(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 250
    new-instance v0, Lorg/ow2/asmdex/structureReader/MethodIdItem;

    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v1

    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v2

    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/ow2/asmdex/structureReader/MethodIdItem;-><init>(III)V

    return-object v0
.end method

.method public getNameFromFieldIndex(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 156
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v0

    .line 157
    .local v0, "saveReaderPosition":I
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getOffsetFieldIdItem(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 158
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 160
    return-object v1
.end method

.method public getNameFromMethodIndex(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 126
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v0

    .line 127
    .local v0, "saveReaderPosition":I
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getOffsetMethodIdItem(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 128
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 130
    return-object v1
.end method

.method public final getPos()I
    .locals 1

    .line 637
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    return v0
.end method

.method public getShortyStringFromProtoIndex(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 141
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v0

    .line 142
    .local v0, "saveReaderPosition":I
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getOffsetProtoIdItem(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 143
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 145
    return-object v1
.end method

.method public getStringItemFromStringIndex(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 104
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->constantPoolStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getStringItemFromTypeIndex(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 115
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->constantPoolTypes:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTypeIdIndexesFromTypeList()[I
    .locals 4

    .line 186
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v0

    .line 187
    .local v0, "nbEntries":I
    new-array v1, v0, [I

    .line 188
    .local v1, "indexes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v3

    aput v3, v1, v2

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getTypeNameFromFieldIndex(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 171
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v0

    .line 172
    .local v0, "saveReaderPosition":I
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getOffsetFieldIdItem(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 173
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->skipShort()V

    .line 174
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 176
    return-object v1
.end method

.method public final hasMore()Z
    .locals 2

    .line 660
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse([B)V
    .locals 0
    .param p1, "dexBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-super {p0, p1}, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->parse([B)V

    .line 72
    iput-object p1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    .line 73
    return-void
.end method

.method peek(I)I
    .locals 1
    .param p1, "i"    # I

    .line 665
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public relativeSeek(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 630
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    .line 631
    return-void
.end method

.method public final sbyte()B
    .locals 3

    .line 418
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final seek(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 626
    iput p1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    .line 627
    return-void
.end method

.method public final sint()I
    .locals 4

    .line 448
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    .line 449
    .local v0, "v":I
    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    .line 450
    return v0
.end method

.method public final sizedLong(I)J
    .locals 8
    .param p1, "sz"    # I

    .line 562
    const-wide/16 v0, 0x0

    .line 563
    .local v0, "result":J
    add-int/lit8 v2, p1, 0x1

    .line 564
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 565
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v4

    .line 566
    .local v4, "v":S
    int-to-long v5, v4

    mul-int/lit8 v7, v3, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 564
    .end local v4    # "v":S
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 569
    .end local v3    # "i":I
    :cond_0
    return-wide v0
.end method

.method public final skipByte()V
    .locals 1

    .line 680
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    .line 681
    return-void
.end method

.method public final skipInt()V
    .locals 1

    .line 670
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    .line 671
    return-void
.end method

.method public final skipShort()V
    .locals 1

    .line 675
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    .line 676
    return-void
.end method

.method public final sleb128()I
    .locals 6

    .line 469
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 470
    .local v1, "v":I
    and-int/lit8 v3, v1, 0x7f

    .line 471
    .local v3, "r":I
    const/16 v4, 0x80

    if-lt v1, v4, :cond_4

    .line 472
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 473
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v3, v2

    .line 474
    if-lt v1, v4, :cond_3

    .line 475
    add-int/lit8 v2, v5, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v5, v0, v5

    and-int/lit16 v1, v5, 0xff

    .line 476
    and-int/lit8 v5, v1, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v3, v5

    .line 477
    if-lt v1, v4, :cond_2

    .line 478
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 479
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v3, v2

    .line 480
    if-lt v1, v4, :cond_1

    .line 481
    add-int/lit8 v2, v5, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v0, v0, v5

    and-int/lit16 v1, v0, 0xff

    .line 482
    and-int/lit8 v0, v1, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v3, v0

    .line 483
    if-ge v1, v4, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Bad sleb128"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_1
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_5

    .line 487
    const/high16 v0, -0x10000000

    or-int/2addr v3, v0

    goto :goto_0

    .line 489
    :cond_2
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_5

    .line 490
    const/high16 v0, -0x200000

    or-int/2addr v3, v0

    goto :goto_0

    .line 492
    :cond_3
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_5

    .line 493
    or-int/lit16 v3, v3, -0x4000

    goto :goto_0

    .line 495
    :cond_4
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_5

    .line 496
    or-int/lit8 v3, v3, -0x80

    .line 498
    :cond_5
    :goto_0
    return v3
.end method

.method public final sshort()S
    .locals 4

    .line 432
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-short v0, v0

    .line 433
    .local v0, "v":S
    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    .line 434
    return v0
.end method

.method public final ubyte()S
    .locals 3

    .line 425
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public final uint()I
    .locals 4

    .line 459
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    .line 460
    .local v0, "v":I
    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    .line 461
    return v0
.end method

.method public final uleb128()I
    .locals 6

    .line 510
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 511
    .local v1, "v":I
    and-int/lit8 v3, v1, 0x7f

    .line 512
    .local v3, "r":I
    const/16 v4, 0x80

    if-lt v1, v4, :cond_1

    .line 513
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 514
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v3, v2

    .line 515
    if-lt v1, v4, :cond_1

    .line 516
    add-int/lit8 v2, v5, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v5, v0, v5

    and-int/lit16 v1, v5, 0xff

    .line 517
    and-int/lit8 v5, v1, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v3, v5

    .line 518
    if-lt v1, v4, :cond_1

    .line 519
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 520
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v3, v2

    .line 521
    if-lt v1, v4, :cond_1

    .line 522
    add-int/lit8 v2, v5, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v0, v0, v5

    and-int/lit16 v1, v0, 0xff

    .line 523
    and-int/lit8 v0, v1, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v3, v0

    .line 524
    if-ge v1, v4, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Bad uleb128"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_1
    :goto_0
    return v3
.end method

.method public final uleb128_16()J
    .locals 5

    .line 549
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v0

    .line 550
    .local v0, "v":I
    and-int/lit16 v1, v0, 0x7fff

    int-to-long v1, v1

    .line 551
    .local v1, "r":J
    const v3, 0x8000

    if-le v0, v3, :cond_0

    .line 552
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v0

    .line 553
    and-int/lit16 v3, v0, 0x7fff

    shl-int/lit8 v3, v3, 0xf

    int-to-long v3, v3

    or-long/2addr v1, v3

    .line 555
    :cond_0
    return-wide v1
.end method

.method public final uleb128_p1()I
    .locals 1

    .line 540
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public unicodeString(I)Ljava/lang/String;
    .locals 5
    .param p1, "strSize"    # I

    .line 644
    new-array v0, p1, [C

    .line 645
    .local v0, "content":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 646
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 645
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-eqz v1, :cond_1

    .line 650
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not find the ending character\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 652
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public final ushort()I
    .locals 4

    .line 441
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public utf8String()Ljava/lang/String;
    .locals 6

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->contents:[B

    iget v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    move v4, v2

    .local v4, "c":I
    if-eqz v2, :cond_3

    .line 603
    and-int/lit16 v2, v4, 0x80

    const/16 v5, 0x80

    if-ne v2, v5, :cond_2

    .line 604
    and-int/lit16 v2, v4, 0xe0

    const/16 v5, 0xc0

    if-ne v2, v5, :cond_0

    .line 605
    and-int/lit8 v2, v4, 0x1f

    .line 606
    .end local v4    # "c":I
    .local v2, "c":I
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v1, v1, v3

    and-int/lit8 v1, v1, 0x3f

    .line 607
    .local v1, "v":I
    shl-int/lit8 v3, v2, 0x6

    or-int v4, v3, v1

    .end local v2    # "c":I
    .restart local v4    # "c":I
    goto :goto_1

    .line 608
    .end local v1    # "v":I
    :cond_0
    and-int/lit16 v2, v4, 0xf0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_1

    .line 609
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0x3f

    .line 610
    .local v3, "v":I
    shl-int/lit8 v5, v4, 0x6

    or-int v4, v5, v3

    .line 611
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->pos:I

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    .line 612
    .end local v3    # "v":I
    .restart local v1    # "v":I
    shl-int/lit8 v2, v4, 0x6

    or-int v4, v2, v1

    goto :goto_1

    .line 614
    .end local v1    # "v":I
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad (point 4) UTF 8 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 617
    :cond_2
    :goto_1
    int-to-char v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 619
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
