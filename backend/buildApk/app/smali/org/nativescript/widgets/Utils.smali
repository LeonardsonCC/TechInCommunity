.class public Lorg/nativescript/widgets/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/Utils$ImageAssetOptions;,
        Lorg/nativescript/widgets/Utils$AsyncImageCallback;
    }
.end annotation


# static fields
.field private static final executors:Ljava/util/concurrent/Executor;

.field private static final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/nativescript/widgets/Utils;->executors:Ljava/util/concurrent/Executor;

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/nativescript/widgets/Utils;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .line 31
    sget-object v0, Lorg/nativescript/widgets/Utils;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/ParcelFileDescriptor;

    .line 31
    invoke-static {p0}, Lorg/nativescript/widgets/Utils;->closePfd(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method static synthetic access$200(Landroid/util/Pair;Landroid/util/Pair;Lorg/nativescript/widgets/Utils$ImageAssetOptions;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Landroid/util/Pair;
    .param p1, "x1"    # Landroid/util/Pair;
    .param p2, "x2"    # Lorg/nativescript/widgets/Utils$ImageAssetOptions;

    .line 31
    invoke-static {p0, p1, p2}, Lorg/nativescript/widgets/Utils;->getRequestedImageSize(Landroid/util/Pair;Landroid/util/Pair;Lorg/nativescript/widgets/Utils$ImageAssetOptions;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/FileDescriptor;)I
    .locals 1
    .param p0, "x0"    # Ljava/io/FileDescriptor;

    .line 31
    invoke-static {p0}, Lorg/nativescript/widgets/Utils;->calculateAngleFromFileDescriptor(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 31
    invoke-static {p0}, Lorg/nativescript/widgets/Utils;->calculateAngleFromFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static calculateAngleFromFile(Ljava/lang/String;)I
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    .line 132
    .local v0, "rotationAngle":I
    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "ei":Landroidx/exifinterface/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .local v2, "orientation":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    .line 137
    :cond_1
    const/16 v0, 0x5a

    .line 138
    goto :goto_0

    .line 140
    :cond_2
    const/16 v0, 0xb4

    .line 141
    nop

    .line 147
    .end local v2    # "orientation":I
    :goto_0
    goto :goto_1

    .line 146
    .end local v1    # "ei":Landroidx/exifinterface/media/ExifInterface;
    :catch_0
    move-exception v1

    .line 149
    :goto_1
    return v0
.end method

.method private static calculateAngleFromFileDescriptor(Ljava/io/FileDescriptor;)I
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 154
    const/4 v0, 0x0

    .line 157
    .local v0, "rotationAngle":I
    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    .line 158
    .local v1, "ei":Landroidx/exifinterface/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .local v2, "orientation":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    .line 162
    :cond_1
    const/16 v0, 0x5a

    .line 163
    goto :goto_0

    .line 165
    :cond_2
    const/16 v0, 0xb4

    .line 166
    nop

    .line 172
    .end local v2    # "orientation":I
    :goto_0
    goto :goto_1

    .line 171
    .end local v1    # "ei":Landroidx/exifinterface/media/ExifInterface;
    :catch_0
    move-exception v1

    .line 174
    :goto_1
    return v0
.end method

.method private static closePfd(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 120
    if-eqz p0, :cond_0

    .line 122
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 126
    :cond_0
    :goto_0
    return-void
.end method

.method public static drawBoxShadow(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # Ljava/lang/String;

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    const-string v0, "BoxShadowDrawable"

    const-string v1, "drawBoxShadow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 40
    .local v1, "currentBg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current BG is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 45
    const-string v3, "view had no background!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v1, v3

    goto :goto_0

    .line 47
    :cond_2
    instance-of v3, v1, Lorg/nativescript/widgets/BoxShadowDrawable;

    if-eqz v3, :cond_3

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lorg/nativescript/widgets/BoxShadowDrawable;

    invoke-virtual {v3}, Lorg/nativescript/widgets/BoxShadowDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already a BoxShadowDrawable, getting wrapped drawable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_3
    :goto_0
    const-string v3, "replacing background with new BoxShadowDrawable..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v3, Lorg/nativescript/widgets/BoxShadowDrawable;

    invoke-direct {v3, v1, p1}, Lorg/nativescript/widgets/BoxShadowDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 57
    .local v3, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_4

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new current bg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_4
    const/4 v0, 0x0

    .line 62
    .local v0, "count":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 65
    .local v4, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 66
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 68
    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    .line 69
    goto :goto_2

    .line 71
    .end local v4    # "parent":Landroid/view/ViewGroup;
    :cond_5
    goto :goto_1

    .line 72
    :cond_6
    :goto_2
    return-void
.end method

.method private static getAspectSafeDimensions(FFFF)Landroid/util/Pair;
    .locals 7
    .param p0, "sourceWidth"    # F
    .param p1, "sourceHeight"    # F
    .param p2, "reqWidth"    # F
    .param p3, "reqHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 91
    div-float v0, p0, p2

    .line 92
    .local v0, "widthCoef":F
    div-float v1, p1, p3

    .line 93
    .local v1, "heightCoef":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 95
    .local v2, "aspectCoef":F
    new-instance v3, Landroid/util/Pair;

    div-float v4, p0, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    div-float v5, p1, v2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private static getRequestedImageSize(Landroid/util/Pair;Landroid/util/Pair;Lorg/nativescript/widgets/Utils$ImageAssetOptions;)Landroid/util/Pair;
    .locals 6
    .param p2, "options"    # Lorg/nativescript/widgets/Utils$ImageAssetOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/nativescript/widgets/Utils$ImageAssetOptions;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 100
    .local p0, "src":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p1, "maxSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v0, p2, Lorg/nativescript/widgets/Utils$ImageAssetOptions;->width:I

    .line 101
    .local v0, "reqWidth":I
    if-gtz v0, :cond_0

    .line 102
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 104
    :cond_0
    iget v1, p2, Lorg/nativescript/widgets/Utils$ImageAssetOptions;->height:I

    .line 105
    .local v1, "reqHeight":I
    if-gtz v1, :cond_1

    .line 106
    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 109
    :cond_1
    iget-boolean v2, p2, Lorg/nativescript/widgets/Utils$ImageAssetOptions;->keepAspectRatio:Z

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-static {v2, v3, v4, v5}, Lorg/nativescript/widgets/Utils;->getAspectSafeDimensions(FFFF)Landroid/util/Pair;

    move-result-object v2

    .line 111
    .local v2, "safeAspectSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 112
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 115
    .end local v2    # "safeAspectSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static loadImageAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILorg/nativescript/widgets/Utils$AsyncImageCallback;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "options"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "callback"    # Lorg/nativescript/widgets/Utils$AsyncImageCallback;

    .line 180
    sget-object v0, Lorg/nativescript/widgets/Utils;->executors:Ljava/util/concurrent/Executor;

    new-instance v8, Lorg/nativescript/widgets/Utils$1;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p0

    move-object v4, p5

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/nativescript/widgets/Utils$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lorg/nativescript/widgets/Utils$AsyncImageCallback;Ljava/lang/String;II)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method
