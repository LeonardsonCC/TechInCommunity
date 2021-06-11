.class public Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 100
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 110
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 119
    array-length v0, p1

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 120
    return-void
.end method

.method private enlarge(I)V
    .locals 6
    .param p1, "size"    # I

    .line 632
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 633
    .local v0, "length1":I
    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    add-int/2addr v1, p1

    .line 634
    .local v1, "length2":I
    if-le v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v2, v2, [B

    .line 635
    .local v2, "newData":[B
    iget-object v3, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    iget v4, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    iput-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 637
    return-void
.end method


# virtual methods
.method public addPadding()V
    .locals 1

    .line 665
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->addPadding(I)V

    .line 666
    return-void
.end method

.method public addPadding(I)V
    .locals 3
    .param p1, "alignment"    # I

    .line 644
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    rem-int/2addr v0, p1

    .line 645
    .local v0, "padding":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 654
    goto :goto_0

    .line 649
    :cond_2
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 650
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 651
    nop

    .line 659
    :goto_0
    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    return-object v0
.end method

.method public getData()[B
    .locals 3

    .line 59
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 64
    return-object v0

    .line 67
    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 91
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    return v0
.end method

.method put11(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 4
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 184
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 185
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 186
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 188
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 189
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 190
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 191
    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 192
    return-object p0
.end method

.method put12(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 4
    .param p1, "b"    # I
    .param p2, "s"    # I

    .line 371
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 372
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 373
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 375
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 376
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 377
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 378
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .restart local v2    # "length":I
    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 379
    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 380
    return-object p0
.end method

.method public putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 4
    .param p1, "b"    # I

    .line 130
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 131
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 132
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 134
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 135
    iput v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 136
    return-object p0
.end method

.method public putByte(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 2
    .param p1, "b"    # I
    .param p2, "position"    # I

    .line 147
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    int-to-byte v1, p1

    aput-byte v1, v0, p2

    .line 148
    return-object p0
.end method

.method public putByteArray([B)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 2
    .param p1, "b"    # [B

    .line 608
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteArray([BII)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v0

    return-object v0
.end method

.method public putByteArray([BI)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 3
    .param p1, "b"    # [B
    .param p2, "position"    # I

    .line 619
    if-eqz p1, :cond_0

    .line 620
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v2, p1

    invoke-static {p1, v0, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    :cond_0
    return-object p0
.end method

.method public putByteArray([BII)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 590
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 591
    invoke-direct {p0, p3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 593
    :cond_0
    if-eqz p1, :cond_1

    .line 594
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    :cond_1
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 597
    return-object p0
.end method

.method public putByteVector(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 3
    .param p1, "bv"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 158
    iget-object v0, p1, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    iget v1, p1, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteArray([BII)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 159
    return-object p0
.end method

.method public putByteVector(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 1
    .param p1, "bv"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "position"    # I

    .line 170
    invoke-virtual {p1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getData()[B

    move-result-object v0

    .line 171
    .local v0, "b":[B
    invoke-virtual {p0, v0, p2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteArray([BI)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 172
    return-object p0
.end method

.method public putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 4
    .param p1, "i"    # I

    .line 391
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 392
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 393
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 395
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 396
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 397
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 398
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .restart local v2    # "length":I
    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 399
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 400
    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 401
    return-object p0
.end method

.method public putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 3
    .param p1, "i"    # I
    .param p2, "position"    # I

    .line 412
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 413
    .local v0, "data":[B
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "position":I
    .local v1, "position":I
    int-to-byte v2, p1

    aput-byte v2, v0, p2

    .line 414
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "position":I
    .restart local p2    # "position":I
    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 415
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "position":I
    .restart local v1    # "position":I
    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    .line 416
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "position":I
    .restart local p2    # "position":I
    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 417
    return-object p0
.end method

.method public putLong(J)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 5
    .param p1, "l"    # J

    .line 429
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 430
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 431
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 433
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 434
    .local v1, "data":[B
    long-to-int v2, p1

    .line 435
    .local v2, "i":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .local v3, "length":I
    int-to-byte v4, v2

    aput-byte v4, v1, v0

    .line 436
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 437
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 438
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 439
    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v2, v3

    .line 440
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .restart local v3    # "length":I
    int-to-byte v4, v2

    aput-byte v4, v1, v0

    .line 441
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 442
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 443
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 445
    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 446
    return-object p0
.end method

.method public putMUTF8(Ljava/lang/String;)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 12
    .param p1, "s"    # Ljava/lang/String;

    .line 522
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 523
    .local v0, "charLength":I
    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 525
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v0

    iget-object v3, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 526
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 528
    :cond_0
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 535
    .local v2, "data":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_8

    .line 536
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 537
    .local v4, "c":C
    const/16 v5, 0x7f

    const/4 v6, 0x1

    if-lt v4, v6, :cond_1

    if-gt v4, v5, :cond_1

    .line 538
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "len":I
    .local v5, "len":I
    int-to-byte v6, v4

    aput-byte v6, v2, v1

    .line 535
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 540
    .end local v5    # "len":I
    .restart local v1    # "len":I
    .restart local v4    # "c":C
    :cond_1
    move v7, v3

    .line 541
    .local v7, "byteLength":I
    move v8, v3

    .local v8, "j":I
    :goto_1
    const/16 v9, 0x7ff

    if-ge v8, v0, :cond_4

    .line 542
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 543
    if-lt v4, v6, :cond_2

    if-gt v4, v5, :cond_2

    .line 544
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 545
    :cond_2
    if-le v4, v9, :cond_3

    .line 546
    add-int/lit8 v7, v7, 0x3

    goto :goto_2

    .line 548
    :cond_3
    add-int/lit8 v7, v7, 0x2

    .line 541
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 551
    .end local v8    # "j":I
    :cond_4
    iget v8, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    add-int/2addr v8, v6

    add-int/2addr v8, v7

    array-length v10, v2

    if-le v8, v10, :cond_5

    .line 552
    iput v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 553
    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0, v8}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 554
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 556
    :cond_5
    move v8, v3

    .restart local v8    # "j":I
    :goto_3
    if-ge v8, v0, :cond_8

    .line 557
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 558
    if-lt v4, v6, :cond_6

    if-gt v4, v5, :cond_6

    .line 559
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .local v10, "len":I
    int-to-byte v11, v4

    aput-byte v11, v2, v1

    move v1, v10

    goto :goto_4

    .line 560
    .end local v10    # "len":I
    .restart local v1    # "len":I
    :cond_6
    if-le v4, v9, :cond_7

    .line 561
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .restart local v10    # "len":I
    shr-int/lit8 v11, v4, 0xc

    and-int/lit8 v11, v11, 0xf

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    .line 562
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "len":I
    .restart local v1    # "len":I
    shr-int/lit8 v11, v4, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 563
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .restart local v10    # "len":I
    and-int/lit8 v11, v4, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    move v1, v10

    goto :goto_4

    .line 565
    .end local v10    # "len":I
    .restart local v1    # "len":I
    :cond_7
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .restart local v10    # "len":I
    shr-int/lit8 v11, v4, 0x6

    and-int/lit8 v11, v11, 0x1f

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    .line 566
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "len":I
    .restart local v1    # "len":I
    and-int/lit8 v11, v4, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 556
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 572
    .end local v3    # "i":I
    .end local v4    # "c":C
    .end local v7    # "byteLength":I
    .end local v8    # "j":I
    :cond_8
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .local v3, "len":I
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 573
    iput v3, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 574
    return-object p0
.end method

.method public putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 4
    .param p1, "s"    # I

    .line 203
    iget v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 204
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 205
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 207
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 208
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 209
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "length":I
    .restart local v0    # "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 210
    iput v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 211
    return-object p0
.end method

.method public putShort(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 3
    .param p1, "s"    # I
    .param p2, "position"    # I

    .line 221
    iget-object v0, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 222
    .local v0, "data":[B
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "position":I
    .local v1, "position":I
    int-to-byte v2, p1

    aput-byte v2, v0, p2

    .line 223
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "position":I
    .restart local p2    # "position":I
    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 224
    return-object p0
.end method

.method public putSleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 14
    .param p1, "s"    # I

    .line 304
    const/4 v0, 0x0

    .local v0, "nb1":I
    const/4 v1, 0x0

    .local v1, "nb2":I
    const/4 v2, 0x0

    .local v2, "nb3":I
    const/4 v3, 0x0

    .local v3, "nb4":I
    const/4 v4, 0x0

    .line 305
    .local v4, "nb5":I
    shr-int/lit8 v5, p1, 0x7

    .line 306
    .local v5, "remaining":I
    const/4 v6, 0x0

    .line 307
    .local v6, "nbLength":I
    const/high16 v7, -0x80000000

    and-int/2addr v7, p1

    const/4 v8, 0x0

    if-nez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/4 v7, -0x1

    .line 309
    .local v7, "end":I
    :goto_0
    const/4 v9, 0x1

    if-ne v5, v7, :cond_2

    and-int/lit8 v10, v5, 0x1

    shr-int/lit8 v11, p1, 0x6

    and-int/2addr v11, v9

    if-eq v10, v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v10, 0x1

    .line 310
    .local v10, "mustContinue":Z
    :goto_2
    and-int/lit8 v11, p1, 0x7f

    const/16 v12, 0x80

    if-eqz v10, :cond_3

    const/16 v13, 0x80

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    or-int v0, v11, v13

    .line 311
    move p1, v5

    .line 312
    shr-int/lit8 v5, v5, 0x7

    .line 313
    add-int/2addr v6, v9

    .line 314
    if-eqz v10, :cond_f

    .line 315
    if-ne v5, v7, :cond_5

    and-int/lit8 v11, v5, 0x1

    shr-int/lit8 v13, p1, 0x6

    and-int/2addr v13, v9

    if-eq v11, v13, :cond_4

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v11, 0x1

    :goto_5
    move v10, v11

    .line 316
    and-int/lit8 v11, p1, 0x7f

    if-eqz v10, :cond_6

    const/16 v13, 0x80

    goto :goto_6

    :cond_6
    const/4 v13, 0x0

    :goto_6
    or-int v1, v11, v13

    .line 317
    move p1, v5

    .line 318
    shr-int/lit8 v5, v5, 0x7

    .line 319
    add-int/lit8 v6, v6, 0x1

    .line 320
    if-eqz v10, :cond_f

    .line 321
    if-ne v5, v7, :cond_8

    and-int/lit8 v11, v5, 0x1

    shr-int/lit8 v13, p1, 0x6

    and-int/2addr v13, v9

    if-eq v11, v13, :cond_7

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v11, 0x1

    :goto_8
    move v10, v11

    .line 322
    and-int/lit8 v11, p1, 0x7f

    if-eqz v10, :cond_9

    const/16 v13, 0x80

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    :goto_9
    or-int v2, v11, v13

    .line 323
    move p1, v5

    .line 324
    shr-int/lit8 v5, v5, 0x7

    .line 325
    add-int/lit8 v6, v6, 0x1

    .line 326
    if-eqz v10, :cond_d

    .line 327
    if-ne v5, v7, :cond_b

    and-int/lit8 v11, v5, 0x1

    shr-int/lit8 v13, p1, 0x6

    and-int/2addr v13, v9

    if-eq v11, v13, :cond_a

    goto :goto_a

    :cond_a
    const/4 v11, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v11, 0x1

    :goto_b
    move v10, v11

    .line 328
    and-int/lit8 v11, p1, 0x7f

    if-eqz v10, :cond_c

    const/16 v13, 0x80

    goto :goto_c

    :cond_c
    const/4 v13, 0x0

    :goto_c
    or-int v3, v11, v13

    .line 329
    move p1, v5

    .line 330
    shr-int/lit8 v5, v5, 0x7

    .line 331
    add-int/lit8 v6, v6, 0x1

    .line 333
    :cond_d
    if-eqz v10, :cond_f

    .line 334
    and-int/lit8 v11, p1, 0x7f

    if-eqz v10, :cond_e

    const/16 v8, 0x80

    :cond_e
    or-int v4, v11, v8

    .line 335
    add-int/lit8 v6, v6, 0x1

    .line 340
    :cond_f
    iget v8, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 341
    .local v8, "length":I
    add-int v11, v8, v6

    iget-object v12, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v12, v12

    if-le v11, v12, :cond_10

    .line 342
    invoke-direct {p0, v6}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 344
    :cond_10
    iget-object v11, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 345
    .local v11, "data":[B
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "length":I
    .local v12, "length":I
    int-to-byte v13, v0

    aput-byte v13, v11, v8

    .line 346
    if-le v6, v9, :cond_11

    .line 347
    add-int/lit8 v8, v12, 0x1

    .end local v12    # "length":I
    .restart local v8    # "length":I
    int-to-byte v9, v1

    aput-byte v9, v11, v12

    move v12, v8

    .line 349
    .end local v8    # "length":I
    .restart local v12    # "length":I
    :cond_11
    const/4 v8, 0x2

    if-le v6, v8, :cond_12

    .line 350
    add-int/lit8 v8, v12, 0x1

    .end local v12    # "length":I
    .restart local v8    # "length":I
    int-to-byte v9, v2

    aput-byte v9, v11, v12

    move v12, v8

    .line 352
    .end local v8    # "length":I
    .restart local v12    # "length":I
    :cond_12
    const/4 v8, 0x3

    if-le v6, v8, :cond_13

    .line 353
    add-int/lit8 v8, v12, 0x1

    .end local v12    # "length":I
    .restart local v8    # "length":I
    int-to-byte v9, v3

    aput-byte v9, v11, v12

    move v12, v8

    .line 355
    .end local v8    # "length":I
    .restart local v12    # "length":I
    :cond_13
    const/4 v8, 0x4

    if-le v6, v8, :cond_14

    .line 356
    add-int/lit8 v8, v12, 0x1

    .end local v12    # "length":I
    .restart local v8    # "length":I
    int-to-byte v9, v4

    aput-byte v9, v11, v12

    move v12, v8

    .line 358
    .end local v8    # "length":I
    .restart local v12    # "length":I
    :cond_14
    iput v12, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 359
    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 12
    .param p1, "s"    # Ljava/lang/String;

    .line 457
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 458
    .local v0, "charLength":I
    iget v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 459
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    iget-object v3, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 460
    add-int/lit8 v2, v0, 0x2

    invoke-direct {p0, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 462
    :cond_0
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 469
    .local v2, "data":[B
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .local v3, "len":I
    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 470
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "len":I
    .restart local v1    # "len":I
    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 471
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_8

    .line 472
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 473
    .local v4, "c":C
    const/16 v5, 0x7f

    const/4 v6, 0x1

    if-lt v4, v6, :cond_1

    if-gt v4, v5, :cond_1

    .line 474
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "len":I
    .local v5, "len":I
    int-to-byte v6, v4

    aput-byte v6, v2, v1

    .line 471
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 476
    .end local v5    # "len":I
    .restart local v1    # "len":I
    .restart local v4    # "c":C
    :cond_1
    move v7, v3

    .line 477
    .local v7, "byteLength":I
    move v8, v3

    .local v8, "j":I
    :goto_1
    const/16 v9, 0x7ff

    if-ge v8, v0, :cond_4

    .line 478
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 479
    if-lt v4, v6, :cond_2

    if-gt v4, v5, :cond_2

    .line 480
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 481
    :cond_2
    if-le v4, v9, :cond_3

    .line 482
    add-int/lit8 v7, v7, 0x3

    goto :goto_2

    .line 484
    :cond_3
    add-int/lit8 v7, v7, 0x2

    .line 477
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 487
    .end local v8    # "j":I
    :cond_4
    iget v8, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    ushr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    aput-byte v10, v2, v8

    .line 488
    add-int/lit8 v10, v8, 0x1

    int-to-byte v11, v7

    aput-byte v11, v2, v10

    .line 489
    add-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    array-length v10, v2

    if-le v8, v10, :cond_5

    .line 490
    iput v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 491
    add-int/lit8 v8, v7, 0x2

    invoke-direct {p0, v8}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 492
    iget-object v2, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 494
    :cond_5
    move v8, v3

    .restart local v8    # "j":I
    :goto_3
    if-ge v8, v0, :cond_8

    .line 495
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 496
    if-lt v4, v6, :cond_6

    if-gt v4, v5, :cond_6

    .line 497
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .local v10, "len":I
    int-to-byte v11, v4

    aput-byte v11, v2, v1

    move v1, v10

    goto :goto_4

    .line 498
    .end local v10    # "len":I
    .restart local v1    # "len":I
    :cond_6
    if-le v4, v9, :cond_7

    .line 499
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .restart local v10    # "len":I
    shr-int/lit8 v11, v4, 0xc

    and-int/lit8 v11, v11, 0xf

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    .line 500
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "len":I
    .restart local v1    # "len":I
    shr-int/lit8 v11, v4, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 501
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .restart local v10    # "len":I
    and-int/lit8 v11, v4, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    move v1, v10

    goto :goto_4

    .line 503
    .end local v10    # "len":I
    .restart local v1    # "len":I
    :cond_7
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .restart local v10    # "len":I
    shr-int/lit8 v11, v4, 0x6

    and-int/lit8 v11, v11, 0x1f

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    .line 504
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "len":I
    .restart local v1    # "len":I
    and-int/lit8 v11, v4, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 494
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 510
    .end local v3    # "i":I
    .end local v4    # "c":C
    .end local v7    # "byteLength":I
    .end local v8    # "j":I
    :cond_8
    iput v1, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 511
    return-object p0
.end method

.method public putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 10
    .param p1, "s"    # I

    .line 235
    and-int/lit8 v0, p1, 0x7f

    .line 236
    .local v0, "nb1":I
    const/4 v1, 0x0

    .local v1, "nb2":I
    const/4 v2, 0x0

    .local v2, "nb3":I
    const/4 v3, 0x0

    .local v3, "nb4":I
    const/4 v4, 0x0

    .line 238
    .local v4, "nb5":I
    const/4 v5, 0x1

    .line 239
    .local v5, "nbLength":I
    const/16 v6, 0x7f

    if-le p1, v6, :cond_1

    .line 240
    add-int/lit8 v5, v5, 0x1

    .line 241
    add-int/lit16 v0, v0, 0x80

    .line 243
    ushr-int/lit8 v7, p1, 0x7

    and-int/lit8 v1, v7, 0x7f

    .line 244
    const/16 v7, 0x3fff

    if-le p1, v7, :cond_1

    .line 245
    add-int/lit8 v5, v5, 0x1

    .line 246
    add-int/lit16 v1, v1, 0x80

    .line 248
    ushr-int/lit8 v7, p1, 0xe

    and-int/lit8 v2, v7, 0x7f

    .line 249
    const v7, 0x1fffff

    if-le p1, v7, :cond_1

    .line 250
    add-int/lit8 v5, v5, 0x1

    .line 251
    add-int/lit16 v2, v2, 0x80

    .line 253
    ushr-int/lit8 v7, p1, 0x15

    and-int/lit8 v3, v7, 0x7f

    .line 254
    const v6, 0xfffffff

    if-le p1, v6, :cond_0

    .line 255
    add-int/lit8 v5, v5, 0x1

    .line 256
    and-int/lit8 v3, v3, 0x7f

    .line 259
    :cond_0
    ushr-int/lit8 v6, p1, 0x1c

    add-int/lit16 v4, v6, 0x80

    .line 264
    :cond_1
    iget v6, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 265
    .local v6, "length":I
    add-int v7, v6, v5

    iget-object v8, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    array-length v8, v8

    if-le v7, v8, :cond_2

    .line 266
    invoke-direct {p0, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->enlarge(I)V

    .line 268
    :cond_2
    iget-object v7, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->data:[B

    .line 269
    .local v7, "data":[B
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "length":I
    .local v8, "length":I
    int-to-byte v9, v0

    aput-byte v9, v7, v6

    .line 270
    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 271
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "length":I
    .restart local v6    # "length":I
    int-to-byte v9, v1

    aput-byte v9, v7, v8

    move v8, v6

    .line 273
    .end local v6    # "length":I
    .restart local v8    # "length":I
    :cond_3
    const/4 v6, 0x2

    if-le v5, v6, :cond_4

    .line 274
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "length":I
    .restart local v6    # "length":I
    int-to-byte v9, v2

    aput-byte v9, v7, v8

    move v8, v6

    .line 276
    .end local v6    # "length":I
    .restart local v8    # "length":I
    :cond_4
    const/4 v6, 0x3

    if-le v5, v6, :cond_5

    .line 277
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "length":I
    .restart local v6    # "length":I
    int-to-byte v9, v3

    aput-byte v9, v7, v8

    move v8, v6

    .line 279
    .end local v6    # "length":I
    .restart local v8    # "length":I
    :cond_5
    const/4 v6, 0x4

    if-le v5, v6, :cond_6

    .line 280
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "length":I
    .restart local v6    # "length":I
    int-to-byte v9, v4

    aput-byte v9, v7, v8

    move v8, v6

    .line 282
    .end local v6    # "length":I
    .restart local v8    # "length":I
    :cond_6
    iput v8, p0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->length:I

    .line 283
    return-object p0
.end method

.method public putUleb128p1(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 1
    .param p1, "s"    # I

    .line 293
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v0

    return-object v0
.end method
