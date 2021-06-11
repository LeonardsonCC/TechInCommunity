.class Lorg/nativescript/widgets/Async$File$ReadTask;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async$File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReadTask"
.end annotation


# instance fields
.field private callback:Lorg/nativescript/widgets/Async$CompleteCallback;

.field private context:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;
    .param p2, "context"    # Ljava/lang/Object;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput-object p1, p0, Lorg/nativescript/widgets/Async$File$ReadTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 734
    iput-object p2, p0, Lorg/nativescript/widgets/Async$File$ReadTask;->context:Ljava/lang/Object;

    .line 735
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)[B
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .line 738
    const-string v0, "Failed to close stream, IOException: "

    const-string v1, "Async"

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    .local v2, "javaFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 742
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 744
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v6, v5

    new-array v5, v6, [B

    .line 746
    .local v5, "result":[B
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 747
    .local v6, "dataInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v6, v5}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    nop

    .line 757
    nop

    .line 759
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 762
    goto :goto_0

    .line 760
    :catch_0
    move-exception v4

    .line 761
    .local v4, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return-object v5

    .line 757
    .end local v5    # "result":[B
    .end local v6    # "dataInputStream":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 753
    :catch_1
    move-exception v5

    .line 754
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file, IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 755
    nop

    .line 757
    if-eqz v3, :cond_0

    .line 759
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 762
    goto :goto_1

    .line 760
    :catch_2
    move-exception v6

    .line 761
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-object v4

    .line 750
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 751
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file, FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 752
    nop

    .line 757
    if-eqz v3, :cond_1

    .line 759
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 762
    goto :goto_2

    .line 760
    :catch_4
    move-exception v6

    .line 761
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-object v4

    .line 757
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    if-eqz v3, :cond_2

    .line 759
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 762
    goto :goto_4

    .line 760
    :catch_5
    move-exception v5

    .line 761
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v4
.end method

.method protected onPostExecute([B)V
    .locals 3
    .param p1, "result"    # [B

    .line 768
    if-eqz p1, :cond_0

    .line 769
    iget-object v0, p0, Lorg/nativescript/widgets/Async$File$ReadTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$File$ReadTask;->context:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onComplete(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 771
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/Async$File$ReadTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$File$ReadTask;->context:Ljava/lang/Object;

    const-string v2, "ReadTask returns no result."

    invoke-interface {v0, v2, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 773
    :goto_0
    return-void
.end method
