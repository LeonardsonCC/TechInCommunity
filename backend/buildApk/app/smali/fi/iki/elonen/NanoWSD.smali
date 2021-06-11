.class public abstract Lfi/iki/elonen/NanoWSD;
.super Lfi/iki/elonen/NanoHTTPD;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoWSD$WebSocketFrame;,
        Lfi/iki/elonen/NanoWSD$WebSocketException;,
        Lfi/iki/elonen/NanoWSD$WebSocket;,
        Lfi/iki/elonen/NanoWSD$State;
    }
.end annotation


# static fields
.field private static final ALPHABET:[C

.field public static final HEADER_CONNECTION:Ljava/lang/String; = "connection"

.field public static final HEADER_CONNECTION_VALUE:Ljava/lang/String; = "Upgrade"

.field public static final HEADER_UPGRADE:Ljava/lang/String; = "upgrade"

.field public static final HEADER_UPGRADE_VALUE:Ljava/lang/String; = "websocket"

.field public static final HEADER_WEBSOCKET_ACCEPT:Ljava/lang/String; = "sec-websocket-accept"

.field public static final HEADER_WEBSOCKET_KEY:Ljava/lang/String; = "sec-websocket-key"

.field public static final HEADER_WEBSOCKET_PROTOCOL:Ljava/lang/String; = "sec-websocket-protocol"

.field public static final HEADER_WEBSOCKET_VERSION:Ljava/lang/String; = "sec-websocket-version"

.field public static final HEADER_WEBSOCKET_VERSION_VALUE:Ljava/lang/String; = "13"

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final WEBSOCKET_KEY_MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 740
    const-class v0, Lfi/iki/elonen/NanoWSD;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoWSD;->LOG:Ljava/util/logging/Logger;

    .line 762
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoWSD;->ALPHABET:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "port"    # I

    .line 811
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    .line 812
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "localSocketAddress"    # Ljava/lang/String;

    .line 819
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 815
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 816
    return-void
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .line 55
    sget-object v0, Lfi/iki/elonen/NanoWSD;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static encodeBase64([B)Ljava/lang/String;
    .locals 12
    .param p0, "buf"    # [B

    .line 776
    array-length v0, p0

    .line 777
    .local v0, "size":I
    add-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [C

    .line 778
    .local v1, "ar":[C
    const/4 v2, 0x0

    .line 779
    .local v2, "a":I
    const/4 v3, 0x0

    .line 780
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 781
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v3, p0, v3

    .line 782
    .local v3, "b0":B
    const/4 v5, 0x0

    if-ge v4, v0, :cond_0

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    aget-byte v4, p0, v4

    goto :goto_1

    .end local v6    # "i":I
    .restart local v4    # "i":I
    :cond_0
    move v6, v4

    const/4 v4, 0x0

    .line 783
    .local v4, "b1":B
    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v0, :cond_1

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .local v5, "i":I
    aget-byte v6, p0, v6

    goto :goto_2

    .end local v5    # "i":I
    .restart local v6    # "i":I
    :cond_1
    move v5, v6

    const/4 v6, 0x0

    .line 785
    .restart local v5    # "i":I
    .local v6, "b2":B
    :goto_2
    const/16 v7, 0x3f

    .line 786
    .local v7, "mask":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "a":I
    .local v8, "a":I
    sget-object v9, Lfi/iki/elonen/NanoWSD;->ALPHABET:[C

    shr-int/lit8 v10, v3, 0x2

    and-int/2addr v10, v7

    aget-char v10, v9, v10

    aput-char v10, v1, v2

    .line 787
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "a":I
    .restart local v2    # "a":I
    shl-int/lit8 v10, v3, 0x4

    and-int/lit16 v11, v4, 0xff

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v10, v11

    and-int/2addr v10, v7

    aget-char v10, v9, v10

    aput-char v10, v1, v8

    .line 788
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "a":I
    .restart local v8    # "a":I
    shl-int/lit8 v10, v4, 0x2

    and-int/lit16 v11, v6, 0xff

    shr-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    and-int/2addr v10, v7

    aget-char v10, v9, v10

    aput-char v10, v1, v2

    .line 789
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "a":I
    .restart local v2    # "a":I
    and-int v10, v6, v7

    aget-char v9, v9, v10

    aput-char v9, v1, v8

    .line 790
    .end local v3    # "b0":B
    .end local v4    # "b1":B
    .end local v6    # "b2":B
    .end local v7    # "mask":I
    move v3, v5

    goto :goto_0

    .line 791
    .end local v5    # "i":I
    .local v3, "i":I
    :cond_2
    rem-int/lit8 v4, v0, 0x3

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    goto :goto_3

    .line 796
    :cond_3
    add-int/lit8 v2, v2, -0x1

    aput-char v5, v1, v2

    goto :goto_3

    .line 793
    :cond_4
    add-int/lit8 v2, v2, -0x1

    aput-char v5, v1, v2

    .line 794
    nop

    .line 799
    :goto_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method private isWebSocketConnectionHeader(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 823
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "connection"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 824
    .local v0, "connection":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Upgrade"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static makeAcceptKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 803
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 804
    .local v0, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 806
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 807
    .local v2, "sha1hash":[B
    invoke-static {v2}, Lfi/iki/elonen/NanoWSD;->encodeBase64([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected isWebsocketRequested(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Z
    .locals 5
    .param p1, "session"    # Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    .line 828
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 829
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "upgrade"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 830
    .local v1, "upgrade":Ljava/lang/String;
    invoke-direct {p0, v0}, Lfi/iki/elonen/NanoWSD;->isWebSocketConnectionHeader(Ljava/util/Map;)Z

    move-result v2

    .line 831
    .local v2, "isCorrectConnection":Z
    const-string v3, "websocket"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 832
    .local v3, "isUpgrade":Z
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method protected abstract openWebSocket(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;
.end method

.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 7
    .param p1, "session"    # Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    .line 841
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 842
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD;->isWebsocketRequested(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 843
    const-string v1, "sec-websocket-version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "13"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "text/plain"

    if-nez v2, :cond_0

    .line 844
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Websocket-Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 844
    invoke-static {v2, v3, v1}, Lfi/iki/elonen/NanoWSD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v1

    return-object v1

    .line 848
    :cond_0
    const-string v1, "sec-websocket-key"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 849
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v2, "Missing Websocket-Key"

    invoke-static {v1, v3, v2}, Lfi/iki/elonen/NanoWSD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v1

    return-object v1

    .line 852
    :cond_1
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD;->openWebSocket(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;

    move-result-object v2

    .line 853
    .local v2, "webSocket":Lfi/iki/elonen/NanoWSD$WebSocket;
    invoke-virtual {v2}, Lfi/iki/elonen/NanoWSD$WebSocket;->getHandshakeResponse()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v4

    .line 855
    .local v4, "handshakeResponse":Lfi/iki/elonen/NanoHTTPD$Response;
    :try_start_0
    const-string v5, "sec-websocket-accept"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lfi/iki/elonen/NanoWSD;->makeAcceptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    nop

    .line 861
    const-string v1, "sec-websocket-protocol"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 862
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v4, v1, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_2
    return-object v4

    .line 856
    :catch_0
    move-exception v1

    .line 857
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v6, "The SHA-1 Algorithm required for websockets is not available on the server."

    invoke-static {v5, v3, v6}, Lfi/iki/elonen/NanoWSD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v3

    return-object v3

    .line 867
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "webSocket":Lfi/iki/elonen/NanoWSD$WebSocket;
    .end local v4    # "handshakeResponse":Lfi/iki/elonen/NanoHTTPD$Response;
    :cond_3
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD;->serveHttp(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v1

    return-object v1
.end method

.method protected serveHttp(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1
    .param p1, "session"    # Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    .line 872
    invoke-super {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method protected useGzipWhenAccepted(Lfi/iki/elonen/NanoHTTPD$Response;)Z
    .locals 1
    .param p1, "r"    # Lfi/iki/elonen/NanoHTTPD$Response;

    .line 880
    const/4 v0, 0x0

    return v0
.end method
