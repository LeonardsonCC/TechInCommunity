.class public Lfi/iki/elonen/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$IHTTPSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTTPSession"
.end annotation


# static fields
.field public static final BUFSIZE:I = 0x2000

.field public static final MAX_HEADER_SIZE:I = 0x400

.field private static final MEMORY_STORE_LIMIT:I = 0x400

.field private static final REQUEST_BUFFER_LEN:I = 0x200


# instance fields
.field private cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inputStream:Ljava/io/BufferedInputStream;

.field private method:Lfi/iki/elonen/NanoHTTPD$Method;

.field private final outputStream:Ljava/io/OutputStream;

.field private parms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private protocolVersion:Ljava/lang/String;

.field private queryParameterString:Ljava/lang/String;

.field private remoteHostname:Ljava/lang/String;

.field private remoteIp:Ljava/lang/String;

.field private rlen:I

.field private splitbyte:I

.field private final tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "this$0"    # Lfi/iki/elonen/NanoHTTPD;
    .param p2, "tempFileManager"    # Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;

    .line 694
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 696
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 697
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 698
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "this$0"    # Lfi/iki/elonen/NanoHTTPD;
    .param p2, "tempFileManager"    # Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;
    .param p5, "inetAddress"    # Ljava/net/InetAddress;

    .line 700
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 702
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 703
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 704
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "127.0.0.1"

    :goto_1
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    .line 705
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    :goto_2
    const-string v0, "localhost"

    :goto_3
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteHostname:Ljava/lang/String;

    .line 706
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    .line 707
    return-void
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .param p1, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    .line 715
    .local p2, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "inLine":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 717
    return-void

    .line 720
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 721
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 725
    const-string v2, "method"

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 731
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "uri":Ljava/lang/String;
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 735
    .local v3, "qmi":I
    const/4 v4, 0x0

    if-ltz v3, :cond_1

    .line 736
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p3}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    .line 737
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_0

    .line 739
    :cond_1
    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 746
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 747
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    goto :goto_1

    .line 749
    :cond_2
    const-string v5, "HTTP/1.1"

    iput-object v5, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    .line 750
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "no protocol version specified, strange. Assuming HTTP/1.1."

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 752
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 753
    .local v5, "line":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 754
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 755
    .local v6, "p":I
    if-ltz v6, :cond_3

    .line 756
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 759
    .end local v6    # "p":I
    goto :goto_2

    .line 761
    :cond_4
    const-string v4, "uri"

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    nop

    .line 765
    .end local v0    # "inLine":Ljava/lang/String;
    .end local v1    # "st":Ljava/util/StringTokenizer;
    .end local v2    # "uri":Ljava/lang/String;
    .end local v3    # "qmi":I
    .end local v5    # "line":Ljava/lang/String;
    return-void

    .line 728
    .restart local v0    # "inLine":Ljava/lang/String;
    .restart local v1    # "st":Ljava/util/StringTokenizer;
    :cond_5
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v4, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .end local p1    # "in":Ljava/io/BufferedReader;
    .end local p2    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p3    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local p4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v2

    .line 722
    .restart local p1    # "in":Ljava/io/BufferedReader;
    .restart local p2    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p3    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local p4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v4, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .end local p1    # "in":Ljava/io/BufferedReader;
    .end local p2    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p3    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local p4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    .end local v0    # "inLine":Ljava/lang/String;
    .end local v1    # "st":Ljava/util/StringTokenizer;
    .restart local p1    # "in":Ljava/io/BufferedReader;
    .restart local p2    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p3    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local p4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 763
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private decodeMultipartFormData(Lfi/iki/elonen/NanoHTTPD$ContentType;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V
    .locals 24
    .param p1, "contentType"    # Lfi/iki/elonen/NanoHTTPD$ContentType;
    .param p2, "fbuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$ContentType;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    .line 771
    .local p3, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p4, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    .line 773
    .local v5, "pcount":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getBoundary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v0

    .line 774
    .local v0, "boundaryIdxs":[I
    array-length v6, v0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_11

    .line 778
    const/16 v6, 0x400

    new-array v8, v6, [B

    .line 779
    .local v8, "partHeaderBuff":[B
    const/4 v9, 0x0

    .local v9, "boundaryIdx":I
    :goto_0
    array-length v10, v0

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_10

    .line 780
    aget v10, v0, v9

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 781
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-ge v10, v6, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    goto :goto_1

    :cond_0
    const/16 v10, 0x400

    .line 782
    .local v10, "len":I
    :goto_1
    const/4 v12, 0x0

    invoke-virtual {v2, v8, v12, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 783
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v8, v12, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 784
    invoke-virtual/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-direct {v14, v15, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v13, v14, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v12, v13

    .line 786
    .local v12, "in":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 788
    .local v13, "headerLines":I
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .line 789
    .local v14, "mpline":Ljava/lang/String;
    add-int/2addr v13, v11

    .line 790
    if-eqz v14, :cond_f

    invoke-virtual/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getBoundary()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 794
    const/4 v15, 0x0

    .local v15, "partName":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "fileName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 796
    .local v17, "partContentType":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18
    :try_end_0
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v14, v18

    .line 797
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v16

    .line 798
    .end local v16    # "fileName":Ljava/lang/String;
    .local v6, "fileName":Ljava/lang/String;
    :goto_2
    if-eqz v14, :cond_8

    :try_start_1
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_8

    .line 799
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$300()Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 800
    .local v11, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 801
    invoke-virtual {v11, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v19

    .line 802
    .local v20, "attributeString":Ljava/lang/String;
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$400()Ljava/util/regex/Pattern;

    move-result-object v7
    :try_end_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v21, v5

    move-object/from16 v5, v20

    .end local v20    # "attributeString":Ljava/lang/String;
    .local v5, "attributeString":Ljava/lang/String;
    .local v21, "pcount":I
    :try_start_2
    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    move-object v11, v7

    .line 803
    :goto_3
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 804
    const/4 v7, 0x1

    invoke-virtual {v11, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v20, v18

    .line 805
    .local v20, "key":Ljava/lang/String;
    const-string v7, "name"

    move-object/from16 v22, v5

    move-object/from16 v5, v20

    .end local v20    # "key":Ljava/lang/String;
    .local v5, "key":Ljava/lang/String;
    .local v22, "attributeString":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 806
    const/4 v7, 0x2

    invoke-virtual {v11, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, v20

    move-object v15, v7

    .end local v15    # "partName":Ljava/lang/String;
    .local v7, "partName":Ljava/lang/String;
    goto :goto_4

    .line 807
    .end local v7    # "partName":Ljava/lang/String;
    .restart local v15    # "partName":Ljava/lang/String;
    :cond_1
    const-string v7, "filename"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 808
    const/4 v7, 0x2

    invoke-virtual {v11, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    .line 811
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 812
    if-lez v21, :cond_2

    .line 813
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    add-int/lit8 v20, v21, 0x1

    move-object/from16 v23, v5

    .end local v5    # "key":Ljava/lang/String;
    .end local v21    # "pcount":I
    .local v20, "pcount":I
    .local v23, "key":Ljava/lang/String;
    :try_start_3
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v15, v5

    move/from16 v21, v20

    .end local v15    # "partName":Ljava/lang/String;
    .local v5, "partName":Ljava/lang/String;
    goto :goto_4

    .line 870
    .end local v0    # "boundaryIdxs":[I
    .end local v5    # "partName":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "partHeaderBuff":[B
    .end local v9    # "boundaryIdx":I
    .end local v10    # "len":I
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "headerLines":I
    .end local v14    # "mpline":Ljava/lang/String;
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v22    # "attributeString":Ljava/lang/String;
    .end local v23    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v5, v20

    goto/16 :goto_c

    .line 868
    :catch_1
    move-exception v0

    move/from16 v5, v20

    goto/16 :goto_d

    .line 815
    .end local v20    # "pcount":I
    .restart local v0    # "boundaryIdxs":[I
    .local v5, "key":Ljava/lang/String;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v8    # "partHeaderBuff":[B
    .restart local v9    # "boundaryIdx":I
    .restart local v10    # "len":I
    .restart local v11    # "matcher":Ljava/util/regex/Matcher;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "headerLines":I
    .restart local v14    # "mpline":Ljava/lang/String;
    .restart local v15    # "partName":Ljava/lang/String;
    .restart local v17    # "partContentType":Ljava/lang/String;
    .restart local v21    # "pcount":I
    .restart local v22    # "attributeString":Ljava/lang/String;
    :cond_2
    move-object/from16 v23, v5

    .end local v5    # "key":Ljava/lang/String;
    .restart local v23    # "key":Ljava/lang/String;
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 811
    .end local v23    # "key":Ljava/lang/String;
    .restart local v5    # "key":Ljava/lang/String;
    :cond_3
    move-object/from16 v23, v5

    .end local v5    # "key":Ljava/lang/String;
    .restart local v23    # "key":Ljava/lang/String;
    goto :goto_4

    .line 807
    .end local v23    # "key":Ljava/lang/String;
    .restart local v5    # "key":Ljava/lang/String;
    :cond_4
    move-object/from16 v23, v5

    .line 819
    .end local v5    # "key":Ljava/lang/String;
    :goto_4
    move-object/from16 v5, v22

    goto :goto_3

    .line 803
    .end local v22    # "attributeString":Ljava/lang/String;
    .local v5, "attributeString":Ljava/lang/String;
    :cond_5
    move-object/from16 v22, v5

    .end local v5    # "attributeString":Ljava/lang/String;
    .restart local v22    # "attributeString":Ljava/lang/String;
    move/from16 v5, v21

    goto :goto_5

    .line 800
    .end local v21    # "pcount":I
    .end local v22    # "attributeString":Ljava/lang/String;
    .local v5, "pcount":I
    :cond_6
    move/from16 v21, v5

    .line 821
    :goto_5
    :try_start_4
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$500()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 822
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 823
    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v17, v19

    goto :goto_6

    .line 822
    :cond_7
    const/4 v11, 0x2

    .line 825
    :goto_6
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19
    :try_end_4
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-object/from16 v14, v19

    .line 826
    nop

    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    add-int/lit8 v13, v13, 0x1

    .line 827
    const/4 v7, 0x2

    const/4 v11, 0x1

    goto/16 :goto_2

    .line 870
    .end local v0    # "boundaryIdxs":[I
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "partHeaderBuff":[B
    .end local v9    # "boundaryIdx":I
    .end local v10    # "len":I
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "headerLines":I
    .end local v14    # "mpline":Ljava/lang/String;
    .end local v15    # "partName":Ljava/lang/String;
    .end local v17    # "partContentType":Ljava/lang/String;
    :catch_2
    move-exception v0

    move/from16 v21, v5

    .end local v5    # "pcount":I
    .restart local v21    # "pcount":I
    goto/16 :goto_c

    .line 868
    .end local v21    # "pcount":I
    .restart local v5    # "pcount":I
    :catch_3
    move-exception v0

    move/from16 v21, v5

    .end local v5    # "pcount":I
    .restart local v21    # "pcount":I
    goto/16 :goto_d

    .line 798
    .end local v21    # "pcount":I
    .restart local v0    # "boundaryIdxs":[I
    .restart local v5    # "pcount":I
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v8    # "partHeaderBuff":[B
    .restart local v9    # "boundaryIdx":I
    .restart local v10    # "len":I
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "headerLines":I
    .restart local v14    # "mpline":Ljava/lang/String;
    .restart local v15    # "partName":Ljava/lang/String;
    .restart local v17    # "partContentType":Ljava/lang/String;
    :cond_8
    move/from16 v21, v5

    const/4 v11, 0x2

    .line 828
    .end local v5    # "pcount":I
    .restart local v21    # "pcount":I
    const/4 v5, 0x0

    .line 829
    .local v5, "partHeaderLength":I
    :goto_7
    add-int/lit8 v7, v13, -0x1

    .end local v13    # "headerLines":I
    .local v7, "headerLines":I
    if-lez v13, :cond_9

    .line 830
    :try_start_5
    invoke-direct {v1, v8, v5}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->scipOverNewLine([BI)I

    move-result v13

    move v5, v13

    move v13, v7

    goto :goto_7

    .line 870
    .end local v0    # "boundaryIdxs":[I
    .end local v5    # "partHeaderLength":I
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "headerLines":I
    .end local v8    # "partHeaderBuff":[B
    .end local v9    # "boundaryIdx":I
    .end local v10    # "len":I
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v14    # "mpline":Ljava/lang/String;
    .end local v15    # "partName":Ljava/lang/String;
    .end local v17    # "partContentType":Ljava/lang/String;
    :catch_4
    move-exception v0

    move/from16 v5, v21

    goto/16 :goto_c

    .line 868
    :catch_5
    move-exception v0

    move/from16 v5, v21

    goto/16 :goto_d

    .line 833
    .restart local v0    # "boundaryIdxs":[I
    .restart local v5    # "partHeaderLength":I
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v7    # "headerLines":I
    .restart local v8    # "partHeaderBuff":[B
    .restart local v9    # "boundaryIdx":I
    .restart local v10    # "len":I
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "mpline":Ljava/lang/String;
    .restart local v15    # "partName":Ljava/lang/String;
    .restart local v17    # "partContentType":Ljava/lang/String;
    :cond_9
    add-int/lit8 v13, v10, -0x4

    if-ge v5, v13, :cond_e

    .line 836
    aget v13, v0, v9

    add-int/2addr v13, v5

    .line 837
    .local v13, "partDataStart":I
    add-int/lit8 v18, v9, 0x1

    aget v18, v0, v18

    add-int/lit8 v18, v18, -0x4

    .line 839
    .local v18, "partDataEnd":I
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 841
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 842
    .local v19, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v19, :cond_a

    .line 843
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v20

    .line 844
    move-object/from16 v11, v19

    .end local v19    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 842
    .end local v11    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v11, v19

    .line 847
    .end local v19    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_8
    if-nez v17, :cond_b

    .line 849
    move-object/from16 v19, v0

    .end local v0    # "boundaryIdxs":[I
    .local v19, "boundaryIdxs":[I
    sub-int v0, v18, v13

    new-array v0, v0, [B

    .line 850
    .local v0, "data_bytes":[B
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 852
    new-instance v3, Ljava/lang/String;

    move/from16 v22, v5

    .end local v5    # "partHeaderLength":I
    .local v22, "partHeaderLength":I
    invoke-virtual/range {p1 .. p1}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    nop

    .end local v0    # "data_bytes":[B
    goto :goto_b

    .line 855
    .end local v19    # "boundaryIdxs":[I
    .end local v22    # "partHeaderLength":I
    .local v0, "boundaryIdxs":[I
    .restart local v5    # "partHeaderLength":I
    :cond_b
    move-object/from16 v19, v0

    move/from16 v22, v5

    .end local v0    # "boundaryIdxs":[I
    .end local v5    # "partHeaderLength":I
    .restart local v19    # "boundaryIdxs":[I
    .restart local v22    # "partHeaderLength":I
    sub-int v0, v18, v13

    invoke-direct {v1, v2, v13, v0, v6}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "path":Ljava/lang/String;
    invoke-interface {v4, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 857
    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 859
    :cond_c
    const/4 v3, 0x2

    .line 860
    .local v3, "count":I
    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 861
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 863
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .end local v3    # "count":I
    :goto_a
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    .end local v0    # "path":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "headerLines":I
    .end local v10    # "len":I
    .end local v11    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "partDataStart":I
    .end local v14    # "mpline":Ljava/lang/String;
    .end local v15    # "partName":Ljava/lang/String;
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v18    # "partDataEnd":I
    .end local v22    # "partHeaderLength":I
    :goto_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p3

    move-object/from16 v0, v19

    move/from16 v5, v21

    const/16 v6, 0x400

    const/4 v7, 0x2

    goto/16 :goto_0

    .line 834
    .end local v19    # "boundaryIdxs":[I
    .local v0, "boundaryIdxs":[I
    .restart local v5    # "partHeaderLength":I
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v7    # "headerLines":I
    .restart local v10    # "len":I
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "mpline":Ljava/lang/String;
    .restart local v15    # "partName":Ljava/lang/String;
    .restart local v17    # "partContentType":Ljava/lang/String;
    :cond_e
    move-object/from16 v19, v0

    move/from16 v22, v5

    .end local v0    # "boundaryIdxs":[I
    .end local v5    # "partHeaderLength":I
    .restart local v19    # "boundaryIdxs":[I
    .restart local v22    # "partHeaderLength":I
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v5, "Multipart header size exceeds MAX_HEADER_SIZE."

    invoke-direct {v0, v3, v5}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .end local v21    # "pcount":I
    .end local p1    # "contentType":Lfi/iki/elonen/NanoHTTPD$ContentType;
    .end local p2    # "fbuf":Ljava/nio/ByteBuffer;
    .end local p3    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local p4    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v0
    :try_end_5
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 790
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "headerLines":I
    .end local v15    # "partName":Ljava/lang/String;
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v19    # "boundaryIdxs":[I
    .end local v22    # "partHeaderLength":I
    .restart local v0    # "boundaryIdxs":[I
    .local v5, "pcount":I
    .local v13, "headerLines":I
    .restart local p1    # "contentType":Lfi/iki/elonen/NanoHTTPD$ContentType;
    .restart local p2    # "fbuf":Ljava/nio/ByteBuffer;
    .restart local p3    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local p4    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v19, v0

    .line 791
    .end local v0    # "boundaryIdxs":[I
    .restart local v19    # "boundaryIdxs":[I
    :try_start_6
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v6, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary."

    invoke-direct {v0, v3, v6}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .end local v5    # "pcount":I
    .end local p1    # "contentType":Lfi/iki/elonen/NanoHTTPD$ContentType;
    .end local p2    # "fbuf":Ljava/nio/ByteBuffer;
    .end local p3    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local p4    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v0

    .line 779
    .end local v10    # "len":I
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v13    # "headerLines":I
    .end local v14    # "mpline":Ljava/lang/String;
    .end local v19    # "boundaryIdxs":[I
    .restart local v0    # "boundaryIdxs":[I
    .restart local v5    # "pcount":I
    .restart local p1    # "contentType":Lfi/iki/elonen/NanoHTTPD$ContentType;
    .restart local p2    # "fbuf":Ljava/nio/ByteBuffer;
    .restart local p3    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local p4    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10
    move-object/from16 v19, v0

    .line 872
    .end local v0    # "boundaryIdxs":[I
    .end local v8    # "partHeaderBuff":[B
    .end local v9    # "boundaryIdx":I
    nop

    .line 873
    return-void

    .line 775
    .restart local v0    # "boundaryIdxs":[I
    :cond_11
    move-object/from16 v19, v0

    .end local v0    # "boundaryIdxs":[I
    .restart local v19    # "boundaryIdxs":[I
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v6, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings."

    invoke-direct {v0, v3, v6}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .end local v5    # "pcount":I
    .end local p1    # "contentType":Lfi/iki/elonen/NanoHTTPD$ContentType;
    .end local p2    # "fbuf":Ljava/nio/ByteBuffer;
    .end local p3    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local p4    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v0
    :try_end_6
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 870
    .end local v19    # "boundaryIdxs":[I
    .restart local v5    # "pcount":I
    .restart local p1    # "contentType":Lfi/iki/elonen/NanoHTTPD$ContentType;
    .restart local p2    # "fbuf":Ljava/nio/ByteBuffer;
    .restart local p3    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local p4    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_6
    move-exception v0

    .line 871
    .local v0, "e":Ljava/lang/Exception;
    :goto_c
    new-instance v3, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v6, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v3

    .line 868
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 869
    .local v0, "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    :goto_d
    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "parms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 888
    .local p2, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p1, :cond_0

    .line 889
    const-string v0, ""

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    .line 890
    return-void

    .line 893
    :cond_0
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    .line 894
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .local v0, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 896
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 897
    .local v1, "e":Ljava/lang/String;
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 898
    .local v2, "sep":I
    const/4 v3, 0x0

    .line 899
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 901
    .local v4, "value":Ljava/lang/String;
    if-ltz v2, :cond_1

    .line 902
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 903
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 905
    :cond_1
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 906
    const-string v4, ""

    .line 909
    :goto_1
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 910
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 911
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 912
    invoke-interface {p2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    .end local v1    # "e":Ljava/lang/String;
    .end local v2    # "sep":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 917
    :cond_3
    return-void
.end method

.method private findHeaderEnd([BI)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "rlen"    # I

    .line 1047
    const/4 v0, 0x0

    .line 1048
    .local v0, "splitbyte":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_2

    .line 1051
    aget-byte v1, p1, v0

    const/16 v2, 0xd

    const/16 v3, 0xa

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x3

    if-ge v1, p2, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    .line 1052
    add-int/lit8 v1, v0, 0x4

    return v1

    .line 1056
    :cond_0
    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_1

    .line 1057
    add-int/lit8 v1, v0, 0x2

    return v1

    .line 1059
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I
    .locals 11
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "boundary"    # [B

    .line 1070
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 1071
    .local v1, "res":[I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 1072
    return-object v1

    .line 1075
    :cond_0
    const/4 v2, 0x0

    .line 1076
    .local v2, "search_window_pos":I
    array-length v3, p2

    add-int/lit16 v3, v3, 0x1000

    new-array v3, v3, [B

    .line 1078
    .local v3, "search_window":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    array-length v5, v3

    if-ge v4, v5, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    goto :goto_0

    :cond_1
    array-length v4, v3

    .line 1079
    .local v4, "first_fill":I
    :goto_0
    invoke-virtual {p1, v3, v0, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1080
    array-length v5, p2

    sub-int v5, v4, v5

    .line 1084
    .local v5, "new_bytes":I
    :goto_1
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v5, :cond_5

    .line 1085
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    array-length v8, p2

    if-ge v7, v8, :cond_4

    .line 1086
    add-int v8, v6, v7

    aget-byte v8, v3, v8

    aget-byte v9, p2, v7

    if-eq v8, v9, :cond_2

    .line 1087
    goto :goto_4

    .line 1089
    :cond_2
    array-length v8, p2

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_3

    .line 1091
    array-length v8, v1

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [I

    .line 1092
    .local v8, "new_res":[I
    array-length v9, v1

    invoke-static {v1, v0, v8, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    array-length v9, v1

    add-int v10, v2, v6

    aput v10, v8, v9

    .line 1094
    move-object v1, v8

    .line 1085
    .end local v8    # "new_res":[I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1084
    .end local v7    # "i":I
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1098
    .end local v6    # "j":I
    :cond_5
    add-int/2addr v2, v5

    .line 1101
    array-length v6, v3

    array-length v7, p2

    sub-int/2addr v6, v7

    array-length v7, p2

    invoke-static {v3, v6, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1104
    array-length v6, v3

    array-length v7, p2

    sub-int/2addr v6, v7

    .line 1105
    .end local v5    # "new_bytes":I
    .local v6, "new_bytes":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v6, :cond_6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    goto :goto_5

    :cond_6
    move v5, v6

    .line 1106
    .end local v6    # "new_bytes":I
    .restart local v5    # "new_bytes":I
    :goto_5
    array-length v6, p2

    invoke-virtual {p1, v3, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1107
    if-gtz v5, :cond_7

    .line 1108
    return-object v1

    .line 1107
    :cond_7
    goto :goto_1
.end method

.method private getTmpBucket()Ljava/io/RandomAccessFile;
    .locals 4

    .line 1157
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->createTempFile(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$TempFile;

    move-result-object v0

    .line 1158
    .local v0, "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1159
    .end local v0    # "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "filename_hint"    # Ljava/lang/String;

    .line 1255
    const-string v0, ""

    .line 1256
    .local v0, "path":Ljava/lang/String;
    if-lez p3, :cond_0

    .line 1257
    const/4 v1, 0x0

    .line 1259
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v2, p4}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->createTempFile(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$TempFile;

    move-result-object v2

    .line 1260
    .local v2, "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1261
    .local v3, "src":Ljava/nio/ByteBuffer;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-interface {v2}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 1262
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 1263
    .local v4, "dest":Ljava/nio/channels/FileChannel;
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    add-int v6, p2, p3

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1264
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1265
    invoke-interface {v2}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 1270
    .end local v2    # "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    .end local v3    # "src":Ljava/nio/ByteBuffer;
    .end local v4    # "dest":Ljava/nio/channels/FileChannel;
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 1271
    goto :goto_1

    .line 1270
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1266
    :catch_0
    move-exception v2

    .line 1268
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local p1    # "b":Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "len":I
    .end local p4    # "filename_hint":Ljava/lang/String;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1270
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local p1    # "b":Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "len":I
    .restart local p4    # "filename_hint":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 1271
    throw v2

    .line 1273
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-object v0
.end method

.method private scipOverNewLine([BI)I
    .locals 2
    .param p1, "partHeaderBuff"    # [B
    .param p2, "index"    # I

    .line 876
    :goto_0
    aget-byte v0, p1, p2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 877
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 879
    :cond_0
    add-int/lit8 p2, p2, 0x1

    return p2
.end method


# virtual methods
.method public execute()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    const-string v0, "method"

    const-string v1, "NanoHttpd Shutdown"

    const-string v2, "text/plain"

    const/4 v3, 0x0

    .line 928
    .local v3, "r":Lfi/iki/elonen/NanoHTTPD$Response;
    const/16 v4, 0x2000

    :try_start_0
    new-array v5, v4, [B

    .line 929
    .local v5, "buf":[B
    const/4 v6, 0x0

    iput v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    .line 930
    iput v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    .line 932
    const/4 v7, -0x1

    .line 933
    .local v7, "read":I
    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v8, v4}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    :try_start_1
    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v8, v5, v6, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v8

    .line 942
    nop

    .line 943
    const/4 v8, -0x1

    if-eq v7, v8, :cond_b

    .line 949
    :goto_0
    if-lez v7, :cond_1

    .line 950
    :try_start_2
    iget v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    add-int/2addr v8, v7

    iput v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    .line 951
    invoke-direct {p0, v5, v8}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->findHeaderEnd([BI)I

    move-result v8

    iput v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    .line 952
    if-lez v8, :cond_0

    .line 953
    goto :goto_1

    .line 955
    :cond_0
    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    iget v9, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    iget v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    rsub-int v10, v10, 0x2000

    invoke-virtual {v8, v5, v9, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    move v7, v8

    goto :goto_0

    .line 958
    :cond_1
    :goto_1
    iget v4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    iget v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v4, v8, :cond_2

    .line 959
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->reset()V

    .line 960
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    iget v8, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 963
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    .line 964
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    if-nez v4, :cond_3

    .line 965
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    goto :goto_2

    .line 967
    :cond_3
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 971
    :goto_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    iget v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    invoke-direct {v9, v5, v6, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 974
    .local v4, "hin":Ljava/io/BufferedReader;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 975
    .local v8, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-direct {p0, v4, v8, v9, v10}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 977
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 978
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v10, "remote-addr"

    iget-object v11, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v10, "http-client-ip"

    iget-object v11, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    :cond_4
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lfi/iki/elonen/NanoHTTPD$Method;->lookup(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v9

    iput-object v9, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 983
    if-eqz v9, :cond_a

    .line 987
    const-string v0, "uri"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    .line 989
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-direct {v0, v9, v10}, Lfi/iki/elonen/NanoHTTPD$CookieHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/util/Map;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    .line 991
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v9, "connection"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 992
    .local v0, "connection":Ljava/lang/String;
    const-string v9, "HTTP/1.1"

    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_6

    if-eqz v0, :cond_5

    const-string v9, "(?i).*close.*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    .line 999
    .local v9, "keepAlive":Z
    :goto_3
    iget-object v11, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v11, p0}, Lfi/iki/elonen/NanoHTTPD;->serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v11

    move-object v3, v11

    .line 1003
    if-eqz v3, :cond_9

    .line 1006
    iget-object v11, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v12, "accept-encoding"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1007
    .local v11, "acceptEncoding":Ljava/lang/String;
    iget-object v12, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    invoke-virtual {v12, v3}, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->unloadQueue(Lfi/iki/elonen/NanoHTTPD$Response;)V

    .line 1008
    iget-object v12, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v3, v12}, Lfi/iki/elonen/NanoHTTPD$Response;->setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V

    .line 1009
    iget-object v12, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v12, v3}, Lfi/iki/elonen/NanoHTTPD;->useGzipWhenAccepted(Lfi/iki/elonen/NanoHTTPD$Response;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v11, :cond_7

    const-string v12, "gzip"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v6, 0x1

    :cond_7
    invoke-virtual {v3, v6}, Lfi/iki/elonen/NanoHTTPD$Response;->setGzipEncoding(Z)V

    .line 1010
    invoke-virtual {v3, v9}, Lfi/iki/elonen/NanoHTTPD$Response;->setKeepAlive(Z)V

    .line 1011
    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v3, v6}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 1013
    .end local v11    # "acceptEncoding":Ljava/lang/String;
    if-eqz v9, :cond_8

    invoke-virtual {v3}, Lfi/iki/elonen/NanoHTTPD$Response;->isCloseConnection()Z

    move-result v6

    if-nez v6, :cond_8

    .end local v0    # "connection":Ljava/lang/String;
    .end local v4    # "hin":Ljava/io/BufferedReader;
    .end local v5    # "buf":[B
    .end local v7    # "read":I
    .end local v8    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "keepAlive":Z
    goto :goto_4

    .line 1014
    .restart local v0    # "connection":Ljava/lang/String;
    .restart local v4    # "hin":Ljava/io/BufferedReader;
    .restart local v5    # "buf":[B
    .restart local v7    # "read":I
    .restart local v8    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "keepAlive":Z
    :cond_8
    new-instance v6, Ljava/net/SocketException;

    invoke-direct {v6, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    throw v6

    .line 1004
    .restart local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    :cond_9
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v6, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v10, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v1, v6, v10}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .end local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    throw v1

    .line 984
    .end local v0    # "connection":Ljava/lang/String;
    .end local v9    # "keepAlive":Z
    .restart local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    :cond_a
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v6, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BAD REQUEST: Syntax error. HTTP verb "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " unhandled."

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .end local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    throw v1

    .line 945
    .end local v4    # "hin":Ljava/io/BufferedReader;
    .end local v8    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    :cond_b
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 946
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 947
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    throw v0

    .line 938
    .restart local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 940
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 941
    new-instance v4, Ljava/net/SocketException;

    invoke-direct {v4, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    throw v4

    .line 936
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    :catch_1
    move-exception v0

    .line 937
    .local v0, "e":Ljavax/net/ssl/SSLException;
    nop

    .end local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    throw v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1037
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .end local v5    # "buf":[B
    .end local v7    # "read":I
    .restart local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 1032
    :catch_2
    move-exception v0

    .line 1033
    .local v0, "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    :try_start_3
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v1

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v1

    .line 1034
    .local v1, "resp":Lfi/iki/elonen/NanoHTTPD$Response;
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 1035
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1037
    .end local v0    # "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    .end local v1    # "resp":Lfi/iki/elonen/NanoHTTPD$Response;
    :goto_4
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    .line 1039
    goto :goto_5

    .line 1028
    :catch_3
    move-exception v0

    .line 1029
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_4
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v1

    .line 1030
    .restart local v1    # "resp":Lfi/iki/elonen/NanoHTTPD$Response;
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 1031
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "resp":Lfi/iki/elonen/NanoHTTPD$Response;
    goto :goto_4

    .line 1024
    :catch_4
    move-exception v0

    .line 1025
    .local v0, "ssle":Ljavax/net/ssl/SSLException;
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSL PROTOCOL FAILURE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v1

    .line 1026
    .restart local v1    # "resp":Lfi/iki/elonen/NanoHTTPD$Response;
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 1027
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .end local v0    # "ssle":Ljavax/net/ssl/SSLException;
    .end local v1    # "resp":Lfi/iki/elonen/NanoHTTPD$Response;
    goto :goto_4

    .line 1040
    :goto_5
    return-void

    .line 1019
    :catch_5
    move-exception v0

    .line 1023
    .local v0, "ste":Ljava/net/SocketTimeoutException;
    nop

    .end local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    throw v0

    .line 1016
    .end local v0    # "ste":Ljava/net/SocketTimeoutException;
    .restart local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    :catch_6
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/net/SocketException;
    nop

    .end local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1037
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v3    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    :goto_6
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 1038
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v1}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    .line 1039
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public getBodySize()J
    .locals 2

    .line 1174
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 1176
    :cond_0
    iget v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v0, v1, :cond_1

    .line 1177
    sub-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0

    .line 1179
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCookies()Lfi/iki/elonen/NanoHTTPD$CookieHandler;
    .locals 1

    .line 1113
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1118
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1123
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public final getMethod()Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    .line 1128
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method

.method public final getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1147
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    return-object v0
.end method

.method public final getParms()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1138
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1139
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1142
    :cond_0
    return-object v0
.end method

.method public getQueryParameterString()Ljava/lang/String;
    .locals 1

    .line 1152
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteHostName()Ljava/lang/String;
    .locals 1

    .line 1283
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIpAddress()Ljava/lang/String;
    .locals 1

    .line 1278
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 1166
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public parseBody(Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    .line 1184
    .local p1, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1186
    .local v3, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getBodySize()J

    move-result-wide v4

    .line 1187
    .local v4, "size":J
    const/4 v0, 0x0

    .line 1188
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 1191
    .local v6, "requestDataOutput":Ljava/io/DataOutput;
    const-wide/16 v7, 0x400

    cmp-long v9, v4, v7

    if-gez v9, :cond_0

    .line 1192
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v7

    .line 1193
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v7

    goto :goto_0

    .line 1195
    :cond_0
    invoke-direct/range {p0 .. p0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getTmpBucket()Ljava/io/RandomAccessFile;

    move-result-object v7

    move-object v3, v7

    .line 1196
    move-object v6, v3

    .line 1200
    :goto_0
    const/16 v7, 0x200

    new-array v7, v7, [B

    .line 1201
    .local v7, "buf":[B
    :cond_1
    :goto_1
    iget v8, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-ltz v8, :cond_2

    cmp-long v8, v4, v9

    if-lez v8, :cond_2

    .line 1202
    iget-object v8, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    const-wide/16 v9, 0x200

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    invoke-virtual {v8, v7, v11, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    iput v8, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    .line 1203
    int-to-long v9, v8

    sub-long/2addr v4, v9

    .line 1204
    if-lez v8, :cond_1

    .line 1205
    invoke-interface {v6, v7, v11, v8}, Ljava/io/DataOutput;->write([BII)V

    goto :goto_1

    .line 1209
    :cond_2
    const/4 v8, 0x0

    .line 1210
    .local v8, "fbuf":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_3

    .line 1211
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-static {v9, v11, v10}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object v8, v9

    goto :goto_2

    .line 1213
    :cond_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    sget-object v13, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v14, 0x0

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v16

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v12

    move-object v8, v12

    .line 1214
    invoke-virtual {v3, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1219
    :goto_2
    sget-object v9, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    iget-object v10, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v9, v10}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1220
    new-instance v9, Lfi/iki/elonen/NanoHTTPD$ContentType;

    iget-object v10, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v11, "content-type"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v9, v10}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    .line 1221
    .local v9, "contentType":Lfi/iki/elonen/NanoHTTPD$ContentType;
    invoke-virtual {v9}, Lfi/iki/elonen/NanoHTTPD$ContentType;->isMultipart()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1222
    invoke-virtual {v9}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getBoundary()Ljava/lang/String;

    move-result-object v10

    .line 1223
    .local v10, "boundary":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 1227
    iget-object v11, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    invoke-direct {v1, v9, v8, v11, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeMultipartFormData(Lfi/iki/elonen/NanoHTTPD$ContentType;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V

    .line 1228
    .end local v10    # "boundary":Ljava/lang/String;
    goto :goto_3

    .line 1224
    .restart local v10    # "boundary":Ljava/lang/String;
    :cond_4
    new-instance v11, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v12, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v13, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v11, v12, v13}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .end local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local p1    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v11

    .line 1229
    .end local v10    # "boundary":Ljava/lang/String;
    .restart local v3    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local p1    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    new-array v10, v10, [B

    .line 1230
    .local v10, "postBytes":[B
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1231
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v9}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1233
    .local v11, "postLine":Ljava/lang/String;
    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v9}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getContentType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1234
    iget-object v12, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    invoke-direct {v1, v11, v12}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 1235
    :cond_6
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_8

    .line 1239
    const-string v12, "postData"

    invoke-interface {v2, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1242
    .end local v9    # "contentType":Lfi/iki/elonen/NanoHTTPD$ContentType;
    .end local v10    # "postBytes":[B
    .end local v11    # "postLine":Ljava/lang/String;
    :cond_7
    sget-object v9, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    iget-object v10, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v9, v10}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1243
    const-string v9, "content"

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    const/4 v12, 0x0

    invoke-direct {v1, v8, v11, v10, v12}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 1242
    :cond_8
    :goto_3
    nop

    .line 1246
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "size":J
    .end local v6    # "requestDataOutput":Ljava/io/DataOutput;
    .end local v7    # "buf":[B
    .end local v8    # "fbuf":Ljava/nio/ByteBuffer;
    :goto_4
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 1247
    nop

    .line 1248
    return-void

    .line 1246
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 1247
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
