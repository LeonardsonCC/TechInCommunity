.class Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
.super Ljava/io/InputStream;
.source "ExifInterface.java"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteOrderedDataInputStream"
.end annotation


# static fields
.field private static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field private static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field private mDataInputStream:Ljava/io/DataInputStream;

.field final mLength:I

.field mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7476
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 7477
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7487
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 7488
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7490
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 7480
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 7491
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 7492
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    .line 7493
    const/4 v1, 0x0

    iput v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7495
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->mark(I)V

    .line 7496
    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 7497
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7500
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 7501
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7528
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 7723
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    return v0
.end method

.method public peek()I
    .locals 1

    .line 7523
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7533
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7534
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7539
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 7540
    .local v0, "bytesRead":I
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7541
    return v0
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7558
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7559
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7598
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7599
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1

    .line 7602
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 7603
    .local v0, "ch":I
    if-ltz v0, :cond_0

    .line 7606
    int-to-byte v1, v0

    return v1

    .line 7604
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 7600
    .end local v0    # "ch":I
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7564
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7565
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7719
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7714
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7587
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7588
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1

    .line 7591
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 7594
    return-void

    .line 7592
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t read up to the length of buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7589
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readFully([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7576
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7577
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_1

    .line 7580
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 7583
    return-void

    .line 7581
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t read up to the length of buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7578
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readInt()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7630
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7631
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_3

    .line 7634
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 7635
    .local v0, "ch1":I
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 7636
    .local v1, "ch2":I
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 7637
    .local v2, "ch3":I
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 7638
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_2

    .line 7641
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_0

    .line 7642
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    return v4

    .line 7643
    :cond_0
    sget-object v5, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_1

    .line 7644
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    return v4

    .line 7646
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid byte order: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7639
    :cond_2
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 7632
    .end local v0    # "ch1":I
    .end local v1    # "ch2":I
    .end local v2    # "ch3":I
    .end local v3    # "ch4":I
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7552
    const-string v0, "ExifInterface"

    const-string v1, "Currently unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7553
    const/4 v0, 0x0

    return-object v0
.end method

.method public readLong()J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7685
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    const/16 v2, 0x8

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7686
    iget v3, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v1, v3, :cond_3

    .line 7689
    iget-object v1, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 7690
    .local v1, "ch1":I
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 7691
    .local v3, "ch2":I
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 7692
    .local v4, "ch3":I
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 7693
    .local v5, "ch4":I
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 7694
    .local v6, "ch5":I
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v7

    .line 7695
    .local v7, "ch6":I
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v8

    .line 7696
    .local v8, "ch7":I
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 7697
    .local v9, "ch8":I
    or-int v10, v1, v3

    or-int/2addr v10, v4

    or-int/2addr v10, v5

    or-int/2addr v10, v6

    or-int/2addr v10, v7

    or-int/2addr v10, v8

    or-int/2addr v10, v9

    if-ltz v10, :cond_2

    .line 7700
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v11, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v12, 0x10

    const/16 v13, 0x18

    const/16 v14, 0x20

    const/16 v15, 0x28

    const/16 v16, 0x30

    const/16 v17, 0x38

    if-ne v10, v11, :cond_0

    .line 7701
    int-to-long v10, v9

    shl-long v10, v10, v17

    move/from16 v18, v3

    .end local v3    # "ch2":I
    .local v18, "ch2":I
    int-to-long v2, v8

    shl-long v2, v2, v16

    add-long/2addr v10, v2

    int-to-long v2, v7

    shl-long/2addr v2, v15

    add-long/2addr v10, v2

    int-to-long v2, v6

    shl-long/2addr v2, v14

    add-long/2addr v10, v2

    int-to-long v2, v5

    shl-long/2addr v2, v13

    add-long/2addr v10, v2

    int-to-long v2, v4

    shl-long/2addr v2, v12

    add-long/2addr v10, v2

    move/from16 v2, v18

    .end local v18    # "ch2":I
    .local v2, "ch2":I
    int-to-long v12, v2

    const/16 v3, 0x8

    shl-long/2addr v12, v3

    add-long/2addr v10, v12

    int-to-long v12, v1

    add-long/2addr v10, v12

    return-wide v10

    .line 7704
    .end local v2    # "ch2":I
    .restart local v3    # "ch2":I
    :cond_0
    move v2, v3

    .end local v3    # "ch2":I
    .restart local v2    # "ch2":I
    sget-object v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v10, v3, :cond_1

    .line 7705
    int-to-long v10, v1

    shl-long v10, v10, v17

    int-to-long v12, v2

    shl-long v12, v12, v16

    add-long/2addr v10, v12

    int-to-long v12, v4

    shl-long/2addr v12, v15

    add-long/2addr v10, v12

    int-to-long v12, v5

    shl-long/2addr v12, v14

    add-long/2addr v10, v12

    int-to-long v12, v6

    const/16 v3, 0x18

    shl-long/2addr v12, v3

    add-long/2addr v10, v12

    int-to-long v12, v7

    const/16 v3, 0x10

    shl-long/2addr v12, v3

    add-long/2addr v10, v12

    int-to-long v12, v8

    const/16 v3, 0x8

    shl-long/2addr v12, v3

    add-long/2addr v10, v12

    int-to-long v12, v9

    add-long/2addr v10, v12

    return-wide v10

    .line 7709
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid byte order: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7698
    .end local v2    # "ch2":I
    .restart local v3    # "ch2":I
    :cond_2
    move v2, v3

    .end local v3    # "ch2":I
    .restart local v2    # "ch2":I
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 7687
    .end local v1    # "ch1":I
    .end local v2    # "ch2":I
    .end local v4    # "ch3":I
    .end local v5    # "ch4":I
    .end local v6    # "ch5":I
    .end local v7    # "ch6":I
    .end local v8    # "ch7":I
    .end local v9    # "ch8":I
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readShort()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7611
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7612
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_3

    .line 7615
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 7616
    .local v0, "ch1":I
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 7617
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_2

    .line 7620
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    .line 7621
    shl-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    int-to-short v2, v2

    return v2

    .line 7622
    :cond_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    .line 7623
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-short v2, v2

    return v2

    .line 7625
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid byte order: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7618
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 7613
    .end local v0    # "ch1":I
    .end local v1    # "ch2":I
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7570
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7571
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7546
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7547
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7680
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7662
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7663
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v0, v1, :cond_3

    .line 7666
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 7667
    .local v0, "ch1":I
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 7668
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_2

    .line 7671
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_0

    .line 7672
    shl-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    return v2

    .line 7673
    :cond_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    .line 7674
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    return v2

    .line 7676
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid byte order: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7669
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 7664
    .end local v0    # "ch1":I
    .end local v1    # "ch2":I
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public seek(J)V
    .locals 4
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7508
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    .line 7509
    const/4 v0, 0x0

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7510
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->reset()V

    .line 7512
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->mark(I)V

    goto :goto_0

    .line 7514
    :cond_0
    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 7517
    :goto_0
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    long-to-int v1, p1

    if-ne v0, v1, :cond_1

    .line 7520
    return-void

    .line 7518
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t seek up to the byteCount"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 7504
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 7505
    return-void
.end method

.method public skipBytes(I)I
    .locals 4
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7651
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7652
    .local v0, "totalSkip":I
    const/4 v1, 0x0

    .line 7653
    .local v1, "skipped":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7654
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    sub-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 7656
    :cond_0
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 7657
    return v1
.end method
