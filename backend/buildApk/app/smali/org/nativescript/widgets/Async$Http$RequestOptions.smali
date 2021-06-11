.class public Lorg/nativescript/widgets/Async$Http$RequestOptions;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async$Http;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestOptions"
.end annotation


# instance fields
.field public content:Ljava/lang/Object;

.field public dontFollowRedirects:Z

.field public headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/nativescript/widgets/Async$Http$KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public method:Ljava/lang/String;

.field public screenHeight:I

.field public screenWidth:I

.field public timeout:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const/4 v0, -0x1

    iput v0, p0, Lorg/nativescript/widgets/Async$Http$RequestOptions;->timeout:I

    .line 332
    iput v0, p0, Lorg/nativescript/widgets/Async$Http$RequestOptions;->screenWidth:I

    .line 333
    iput v0, p0, Lorg/nativescript/widgets/Async$Http$RequestOptions;->screenHeight:I

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/nativescript/widgets/Async$Http$RequestOptions;->dontFollowRedirects:Z

    return-void
.end method


# virtual methods
.method public addHeaders(Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 337
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Http$RequestOptions;->headers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 338
    return-void

    .line 340
    :cond_0
    const/4 v1, 0x0

    .line 342
    .local v1, "hasAcceptHeader":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/Async$Http$KeyValuePair;

    .line 343
    .local v2, "pair":Lorg/nativescript/widgets/Async$Http$KeyValuePair;
    iget-object v3, v2, Lorg/nativescript/widgets/Async$Http$KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "key":Ljava/lang/String;
    iget-object v4, v2, Lorg/nativescript/widgets/Async$Http$KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "accept-encoding"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    const/4 v1, 0x1

    .line 348
    .end local v2    # "pair":Lorg/nativescript/widgets/Async$Http$KeyValuePair;
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 351
    :cond_2
    if-nez v1, :cond_3

    .line 352
    const-string v0, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {p1, v0, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_3
    return-void
.end method

.method public writeContent(Ljava/net/HttpURLConnection;Ljava/util/Stack;)V
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
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

    .line 357
    .local p2, "openedStreams":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/Closeable;>;"
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Http$RequestOptions;->content:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 358
    return-void

    .line 361
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 362
    .local v0, "outStream":Ljava/io/OutputStream;
    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lorg/nativescript/widgets/Async$Http$RequestOptions;->content:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 365
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 366
    .local v1, "writer":Ljava/io/OutputStreamWriter;
    invoke-virtual {p2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v2, p0, Lorg/nativescript/widgets/Async$Http$RequestOptions;->content:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 369
    .end local v1    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 370
    :cond_1
    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 372
    :goto_0
    return-void
.end method
