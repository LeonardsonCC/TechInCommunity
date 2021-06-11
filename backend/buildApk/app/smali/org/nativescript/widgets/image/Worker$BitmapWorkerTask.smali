.class Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;
.super Lorg/nativescript/widgets/image/AsyncTask;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/nativescript/widgets/image/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/nativescript/widgets/image/BitmapOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheImage:Z

.field private mCacheUri:Ljava/lang/String;

.field private mDecodeHeight:I

.field private mDecodeWidth:I

.field private mKeepAspectRatio:Z

.field private final mOnImageLoadedListener:Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;

.field private mUri:Ljava/lang/String;

.field final synthetic this$0:Lorg/nativescript/widgets/image/Worker;


# direct methods
.method public constructor <init>(Lorg/nativescript/widgets/image/Worker;Ljava/lang/String;Lorg/nativescript/widgets/image/BitmapOwner;IIZZ)V
    .locals 9
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "owner"    # Lorg/nativescript/widgets/image/BitmapOwner;
    .param p4, "decodeWidth"    # I
    .param p5, "decodeHeight"    # I
    .param p6, "keepAspectRatio"    # Z
    .param p7, "cacheImage"    # Z

    .line 291
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;-><init>(Lorg/nativescript/widgets/image/Worker;Ljava/lang/String;Lorg/nativescript/widgets/image/BitmapOwner;IIZZLorg/nativescript/widgets/image/Worker$OnImageLoadedListener;)V

    .line 292
    return-void
.end method

.method public constructor <init>(Lorg/nativescript/widgets/image/Worker;Ljava/lang/String;Lorg/nativescript/widgets/image/BitmapOwner;IIZZLorg/nativescript/widgets/image/Worker$OnImageLoadedListener;)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "owner"    # Lorg/nativescript/widgets/image/BitmapOwner;
    .param p4, "decodeWidth"    # I
    .param p5, "decodeHeight"    # I
    .param p6, "keepAspectRatio"    # Z
    .param p7, "cacheImage"    # Z
    .param p8, "listener"    # Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;

    .line 294
    iput-object p1, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-direct {p0}, Lorg/nativescript/widgets/image/AsyncTask;-><init>()V

    .line 295
    iput p4, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mDecodeWidth:I

    .line 296
    iput p5, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mDecodeHeight:I

    .line 297
    iput-boolean p6, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mKeepAspectRatio:Z

    .line 298
    iput-boolean p7, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mCacheImage:Z

    .line 299
    iput-object p2, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mUri:Ljava/lang/String;

    .line 300
    invoke-static {p2, p5, p4}, Lorg/nativescript/widgets/image/Worker;->access$100(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mCacheUri:Ljava/lang/String;

    .line 301
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 302
    iput-object p8, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mOnImageLoadedListener:Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;

    .line 303
    return-void
.end method

.method static synthetic access$000(Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;

    .line 280
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method private getAttachedOwner()Lorg/nativescript/widgets/image/BitmapOwner;
    .locals 3

    .line 404
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/image/BitmapOwner;

    .line 405
    .local v0, "owner":Lorg/nativescript/widgets/image/BitmapOwner;
    invoke-static {v0}, Lorg/nativescript/widgets/image/Worker;->access$500(Lorg/nativescript/widgets/image/BitmapOwner;)Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;

    move-result-object v1

    .line 407
    .local v1, "bitmapWorkerTask":Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;
    if-ne p0, v1, :cond_0

    .line 408
    return-object v0

    .line 411
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .line 310
    sget v0, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInBackground - starting work: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JS"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    const/4 v0, 0x0

    .line 318
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-static {v1}, Lorg/nativescript/widgets/image/Worker;->access$200(Lorg/nativescript/widgets/image/Worker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 319
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    iget-boolean v2, v2, Lorg/nativescript/widgets/image/Worker;->mPauseWork:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 321
    :try_start_1
    iget-object v2, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-static {v2}, Lorg/nativescript/widgets/image/Worker;->access$200(Lorg/nativescript/widgets/image/Worker;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 322
    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    .line 324
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->getAttachedOwner()Lorg/nativescript/widgets/image/BitmapOwner;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    .line 331
    invoke-static {v1}, Lorg/nativescript/widgets/image/Worker;->access$300(Lorg/nativescript/widgets/image/Worker;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 332
    iget-object v2, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    iget-object v3, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mUri:Ljava/lang/String;

    iget v4, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mDecodeWidth:I

    iget v5, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mDecodeHeight:I

    iget-boolean v6, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mKeepAspectRatio:Z

    iget-boolean v7, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mCacheImage:Z

    invoke-virtual/range {v2 .. v7}, Lorg/nativescript/widgets/image/Worker;->processBitmap(Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    :cond_2
    if-eqz v0, :cond_4

    .line 340
    iget-object v1, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-static {v1}, Lorg/nativescript/widgets/image/Worker;->access$400(Lorg/nativescript/widgets/image/Worker;)Lorg/nativescript/widgets/image/Cache;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mCacheImage:Z

    if-eqz v1, :cond_4

    .line 341
    sget v1, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v1, :cond_3

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBitmapToCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mCacheUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JS"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_3
    iget-object v1, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-static {v1}, Lorg/nativescript/widgets/image/Worker;->access$400(Lorg/nativescript/widgets/image/Worker;)Lorg/nativescript/widgets/image/Cache;

    move-result-object v1

    iget-object v2, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mCacheUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/nativescript/widgets/image/Cache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 348
    :cond_4
    sget v1, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v1, :cond_5

    .line 349
    const-string v1, "JS"

    const-string v2, "doInBackground - finished work"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_5
    return-object v0

    .line 324
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 280
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "value"    # Landroid/graphics/Bitmap;

    .line 393
    invoke-super {p0, p1}, Lorg/nativescript/widgets/image/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-static {v0}, Lorg/nativescript/widgets/image/Worker;->access$200(Lorg/nativescript/widgets/image/Worker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-static {v1}, Lorg/nativescript/widgets/image/Worker;->access$200(Lorg/nativescript/widgets/image/Worker;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 396
    monitor-exit v0

    .line 397
    return-void

    .line 396
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 280
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "value"    # Landroid/graphics/Bitmap;

    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "success":Z
    invoke-virtual {p0}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-static {v1}, Lorg/nativescript/widgets/image/Worker;->access$300(Lorg/nativescript/widgets/image/Worker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    :cond_0
    const/4 p1, 0x0

    .line 366
    :cond_1
    sget v1, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    const-string v2, "JS"

    if-lez v1, :cond_2

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute - setting bitmap for: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " src: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_2
    invoke-direct {p0}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->getAttachedOwner()Lorg/nativescript/widgets/image/BitmapOwner;

    move-result-object v1

    .line 371
    .local v1, "owner":Lorg/nativescript/widgets/image/BitmapOwner;
    sget v3, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v3, :cond_3

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostExecute - current ImageView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_3
    const-string v3, " to: "

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    .line 376
    const/4 v0, 0x1

    .line 377
    sget v4, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v4, :cond_4

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set ImageDrawable on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_4
    invoke-interface {v1, p1}, Lorg/nativescript/widgets/image/BitmapOwner;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 383
    :cond_5
    iget-object v4, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mOnImageLoadedListener:Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;

    if-eqz v4, :cond_7

    .line 384
    sget v4, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v4, :cond_6

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnImageLoadedListener on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_6
    iget-object v2, p0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->mOnImageLoadedListener:Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;

    invoke-interface {v2, v0}, Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;->onImageLoaded(Z)V

    .line 389
    :cond_7
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 280
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
