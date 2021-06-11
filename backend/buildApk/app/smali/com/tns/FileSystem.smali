.class public Lcom/tns/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"


# static fields
.field private static final appRootPrefix:Ljava/lang/String; = "~/"

.field private static final buff:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lcom/tns/FileSystem;->buff:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAll(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    .line 25
    .local v0, "buffReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v1, "text":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    nop

    .line 37
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 36
    .end local v1    # "text":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 34
    :cond_1
    return-object v2

    .line 36
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 39
    :cond_2
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public static readJSONFile(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 75
    invoke-static {p0}, Lcom/tns/FileSystem;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static readText(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    .line 48
    .local v1, "fileLength":I
    sget-object v0, Lcom/tns/FileSystem;->buff:[B

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 52
    sget-object v2, Lcom/tns/FileSystem;->buff:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    .line 53
    .local v2, "length":I
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/tns/FileSystem;->buff:[B

    invoke-direct {v4, v5, v3, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    nop

    .line 56
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 53
    return-object v4

    .line 55
    .end local v2    # "length":I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 58
    :cond_0
    throw v2

    .line 60
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :cond_1
    const/4 v0, 0x0

    .line 62
    .local v0, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 63
    invoke-static {v0}, Lcom/tns/FileSystem;->readAll(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    nop

    .line 68
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 63
    return-object v2

    .line 67
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 65
    :cond_2
    return-object v3

    .line 67
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    if-eqz v0, :cond_3

    .line 68
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 70
    :cond_3
    throw v2
.end method

.method public static resolveRelativePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "applicationFilesDir"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "currentDirectory"    # Ljava/lang/String;

    .line 81
    const-string v0, "~/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Ljava/io/File;

    const-string v2, "app"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "baseDir":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 85
    .end local v1    # "baseDir":Ljava/lang/String;
    :cond_0
    move-object v1, p2

    .line 87
    .restart local v1    # "baseDir":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v0, "temp":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 90
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "uri":Ljava/net/URI;
    invoke-virtual {v3, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 94
    .end local v3    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v3

    .line 95
    .local v3, "e1":Ljava/net/URISyntaxException;
    const/4 v4, 0x0

    return-object v4
.end method
