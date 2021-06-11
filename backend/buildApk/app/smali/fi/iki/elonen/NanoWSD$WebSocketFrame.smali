.class public Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.super Ljava/lang/Object;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebSocketFrame"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;,
        Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;,
        Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    }
.end annotation


# static fields
.field public static final TEXT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private transient _payloadLength:I

.field private transient _payloadString:Ljava/lang/String;

.field private fin:Z

.field private maskingKey:[B

.field private opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field private payload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 417
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->TEXT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Ljava/util/List;)V
    .locals 9
    .param p1, "opCode"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;",
            "Ljava/util/List<",
            "Lfi/iki/elonen/NanoWSD$WebSocketFrame;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfi/iki/elonen/NanoWSD$WebSocketException;
        }
    .end annotation

    .line 500
    .local p2, "fragments":Ljava/util/List;, "Ljava/util/List<Lfi/iki/elonen/NanoWSD$WebSocketFrame;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setOpCode(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;)V

    .line 502
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setFin(Z)V

    .line 504
    const-wide/16 v0, 0x0

    .line 505
    .local v0, "_payloadLength":J
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    .line 506
    .local v3, "inter":Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    invoke-virtual {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 507
    .end local v3    # "inter":Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    goto :goto_0

    .line 508
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 511
    long-to-int v2, v0

    iput v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 512
    new-array v2, v2, [B

    .line 513
    .local v2, "payload":[B
    const/4 v3, 0x0

    .line 514
    .local v3, "offset":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    .line 515
    .local v5, "inter":Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    invoke-virtual {v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v6, v7, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    invoke-virtual {v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 517
    .end local v5    # "inter":Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    goto :goto_1

    .line 518
    :cond_1
    invoke-virtual {p0, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setBinaryPayload([B)V

    .line 519
    return-void

    .line 509
    .end local v2    # "payload":[B
    .end local v3    # "offset":I
    :cond_2
    new-instance v2, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v3, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MessageTooBig:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v4, "Max frame length has been exceeded."

    invoke-direct {v2, v3, v4}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method private constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z)V
    .locals 0
    .param p1, "opCode"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .param p2, "fin"    # Z

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setOpCode(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;)V

    .line 477
    invoke-virtual {p0, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setFin(Z)V

    .line 478
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;ZLjava/lang/String;)V
    .locals 1
    .param p1, "opCode"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .param p2, "fin"    # Z
    .param p3, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;ZLjava/lang/String;[B)V

    .line 492
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;ZLjava/lang/String;[B)V
    .locals 0
    .param p1, "opCode"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .param p2, "fin"    # Z
    .param p3, "payload"    # Ljava/lang/String;
    .param p4, "maskingKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 495
    invoke-direct {p0, p1, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z)V

    .line 496
    invoke-virtual {p0, p4}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setMaskingKey([B)V

    .line 497
    invoke-virtual {p0, p3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setTextPayload(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V
    .locals 1
    .param p1, "opCode"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .param p2, "fin"    # Z
    .param p3, "payload"    # [B

    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B[B)V

    .line 482
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B[B)V
    .locals 0
    .param p1, "opCode"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .param p2, "fin"    # Z
    .param p3, "payload"    # [B
    .param p4, "maskingKey"    # [B

    .line 485
    invoke-direct {p0, p1, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z)V

    .line 486
    invoke-virtual {p0, p4}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setMaskingKey([B)V

    .line 487
    invoke-virtual {p0, p3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setBinaryPayload([B)V

    .line 488
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 1
    .param p1, "clone"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setOpCode(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;)V

    .line 523
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isFin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setFin(Z)V

    .line 524
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setBinaryPayload([B)V

    .line 525
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getMaskingKey()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setMaskingKey([B)V

    .line 526
    return-void
.end method

.method public static binary2Text([B)Ljava/lang/String;
    .locals 2
    .param p0, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->TEXT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static binary2Text([BII)Ljava/lang/String;
    .locals 2
    .param p0, "payload"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->TEXT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static checkedRead(I)I
    .locals 1
    .param p0, "read"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    if-ltz p0, :cond_0

    .line 431
    return p0

    .line 429
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private payloadToString()Ljava/lang/String;
    .locals 5

    .line 562
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    if-nez v0, :cond_0

    .line 563
    const-string v0, "null"

    return-object v0

    .line 565
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "b] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v1

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Text:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const-string v3, "..."

    if-ne v1, v2, :cond_2

    .line 568
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getTextPayload()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x64

    if-le v2, v4, :cond_1

    .line 570
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .end local v1    # "text":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 575
    :cond_2
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length v2, v2

    const/16 v4, 0x32

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 577
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 579
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length v1, v1

    if-le v1, v4, :cond_4

    .line 580
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static read(Ljava/io/InputStream;)Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    int-to-byte v0, v0

    .line 436
    .local v0, "head":B
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 437
    .local v1, "fin":Z
    :goto_0
    and-int/lit8 v2, v0, 0xf

    int-to-byte v2, v2

    invoke-static {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->find(B)Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v2

    .line 438
    .local v2, "opCode":Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    and-int/lit8 v3, v0, 0x70

    if-nez v3, :cond_5

    .line 441
    if-eqz v2, :cond_4

    .line 443
    invoke-virtual {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->isControlFrame()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 444
    :cond_1
    new-instance v3, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v4, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v5, "Fragmented control frame."

    invoke-direct {v3, v4, v5}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v3

    .line 447
    :cond_2
    :goto_1
    new-instance v3, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    invoke-direct {v3, v2, v1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z)V

    .line 448
    .local v3, "frame":Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    invoke-direct {v3, p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->readPayloadInfo(Ljava/io/InputStream;)V

    .line 449
    invoke-direct {v3, p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->readPayload(Ljava/io/InputStream;)V

    .line 450
    invoke-virtual {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v4

    sget-object v5, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v4, v5, :cond_3

    .line 451
    new-instance v4, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;Lfi/iki/elonen/NanoWSD$1;)V

    return-object v4

    .line 453
    :cond_3
    return-object v3

    .line 442
    .end local v3    # "frame":Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    :cond_4
    new-instance v3, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v4, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received frame with reserved/unknown opcode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v6, v0, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v3

    .line 439
    :cond_5
    new-instance v3, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v4, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The reserved bits ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v6, v0, 0x70

    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") must be 0."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v3
.end method

.method private readPayload(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "read":I
    :goto_0
    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    if-ge v0, v1, :cond_0

    .line 591
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    sub-int/2addr v1, v0

    invoke-virtual {p1, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-static {v1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 596
    aget-byte v3, v2, v1

    iget-object v4, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    rem-int/lit8 v5, v1, 0x4

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 601
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v1

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Text:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v1, v2, :cond_2

    .line 602
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v1

    invoke-static {v1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->binary2Text([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    .line 604
    :cond_2
    return-void
.end method

.method private readPayloadInfo(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    int-to-byte v0, v0

    .line 610
    .local v0, "b":B
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 612
    .local v1, "masked":Z
    :goto_0
    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    iput v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 613
    const/16 v4, 0x7e

    if-ne v3, v4, :cond_2

    .line 615
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-static {v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v5

    or-int/2addr v3, v5

    const v5, 0xffff

    and-int/2addr v3, v5

    iput v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 616
    if-lt v3, v4, :cond_1

    goto/16 :goto_1

    .line 617
    :cond_1
    new-instance v2, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v3, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v4, "Invalid data frame 2byte length. (not using minimal length encoding)"

    invoke-direct {v2, v3, v4}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v2

    .line 619
    :cond_2
    const/16 v4, 0x7f

    if-ne v3, v4, :cond_5

    .line 620
    nop

    .line 621
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-static {v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v5

    int-to-long v5, v5

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-static {v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v5

    int-to-long v5, v5

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-static {v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v5

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 622
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-static {v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x18

    int-to-long v5, v5

    or-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-static {v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    or-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-static {v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    int-to-long v5, v5

    or-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-static {v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v5

    int-to-long v5, v5

    or-long/2addr v3, v5

    .line 623
    .local v3, "_payloadLength":J
    const-wide/32 v5, 0x10000

    cmp-long v7, v3, v5

    if-ltz v7, :cond_4

    .line 626
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    .line 629
    long-to-int v5, v3

    iput v5, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    goto :goto_1

    .line 627
    :cond_3
    new-instance v2, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v5, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MessageTooBig:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v6, "Max frame length has been exceeded."

    invoke-direct {v2, v5, v6}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v2

    .line 624
    :cond_4
    new-instance v2, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v5, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v6, "Invalid data frame 4byte length. (not using minimal length encoding)"

    invoke-direct {v2, v5, v6}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v2

    .line 632
    .end local v3    # "_payloadLength":J
    :cond_5
    :goto_1
    iget-object v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    invoke-virtual {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->isControlFrame()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 633
    iget v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    const/16 v4, 0x7d

    if-gt v3, v4, :cond_7

    .line 636
    iget-object v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    sget-object v4, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v3, v4, :cond_8

    iget v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    if-eq v3, v2, :cond_6

    goto :goto_2

    .line 637
    :cond_6
    new-instance v2, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v3, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v4, "Received close frame with payload len 1."

    invoke-direct {v2, v3, v4}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v2

    .line 634
    :cond_7
    new-instance v2, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v3, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v4, "Control frame with payload length > 125 bytes."

    invoke-direct {v2, v3, v4}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v2

    .line 641
    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    .line 642
    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    .line 643
    const/4 v2, 0x0

    .line 644
    .local v2, "read":I
    :goto_3
    iget-object v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    array-length v4, v3

    if-ge v2, v4, :cond_9

    .line 645
    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-virtual {p1, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    .line 648
    .end local v2    # "read":I
    :cond_9
    return-void
.end method

.method public static text2Binary(Ljava/lang/String;)[B
    .locals 1
    .param p0, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 458
    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->TEXT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBinaryPayload()[B
    .locals 1

    .line 529
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    return-object v0
.end method

.method public getMaskingKey()[B
    .locals 1

    .line 533
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    return-object v0
.end method

.method public getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .locals 1

    .line 537
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    return-object v0
.end method

.method public getTextPayload()Ljava/lang/String;
    .locals 3

    .line 543
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 545
    :try_start_0
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->binary2Text([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Undetected CharacterCodingException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 550
    .end local v0    # "e":Ljava/nio/charset/CharacterCodingException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    return-object v0
.end method

.method public isFin()Z
    .locals 1

    .line 554
    iget-boolean v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->fin:Z

    return v0
.end method

.method public isMasked()Z
    .locals 2

    .line 558
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBinaryPayload([B)V
    .locals 1
    .param p1, "payload"    # [B

    .line 651
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    .line 652
    array-length v0, p1

    iput v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    .line 654
    return-void
.end method

.method public setFin(Z)V
    .locals 0
    .param p1, "fin"    # Z

    .line 657
    iput-boolean p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->fin:Z

    .line 658
    return-void
.end method

.method public setMaskingKey([B)V
    .locals 3
    .param p1, "maskingKey"    # [B

    .line 661
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 662
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaskingKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hasn\'t length 4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_1
    :goto_0
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    .line 665
    return-void
.end method

.method public setOpCode(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;)V
    .locals 0
    .param p1, "opcode"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 668
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 669
    return-void
.end method

.method public setTextPayload(Ljava/lang/String;)V
    .locals 1
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 672
    invoke-static {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->text2Binary(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    .line 673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 674
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    .line 675
    return-void
.end method

.method public setUnmasked()V
    .locals 1

    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setMaskingKey([B)V

    .line 681
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WS["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 687
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isFin()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "fin"

    goto :goto_0

    :cond_0
    const-string v2, "inter"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "masked"

    goto :goto_1

    :cond_1
    const-string v2, "unmasked"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payloadToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, "header":B
    iget-boolean v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->fin:Z

    if-eqz v1, :cond_0

    .line 699
    or-int/lit16 v1, v0, 0x80

    int-to-byte v0, v1

    .line 701
    :cond_0
    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    invoke-virtual {v1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->getValue()B

    move-result v1

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 702
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 704
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 705
    const/16 v2, 0x7d

    if-gt v1, v2, :cond_2

    .line 706
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    int-to-byte v1, v1

    or-int/lit16 v1, v1, 0x80

    goto :goto_0

    :cond_1
    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    int-to-byte v1, v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 707
    :cond_2
    const v2, 0xffff

    if-gt v1, v2, :cond_4

    .line 708
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xfe

    goto :goto_1

    :cond_3
    const/16 v1, 0x7e

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 709
    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 710
    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 712
    :cond_4
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xff

    goto :goto_2

    :cond_5
    const/16 v1, 0x7f

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 713
    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v1, v1, 0x38

    and-int/lit8 v1, v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 716
    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v1, v1, 0x30

    and-int/lit8 v1, v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 717
    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v1, v1, 0x28

    and-int/lit8 v1, v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 718
    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v1, v1, 0x20

    and-int/lit8 v1, v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 719
    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v1, v1, 0x18

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 720
    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v1, v1, 0x10

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 721
    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 722
    iget v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 725
    :goto_3
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 726
    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 727
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    if-ge v1, v2, :cond_6

    .line 728
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v2

    aget-byte v2, v2, v1

    iget-object v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    rem-int/lit8 v4, v1, 0x4

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    :cond_6
    goto :goto_5

    .line 731
    :cond_7
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 733
    :goto_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 734
    return-void
.end method
