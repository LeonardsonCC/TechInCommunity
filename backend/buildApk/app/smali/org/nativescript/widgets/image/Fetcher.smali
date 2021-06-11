.class public Lorg/nativescript/widgets/image/Fetcher;
.super Lorg/nativescript/widgets/image/Worker;
.source "Fetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/image/Fetcher$ByteArrayOutputStreamInternal;
    }
.end annotation


# static fields
.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final HTTP_CACHE_DIR:Ljava/lang/String; = "http"

.field private static final HTTP_CACHE_SIZE:I = 0xa00000

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field private static instance:Lorg/nativescript/widgets/image/Fetcher;

.field private static mDeviceHeightPixels:I

.field private static mDeviceWidthPixels:I


# instance fields
.field private mHttpCacheDir:Ljava/io/File;

.field private mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

.field private final mHttpDiskCacheLock:Ljava/lang/Object;

.field private mHttpDiskCacheStarting:Z

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/image/Worker;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCacheStarting:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    .line 83
    const-string v0, "http"

    invoke-static {p1, v0}, Lorg/nativescript/widgets/image/Cache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpCacheDir:Ljava/io/File;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/nativescript/widgets/image/Fetcher;->mPackageName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lorg/nativescript/widgets/image/Fetcher;->mDeviceWidthPixels:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lorg/nativescript/widgets/image/Fetcher;->mDeviceHeightPixels:I

    .line 87
    return-void
.end method

.method private static addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lorg/nativescript/widgets/image/Cache;)V
    .locals 1
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "cache"    # Lorg/nativescript/widgets/image/Cache;

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 724
    if-eqz p1, :cond_0

    .line 726
    invoke-virtual {p1, p0}, Lorg/nativescript/widgets/image/Cache;->getBitmapFromReusableSet(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 728
    .local v0, "inBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 729
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 733
    .end local v0    # "inBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public static calculateInSampleSize(IIII)I
    .locals 11
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .line 681
    move v0, p1

    .line 682
    .local v0, "height":I
    move v1, p0

    .line 683
    .local v1, "width":I
    if-lez p2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move p2, v2

    .line 684
    if-lez p3, :cond_1

    move v2, p3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    move p3, v2

    .line 685
    const/4 v2, 0x1

    .line 686
    .local v2, "inSampleSize":I
    if-gt v0, p3, :cond_2

    if-le v1, p2, :cond_4

    .line 688
    :cond_2
    div-int/lit8 v3, v0, 0x2

    .line 689
    .local v3, "halfHeight":I
    div-int/lit8 v4, v1, 0x2

    .line 693
    .local v4, "halfWidth":I
    :goto_2
    div-int v5, v3, v2

    if-le v5, p3, :cond_3

    div-int v5, v4, v2

    if-le v5, p2, :cond_3

    .line 694
    mul-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 703
    :cond_3
    div-int v5, v1, v2

    div-int v6, v0, v2

    mul-int v5, v5, v6

    int-to-long v5, v5

    .line 706
    .local v5, "totalPixels":J
    mul-int v7, p2, p3

    mul-int/lit8 v7, v7, 0x2

    int-to-long v7, v7

    .line 708
    .local v7, "totalReqPixelsCap":J
    :goto_3
    cmp-long v9, v5, v7

    if-lez v9, :cond_4

    .line 709
    mul-int/lit8 v2, v2, 0x2

    .line 710
    div-int v9, v1, v2

    div-int v10, v0, v2

    mul-int v9, v9, v10

    int-to-long v5, v9

    goto :goto_3

    .line 713
    .end local v3    # "halfHeight":I
    .end local v4    # "halfWidth":I
    .end local v5    # "totalPixels":J
    .end local v7    # "totalReqPixelsCap":J
    :cond_4
    return v2
.end method

.method private static calculateRotationAngle(Landroidx/exifinterface/media/ExifInterface;)I
    .locals 3
    .param p0, "ei"    # Landroidx/exifinterface/media/ExifInterface;

    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "rotationAngle":I
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 581
    .local v1, "orientation":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    .line 583
    :cond_1
    const/16 v0, 0x5a

    .line 584
    goto :goto_0

    .line 586
    :cond_2
    const/16 v0, 0xb4

    .line 587
    nop

    .line 593
    :goto_0
    return v0
.end method

.method private static closePfd(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 484
    if-eqz p0, :cond_0

    .line 486
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 489
    :cond_0
    :goto_1
    return-void
.end method

.method public static decodeSampledBitmapFromByteArray([BIIZLorg/nativescript/widgets/image/Cache;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "keepAspectRatio"    # Z
    .param p4, "cache"    # Lorg/nativescript/widgets/image/Cache;

    .line 644
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 645
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 646
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 648
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v3, p1, p2}, Lorg/nativescript/widgets/image/Fetcher;->calculateInSampleSize(IIII)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 651
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 654
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    invoke-static {v0, p4}, Lorg/nativescript/widgets/image/Fetcher;->addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lorg/nativescript/widgets/image/Cache;)V

    .line 658
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 660
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 661
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Lorg/nativescript/widgets/image/Fetcher;->getExifInterface(Ljava/io/InputStream;)Landroidx/exifinterface/media/ExifInterface;

    move-result-object v3

    .line 663
    .local v3, "ei":Landroidx/exifinterface/media/ExifInterface;
    invoke-static {v1, v3, p1, p2, p3}, Lorg/nativescript/widgets/image/Fetcher;->scaleAndRotateBitmap(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method public static decodeSampledBitmapFromContent(Ljava/lang/String;Landroid/content/ContentResolver;IIZLorg/nativescript/widgets/image/Cache;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .param p4, "keepAspectRatio"    # Z
    .param p5, "cache"    # Lorg/nativescript/widgets/image/Cache;

    .line 505
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 506
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 509
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 510
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 512
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "r"

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v2, v4

    .line 513
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4, v3, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    nop

    .line 521
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v5, p2, p3}, Lorg/nativescript/widgets/image/Fetcher;->calculateInSampleSize(IIII)I

    move-result v4

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 524
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasHoneycomb()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 525
    invoke-static {v0, p5}, Lorg/nativescript/widgets/image/Fetcher;->addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lorg/nativescript/widgets/image/Cache;)V

    .line 529
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 531
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4, v3, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 533
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Lorg/nativescript/widgets/image/Fetcher;->getExifInterface(Ljava/io/FileDescriptor;)Landroidx/exifinterface/media/ExifInterface;

    move-result-object v4

    .line 534
    .local v4, "ei":Landroidx/exifinterface/media/ExifInterface;
    invoke-static {v2}, Lorg/nativescript/widgets/image/Fetcher;->closePfd(Landroid/os/ParcelFileDescriptor;)V

    .line 536
    invoke-static {v3, v4, p2, p3, p4}, Lorg/nativescript/widgets/image/Fetcher;->scaleAndRotateBitmap(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    .line 514
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "ei":Landroidx/exifinterface/media/ExifInterface;
    :catch_0
    move-exception v4

    .line 515
    .local v4, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JS"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {v2}, Lorg/nativescript/widgets/image/Fetcher;->closePfd(Landroid/os/ParcelFileDescriptor;)V

    .line 517
    return-object v3
.end method

.method public static decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;IIZLorg/nativescript/widgets/image/Cache;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "keepAspectRatio"    # Z
    .param p4, "cache"    # Lorg/nativescript/widgets/image/Cache;

    .line 610
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 611
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 612
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 614
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3, p1, p2}, Lorg/nativescript/widgets/image/Fetcher;->calculateInSampleSize(IIII)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 617
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 620
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasHoneycomb()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    invoke-static {v0, p4}, Lorg/nativescript/widgets/image/Fetcher;->addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lorg/nativescript/widgets/image/Cache;)V

    .line 624
    :cond_0
    const/4 v2, 0x0

    .line 627
    .local v2, "results":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v2    # "results":Landroid/graphics/Bitmap;
    .local v1, "results":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 628
    .end local v1    # "results":Landroid/graphics/Bitmap;
    .restart local v2    # "results":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 630
    .local v3, "e":Ljava/lang/Exception;
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 631
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 635
    .end local v2    # "results":Landroid/graphics/Bitmap;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "results":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {p0}, Lorg/nativescript/widgets/image/Fetcher;->getExifInterface(Ljava/io/FileDescriptor;)Landroidx/exifinterface/media/ExifInterface;

    move-result-object v2

    .line 637
    .local v2, "ei":Landroidx/exifinterface/media/ExifInterface;
    invoke-static {v1, v2, p1, p2, p3}, Lorg/nativescript/widgets/image/Fetcher;->scaleAndRotateBitmap(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;IIZLorg/nativescript/widgets/image/Cache;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "keepAspectRatio"    # Z
    .param p4, "cache"    # Lorg/nativescript/widgets/image/Cache;

    .line 463
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 464
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 465
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 467
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p1, p2}, Lorg/nativescript/widgets/image/Fetcher;->calculateInSampleSize(IIII)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 470
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-static {v0, p4}, Lorg/nativescript/widgets/image/Fetcher;->addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lorg/nativescript/widgets/image/Cache;)V

    .line 475
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 477
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 478
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Lorg/nativescript/widgets/image/Fetcher;->getExifInterface(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface;

    move-result-object v2

    .line 480
    .local v2, "ei":Landroidx/exifinterface/media/ExifInterface;
    invoke-static {v1, v2, p1, p2, p3}, Lorg/nativescript/widgets/image/Fetcher;->scaleAndRotateBitmap(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;IIIZLorg/nativescript/widgets/image/Cache;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .param p4, "keepAspectRatio"    # Z
    .param p5, "cache"    # Lorg/nativescript/widgets/image/Cache;

    .line 364
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 365
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 366
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 368
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p2, p3}, Lorg/nativescript/widgets/image/Fetcher;->calculateInSampleSize(IIII)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 373
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    invoke-static {v0, p5}, Lorg/nativescript/widgets/image/Fetcher;->addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lorg/nativescript/widgets/image/Cache;)V

    .line 378
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 383
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 384
    .local v3, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v3}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 386
    const/4 v4, 0x0

    invoke-static {p0, v3, v2, v4, v0}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 392
    .end local v3    # "value":Landroid/util/TypedValue;
    goto :goto_0

    .line 387
    :catch_0
    move-exception v3

    .line 394
    :goto_0
    if-nez v1, :cond_2

    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    goto :goto_1

    .line 395
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 398
    :cond_2
    :goto_1
    invoke-static {v2}, Lorg/nativescript/widgets/image/Fetcher;->getExifInterface(Ljava/io/InputStream;)Landroidx/exifinterface/media/ExifInterface;

    move-result-object v3

    .line 400
    .local v3, "ei":Landroidx/exifinterface/media/ExifInterface;
    invoke-static {v1, v3, p2, p3, p4}, Lorg/nativescript/widgets/image/Fetcher;->scaleAndRotateBitmap(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method public static disableConnectionReuseIfNecessary()V
    .locals 2

    .line 337
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 338
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    :cond_0
    return-void
.end method

.method private static getExifInterface(Ljava/io/FileDescriptor;)Landroidx/exifinterface/media/ExifInterface;
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 426
    const/4 v0, 0x0

    .line 428
    .local v0, "ei":Landroidx/exifinterface/media/ExifInterface;
    :try_start_0
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 433
    :cond_0
    goto :goto_0

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in reading bitmap - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JS"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static getExifInterface(Ljava/io/InputStream;)Landroidx/exifinterface/media/ExifInterface;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .line 405
    const/4 v0, 0x0

    .line 407
    .local v0, "ei":Landroidx/exifinterface/media/ExifInterface;
    :try_start_0
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 413
    :cond_0
    if-eqz p0, :cond_1

    .line 415
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 417
    :goto_0
    goto :goto_1

    .line 416
    :catch_0
    move-exception v1

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 410
    :catch_1
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "JS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in reading bitmap - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz p0, :cond_1

    .line 415
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 421
    :cond_1
    :goto_1
    return-object v0

    .line 413
    :goto_2
    if-eqz p0, :cond_2

    .line 415
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 417
    goto :goto_3

    .line 416
    :catch_2
    move-exception v2

    .line 419
    :cond_2
    :goto_3
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method private static getExifInterface(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, "ei":Landroidx/exifinterface/media/ExifInterface;
    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 444
    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in reading bitmap - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JS"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/nativescript/widgets/image/Fetcher;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    sget-object v0, Lorg/nativescript/widgets/image/Fetcher;->instance:Lorg/nativescript/widgets/image/Fetcher;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lorg/nativescript/widgets/image/Fetcher;

    invoke-direct {v0, p0}, Lorg/nativescript/widgets/image/Fetcher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/nativescript/widgets/image/Fetcher;->instance:Lorg/nativescript/widgets/image/Fetcher;

    .line 73
    :cond_0
    sget-object v0, Lorg/nativescript/widgets/image/Fetcher;->instance:Lorg/nativescript/widgets/image/Fetcher;

    return-object v0
.end method

.method private processHttp(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "decodeWidth"    # I
    .param p3, "decodeHeight"    # I
    .param p4, "keepAspectRatio"    # Z

    .line 172
    invoke-static {p1}, Lorg/nativescript/widgets/image/Cache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 174
    .local v1, "fileDescriptor":Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .line 176
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    iget-object v3, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 178
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCacheStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_0

    .line 180
    :try_start_1
    iget-object v4, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 181
    :catch_0
    move-exception v4

    .line 182
    :goto_1
    goto :goto_0

    .line 185
    :cond_0
    :try_start_2
    iget-object v4, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_7

    .line 187
    :try_start_3
    iget-object v4, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-virtual {v4, v0}, Lorg/nativescript/widgets/image/DiskLruCache;->get(Ljava/lang/String;)Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;

    move-result-object v4

    .line 188
    .local v4, "snapshot":Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;
    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 189
    sget v6, Lorg/nativescript/widgets/image/Fetcher;->debuggable:I

    if-lez v6, :cond_1

    .line 190
    const-string v6, "JS"

    const-string v7, "processBitmap, not found in http cache, downloading..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    iget-object v6, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-virtual {v6, v0}, Lorg/nativescript/widgets/image/DiskLruCache;->edit(Ljava/lang/String;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v6

    .line 193
    .local v6, "editor":Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    if-eqz v6, :cond_3

    .line 194
    invoke-virtual {v6, v5}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Lorg/nativescript/widgets/image/Fetcher;->downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 195
    invoke-virtual {v6}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->commit()V

    goto :goto_2

    .line 197
    :cond_2
    invoke-virtual {v6}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->abort()V

    .line 200
    :cond_3
    :goto_2
    iget-object v7, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-virtual {v7, v0}, Lorg/nativescript/widgets/image/DiskLruCache;->get(Ljava/lang/String;)Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;

    move-result-object v7

    move-object v4, v7

    .line 202
    .end local v6    # "editor":Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    :cond_4
    if-eqz v4, :cond_5

    .line 203
    invoke-virtual {v4, v5}, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    check-cast v5, Ljava/io/FileInputStream;

    move-object v2, v5

    .line 204
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v5

    .line 211
    :cond_5
    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    .line 213
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 215
    goto :goto_6

    .line 214
    :catch_1
    move-exception v5

    .line 215
    goto :goto_6

    .line 211
    .end local v4    # "snapshot":Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 208
    :catch_2
    move-exception v4

    .line 209
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v5, "JS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processHttp - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 211
    nop

    .end local v4    # "e":Ljava/lang/IllegalStateException;
    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    .line 213
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 215
    :goto_3
    goto :goto_6

    .line 214
    :catch_3
    move-exception v4

    .line 215
    goto :goto_6

    .line 206
    :catch_4
    move-exception v4

    .line 207
    .local v4, "e":Ljava/io/IOException;
    :try_start_7
    const-string v5, "JS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processHttp - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 211
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    .line 213
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 211
    :goto_4
    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    .line 213
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 215
    goto :goto_5

    .line 214
    :catch_5
    move-exception v5

    .line 217
    :cond_6
    :goto_5
    nop

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local p1    # "data":Ljava/lang/String;
    .end local p2    # "decodeWidth":I
    .end local p3    # "decodeHeight":I
    .end local p4    # "keepAspectRatio":Z
    :try_start_a
    throw v4

    .line 219
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local p1    # "data":Ljava/lang/String;
    .restart local p2    # "decodeWidth":I
    .restart local p3    # "decodeHeight":I
    .restart local p4    # "keepAspectRatio":Z
    :cond_7
    :goto_6
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8

    .line 223
    nop

    .line 224
    invoke-virtual {p0}, Lorg/nativescript/widgets/image/Fetcher;->getCache()Lorg/nativescript/widgets/image/Cache;

    move-result-object v4

    .line 223
    invoke-static {v1, p2, p3, p4, v4}, Lorg/nativescript/widgets/image/Fetcher;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;IIZLorg/nativescript/widgets/image/Cache;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 226
    :cond_8
    if-eqz v2, :cond_9

    .line 228
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 230
    goto :goto_7

    .line 229
    :catch_6
    move-exception v4

    .line 232
    :cond_9
    :goto_7
    return-object v3

    .line 219
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v4

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_9

    :goto_8
    throw v4

    :goto_9
    goto :goto_8
.end method

.method private processHttpNoCache(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "decodeWidth"    # I
    .param p3, "decodeHeight"    # I
    .param p4, "keepAspectRatio"    # Z

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "outputStream":Lorg/nativescript/widgets/image/Fetcher$ByteArrayOutputStreamInternal;
    const/4 v1, 0x0

    .line 240
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Lorg/nativescript/widgets/image/Fetcher$ByteArrayOutputStreamInternal;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/nativescript/widgets/image/Fetcher$ByteArrayOutputStreamInternal;-><init>(Lorg/nativescript/widgets/image/Fetcher$1;)V

    move-object v0, v2

    .line 241
    invoke-virtual {p0, p1, v0}, Lorg/nativescript/widgets/image/Fetcher;->downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {v0}, Lorg/nativescript/widgets/image/Fetcher$ByteArrayOutputStreamInternal;->getBuffer()[B

    move-result-object v2

    .line 243
    invoke-virtual {p0}, Lorg/nativescript/widgets/image/Fetcher;->getCache()Lorg/nativescript/widgets/image/Cache;

    move-result-object v3

    .line 242
    invoke-static {v2, p2, p3, p4, v3}, Lorg/nativescript/widgets/image/Fetcher;->decodeSampledBitmapFromByteArray([BIIZLorg/nativescript/widgets/image/Cache;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 248
    :cond_0
    nop

    .line 250
    :try_start_1
    invoke-virtual {v0}, Lorg/nativescript/widgets/image/Fetcher$ByteArrayOutputStreamInternal;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :goto_0
    goto :goto_1

    .line 251
    :catch_0
    move-exception v2

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 245
    :catch_1
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v3, "JS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processHttpNoCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    nop

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    if-eqz v0, :cond_1

    .line 250
    :try_start_3
    invoke-virtual {v0}, Lorg/nativescript/widgets/image/Fetcher$ByteArrayOutputStreamInternal;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 256
    :cond_1
    :goto_1
    return-object v1

    .line 248
    :goto_2
    if-eqz v0, :cond_2

    .line 250
    :try_start_4
    invoke-virtual {v0}, Lorg/nativescript/widgets/image/Fetcher$ByteArrayOutputStreamInternal;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 252
    goto :goto_3

    .line 251
    :catch_2
    move-exception v3

    .line 254
    :cond_2
    :goto_3
    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method

.method private static scaleAndRotateBitmap(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;IIZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ei"    # Landroidx/exifinterface/media/ExifInterface;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .param p4, "keepAspectRatio"    # Z

    .line 541
    if-nez p0, :cond_0

    .line 542
    const/4 v0, 0x0

    return-object v0

    .line 545
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 546
    .local v0, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 547
    .local v1, "sourceHeight":I
    if-lez p2, :cond_1

    move v2, p2

    goto :goto_0

    :cond_1
    sget v2, Lorg/nativescript/widgets/image/Fetcher;->mDeviceWidthPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    move p2, v2

    .line 548
    if-lez p3, :cond_2

    move v2, p3

    goto :goto_1

    :cond_2
    sget v2, Lorg/nativescript/widgets/image/Fetcher;->mDeviceHeightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    move p3, v2

    .line 551
    if-ne p2, v0, :cond_3

    if-eq p3, v1, :cond_5

    .line 552
    :cond_3
    if-eqz p4, :cond_4

    .line 553
    int-to-double v2, v0

    int-to-double v4, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 554
    .local v2, "widthCoef":D
    int-to-double v4, v1

    int-to-double v6, p3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 555
    .local v4, "heightCoef":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 557
    .local v6, "aspectCoef":D
    int-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int p2, v8

    .line 558
    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int p3, v8

    .line 561
    .end local v2    # "widthCoef":D
    .end local v4    # "heightCoef":D
    .end local v6    # "aspectCoef":D
    :cond_4
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 565
    :cond_5
    if-eqz p1, :cond_6

    .line 566
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v2

    .line 567
    .local v9, "matrix":Landroid/graphics/Matrix;
    invoke-static {p1}, Lorg/nativescript/widgets/image/Fetcher;->calculateRotationAngle(Landroidx/exifinterface/media/ExifInterface;)I

    move-result v10

    .line 568
    .local v10, "rotationAngle":I
    if-eqz v10, :cond_6

    .line 569
    int-to-float v2, v10

    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 570
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p0

    move-object v7, v9

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 574
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "rotationAngle":I
    :cond_6
    return-object p0
.end method


# virtual methods
.method protected clearCacheInternal()V
    .locals 5

    .line 112
    invoke-super {p0}, Lorg/nativescript/widgets/image/Worker;->clearCacheInternal()V

    .line 113
    iget-object v0, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-virtual {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 116
    :try_start_1
    iget-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-virtual {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->delete()V

    .line 117
    sget v1, Lorg/nativescript/widgets/image/Fetcher;->debuggable:I

    if-lez v1, :cond_0

    .line 118
    const-string v1, "JS"

    const-string v2, "HTTP cache cleared"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_0
    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "JS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCacheInternal - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCacheStarting:Z

    .line 126
    :cond_1
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected closeCacheInternal()V
    .locals 5

    .line 147
    iget-object v0, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 150
    :try_start_1
    iget-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-virtual {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-virtual {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->close()V

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    .line 153
    sget v1, Lorg/nativescript/widgets/image/Fetcher;->debuggable:I

    if-lez v1, :cond_0

    .line 154
    const-string v1, "JS"

    const-string v2, "HTTP cache closed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :cond_0
    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "JS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeCacheInternal - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 7
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .line 296
    invoke-static {}, Lorg/nativescript/widgets/image/Fetcher;->disableConnectionReuseIfNecessary()V

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 299
    .local v1, "out":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 302
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 303
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v0, v4

    .line 304
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v2, v4

    .line 305
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, p2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v1, v4

    .line 308
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    move v5, v4

    .local v5, "b":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 309
    invoke-virtual {v1, v5}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 311
    :cond_0
    const/4 v4, 0x1

    .line 315
    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 319
    :cond_1
    nop

    .line 320
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 322
    nop

    .line 323
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    goto :goto_1

    .line 325
    :catch_0
    move-exception v6

    .line 311
    :goto_1
    return v4

    .line 315
    .end local v3    # "url":Ljava/net/URL;
    .end local v5    # "b":I
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 312
    :catch_1
    move-exception v3

    .line 313
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "JS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in downloadBitmap - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_2

    .line 316
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 319
    :cond_2
    if-eqz v1, :cond_3

    .line 320
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_2

    .line 325
    :catch_2
    move-exception v3

    goto :goto_3

    .line 322
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 323
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 327
    :goto_3
    goto :goto_5

    .line 326
    :cond_4
    :goto_4
    nop

    .line 328
    :goto_5
    const/4 v3, 0x0

    return v3

    .line 315
    :goto_6
    if-eqz v0, :cond_5

    .line 316
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 319
    :cond_5
    if-eqz v1, :cond_6

    .line 320
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_7

    .line 325
    :catch_3
    move-exception v4

    goto :goto_8

    .line 322
    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    .line 323
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 326
    :cond_7
    nop

    .line 327
    :goto_8
    goto :goto_a

    :goto_9
    throw v3

    :goto_a
    goto :goto_9
.end method

.method protected flushCacheInternal()V
    .locals 5

    .line 131
    iget-object v0, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 134
    :try_start_1
    iget-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-virtual {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->flush()V

    .line 135
    sget v1, Lorg/nativescript/widgets/image/Fetcher;->debuggable:I

    if-lez v1, :cond_0

    .line 136
    const-string v1, "JS"

    const-string v2, "HTTP cache flushed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :cond_0
    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "JS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected initDiskCacheInternal()V
    .locals 6

    .line 91
    iget-object v0, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpCacheDir:Ljava/io/File;

    invoke-static {v1}, Lorg/nativescript/widgets/image/Cache;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v3, 0xa00000

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 97
    :try_start_1
    iget-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpCacheDir:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v1, v2, v2, v3, v4}, Lorg/nativescript/widgets/image/DiskLruCache;->open(Ljava/io/File;IIJ)Lorg/nativescript/widgets/image/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    .line 98
    sget v1, Lorg/nativescript/widgets/image/Fetcher;->debuggable:I

    if-lez v1, :cond_1

    .line 99
    const-string v1, "JS"

    const-string v2, "HTTP cache initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_1
    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    .line 105
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCacheStarting:Z

    .line 106
    iget-object v1, p0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected processBitmap(Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "decodeWidth"    # I
    .param p3, "decodeHeight"    # I
    .param p4, "keepAspectRatio"    # Z
    .param p5, "useCache"    # Z

    .line 262
    move-object v0, p0

    move-object v7, p1

    sget v1, Lorg/nativescript/widgets/image/Fetcher;->debuggable:I

    const-string v2, "JS"

    if-lez v1, :cond_0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    iget-object v2, v0, Lorg/nativescript/widgets/image/Fetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lorg/nativescript/widgets/image/Fetcher;->getCache()Lorg/nativescript/widgets/image/Cache;

    move-result-object v6

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lorg/nativescript/widgets/image/Fetcher;->decodeSampledBitmapFromContent(Ljava/lang/String;Landroid/content/ContentResolver;IIZLorg/nativescript/widgets/image/Cache;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 267
    :cond_1
    const-string v1, "file:///"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "filename":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/nativescript/widgets/image/Fetcher;->getCache()Lorg/nativescript/widgets/image/Cache;

    move-result-object v2

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static {v1, v3, v4, v5, v2}, Lorg/nativescript/widgets/image/Fetcher;->decodeSampledBitmapFromFile(Ljava/lang/String;IIZLorg/nativescript/widgets/image/Cache;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 270
    .end local v1    # "filename":Ljava/lang/String;
    :cond_2
    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const-string v1, "res://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 271
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "resPath":Ljava/lang/String;
    iget-object v6, v0, Lorg/nativescript/widgets/image/Fetcher;->mResources:Landroid/content/res/Resources;

    iget-object v8, v0, Lorg/nativescript/widgets/image/Fetcher;->mPackageName:Ljava/lang/String;

    const-string v9, "drawable"

    invoke-virtual {v6, v1, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 273
    .local v6, "resId":I
    if-lez v6, :cond_3

    .line 274
    iget-object v8, v0, Lorg/nativescript/widgets/image/Fetcher;->mResources:Landroid/content/res/Resources;

    .line 275
    invoke-virtual {p0}, Lorg/nativescript/widgets/image/Fetcher;->getCache()Lorg/nativescript/widgets/image/Cache;

    move-result-object v13

    .line 274
    move v9, v6

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v8 .. v13}, Lorg/nativescript/widgets/image/Fetcher;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;IIIZLorg/nativescript/widgets/image/Cache;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 277
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing Image with resourceID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v2, 0x0

    return-object v2

    .line 281
    .end local v1    # "resPath":Ljava/lang/String;
    .end local v6    # "resId":I
    :cond_4
    if-eqz p5, :cond_5

    iget-object v1, v0, Lorg/nativescript/widgets/image/Fetcher;->mHttpDiskCache:Lorg/nativescript/widgets/image/DiskLruCache;

    if-eqz v1, :cond_5

    .line 282
    invoke-direct/range {p0 .. p4}, Lorg/nativescript/widgets/image/Fetcher;->processHttp(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 284
    :cond_5
    invoke-direct/range {p0 .. p4}, Lorg/nativescript/widgets/image/Fetcher;->processHttpNoCache(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
