.class Lorg/nativescript/widgets/Async$Http$HttpRequestTask;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async$Http;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpRequestTask"
.end annotation


# instance fields
.field private callback:Lorg/nativescript/widgets/Async$CompleteCallback;

.field private context:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;
    .param p2, "context"    # Ljava/lang/Object;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p1, p0, Lorg/nativescript/widgets/Async$Http$HttpRequestTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 511
    iput-object p2, p0, Lorg/nativescript/widgets/Async$Http$HttpRequestTask;->context:Ljava/lang/Object;

    .line 512
    return-void
.end method

.method private closeOpenedStreams(Ljava/util/Stack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/io/Closeable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    .local p1, "streams":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/Closeable;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 592
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    .line 593
    .local v0, "stream":Ljava/io/Closeable;
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 594
    .end local v0    # "stream":Ljava/io/Closeable;
    goto :goto_0

    .line 595
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/nativescript/widgets/Async$Http$RequestOptions;)Lorg/nativescript/widgets/Async$Http$RequestResult;
    .locals 10
    .param p1, "params"    # [Lorg/nativescript/widgets/Async$Http$RequestOptions;

    .line 515
    const-string v0, "Failed to close opened streams, IOException: "

    const-string v1, "Async"

    new-instance v2, Lorg/nativescript/widgets/Async$Http$RequestResult;

    invoke-direct {v2}, Lorg/nativescript/widgets/Async$Http$RequestResult;-><init>()V

    .line 516
    .local v2, "result":Lorg/nativescript/widgets/Async$Http$RequestResult;
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 519
    .local v3, "openedStreams":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/Closeable;>;"
    const/4 v4, 0x0

    :try_start_0
    aget-object v5, p1, v4

    .line 520
    .local v5, "options":Lorg/nativescript/widgets/Async$Http$RequestOptions;
    new-instance v6, Ljava/net/URL;

    iget-object v7, v5, Lorg/nativescript/widgets/Async$Http$RequestOptions;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 521
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 524
    .local v7, "connection":Ljava/net/HttpURLConnection;
    iget-object v8, v5, Lorg/nativescript/widgets/Async$Http$RequestOptions;->method:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v5, Lorg/nativescript/widgets/Async$Http$RequestOptions;->method:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    const-string v8, "GET"

    .line 525
    .local v8, "requestMethod":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v5, v7}, Lorg/nativescript/widgets/Async$Http$RequestOptions;->addHeaders(Ljava/net/HttpURLConnection;)V

    .line 531
    iget v9, v5, Lorg/nativescript/widgets/Async$Http$RequestOptions;->timeout:I

    if-lez v9, :cond_1

    .line 532
    iget v9, v5, Lorg/nativescript/widgets/Async$Http$RequestOptions;->timeout:I

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 533
    iget v9, v5, Lorg/nativescript/widgets/Async$Http$RequestOptions;->timeout:I

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 537
    :cond_1
    iget-boolean v9, v5, Lorg/nativescript/widgets/Async$Http$RequestOptions;->dontFollowRedirects:Z

    if-eqz v9, :cond_2

    .line 538
    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 542
    :cond_2
    const-string v4, "DELETE"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 543
    invoke-virtual {v5, v7, v3}, Lorg/nativescript/widgets/Async$Http$RequestOptions;->writeContent(Ljava/net/HttpURLConnection;Ljava/util/Stack;)V

    .line 548
    :cond_3
    invoke-direct {p0, v3}, Lorg/nativescript/widgets/Async$Http$HttpRequestTask;->closeOpenedStreams(Ljava/util/Stack;)V

    .line 550
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 553
    invoke-virtual {v2, v7}, Lorg/nativescript/widgets/Async$Http$RequestResult;->getHeaders(Ljava/net/HttpURLConnection;)V

    .line 554
    iget-object v4, v5, Lorg/nativescript/widgets/Async$Http$RequestOptions;->url:Ljava/lang/String;

    iput-object v4, v2, Lorg/nativescript/widgets/Async$Http$RequestResult;->url:Ljava/lang/String;

    .line 555
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, v2, Lorg/nativescript/widgets/Async$Http$RequestResult;->statusCode:I

    .line 556
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/nativescript/widgets/Async$Http$RequestResult;->statusText:Ljava/lang/String;

    .line 557
    const-string v4, "HEAD"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 558
    invoke-virtual {v2, v7, v3, v5}, Lorg/nativescript/widgets/Async$Http$RequestResult;->readResponseStream(Ljava/net/HttpURLConnection;Ljava/util/Stack;Lorg/nativescript/widgets/Async$Http$RequestOptions;)V

    .line 563
    :cond_4
    invoke-direct {p0, v3}, Lorg/nativescript/widgets/Async$Http$HttpRequestTask;->closeOpenedStreams(Ljava/util/Stack;)V

    .line 565
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    nop

    .line 575
    :try_start_1
    invoke-direct {p0, v3}, Lorg/nativescript/widgets/Async$Http$HttpRequestTask;->closeOpenedStreams(Ljava/util/Stack;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 578
    goto :goto_1

    .line 576
    :catch_0
    move-exception v4

    .line 577
    .local v4, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    return-object v2

    .line 574
    .end local v5    # "options":Lorg/nativescript/widgets/Async$Http$RequestOptions;
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "requestMethod":Ljava/lang/String;
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 568
    :catch_1
    move-exception v4

    .line 570
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    iput-object v4, v2, Lorg/nativescript/widgets/Async$Http$RequestResult;->error:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    nop

    .line 575
    :try_start_3
    invoke-direct {p0, v3}, Lorg/nativescript/widgets/Async$Http$HttpRequestTask;->closeOpenedStreams(Ljava/util/Stack;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 578
    goto :goto_2

    .line 576
    :catch_2
    move-exception v5

    .line 577
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

    .line 572
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    return-object v2

    .line 575
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-direct {p0, v3}, Lorg/nativescript/widgets/Async$Http$HttpRequestTask;->closeOpenedStreams(Ljava/util/Stack;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 578
    goto :goto_4

    .line 576
    :catch_3
    move-exception v5

    .line 577
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    throw v4
.end method

.method protected onPostExecute(Lorg/nativescript/widgets/Async$Http$RequestResult;)V
    .locals 3
    .param p1, "result"    # Lorg/nativescript/widgets/Async$Http$RequestResult;

    .line 583
    if-eqz p1, :cond_0

    .line 584
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Http$HttpRequestTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$Http$HttpRequestTask;->context:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onComplete(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 586
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Http$HttpRequestTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$Http$HttpRequestTask;->context:Ljava/lang/Object;

    const-string v2, "HttpRequestTask returns no result."

    invoke-interface {v0, v2, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 588
    :goto_0
    return-void
.end method
