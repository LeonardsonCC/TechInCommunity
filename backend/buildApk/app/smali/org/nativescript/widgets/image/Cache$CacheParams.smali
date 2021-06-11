.class public Lorg/nativescript/widgets/image/Cache$CacheParams;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheParams"
.end annotation


# instance fields
.field public diskCacheEnabled:Z

.field public memCacheSize:I

.field public memoryCacheEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/16 v0, 0x1400

    iput v0, p0, Lorg/nativescript/widgets/image/Cache$CacheParams;->memCacheSize:I

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nativescript/widgets/image/Cache$CacheParams;->memoryCacheEnabled:Z

    .line 281
    iput-boolean v0, p0, Lorg/nativescript/widgets/image/Cache$CacheParams;->diskCacheEnabled:Z

    return-void
.end method


# virtual methods
.method public setMemCacheSizePercent(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 297
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 301
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float v0, v0, p1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/nativescript/widgets/image/Cache$CacheParams;->memCacheSize:I

    .line 302
    return-void

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setMemCacheSizePercent - percent must be between 0.01 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
