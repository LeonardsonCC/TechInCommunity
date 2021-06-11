.class public Lcom/tns/DefaultExtractPolicy;
.super Ljava/lang/Object;
.source "DefaultExtractPolicy.java"

# interfaces
.implements Lcom/tns/ExtractPolicy;


# static fields
.field private static final ASSETS_THUMB_FILENAME:Ljava/lang/String; = "assetsThumb"


# instance fields
.field private final logger:Lcom/tns/Logger;


# direct methods
.method public constructor <init>(Lcom/tns/Logger;)V
    .locals 0
    .param p1, "logger"    # Lcom/tns/Logger;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/tns/DefaultExtractPolicy;->logger:Lcom/tns/Logger;

    .line 31
    return-void
.end method

.method private generateAssetsThumb(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 72
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    .line 73
    .local v1, "code":J
    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 74
    .local v3, "updateTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 75
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "code":J
    .end local v3    # "updateTime":J
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/tns/DefaultExtractPolicy;->logger:Lcom/tns/Logger;

    const-string v2, "Error while getting current assets thumb"

    invoke-interface {v1, v2}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 82
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCachedAssetsThumb(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "assetsThumbFilePath"    # Ljava/lang/String;

    .line 87
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "cachedThumbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 90
    .local v1, "in":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 91
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "cachedThumb":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 93
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-object v3

    .line 88
    .end local v0    # "cachedThumbFile":Ljava/io/File;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "cachedThumb":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/tns/DefaultExtractPolicy;->logger:Lcom/tns/Logger;

    const-string v2, "Error while getting current asstes thumb"

    invoke-interface {v1, v2}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v1, p0, Lcom/tns/DefaultExtractPolicy;->logger:Lcom/tns/Logger;

    const-string v2, "Error while getting current assets thumb"

    invoke-interface {v1, v2}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 106
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    nop

    .line 108
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getFilesDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveNewAssetsThumb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "newThumb"    # Ljava/lang/String;
    .param p2, "assetsThumbFile"    # Ljava/lang/String;

    .line 112
    const-string v0, "Error while writing current assets thumb"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "cachedThumbFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 115
    .local v2, "out":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 119
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 122
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 123
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 122
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 123
    nop

    .end local v1    # "cachedThumbFile":Ljava/io/File;
    .end local p1    # "newThumb":Ljava/lang/String;
    .end local p2    # "assetsThumbFile":Ljava/lang/String;
    throw v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "cachedThumbFile":Ljava/io/File;
    .restart local p1    # "newThumb":Ljava/lang/String;
    .restart local p2    # "assetsThumbFile":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/tns/DefaultExtractPolicy;->logger:Lcom/tns/Logger;

    invoke-interface {v3, v0}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 125
    .local v2, "e":Ljava/io/FileNotFoundException;
    iget-object v3, p0, Lcom/tns/DefaultExtractPolicy;->logger:Lcom/tns/Logger;

    invoke-interface {v3, v0}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 134
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_0
    nop

    .line 135
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public extractor()Lcom/tns/FileExtractor;
    .locals 1

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public forceOverwrite()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public getAssetsThumb(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0, p1}, Lcom/tns/DefaultExtractPolicy;->generateAssetsThumb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAssetsThumb(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lcom/tns/DefaultExtractPolicy;->generateAssetsThumb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "assetsThumb":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/tns/DefaultExtractPolicy;->getFilesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "assetsThumb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "assetsThumbFilePath":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/tns/DefaultExtractPolicy;->saveNewAssetsThumb(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v1    # "assetsThumbFilePath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public shouldExtract(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/tns/DefaultExtractPolicy;->getFilesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "assetsThumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "assetsThumbFilePath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/tns/DefaultExtractPolicy;->getCachedAssetsThumb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "oldAssetsThumb":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 37
    return v2

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tns/DefaultExtractPolicy;->getAssetsThumb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "currentThumb":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 42
    return v2

    .line 46
    .end local v3    # "currentThumb":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
