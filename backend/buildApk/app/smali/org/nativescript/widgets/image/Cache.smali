.class public Lorg/nativescript/widgets/image/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/image/Cache$CacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x1400

.field private static final TAG:Ljava/lang/String; = "JS"

.field private static instance:Lorg/nativescript/widgets/image/Cache;


# instance fields
.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoryCacheUsage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mParams:Lorg/nativescript/widgets/image/Cache$CacheParams;

.field private mReusableBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/nativescript/widgets/image/Cache;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/Cache;

    .line 49
    iget-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCacheUsage:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/nativescript/widgets/image/Cache;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/Cache;

    .line 49
    iget-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mReusableBitmaps:Ljava/util/Set;

    return-object v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 388
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "hex":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 390
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .end local v2    # "hex":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z
    .locals 6
    .param p0, "candidate"    # Landroid/graphics/Bitmap;
    .param p1, "targetOptions"    # Landroid/graphics/BitmapFactory$Options;

    .line 315
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasKitKat()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 317
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v0, v3, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v0, v3, :cond_0

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 317
    :goto_0
    return v1

    .line 324
    :cond_1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v0, v3

    .line 325
    .local v0, "width":I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v3, v4

    .line 326
    .local v3, "height":I
    mul-int v4, v0, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v5}, Lorg/nativescript/widgets/image/Cache;->getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I

    move-result v5

    mul-int v4, v4, v5

    .line 327
    .local v4, "byteCount":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v5

    if-gt v4, v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 409
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0

    .line 413
    :cond_0
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasHoneycombMR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0

    .line 418
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method private static getBytesPerPixel(Landroid/graphics/Bitmap$Config;)I
    .locals 2
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;

    .line 338
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_0

    .line 339
    const/4 v0, 0x4

    return v0

    .line 340
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    if-ne p0, v0, :cond_1

    .line 341
    return v1

    .line 342
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_2

    .line 343
    return v1

    .line 344
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_3

    .line 345
    return v1

    .line 347
    :cond_3
    return v1
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .line 360
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    invoke-static {}, Lorg/nativescript/widgets/image/Cache;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/nativescript/widgets/image/Cache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 364
    .local v0, "cacheFilePath":Ljava/io/File;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "cachePath":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 443
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasFroyo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasKitKat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 446
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 453
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getInstance(Lorg/nativescript/widgets/image/Cache$CacheParams;)Lorg/nativescript/widgets/image/Cache;
    .locals 2
    .param p0, "cacheParams"    # Lorg/nativescript/widgets/image/Cache$CacheParams;

    .line 81
    sget-object v0, Lorg/nativescript/widgets/image/Cache;->instance:Lorg/nativescript/widgets/image/Cache;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lorg/nativescript/widgets/image/Cache;

    invoke-direct {v0}, Lorg/nativescript/widgets/image/Cache;-><init>()V

    sput-object v0, Lorg/nativescript/widgets/image/Cache;->instance:Lorg/nativescript/widgets/image/Cache;

    .line 85
    :cond_0
    sget-object v0, Lorg/nativescript/widgets/image/Cache;->instance:Lorg/nativescript/widgets/image/Cache;

    iget-object v1, v0, Lorg/nativescript/widgets/image/Cache;->mParams:Lorg/nativescript/widgets/image/Cache$CacheParams;

    if-eq v1, p0, :cond_1

    .line 86
    invoke-direct {v0, p0}, Lorg/nativescript/widgets/image/Cache;->init(Lorg/nativescript/widgets/image/Cache$CacheParams;)V

    .line 89
    :cond_1
    sget-object v0, Lorg/nativescript/widgets/image/Cache;->instance:Lorg/nativescript/widgets/image/Cache;

    return-object v0
.end method

.method public static getUsableSpace(Ljava/io/File;)J
    .locals 5
    .param p0, "path"    # Ljava/io/File;

    .line 465
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0

    .line 468
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, "stats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long v1, v1, v3

    return-wide v1
.end method

.method public static hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 375
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 376
    .local v0, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 377
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lorg/nativescript/widgets/image/Cache;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 380
    .local v0, "cacheKey":Ljava/lang/String;
    goto :goto_0

    .line 378
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 381
    .local v0, "cacheKey":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private init(Lorg/nativescript/widgets/image/Cache$CacheParams;)V
    .locals 2
    .param p1, "cacheParams"    # Lorg/nativescript/widgets/image/Cache$CacheParams;

    .line 98
    invoke-virtual {p0}, Lorg/nativescript/widgets/image/Cache;->clearCache()V

    .line 99
    iget-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mReusableBitmaps:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mReusableBitmaps:Ljava/util/Set;

    .line 104
    :cond_0
    iput-object p1, p0, Lorg/nativescript/widgets/image/Cache;->mParams:Lorg/nativescript/widgets/image/Cache$CacheParams;

    .line 107
    iget-boolean v0, p1, Lorg/nativescript/widgets/image/Cache$CacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_3

    .line 108
    sget v0, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v0, :cond_1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Memory cache created (size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/nativescript/widgets/image/Cache;->mParams:Lorg/nativescript/widgets/image/Cache$CacheParams;

    iget v1, v1, Lorg/nativescript/widgets/image/Cache$CacheParams;->memCacheSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JS"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 123
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mReusableBitmaps:Ljava/util/Set;

    .line 126
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCacheUsage:Ljava/util/HashMap;

    .line 127
    new-instance v0, Lorg/nativescript/widgets/image/Cache$1;

    iget-object v1, p0, Lorg/nativescript/widgets/image/Cache;->mParams:Lorg/nativescript/widgets/image/Cache$CacheParams;

    iget v1, v1, Lorg/nativescript/widgets/image/Cache$CacheParams;->memCacheSize:I

    invoke-direct {v0, p0, v1}, Lorg/nativescript/widgets/image/Cache$1;-><init>(Lorg/nativescript/widgets/image/Cache;I)V

    iput-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCache:Landroid/util/LruCache;

    .line 154
    :cond_3
    return-void
.end method

.method public static isExternalStorageRemovable()Z
    .locals 1

    .line 429
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    return v0

    .line 432
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .line 163
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 173
    .local v0, "currentValue":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 174
    iget-object v1, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCacheUsage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 176
    .local v1, "count":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCacheUsage:Ljava/util/HashMap;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v0    # "currentValue":Landroid/graphics/Bitmap;
    .end local v1    # "count":Ljava/lang/Integer;
    :cond_2
    return-void

    .line 164
    :cond_3
    :goto_1
    return-void
.end method

.method public clearCache()V
    .locals 2

    .line 261
    iget-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 263
    sget v0, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v0, :cond_0

    .line 264
    const-string v0, "JS"

    const-string v1, "Memory cache cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCacheUsage:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 271
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCacheUsage:Ljava/util/HashMap;

    .line 272
    iput-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCache:Landroid/util/LruCache;

    .line 273
    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, "memValue":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    .line 193
    if-eqz v0, :cond_1

    .line 194
    iget-object v1, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCacheUsage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 195
    .local v1, "count":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCacheUsage:Ljava/util/HashMap;

    const/4 v3, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v1    # "count":Ljava/lang/Integer;
    :cond_1
    sget v1, Lorg/nativescript/widgets/image/Worker;->debuggable:I

    if-lez v1, :cond_2

    if-eqz v0, :cond_2

    .line 200
    const-string v1, "JS"

    const-string v2, "Memory cache hit"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_2
    return-object v0
.end method

.method protected getBitmapFromReusableSet(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/nativescript/widgets/image/Cache;->mReusableBitmaps:Ljava/util/Set;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 228
    iget-object v1, p0, Lorg/nativescript/widgets/image/Cache;->mReusableBitmaps:Ljava/util/Set;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v2, p0, Lorg/nativescript/widgets/image/Cache;->mReusableBitmaps:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 232
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 235
    .local v3, "item":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    invoke-static {v3, p1}, Lorg/nativescript/widgets/image/Cache;->canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    move-object v0, v3

    .line 241
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 242
    goto :goto_1

    .line 246
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 249
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    .end local v3    # "item":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 252
    :cond_3
    :goto_2
    return-object v0
.end method

.method public reduceDisplayedCounter(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCacheUsage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 209
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 211
    iget-object v1, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCacheUsage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    :cond_0
    iget-object v1, p0, Lorg/nativescript/widgets/image/Cache;->mMemoryCacheUsage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .end local v0    # "count":Ljava/lang/Integer;
    :cond_1
    :goto_0
    return-void
.end method
