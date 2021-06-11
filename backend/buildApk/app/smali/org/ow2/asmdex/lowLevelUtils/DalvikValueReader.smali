.class public Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;
.super Ljava/lang/Object;
.source "DalvikValueReader.java"

# interfaces
.implements Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;


# instance fields
.field private contents:[B

.field protected pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "contents"    # [B

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    .line 59
    iput-object p1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    .line 60
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 9
    .param p1, "dexBytes"    # [B
    .param p2, "size_offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    .line 79
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 80
    .local v1, "stream":Ljava/io/InputStream;
    new-array v2, p2, [B

    .line 81
    .local v2, "header":[B
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 84
    invoke-static {v1}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->sint(Ljava/io/InputStream;)I

    move-result v3

    .line 85
    .local v3, "file_size":I
    new-array v4, v3, [B

    .line 86
    .local v4, "file":[B
    add-int/lit8 v5, p2, 0x4

    .line 87
    .local v5, "to_skip":I
    :goto_0
    sub-int v6, v3, v5

    if-eqz v6, :cond_1

    .line 88
    sub-int v6, v3, v5

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 89
    .local v6, "read":I
    if-eqz v6, :cond_0

    .line 92
    add-int/2addr v5, v6

    .line 93
    .end local v6    # "read":I
    goto :goto_0

    .line 90
    .restart local v6    # "read":I
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Truncated Resource file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    .end local v6    # "read":I
    :cond_1
    invoke-static {v2, v0, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iput-object v4, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    .line 96
    return-void

    .line 82
    .end local v3    # "file_size":I
    .end local v4    # "file":[B
    .end local v5    # "to_skip":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Cannot skip Resource header"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static final sint(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 107
    .local v1, "contents":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 110
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

    .line 108
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

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    iget v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    aput-byte v1, p1, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    .line 291
    return-void
.end method

.method public final completeSignSizedLong(JI)J
    .locals 3
    .param p1, "l"    # J
    .param p3, "sz"    # I

    .line 277
    add-int/lit8 p3, p3, 0x1

    .line 278
    rsub-int/lit8 v0, p3, 0x8

    mul-int/lit8 v0, v0, 0x8

    .line 279
    .local v0, "shift":I
    shl-long v1, p1, v0

    shr-long/2addr v1, v0

    return-wide v1
.end method

.method public getContents()[B
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    return-object v0
.end method

.method public final getPos()I
    .locals 1

    .line 335
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    return v0
.end method

.method public final hasMore()Z
    .locals 2

    .line 358
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method peek(I)I
    .locals 1
    .param p1, "i"    # I

    .line 363
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public relativeSeek(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 328
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    .line 329
    return-void
.end method

.method public final sbyte()B
    .locals 3

    .line 117
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final seek(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 324
    iput p1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    .line 325
    return-void
.end method

.method public final sint()I
    .locals 4

    .line 147
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

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

    .line 148
    .local v0, "v":I
    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    .line 149
    return v0
.end method

.method public final sizedLong(I)J
    .locals 8
    .param p1, "sz"    # I

    .line 260
    const-wide/16 v0, 0x0

    .line 261
    .local v0, "result":J
    add-int/lit8 v2, p1, 0x1

    .line 262
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 263
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->ubyte()S

    move-result v4

    .line 264
    .local v4, "v":S
    int-to-long v5, v4

    mul-int/lit8 v7, v3, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 262
    .end local v4    # "v":S
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .end local v3    # "i":I
    :cond_0
    return-wide v0
.end method

.method public final skipByte()V
    .locals 1

    .line 378
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    .line 379
    return-void
.end method

.method public final skipInt()V
    .locals 1

    .line 368
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    .line 369
    return-void
.end method

.method public final skipShort()V
    .locals 1

    .line 373
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    .line 374
    return-void
.end method

.method public final sleb128()I
    .locals 6

    .line 167
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 168
    .local v1, "v":I
    and-int/lit8 v3, v1, 0x7f

    .line 169
    .local v3, "r":I
    const/16 v4, 0x80

    if-lt v1, v4, :cond_4

    .line 170
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 171
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v3, v2

    .line 172
    if-lt v1, v4, :cond_3

    .line 173
    add-int/lit8 v2, v5, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v5, v0, v5

    and-int/lit16 v1, v5, 0xff

    .line 174
    and-int/lit8 v5, v1, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v3, v5

    .line 175
    if-lt v1, v4, :cond_2

    .line 176
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 177
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v3, v2

    .line 178
    if-lt v1, v4, :cond_1

    .line 179
    add-int/lit8 v2, v5, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v0, v0, v5

    and-int/lit16 v1, v0, 0xff

    .line 180
    and-int/lit8 v0, v1, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v3, v0

    .line 181
    if-ge v1, v4, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Bad sleb128"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_5

    .line 185
    const/high16 v0, -0x10000000

    or-int/2addr v3, v0

    goto :goto_0

    .line 187
    :cond_2
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_5

    .line 188
    const/high16 v0, -0x200000

    or-int/2addr v3, v0

    goto :goto_0

    .line 190
    :cond_3
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_5

    .line 191
    or-int/lit16 v3, v3, -0x4000

    goto :goto_0

    .line 193
    :cond_4
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_5

    .line 194
    or-int/lit8 v3, v3, -0x80

    .line 196
    :cond_5
    :goto_0
    return v3
.end method

.method public final sshort()S
    .locals 4

    .line 131
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-short v0, v0

    .line 132
    .local v0, "v":S
    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    .line 133
    return v0
.end method

.method public final ubyte()S
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public final uint()I
    .locals 4

    .line 157
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

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

    .line 158
    .local v0, "v":I
    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    .line 159
    return v0
.end method

.method public final uleb128()I
    .locals 6

    .line 208
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 209
    .local v1, "v":I
    and-int/lit8 v3, v1, 0x7f

    .line 210
    .local v3, "r":I
    const/16 v4, 0x80

    if-lt v1, v4, :cond_1

    .line 211
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 212
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v3, v2

    .line 213
    if-lt v1, v4, :cond_1

    .line 214
    add-int/lit8 v2, v5, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v5, v0, v5

    and-int/lit16 v1, v5, 0xff

    .line 215
    and-int/lit8 v5, v1, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v3, v5

    .line 216
    if-lt v1, v4, :cond_1

    .line 217
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 218
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v3, v2

    .line 219
    if-lt v1, v4, :cond_1

    .line 220
    add-int/lit8 v2, v5, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v0, v0, v5

    and-int/lit16 v1, v0, 0xff

    .line 221
    and-int/lit8 v0, v1, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v3, v0

    .line 222
    if-ge v1, v4, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Bad uleb128"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    :goto_0
    return v3
.end method

.method public final uleb128_16()J
    .locals 5

    .line 247
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->ushort()I

    move-result v0

    .line 248
    .local v0, "v":I
    and-int/lit16 v1, v0, 0x7fff

    int-to-long v1, v1

    .line 249
    .local v1, "r":J
    const v3, 0x8000

    if-le v0, v3, :cond_0

    .line 250
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->ushort()I

    move-result v0

    .line 251
    and-int/lit16 v3, v0, 0x7fff

    shl-int/lit8 v3, v3, 0xf

    int-to-long v3, v3

    or-long/2addr v1, v3

    .line 253
    :cond_0
    return-wide v1
.end method

.method public final uleb128_p1()I
    .locals 1

    .line 238
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->uleb128()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public unicodeString(I)Ljava/lang/String;
    .locals 5
    .param p1, "strSize"    # I

    .line 342
    new-array v0, p1, [C

    .line 343
    .local v0, "content":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 344
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->ushort()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->ushort()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-eqz v1, :cond_1

    .line 348
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

    .line 350
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public final ushort()I
    .locals 4

    .line 140
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public utf8String()Ljava/lang/String;
    .locals 6

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->contents:[B

    iget v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    move v4, v2

    .local v4, "c":I
    if-eqz v2, :cond_3

    .line 301
    and-int/lit16 v2, v4, 0x80

    const/16 v5, 0x80

    if-ne v2, v5, :cond_2

    .line 302
    and-int/lit16 v2, v4, 0xe0

    const/16 v5, 0xc0

    if-ne v2, v5, :cond_0

    .line 303
    and-int/lit8 v2, v4, 0x1f

    .line 304
    .end local v4    # "c":I
    .local v2, "c":I
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v1, v1, v3

    and-int/lit8 v1, v1, 0x3f

    .line 305
    .local v1, "v":I
    shl-int/lit8 v3, v2, 0x6

    or-int v4, v3, v1

    .end local v2    # "c":I
    .restart local v4    # "c":I
    goto :goto_1

    .line 306
    .end local v1    # "v":I
    :cond_0
    and-int/lit16 v2, v4, 0xf0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_1

    .line 307
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0x3f

    .line 308
    .local v3, "v":I
    shl-int/lit8 v5, v4, 0x6

    or-int v4, v5, v3

    .line 309
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;->pos:I

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    .line 310
    .end local v3    # "v":I
    .restart local v1    # "v":I
    shl-int/lit8 v2, v4, 0x6

    or-int v4, v2, v1

    goto :goto_1

    .line 312
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

    .line 315
    :cond_2
    :goto_1
    int-to-char v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
