.class public Lcom/tns/AssetExtractor;
.super Ljava/lang/Object;
.source "AssetExtractor.java"


# instance fields
.field private final logger:Lcom/tns/Logger;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/tns/Logger;)V
    .locals 0
    .param p1, "libPath"    # Ljava/io/File;
    .param p2, "logger"    # Lcom/tns/Logger;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/tns/AssetExtractor;->logger:Lcom/tns/Logger;

    .line 15
    return-void
.end method

.method private static delete(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 53
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 58
    .local v3, "childFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    invoke-static {v3}, Lcom/tns/AssetExtractor;->delete(Ljava/io/File;)V

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    .end local v3    # "childFile":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .restart local v3    # "childFile":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 67
    .end local v3    # "childFile":Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    return-void

    .line 68
    :cond_4
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private native extractAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method


# virtual methods
.method public extractAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tns/ExtractPolicy;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputPath"    # Ljava/lang/String;
    .param p3, "outputPath"    # Ljava/lang/String;
    .param p4, "extractPolicy"    # Lcom/tns/ExtractPolicy;
    .param p5, "shouldCleanUpPreviousAssets"    # Z

    .line 18
    invoke-interface {p4}, Lcom/tns/ExtractPolicy;->extractor()Lcom/tns/FileExtractor;

    move-result-object v0

    .line 19
    .local v0, "extractor":Lcom/tns/FileExtractor;
    if-eqz v0, :cond_1

    .line 20
    invoke-interface {v0, p1}, Lcom/tns/FileExtractor;->extract(Landroid/content/Context;)Z

    move-result v1

    .line 21
    .local v1, "success":Z
    iget-object v2, p0, Lcom/tns/AssetExtractor;->logger:Lcom/tns/Logger;

    invoke-interface {v2}, Lcom/tns/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    iget-object v2, p0, Lcom/tns/AssetExtractor;->logger:Lcom/tns/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extract returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 24
    .end local v1    # "success":Z
    :cond_0
    goto :goto_1

    :cond_1
    invoke-interface {p4, p1}, Lcom/tns/ExtractPolicy;->shouldExtract(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    if-eqz p5, :cond_2

    .line 27
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tns/AssetExtractor;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "AssetExtraction"

    .line 30
    .local v2, "logTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem occurred while deleting assets from previous app version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "logTag":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "apkPath":Ljava/lang/String;
    invoke-interface {p4}, Lcom/tns/ExtractPolicy;->forceOverwrite()Z

    move-result v2

    .line 38
    .local v2, "forceOverwrite":Z
    invoke-direct {p0, v1, p2, p3, v2}, Lcom/tns/AssetExtractor;->extractAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    .end local v1    # "apkPath":Ljava/lang/String;
    .end local v2    # "forceOverwrite":Z
    goto :goto_1

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/tns/AssetExtractor;->logger:Lcom/tns/Logger;

    invoke-interface {v1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    iget-object v1, p0, Lcom/tns/AssetExtractor;->logger:Lcom/tns/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped extraction of assets in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 44
    :cond_4
    :goto_1
    return-void
.end method
