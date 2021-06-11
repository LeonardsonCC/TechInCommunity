.class Lorg/nativescript/widgets/Async$File$ReadTextTask;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async$File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReadTextTask"
.end annotation


# instance fields
.field private callback:Lorg/nativescript/widgets/Async$CompleteCallback;

.field private context:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;
    .param p2, "context"    # Ljava/lang/Object;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-object p1, p0, Lorg/nativescript/widgets/Async$File$ReadTextTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 675
    iput-object p2, p0, Lorg/nativescript/widgets/Async$File$ReadTextTask;->context:Ljava/lang/Object;

    .line 676
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .line 679
    const-string v0, "Failed to close stream, IOException: "

    const-string v1, "Async"

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .local v2, "javaFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 683
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 685
    new-instance v5, Ljava/io/InputStreamReader;

    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 687
    .local v5, "reader":Ljava/io/InputStreamReader;
    const v6, 0x14000

    invoke-static {v6}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 688
    .local v6, "buffer":Ljava/nio/CharBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .local v7, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v5, v6}, Ljava/io/InputStreamReader;->read(Ljava/nio/CharBuffer;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 691
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 692
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 696
    :cond_0
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 698
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    nop

    .line 711
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 714
    goto :goto_1

    .line 712
    :catch_0
    move-exception v8

    .line 713
    .local v8, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .end local v8    # "e":Ljava/io/IOException;
    :goto_1
    return-object v4

    .line 709
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .end local v6    # "buffer":Ljava/nio/CharBuffer;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    goto/16 :goto_5

    .line 705
    :catch_1
    move-exception v5

    .line 706
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

    .line 707
    nop

    .line 709
    if-eqz v3, :cond_1

    .line 711
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 714
    goto :goto_2

    .line 712
    :catch_2
    move-exception v6

    .line 713
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

    .line 707
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-object v4

    .line 702
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 703
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file, UnsupportedEncodingException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 704
    nop

    .line 709
    if-eqz v3, :cond_2

    .line 711
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 714
    goto :goto_3

    .line 712
    :catch_4
    move-exception v6

    .line 713
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

    .line 704
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-object v4

    .line 699
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v5

    .line 700
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_6
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
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 701
    nop

    .line 709
    if-eqz v3, :cond_3

    .line 711
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 714
    goto :goto_4

    .line 712
    :catch_6
    move-exception v6

    .line 713
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

    .line 701
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    return-object v4

    .line 709
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_5
    if-eqz v3, :cond_4

    .line 711
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 714
    goto :goto_6

    .line 712
    :catch_7
    move-exception v5

    .line 713
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

    .line 716
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_6
    goto :goto_8

    :goto_7
    throw v4

    :goto_8
    goto :goto_7
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .line 720
    if-eqz p1, :cond_0

    .line 721
    iget-object v0, p0, Lorg/nativescript/widgets/Async$File$ReadTextTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$File$ReadTextTask;->context:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onComplete(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 723
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/Async$File$ReadTextTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$File$ReadTextTask;->context:Ljava/lang/Object;

    const-string v2, "ReadTextTask returns no result."

    invoke-interface {v0, v2, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    :goto_0
    return-void
.end method
