.class public abstract Lorg/nativescript/widgets/image/Worker;
.super Ljava/lang/Object;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;,
        Lorg/nativescript/widgets/image/Worker$AsyncDrawable;,
        Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;,
        Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;
    }
.end annotation


# static fields
.field protected static final CONTENT_PREFIX:Ljava/lang/String; = "content://"

.field private static final FADE_IN_TIME:I = 0xc8

.field protected static final FILE_PREFIX:Ljava/lang/String; = "file:///"

.field private static final MESSAGE_CLEAR:I = 0x0

.field private static final MESSAGE_CLOSE:I = 0x3

.field private static final MESSAGE_FLUSH:I = 0x2

.field private static final MESSAGE_INIT_DISK_CACHE:I = 0x1

.field protected static final RESOURCE_PREFIX:Ljava/lang/String; = "res://"

.field static final TAG:Ljava/lang/String; = "JS"

.field protected static debuggable:I


# instance fields
.field private mCache:Lorg/nativescript/widgets/image/Cache;

.field private mExitTasksEarly:Z

.field private mFadeInBitmap:Z

.field private mLoadingBitmap:Landroid/graphics/Bitmap;

.field protected mPauseWork:Z

.field private final mPauseWorkLock:Ljava/lang/Object;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const/4 v0, -0x1

    sput v0, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const-string v0, "JS"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/nativescript/widgets/image/Worker;->mFadeInBitmap:Z

    .line 49
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/nativescript/widgets/image/Worker;->mExitTasksEarly:Z

    .line 50
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/nativescript/widgets/image/Worker;->mPauseWorkLock:Ljava/lang/Object;

    .line 52
    iput-boolean v2, p0, Lorg/nativescript/widgets/image/Worker;->mPauseWork:Z

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lorg/nativescript/widgets/image/Worker;->mResources:Landroid/content/res/Resources;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lorg/nativescript/widgets/image/Worker;->mResolver:Landroid/content/ContentResolver;

    .line 66
    sget v3, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-gez v3, :cond_2

    .line 68
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 69
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 70
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    const-string v5, "debugImageCache"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 71
    .local v5, "debugLayouts":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput v1, Lorg/nativescript/widgets/image/Worker;->debuggable:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "debugLayouts":Ljava/lang/Boolean;
    goto :goto_2

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/NullPointerException;
    sput v2, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 72
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput v2, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 37
    invoke-static {p0, p1, p2}, Lorg/nativescript/widgets/image/Worker;->createCacheUri(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/nativescript/widgets/image/Worker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/Worker;

    .line 37
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker;->mPauseWorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lorg/nativescript/widgets/image/Worker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/Worker;

    .line 37
    iget-boolean v0, p0, Lorg/nativescript/widgets/image/Worker;->mExitTasksEarly:Z

    return v0
.end method

.method static synthetic access$400(Lorg/nativescript/widgets/image/Worker;)Lorg/nativescript/widgets/image/Cache;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/Worker;

    .line 37
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker;->mCache:Lorg/nativescript/widgets/image/Cache;

    return-object v0
.end method

.method static synthetic access$500(Lorg/nativescript/widgets/image/BitmapOwner;)Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/BitmapOwner;

    .line 37
    invoke-static {p0}, Lorg/nativescript/widgets/image/Worker;->getBitmapWorkerTask(Lorg/nativescript/widgets/image/BitmapOwner;)Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method public static cancelPotentialWork(Ljava/lang/String;Lorg/nativescript/widgets/image/BitmapOwner;)Z
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "owner"    # Lorg/nativescript/widgets/image/BitmapOwner;

    .line 234
    invoke-static {p1}, Lorg/nativescript/widgets/image/Worker;->getBitmapWorkerTask(Lorg/nativescript/widgets/image/BitmapOwner;)Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;

    move-result-object v0

    .line 236
    .local v0, "bitmapWorkerTask":Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 237
    invoke-static {v0}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->access$000(Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "mUri":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 239
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->cancel(Z)Z

    .line 240
    sget v3, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v3, :cond_2

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelPotentialWork - cancelled work for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JS"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v2    # "mUri":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public static cancelWork(Lorg/nativescript/widgets/image/BitmapOwner;)V
    .locals 3
    .param p0, "owner"    # Lorg/nativescript/widgets/image/BitmapOwner;

    .line 218
    invoke-static {p0}, Lorg/nativescript/widgets/image/Worker;->getBitmapWorkerTask(Lorg/nativescript/widgets/image/BitmapOwner;)Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;

    move-result-object v0

    .line 219
    .local v0, "bitmapWorkerTask":Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;
    if-eqz v0, :cond_0

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->cancel(Z)Z

    .line 221
    sget v1, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelWork - cancelled work for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->access$000(Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JS"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    return-void
.end method

.method private static createCacheUri(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "decodeHeight"    # I
    .param p2, "decodeWidth"    # I

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height%%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width%%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 274
    return-object p0
.end method

.method private static getBitmapWorkerTask(Lorg/nativescript/widgets/image/BitmapOwner;)Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;
    .locals 3
    .param p0, "owner"    # Lorg/nativescript/widgets/image/BitmapOwner;

    .line 257
    if-eqz p0, :cond_0

    .line 258
    invoke-interface {p0}, Lorg/nativescript/widgets/image/BitmapOwner;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 259
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lorg/nativescript/widgets/image/Worker$AsyncDrawable;

    if-eqz v1, :cond_0

    .line 260
    move-object v1, v0

    check-cast v1, Lorg/nativescript/widgets/image/Worker$AsyncDrawable;

    .line 261
    .local v1, "asyncDrawable":Lorg/nativescript/widgets/image/Worker$AsyncDrawable;
    invoke-virtual {v1}, Lorg/nativescript/widgets/image/Worker$AsyncDrawable;->getBitmapWorkerTask()Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;

    move-result-object v2

    return-object v2

    .line 264
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "asyncDrawable":Lorg/nativescript/widgets/image/Worker$AsyncDrawable;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addImageCache(Lorg/nativescript/widgets/image/Cache;)V
    .locals 0
    .param p1, "imageCache"    # Lorg/nativescript/widgets/image/Cache;

    .line 180
    iput-object p1, p0, Lorg/nativescript/widgets/image/Worker;->mCache:Lorg/nativescript/widgets/image/Cache;

    .line 181
    return-void
.end method

.method public clearCache()V
    .locals 4

    .line 534
    new-instance v0, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;-><init>(Lorg/nativescript/widgets/image/Worker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lorg/nativescript/widgets/image/AsyncTask;

    .line 535
    return-void
.end method

.method protected clearCacheInternal()V
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker;->mCache:Lorg/nativescript/widgets/image/Cache;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Lorg/nativescript/widgets/image/Cache;->clearCache()V

    .line 521
    :cond_0
    return-void
.end method

.method public closeCache()V
    .locals 4

    .line 542
    new-instance v0, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;-><init>(Lorg/nativescript/widgets/image/Worker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lorg/nativescript/widgets/image/AsyncTask;

    .line 543
    return-void
.end method

.method protected abstract closeCacheInternal()V
.end method

.method public flushCache()V
    .locals 4

    .line 538
    new-instance v0, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;-><init>(Lorg/nativescript/widgets/image/Worker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lorg/nativescript/widgets/image/AsyncTask;

    .line 539
    return-void
.end method

.method protected abstract flushCacheInternal()V
.end method

.method protected getCache()Lorg/nativescript/widgets/image/Cache;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker;->mCache:Lorg/nativescript/widgets/image/Cache;

    return-object v0
.end method

.method public initCache()V
    .locals 4

    .line 530
    new-instance v0, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;

    invoke-direct {v0, p0}, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;-><init>(Lorg/nativescript/widgets/image/Worker;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;->execute([Ljava/lang/Object;)Lorg/nativescript/widgets/image/AsyncTask;

    .line 531
    return-void
.end method

.method protected abstract initDiskCacheInternal()V
.end method

.method public loadImage(Ljava/lang/String;Lorg/nativescript/widgets/image/BitmapOwner;IIZZZLorg/nativescript/widgets/image/Worker$OnImageLoadedListener;)V
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "owner"    # Lorg/nativescript/widgets/image/BitmapOwner;
    .param p3, "decodeWidth"    # I
    .param p4, "decodeHeight"    # I
    .param p5, "keepAspectRatio"    # Z
    .param p6, "useCache"    # Z
    .param p7, "async"    # Z
    .param p8, "listener"    # Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;

    .line 101
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p8

    if-nez v10, :cond_0

    .line 102
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 106
    .local v0, "value":Landroid/graphics/Bitmap;
    move-object/from16 v1, p1

    .line 108
    .local v1, "cacheUri":Ljava/lang/String;
    sget v2, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    const-string v6, " to: "

    const-string v7, "JS"

    if-lez v2, :cond_1

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImage on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    iget-object v2, v9, Lorg/nativescript/widgets/image/Worker;->mCache:Lorg/nativescript/widgets/image/Cache;

    if-eqz v2, :cond_2

    if-eqz p6, :cond_2

    .line 114
    move/from16 v13, p3

    move/from16 v14, p4

    invoke-static {v10, v14, v13}, Lorg/nativescript/widgets/image/Worker;->createCacheUri(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v2, v9, Lorg/nativescript/widgets/image/Worker;->mCache:Lorg/nativescript/widgets/image/Cache;

    invoke-virtual {v2, v1}, Lorg/nativescript/widgets/image/Cache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v8, v0

    move-object v15, v1

    goto :goto_0

    .line 112
    :cond_2
    move/from16 v13, p3

    move/from16 v14, p4

    .line 119
    move-object v8, v0

    move-object v15, v1

    .end local v0    # "value":Landroid/graphics/Bitmap;
    .end local v1    # "cacheUri":Ljava/lang/String;
    .local v8, "value":Landroid/graphics/Bitmap;
    .local v15, "cacheUri":Ljava/lang/String;
    :goto_0
    if-nez v8, :cond_4

    if-nez p7, :cond_4

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/nativescript/widgets/image/Worker;->processBitmap(Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 122
    if-eqz v8, :cond_4

    .line 123
    iget-object v0, v9, Lorg/nativescript/widgets/image/Worker;->mCache:Lorg/nativescript/widgets/image/Cache;

    if-eqz v0, :cond_4

    if-eqz p6, :cond_4

    .line 124
    sget v0, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v0, :cond_3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadImage.addBitmapToCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", src: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    iget-object v0, v9, Lorg/nativescript/widgets/image/Worker;->mCache:Lorg/nativescript/widgets/image/Cache;

    invoke-virtual {v0, v15, v8}, Lorg/nativescript/widgets/image/Cache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 132
    :cond_4
    if-eqz v8, :cond_8

    .line 134
    sget v0, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v0, :cond_5

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set ImageBitmap on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_5
    invoke-interface {v11, v8}, Lorg/nativescript/widgets/image/BitmapOwner;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    if-eqz v12, :cond_7

    .line 139
    sget v0, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v0, :cond_6

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnImageLoadedListener on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_6
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;->onImageLoaded(Z)V

    move-object/from16 v17, v8

    goto :goto_1

    .line 138
    :cond_7
    move-object/from16 v17, v8

    goto :goto_1

    .line 144
    :cond_8
    invoke-static/range {p1 .. p2}, Lorg/nativescript/widgets/image/Worker;->cancelPotentialWork(Ljava/lang/String;Lorg/nativescript/widgets/image/BitmapOwner;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 145
    new-instance v16, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v17, v8

    .end local v8    # "value":Landroid/graphics/Bitmap;
    .local v17, "value":Landroid/graphics/Bitmap;
    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;-><init>(Lorg/nativescript/widgets/image/Worker;Ljava/lang/String;Lorg/nativescript/widgets/image/BitmapOwner;IIZZLorg/nativescript/widgets/image/Worker$OnImageLoadedListener;)V

    .line 146
    .local v0, "task":Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;
    new-instance v1, Lorg/nativescript/widgets/image/Worker$AsyncDrawable;

    iget-object v2, v9, Lorg/nativescript/widgets/image/Worker;->mResources:Landroid/content/res/Resources;

    iget-object v3, v9, Lorg/nativescript/widgets/image/Worker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3, v0}, Lorg/nativescript/widgets/image/Worker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;)V

    .line 148
    .local v1, "asyncDrawable":Lorg/nativescript/widgets/image/Worker$AsyncDrawable;
    invoke-interface {v11, v1}, Lorg/nativescript/widgets/image/BitmapOwner;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    sget-object v2, Lorg/nativescript/widgets/image/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lorg/nativescript/widgets/image/AsyncTask;

    goto :goto_1

    .line 144
    .end local v0    # "task":Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;
    .end local v1    # "asyncDrawable":Lorg/nativescript/widgets/image/Worker$AsyncDrawable;
    .end local v17    # "value":Landroid/graphics/Bitmap;
    .restart local v8    # "value":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v17, v8

    .line 155
    .end local v8    # "value":Landroid/graphics/Bitmap;
    .restart local v17    # "value":Landroid/graphics/Bitmap;
    :goto_1
    return-void
.end method

.method protected abstract processBitmap(Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;
.end method

.method public removeBitmap(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker;->mCache:Lorg/nativescript/widgets/image/Cache;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Lorg/nativescript/widgets/image/Cache;->reduceDisplayedCounter(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setExitTasksEarly(Z)V
    .locals 1
    .param p1, "exitTasksEarly"    # Z

    .line 191
    iput-boolean p1, p0, Lorg/nativescript/widgets/image/Worker;->mExitTasksEarly:Z

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/image/Worker;->setPauseWork(Z)V

    .line 193
    return-void
.end method

.method public setImageFadeIn(Z)V
    .locals 0
    .param p1, "fadeIn"    # Z

    .line 187
    iput-boolean p1, p0, Lorg/nativescript/widgets/image/Worker;->mFadeInBitmap:Z

    .line 188
    return-void
.end method

.method public setLoadingImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 172
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/nativescript/widgets/image/Worker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 173
    return-void
.end method

.method public setLoadingImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 163
    iput-object p1, p0, Lorg/nativescript/widgets/image/Worker;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 164
    return-void
.end method

.method public setPauseWork(Z)V
    .locals 2
    .param p1, "pauseWork"    # Z

    .line 487
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_0
    iput-boolean p1, p0, Lorg/nativescript/widgets/image/Worker;->mPauseWork:Z

    .line 489
    if-nez p1, :cond_0

    .line 490
    iget-object v1, p0, Lorg/nativescript/widgets/image/Worker;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 492
    :cond_0
    monitor-exit v0

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
