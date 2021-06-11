.class public Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;
.super Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseFrame"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _closeCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field private _closeReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 344
    const-class v0, Lfi/iki/elonen/NanoWSD;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .param p2, "closeReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 364
    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    invoke-static {p1, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->generatePayload(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V

    .line 365
    return-void
.end method

.method private constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 4
    .param p1, "wrap"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 368
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 369
    nop

    .line 370
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 371
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->find(I)Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->_closeCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 372
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->getBinaryPayload()[B

    move-result-object v0

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->getBinaryPayload()[B

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->binary2Text([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->_closeReason:Ljava/lang/String;

    .line 374
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;Lfi/iki/elonen/NanoWSD$1;)V
    .locals 0
    .param p1, "x0"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    .param p2, "x1"    # Lfi/iki/elonen/NanoWSD$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 344
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    return-void
.end method

.method private static generatePayload(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)[B
    .locals 6
    .param p0, "code"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .param p1, "closeReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 348
    invoke-static {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->text2Binary(Ljava/lang/String;)[B

    move-result-object v1

    .line 349
    .local v1, "reasonBytes":[B
    array-length v2, v1

    const/4 v3, 0x2

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 350
    .local v2, "payload":[B
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->getValue()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 351
    const/4 v4, 0x1

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->getValue()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 352
    array-length v4, v1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    return-object v2

    .line 355
    .end local v1    # "reasonBytes":[B
    .end local v2    # "payload":[B
    :cond_0
    new-array v0, v0, [B

    return-object v0
.end method


# virtual methods
.method public getCloseCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 1

    .line 377
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->_closeCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    return-object v0
.end method

.method public getCloseReason()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->_closeReason:Ljava/lang/String;

    return-object v0
.end method
