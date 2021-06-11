.class Lorg/nativescript/widgets/Async$File$WriteTextTask;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async$File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WriteTextTask"
.end annotation


# instance fields
.field private callback:Lorg/nativescript/widgets/Async$CompleteCallback;

.field private context:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;
    .param p2, "context"    # Ljava/lang/Object;

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput-object p1, p0, Lorg/nativescript/widgets/Async$File$WriteTextTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 782
    iput-object p2, p0, Lorg/nativescript/widgets/Async$File$WriteTextTask;->context:Ljava/lang/Object;

    .line 783
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Z
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .line 786
    const-string v0, "Failed to close stream, IOException: "

    const-string v1, "Async"

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 787
    .local v2, "javaFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 789
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 791
    new-instance v5, Ljava/io/OutputStreamWriter;

    const/4 v6, 0x2

    aget-object v6, p1, v6

    invoke-direct {v5, v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 793
    .local v5, "writer":Ljava/io/OutputStreamWriter;
    const/4 v6, 0x1

    aget-object v7, p1, v6

    invoke-virtual {v5, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    nop

    .line 807
    nop

    .line 809
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 812
    goto :goto_0

    .line 810
    :catch_0
    move-exception v3

    .line 811
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return v6

    .line 807
    .end local v5    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v3

    goto/16 :goto_4

    .line 803
    :catch_1
    move-exception v5

    .line 804
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write file, IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 805
    nop

    .line 807
    if-eqz v4, :cond_0

    .line 809
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 812
    goto :goto_1

    .line 810
    :catch_2
    move-exception v6

    .line 811
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

    .line 805
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return v3

    .line 800
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 801
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write file, UnsupportedEncodingException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 802
    nop

    .line 807
    if-eqz v4, :cond_1

    .line 809
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 812
    goto :goto_2

    .line 810
    :catch_4
    move-exception v6

    .line 811
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

    .line 802
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return v3

    .line 797
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v5

    .line 798
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write file, FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 799
    nop

    .line 807
    if-eqz v4, :cond_2

    .line 809
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 812
    goto :goto_3

    .line 810
    :catch_6
    move-exception v6

    .line 811
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

    .line 799
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return v3

    .line 807
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_4
    if-eqz v4, :cond_3

    .line 809
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 812
    goto :goto_5

    .line 810
    :catch_7
    move-exception v5

    .line 811
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

    .line 814
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    throw v3
.end method

.method protected onPostExecute(Z)V
    .locals 3
    .param p1, "result"    # Z

    .line 818
    if-eqz p1, :cond_0

    .line 819
    iget-object v0, p0, Lorg/nativescript/widgets/Async$File$WriteTextTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/nativescript/widgets/Async$File$WriteTextTask;->context:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/nativescript/widgets/Async$CompleteCallback;->onComplete(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/Async$File$WriteTextTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$File$WriteTextTask;->context:Ljava/lang/Object;

    const-string v2, "WriteTextTask returns no result."

    invoke-interface {v0, v2, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 823
    :goto_0
    return-void
.end method
