.class public Lorg/nativescript/widgets/Async$Http$RequestResult;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async$Http;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;
    }
.end annotation


# instance fields
.field public error:Ljava/lang/Exception;

.field public headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/nativescript/widgets/Async$Http$KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public raw:Ljava/io/ByteArrayOutputStream;

.field public responseAsImage:Landroid/graphics/Bitmap;

.field public responseAsString:Ljava/lang/String;

.field public statusCode:I

.field public statusText:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/Async$Http$RequestResult;->headers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getHeaders(Ljava/net/HttpURLConnection;)V
    .locals 9
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 386
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 387
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 389
    return-void

    .line 392
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 393
    .local v1, "size":I
    if-nez v1, :cond_1

    .line 394
    return-void

    .line 397
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 398
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 399
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 400
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lorg/nativescript/widgets/Async$Http$RequestResult;->headers:Ljava/util/ArrayList;

    new-instance v8, Lorg/nativescript/widgets/Async$Http$KeyValuePair;

    invoke-direct {v8, v4, v6}, Lorg/nativescript/widgets/Async$Http$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_1

    .line 402
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 403
    :cond_3
    return-void
.end method

.method public readResponseStream(Ljava/net/HttpURLConnection;Ljava/util/Stack;Lorg/nativescript/widgets/Async$Http$RequestOptions;)V
    .locals 18
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "options"    # Lorg/nativescript/widgets/Async$Http$RequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Stack<",
            "Ljava/io/Closeable;",
            ">;",
            "Lorg/nativescript/widgets/Async$Http$RequestOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    .local p2, "openedStreams":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/Closeable;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 408
    .local v4, "contentLength":I
    iget v0, v1, Lorg/nativescript/widgets/Async$Http$RequestResult;->statusCode:I

    const/16 v5, 0x190

    if-lt v0, v5, :cond_0

    .line 410
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    nop

    .line 413
    .local v0, "inStream":Ljava/io/InputStream;
    if-nez v0, :cond_1

    .line 416
    return-void

    .line 422
    :cond_1
    const-string v5, "Content-Encoding"

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, "encodingHeader":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "gzip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v1, Lorg/nativescript/widgets/Async$Http$RequestResult;->statusCode:I

    const/16 v8, 0xcc

    if-eq v7, v8, :cond_2

    .line 424
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v7

    goto :goto_1

    .line 427
    :cond_2
    move-object v7, v0

    .end local v0    # "inStream":Ljava/io/InputStream;
    .local v7, "inStream":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v8, 0x1000

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v9, v0

    .line 430
    .local v9, "buffer":Ljava/io/BufferedInputStream;
    invoke-virtual {v2, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const/4 v0, -0x1

    new-instance v10, Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;

    if-eq v4, v0, :cond_3

    invoke-direct {v10, v4}, Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;-><init>(I)V

    goto :goto_2

    :cond_3
    invoke-direct {v10}, Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;-><init>()V

    .line 433
    .local v10, "responseStream":Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;
    :goto_2
    invoke-virtual {v2, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    new-array v8, v8, [B

    .line 436
    .local v8, "buff":[B
    const/4 v11, -0x1

    .line 437
    .local v11, "read":I
    :goto_3
    array-length v12, v8

    const/4 v13, 0x0

    invoke-virtual {v9, v8, v13, v12}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v12

    move v11, v12

    if-eq v12, v0, :cond_4

    .line 438
    invoke-virtual {v10, v8, v13, v11}, Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;->write([BII)V

    goto :goto_3

    .line 441
    :cond_4
    iput-object v10, v1, Lorg/nativescript/widgets/Async$Http$RequestResult;->raw:Ljava/io/ByteArrayOutputStream;

    .line 442
    const/4 v8, 0x0

    .line 451
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 452
    .local v0, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 455
    invoke-virtual {v10}, Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;->buf()[B

    move-result-object v12

    invoke-virtual {v10}, Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;->size()I

    move-result v14

    invoke-static {v12, v13, v14, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 456
    iget v12, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v12, :cond_9

    iget v12, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v12, :cond_9

    .line 457
    const/4 v12, 0x1

    .line 458
    .local v12, "scale":I
    iget v14, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 459
    .local v14, "height":I
    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 461
    .local v15, "width":I
    iget v13, v3, Lorg/nativescript/widgets/Async$Http$RequestOptions;->screenWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-lez v13, :cond_5

    :try_start_1
    iget v13, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v3, Lorg/nativescript/widgets/Async$Http$RequestOptions;->screenWidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v13, v2, :cond_6

    goto :goto_4

    .line 477
    .end local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "scale":I
    .end local v14    # "height":I
    .end local v15    # "width":I
    :catchall_0
    move-exception v0

    move/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_7

    .line 461
    .restart local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "scale":I
    .restart local v14    # "height":I
    .restart local v15    # "width":I
    :cond_5
    :goto_4
    :try_start_2
    iget v2, v3, Lorg/nativescript/widgets/Async$Http$RequestOptions;->screenHeight:I

    if-lez v2, :cond_7

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v13, v3, Lorg/nativescript/widgets/Async$Http$RequestOptions;->screenHeight:I

    if-le v2, v13, :cond_7

    .line 463
    :cond_6
    div-int/lit8 v2, v14, 0x2

    .line 464
    .local v2, "halfHeight":I
    div-int/lit8 v13, v15, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 468
    .local v13, "halfWidth":I
    :goto_5
    move/from16 v16, v4

    .end local v4    # "contentLength":I
    .local v16, "contentLength":I
    :try_start_3
    div-int v4, v13, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v17, v5

    .end local v5    # "encodingHeader":Ljava/lang/String;
    .local v17, "encodingHeader":Ljava/lang/String;
    :try_start_4
    iget v5, v3, Lorg/nativescript/widgets/Async$Http$RequestOptions;->screenWidth:I

    if-le v4, v5, :cond_8

    div-int v4, v2, v12

    iget v5, v3, Lorg/nativescript/widgets/Async$Http$RequestOptions;->screenHeight:I

    if-le v4, v5, :cond_8

    .line 469
    mul-int/lit8 v12, v12, 0x2

    move/from16 v4, v16

    move-object/from16 v5, v17

    goto :goto_5

    .line 477
    .end local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "halfHeight":I
    .end local v12    # "scale":I
    .end local v13    # "halfWidth":I
    .end local v14    # "height":I
    .end local v15    # "width":I
    .end local v17    # "encodingHeader":Ljava/lang/String;
    .restart local v5    # "encodingHeader":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "encodingHeader":Ljava/lang/String;
    .restart local v17    # "encodingHeader":Ljava/lang/String;
    goto :goto_7

    .line 461
    .end local v16    # "contentLength":I
    .end local v17    # "encodingHeader":Ljava/lang/String;
    .restart local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "contentLength":I
    .restart local v5    # "encodingHeader":Ljava/lang/String;
    .restart local v12    # "scale":I
    .restart local v14    # "height":I
    .restart local v15    # "width":I
    :cond_7
    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 473
    .end local v4    # "contentLength":I
    .end local v5    # "encodingHeader":Ljava/lang/String;
    .restart local v16    # "contentLength":I
    .restart local v17    # "encodingHeader":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 474
    iput v12, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 475
    invoke-virtual {v10}, Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;->buf()[B

    move-result-object v2

    invoke-virtual {v10}, Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lorg/nativescript/widgets/Async$Http$RequestResult;->responseAsImage:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    .line 477
    .end local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "scale":I
    .end local v14    # "height":I
    .end local v15    # "width":I
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 456
    .end local v16    # "contentLength":I
    .end local v17    # "encodingHeader":Ljava/lang/String;
    .restart local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "contentLength":I
    .restart local v5    # "encodingHeader":Ljava/lang/String;
    :cond_9
    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 479
    .end local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "contentLength":I
    .end local v5    # "encodingHeader":Ljava/lang/String;
    .restart local v16    # "contentLength":I
    .restart local v17    # "encodingHeader":Ljava/lang/String;
    :goto_6
    goto :goto_8

    .line 477
    .end local v16    # "contentLength":I
    .end local v17    # "encodingHeader":Ljava/lang/String;
    .restart local v4    # "contentLength":I
    .restart local v5    # "encodingHeader":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 478
    .end local v4    # "contentLength":I
    .end local v5    # "encodingHeader":Ljava/lang/String;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v16    # "contentLength":I
    .restart local v17    # "encodingHeader":Ljava/lang/String;
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode byte array, Throwable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Async"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_8
    iget-object v0, v1, Lorg/nativescript/widgets/Async$Http$RequestResult;->responseAsImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 483
    invoke-virtual {v10}, Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/nativescript/widgets/Async$Http$RequestResult;->responseAsString:Ljava/lang/String;

    .line 485
    :cond_a
    return-void
.end method
