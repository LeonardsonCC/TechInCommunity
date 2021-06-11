.class public abstract Lfi/iki/elonen/NanoHTTPD;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;,
        Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;,
        Lfi/iki/elonen/NanoHTTPD$TempFileManager;,
        Lfi/iki/elonen/NanoHTTPD$TempFile;,
        Lfi/iki/elonen/NanoHTTPD$ServerRunnable;,
        Lfi/iki/elonen/NanoHTTPD$ResponseException;,
        Lfi/iki/elonen/NanoHTTPD$Response;,
        Lfi/iki/elonen/NanoHTTPD$Method;,
        Lfi/iki/elonen/NanoHTTPD$IHTTPSession;,
        Lfi/iki/elonen/NanoHTTPD$HTTPSession;,
        Lfi/iki/elonen/NanoHTTPD$ContentType;,
        Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;,
        Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;,
        Lfi/iki/elonen/NanoHTTPD$CookieHandler;,
        Lfi/iki/elonen/NanoHTTPD$Cookie;,
        Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;,
        Lfi/iki/elonen/NanoHTTPD$ClientHandler;,
        Lfi/iki/elonen/NanoHTTPD$AsyncRunner;
    }
.end annotation


# static fields
.field private static final CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_ATTRIBUTE_REGEX:Ljava/lang/String; = "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_REGEX:Ljava/lang/String; = "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_TYPE_REGEX:Ljava/lang/String; = "([ |\t]*content-type[ |\t]*:)(.*)"

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field protected static MIME_TYPES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_STRING_PARAMETER:Ljava/lang/String; = "NanoHttpd.QUERY_STRING"

.field public static final SOCKET_READ_TIMEOUT:I = 0x1388


# instance fields
.field protected asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

.field private final hostname:Ljava/lang/String;

.field private volatile localServerSocket:Landroid/net/LocalServerSocket;

.field private final myName:Ljava/lang/String;

.field private final myPort:I

.field private volatile myServerSocket:Ljava/net/ServerSocket;

.field private myThread:Ljava/lang/Thread;

.field private serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

.field private tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 571
    const/4 v0, 0x2

    const-string v1, "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 575
    const-string v1, "([ |\t]*content-type[ |\t]*:)(.*)"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 579
    const-string v0, "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    .line 1943
    const-class v0, Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .line 2104
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "localSocketName"    # Ljava/lang/String;

    .line 2128
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localSocketName"    # Ljava/lang/String;

    .line 2118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2086
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    .line 2119
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    .line 2120
    iput p2, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    .line 2121
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD;->myName:Ljava/lang/String;

    .line 2123
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$1;)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->setTempFileManagerFactory(Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;)V

    .line 2124
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;-><init>()V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V

    .line 2125
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .line 154
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .line 154
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method static synthetic access$1000(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .line 154
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$1100(Lfi/iki/elonen/NanoHTTPD;)Landroid/net/LocalServerSocket;
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .line 154
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->localServerSocket:Landroid/net/LocalServerSocket;

    return-object v0
.end method

.method static synthetic access$1102(Lfi/iki/elonen/NanoHTTPD;Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;
    .locals 0
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;
    .param p1, "x1"    # Landroid/net/LocalServerSocket;

    .line 154
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->localServerSocket:Landroid/net/LocalServerSocket;

    return-object p1
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .line 154
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    .line 154
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .locals 1

    .line 154
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .locals 1

    .line 154
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$700(Lfi/iki/elonen/NanoHTTPD;)I
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .line 154
    iget v0, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    return v0
.end method

.method static synthetic access$800(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .line 154
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .line 154
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method protected static decodeParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p0, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2193
    .local v0, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_4

    .line 2194
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "&"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2196
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 2197
    .local v2, "e":Ljava/lang/String;
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2198
    .local v3, "sep":I
    if-ltz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2199
    .local v4, "propertyName":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2200
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    :cond_1
    if-ltz v3, :cond_2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 2203
    .local v5, "propertyValue":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_3

    .line 2204
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2206
    .end local v2    # "e":Ljava/lang/String;
    .end local v3    # "sep":I
    .end local v4    # "propertyName":Ljava/lang/String;
    .end local v5    # "propertyValue":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 2208
    .end local v1    # "st":Ljava/util/StringTokenizer;
    :cond_4
    return-object v0
.end method

.method protected static decodeParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2176
    .local p0, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->decodeParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected static decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 2219
    const/4 v0, 0x0

    .line 2221
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2224
    goto :goto_0

    .line 2222
    :catch_0
    move-exception v1

    .line 2223
    .local v1, "ignored":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Encoding not supported, ignored"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2225
    .end local v1    # "ignored":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;

    .line 2051
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2052
    .local v0, "dot":I
    const/4 v1, 0x0

    .line 2053
    .local v1, "mime":Ljava/lang/String;
    if-ltz v0, :cond_0

    .line 2054
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->mimeTypes()Ljava/util/Map;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 2056
    :cond_0
    if-nez v1, :cond_1

    const-string v2, "application/octet-stream"

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method private static loadMimeTypes(Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .param p1, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1968
    .local p0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-class v0, Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 1969
    .local v0, "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1970
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 1971
    .local v1, "url":Ljava/net/URL;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1972
    .local v2, "properties":Ljava/util/Properties;
    const/4 v3, 0x0

    .line 1974
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 1975
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1979
    :try_start_2
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1980
    :goto_1
    goto :goto_2

    .line 1979
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 1976
    :catch_0
    move-exception v4

    .line 1977
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v5, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not load mimetypes from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1979
    .end local v4    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    goto :goto_1

    .line 1981
    :goto_2
    invoke-interface {p0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1982
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "properties":Ljava/util/Properties;
    .end local v3    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 1979
    .restart local v1    # "url":Ljava/net/URL;
    .restart local v2    # "properties":Ljava/util/Properties;
    .restart local v3    # "stream":Ljava/io/InputStream;
    :goto_3
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 1980
    nop

    .end local p0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p1    # "resourceName":Ljava/lang/String;
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1985
    .end local v0    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "properties":Ljava/util/Properties;
    .end local v3    # "stream":Ljava/io/InputStream;
    .restart local p0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "resourceName":Ljava/lang/String;
    :cond_0
    goto :goto_4

    .line 1983
    :catch_1
    move-exception v0

    .line 1984
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no mime types available at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1986
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return-void
.end method

.method public static makeSSLSocketFactory(Ljava/lang/String;[C)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 5
    .param p0, "keyAndTrustStoreClasspathPath"    # Ljava/lang/String;
    .param p1, "passphrase"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2028
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 2029
    .local v0, "keystore":Ljava/security/KeyStore;
    const-class v1, Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 2031
    .local v1, "keystoreStream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 2035
    invoke-virtual {v0, v1, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 2036
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 2037
    .local v2, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v2, v0, p1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 2038
    invoke-static {v0, v2}, Lfi/iki/elonen/NanoHTTPD;->makeSSLSocketFactory(Ljava/security/KeyStore;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v3

    return-object v3

    .line 2032
    .end local v2    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load keystore from classpath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "keyAndTrustStoreClasspathPath":Ljava/lang/String;
    .end local p1    # "passphrase":[C
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2039
    .end local v0    # "keystore":Ljava/security/KeyStore;
    .end local v1    # "keystoreStream":Ljava/io/InputStream;
    .restart local p0    # "keyAndTrustStoreClasspathPath":Ljava/lang/String;
    .restart local p1    # "passphrase":[C
    :catch_0
    move-exception v0

    .line 2040
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static makeSSLSocketFactory(Ljava/security/KeyStore;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 3
    .param p0, "loadedKeyStore"    # Ljava/security/KeyStore;
    .param p1, "loadedKeyFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2016
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    invoke-static {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->makeSSLSocketFactory(Ljava/security/KeyStore;[Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2017
    :catch_0
    move-exception v0

    .line 2018
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static makeSSLSocketFactory(Ljava/security/KeyStore;[Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 5
    .param p0, "loadedKeyStore"    # Ljava/security/KeyStore;
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1996
    const/4 v0, 0x0

    .line 1998
    .local v0, "res":Ljavax/net/ssl/SSLServerSocketFactory;
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 1999
    .local v1, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v1, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 2000
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 2001
    .local v2, "ctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 2002
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 2005
    .end local v1    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "ctx":Ljavax/net/ssl/SSLContext;
    nop

    .line 2006
    return-object v0

    .line 2003
    :catch_0
    move-exception v1

    .line 2004
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static mimeTypes()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1951
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1952
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    .line 1953
    const-string v1, "META-INF/nanohttpd/default-mimetypes.properties"

    invoke-static {v0, v1}, Lfi/iki/elonen/NanoHTTPD;->loadMimeTypes(Ljava/util/Map;Ljava/lang/String;)V

    .line 1954
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    const-string v1, "META-INF/nanohttpd/mimetypes.properties"

    invoke-static {v0, v1}, Lfi/iki/elonen/NanoHTTPD;->loadMimeTypes(Ljava/util/Map;Ljava/lang/String;)V

    .line 1955
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1956
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "no mime types found in the classpath! please provide mimetypes.properties"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1959
    :cond_0
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    return-object v0
.end method

.method public static newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 7
    .param p0, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/io/InputStream;

    .line 2273
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$Response;

    const-wide/16 v4, -0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v6
.end method

.method public static newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 7
    .param p0, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "totalBytes"    # J

    .line 2280
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$Response;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v6
.end method

.method public static newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 6
    .param p0, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "txt"    # Ljava/lang/String;

    .line 2287
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ContentType;

    invoke-direct {v0, p1}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    .line 2288
    .local v0, "contentType":Lfi/iki/elonen/NanoHTTPD$ContentType;
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 2289
    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-array v1, v1, [B

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v3, 0x0

    invoke-static {p0, p1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v1

    return-object v1

    .line 2293
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    .line 2294
    .local v2, "newEncoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v2, p2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2295
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ContentType;->tryUTF8()Lfi/iki/elonen/NanoHTTPD$ContentType;

    move-result-object v3

    move-object v0, v3

    .line 2297
    :cond_1
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2301
    .end local v2    # "newEncoder":Ljava/nio/charset/CharsetEncoder;
    .local v1, "bytes":[B
    goto :goto_0

    .line 2298
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v2

    .line 2299
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "encoding problem, responding nothing"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2300
    new-array v1, v1, [B

    .line 2302
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "bytes":[B
    :goto_0
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getContentTypeHeader()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v4, v1

    int-to-long v4, v4

    invoke-static {p0, v2, v3, v4, v5}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v2

    return-object v2
.end method

.method public static newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 2310
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/html"

    invoke-static {v0, v1, p0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private static final safeClose(Ljava/lang/Object;)V
    .locals 4
    .param p0, "closeable"    # Ljava/lang/Object;

    .line 2061
    if-eqz p0, :cond_3

    .line 2062
    :try_start_0
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 2063
    move-object v0, p0

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 2064
    :cond_0
    instance-of v0, p0, Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 2065
    move-object v0, p0

    check-cast v0, Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 2066
    :cond_1
    instance-of v0, p0, Ljava/net/ServerSocket;

    if-eqz v0, :cond_2

    .line 2067
    move-object v0, p0

    check-cast v0, Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    goto :goto_0

    .line 2069
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown object to close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "closeable":Ljava/lang/Object;
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2072
    .restart local p0    # "closeable":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 2073
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not close"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2074
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_0
    nop

    .line 2075
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized closeAllConnections()V
    .locals 1

    monitor-enter p0

    .line 2135
    :try_start_0
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2136
    monitor-exit p0

    return-void

    .line 2134
    .end local p0    # "this":Lfi/iki/elonen/NanoHTTPD;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createClientHandler(Landroid/net/LocalSocket;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$ClientHandler;
    .locals 1
    .param p1, "finalAccept"    # Landroid/net/LocalSocket;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 2151
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;

    invoke-direct {v0, p0, p2, p1}, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Landroid/net/LocalSocket;)V

    return-object v0
.end method

.method protected createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$ClientHandler;
    .locals 1
    .param p1, "finalAccept"    # Ljava/net/Socket;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 2147
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    invoke-direct {v0, p0, p2, p1}, Lfi/iki/elonen/NanoHTTPD$ClientHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V

    return-object v0
.end method

.method protected createServerRunnable(I)Lfi/iki/elonen/NanoHTTPD$ServerRunnable;
    .locals 1
    .param p1, "timeout"    # I

    .line 2162
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;

    invoke-direct {v0, p0, p1}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;-><init>(Lfi/iki/elonen/NanoHTTPD;I)V

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 2255
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public final getListeningPort()I
    .locals 1

    .line 2239
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getServerSocketFactory()Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;
    .locals 1

    .line 2247
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    return-object v0
.end method

.method public getTempFileManagerFactory()Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;
    .locals 1

    .line 2259
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method public final isAlive()Z
    .locals 1

    .line 2243
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->wasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeSecure(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V
    .locals 1
    .param p1, "sslServerSocketFactory"    # Ljavax/net/ssl/SSLServerSocketFactory;
    .param p2, "sslProtocols"    # [Ljava/lang/String;

    .line 2266
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;

    invoke-direct {v0, p1, p2}, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;-><init>(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    .line 2267
    return-void
.end method

.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 9
    .param p1, "session"    # Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    .line 2323
    const-string v0, "text/plain"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2324
    .local v1, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v8

    .line 2325
    .local v8, "method":Lfi/iki/elonen/NanoHTTPD$Method;
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v2, v8}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v2, v8}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2327
    :cond_0
    :try_start_0
    invoke-interface {p1, v1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2332
    nop

    .line 2335
    :cond_1
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v0

    .line 2336
    .local v0, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getQueryParameterString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NanoHttpd.QUERY_STRING"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2337
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v5

    move-object v2, p0

    move-object v4, v8

    move-object v6, v0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lfi/iki/elonen/NanoHTTPD;->serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v2

    return-object v2

    .line 2330
    .end local v0    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 2331
    .local v2, "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v3

    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    .line 2328
    .end local v2    # "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    :catch_1
    move-exception v2

    .line 2329
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method public serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Lfi/iki/elonen/NanoHTTPD$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2356
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    const-string v2, "Not Found"

    invoke-static {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method public setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V
    .locals 0
    .param p1, "asyncRunner"    # Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    .line 2365
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    .line 2366
    return-void
.end method

.method public setServerSocketFactory(Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;)V
    .locals 0
    .param p1, "serverSocketFactory"    # Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    .line 2251
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    .line 2252
    return-void
.end method

.method public setTempFileManagerFactory(Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;)V
    .locals 0
    .param p1, "tempFileManagerFactory"    # Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    .line 2374
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    .line 2375
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2383
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->start(I)V

    .line 2384
    return-void
.end method

.method public start(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2390
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lfi/iki/elonen/NanoHTTPD;->start(IZ)V

    .line 2391
    return-void
.end method

.method public start(IZ)V
    .locals 3
    .param p1, "timeout"    # I
    .param p2, "daemon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2401
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->getServerSocketFactory()Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    move-result-object v0

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;->create()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    .line 2402
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 2404
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->createServerRunnable(I)Lfi/iki/elonen/NanoHTTPD$ServerRunnable;

    move-result-object v0

    .line 2405
    .local v0, "serverRunnable":Lfi/iki/elonen/NanoHTTPD$ServerRunnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    .line 2406
    invoke-virtual {v1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2407
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const-string v2, "NanoHttpd Main Listener"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2408
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2409
    :goto_0
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1300(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1400(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2411
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2416
    :goto_1
    goto :goto_0

    .line 2412
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2418
    :cond_0
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1400(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2421
    return-void

    .line 2419
    :cond_1
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1400(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public stop()V
    .locals 4

    .line 2428
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 2429
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->localServerSocket:Landroid/net/LocalServerSocket;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 2430
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closeAll()V

    .line 2431
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2432
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2436
    :cond_0
    goto :goto_0

    .line 2434
    :catch_0
    move-exception v0

    .line 2435
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not stop all connections"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2437
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected useGzipWhenAccepted(Lfi/iki/elonen/NanoHTTPD$Response;)Z
    .locals 2
    .param p1, "r"    # Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2235
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$Response;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$Response;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$Response;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final wasStarted()Z
    .locals 1

    .line 2440
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
