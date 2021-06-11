.class public final enum Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
.super Ljava/lang/Enum;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum AbnormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum GoingAway:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum InternalServerError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum InvalidFramePayloadData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum MandatoryExt:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum MessageTooBig:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum NoStatusRcvd:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum NormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum PolicyViolation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum TLSHandshake:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum UnsupportedData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 311
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v1, 0x0

    const-string v2, "NormalClosure"

    const/16 v3, 0x3e8

    invoke-direct {v0, v2, v1, v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 312
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v2, 0x1

    const-string v3, "GoingAway"

    const/16 v4, 0x3e9

    invoke-direct {v0, v3, v2, v4}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->GoingAway:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 313
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v3, 0x2

    const-string v4, "ProtocolError"

    const/16 v5, 0x3ea

    invoke-direct {v0, v4, v3, v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 314
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v4, 0x3

    const-string v5, "UnsupportedData"

    const/16 v6, 0x3eb

    invoke-direct {v0, v5, v4, v6}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->UnsupportedData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 315
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v5, 0x4

    const-string v6, "NoStatusRcvd"

    const/16 v7, 0x3ed

    invoke-direct {v0, v6, v5, v7}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NoStatusRcvd:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 316
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v6, 0x5

    const-string v7, "AbnormalClosure"

    const/16 v8, 0x3ee

    invoke-direct {v0, v7, v6, v8}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->AbnormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 317
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v7, 0x6

    const-string v8, "InvalidFramePayloadData"

    const/16 v9, 0x3ef

    invoke-direct {v0, v8, v7, v9}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InvalidFramePayloadData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 318
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/4 v8, 0x7

    const-string v9, "PolicyViolation"

    const/16 v10, 0x3f0

    invoke-direct {v0, v9, v8, v10}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PolicyViolation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 319
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/16 v9, 0x8

    const-string v10, "MessageTooBig"

    const/16 v11, 0x3f1

    invoke-direct {v0, v10, v9, v11}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MessageTooBig:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 320
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/16 v10, 0x9

    const-string v11, "MandatoryExt"

    const/16 v12, 0x3f2

    invoke-direct {v0, v11, v10, v12}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MandatoryExt:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 321
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/16 v11, 0xa

    const-string v12, "InternalServerError"

    const/16 v13, 0x3f3

    invoke-direct {v0, v12, v11, v13}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InternalServerError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 322
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const/16 v12, 0xb

    const-string v13, "TLSHandshake"

    const/16 v14, 0x3f7

    invoke-direct {v0, v13, v12, v14}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->TLSHandshake:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 310
    const/16 v13, 0xc

    new-array v13, v13, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    sget-object v14, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v14, v13, v1

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->GoingAway:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v13, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v13, v3

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->UnsupportedData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v13, v4

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NoStatusRcvd:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v13, v5

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->AbnormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v13, v6

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InvalidFramePayloadData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v13, v7

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PolicyViolation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v13, v8

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MessageTooBig:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v13, v9

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MandatoryExt:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v13, v10

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InternalServerError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->$VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 336
    iput p3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->code:I

    .line 337
    return-void
.end method

.method public static find(I)Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 5
    .param p0, "value"    # I

    .line 325
    invoke-static {}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 326
    .local v3, "code":Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    invoke-virtual {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 327
    return-object v3

    .line 325
    .end local v3    # "code":Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 310
    const-class v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    return-object v0
.end method

.method public static values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 1

    .line 310
    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->$VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 340
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->code:I

    return v0
.end method
