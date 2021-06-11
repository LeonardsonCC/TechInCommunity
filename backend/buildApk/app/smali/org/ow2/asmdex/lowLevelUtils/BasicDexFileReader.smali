.class public Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;
.super Ljava/lang/Object;
.source "BasicDexFileReader.java"


# static fields
.field public static final CLASS_DEF_ITEM_SIZE:I = 0x20

.field public static final FIELD_ID_ITEM_SIZE:I = 0x8

.field protected static final FILE_SIZE_OFFSET:I = 0x20

.field protected static final HEADER_NOMINAL_SIZE:I = 0x70

.field private static final LENGTH_FORMAT_VERSION_NUMBER_IN_MAGIC_SEQUENCE:I = 0x3

.field private static final MAGIC_TEMPLATE:[B

.field public static final METHOD_ID_ITEM_SIZE:I = 0x8

.field public static final NO_INDEX:I = -0x1

.field private static final OFFSET_FORMAT_VERSION_NUMBER_IN_MAGIC_SEQUENCE:I = 0x4

.field public static final PROTO_ID_ITEM_SIZE:I = 0xc

.field protected static final REVERSE_ENDIAN_VALUE:I = 0x78563412

.field protected static final STANDARD_ENDIAN_VALUE:I = 0x12345678

.field public static final STRING_ID_ITEM_SIZE:I = 0x4

.field public static final TYPE_ID_ITEM_SIZE:I = 0x4


# instance fields
.field public adler32Checksum:J

.field protected classDefinitionsOffset:I

.field protected classDefinitionsSize:I

.field protected constantPoolStrings:[Ljava/lang/String;

.field protected constantPoolTypes:[Ljava/lang/String;

.field protected fieldIdsOffset:I

.field protected fieldIdsSize:I

.field public formatVersionNumber:[B

.field protected isStandardEndian:Z

.field public linkTableSize:I

.field private magic:[B

.field protected methodIdsOffset:I

.field protected methodIdsSize:I

.field protected protoIdsOffset:I

.field protected protoIdsSize:I

.field protected reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

.field public signature:[B

.field protected stringIdsOffset:I

.field protected stringIdsSize:I

.field protected typeIdsOffset:I

.field protected typeIdsSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->MAGIC_TEMPLATE:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x65t
        0x78t
        0xat
        0x30t
        0x33t
        0x35t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->magic:[B

    .line 89
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->signature:[B

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->formatVersionNumber:[B

    .line 174
    return-void
.end method


# virtual methods
.method public getClassDefinitionOffset(I)I
    .locals 2
    .param p1, "itemIndex"    # I

    .line 394
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->classDefinitionsOffset:I

    mul-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    return v0
.end method

.method public getClassDefinitionsOffset()I
    .locals 1

    .line 501
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->classDefinitionsOffset:I

    return v0
.end method

.method public getClassDefinitionsSize()I
    .locals 1

    .line 493
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->classDefinitionsSize:I

    return v0
.end method

.method public getFieldIdsOffset()I
    .locals 1

    .line 469
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->fieldIdsOffset:I

    return v0
.end method

.method public getFieldIdsSize()I
    .locals 1

    .line 461
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->fieldIdsSize:I

    return v0
.end method

.method public getFormatVersionNumber()[B
    .locals 1

    .line 509
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->formatVersionNumber:[B

    return-object v0
.end method

.method public getMethodIdsOffset()I
    .locals 1

    .line 485
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->methodIdsOffset:I

    return v0
.end method

.method public getMethodIdsSize()I
    .locals 1

    .line 477
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->methodIdsSize:I

    return v0
.end method

.method public getOffsetFieldIdItem(I)I
    .locals 2
    .param p1, "itemIndex"    # I

    .line 339
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->fieldIdsOffset:I

    mul-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public getOffsetMethodIdItem(I)I
    .locals 2
    .param p1, "itemIndex"    # I

    .line 372
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->methodIdsOffset:I

    mul-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public getOffsetProtoIdItem(I)I
    .locals 2
    .param p1, "itemIndex"    # I

    .line 383
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->protoIdsOffset:I

    mul-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    return v0
.end method

.method public getOffsetStringIdItem(I)I
    .locals 2
    .param p1, "itemIndex"    # I

    .line 350
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->stringIdsOffset:I

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public getOffsetTypeIdItem(I)I
    .locals 2
    .param p1, "itemIndex"    # I

    .line 361
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->typeIdsOffset:I

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public getProtoIdsOffset()I
    .locals 1

    .line 453
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->protoIdsOffset:I

    return v0
.end method

.method public getProtoIdsSize()I
    .locals 1

    .line 445
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->protoIdsSize:I

    return v0
.end method

.method public getStringIdsOffset()I
    .locals 1

    .line 421
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->stringIdsOffset:I

    return v0
.end method

.method public getStringIdsSize()I
    .locals 1

    .line 413
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->stringIdsSize:I

    return v0
.end method

.method public getTypeIdsOffset()I
    .locals 1

    .line 437
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->typeIdsOffset:I

    return v0
.end method

.method public getTypeIdsSize()I
    .locals 1

    .line 429
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->typeIdsSize:I

    return v0
.end method

.method public isStandardEndian()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->isStandardEndian:Z

    return v0
.end method

.method public parse([B)V
    .locals 2
    .param p1, "dexBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;-><init>([BI)V

    iput-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    .line 184
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->readHeader()V

    .line 185
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->readStrings()V

    .line 186
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->readTypes()V

    .line 187
    return-void
.end method

.method protected readHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->magic:[B

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->bytes([B)V

    .line 196
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->magic:[B

    sget-object v1, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->MAGIC_TEMPLATE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->formatVersionNumber:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 202
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->magic:[B

    add-int/lit8 v3, v0, 0x4

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->uint()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->adler32Checksum:J

    .line 206
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->signature:[B

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->bytes([B)V

    .line 208
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->skipInt()V

    .line 211
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v0

    .line 212
    .local v0, "header_size":I
    const/16 v1, 0x70

    if-ne v0, v1, :cond_3

    .line 217
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v1

    .line 218
    .local v1, "endianTag":I
    const v2, 0x12345678

    if-ne v1, v2, :cond_1

    .line 219
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->isStandardEndian:Z

    goto :goto_1

    .line 220
    :cond_1
    const v2, 0x78563412

    if-ne v1, v2, :cond_2

    .line 221
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->isStandardEndian:Z

    .line 227
    :goto_1
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->linkTableSize:I

    .line 228
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->skipInt()V

    .line 229
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->skipInt()V

    .line 231
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->stringIdsSize:I

    .line 232
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->stringIdsOffset:I

    .line 234
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->typeIdsSize:I

    .line 235
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->typeIdsOffset:I

    .line 237
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->protoIdsSize:I

    .line 238
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->protoIdsOffset:I

    .line 240
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->fieldIdsSize:I

    .line 241
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->fieldIdsOffset:I

    .line 243
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->methodIdsSize:I

    .line 244
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->methodIdsOffset:I

    .line 246
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->classDefinitionsSize:I

    .line 247
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->classDefinitionsOffset:I

    .line 249
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->skipInt()V

    .line 250
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->skipInt()V

    .line 251
    return-void

    .line 223
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown Endian Value."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    .end local v1    # "endianTag":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad header size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    .end local v0    # "header_size":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown bytecode version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method protected readStrings()V
    .locals 9

    .line 258
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->stringIdsOffset:I

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->seek(I)V

    .line 259
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->stringIdsSize:I

    new-array v0, v0, [I

    .line 262
    .local v0, "stringOffsets":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->stringIdsSize:I

    if-ge v1, v2, :cond_0

    .line 263
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint()I

    move-result v2

    aput v2, v0, v1

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "i":I
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->constantPoolStrings:[Ljava/lang/String;

    .line 270
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->stringIdsSize:I

    if-ge v1, v2, :cond_3

    .line 271
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->seek(I)V

    .line 272
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->uleb128()I

    move-result v2

    .line 273
    .local v2, "size":I
    iget-object v3, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->utf8String()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "string":Ljava/lang/String;
    iget-object v4, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->constantPoolStrings:[Ljava/lang/String;

    aput-object v3, v4, v1

    .line 277
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v4, "b":Ljava/lang/StringBuilder;
    aget v5, v0, v1

    .local v5, "k":I
    :goto_2
    iget-object v6, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->getPos()I

    move-result v6

    const-string v7, " "

    if-ge v5, v6, :cond_1

    .line 280
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v6, v5}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->peek(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 282
    .end local v5    # "k":I
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mismatched size for string "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    .end local v2    # "size":I
    .end local v3    # "string":Ljava/lang/String;
    .end local v4    # "b":Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method protected readTypes()V
    .locals 4

    .line 294
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->typeIdsSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->constantPoolTypes:[Ljava/lang/String;

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->typeIdsSize:I

    if-ge v0, v1, :cond_0

    .line 296
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->getOffsetTypeIdItem(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->seek(I)V

    .line 297
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->reader:Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->uint()I

    move-result v1

    .line 298
    .local v1, "index":I
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->constantPoolTypes:[Ljava/lang/String;

    iget-object v3, p0, Lorg/ow2/asmdex/lowLevelUtils/BasicDexFileReader;->constantPoolStrings:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    .line 295
    .end local v1    # "index":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
