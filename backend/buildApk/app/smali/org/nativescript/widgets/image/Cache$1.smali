.class Lorg/nativescript/widgets/image/Cache$1;
.super Landroid/util/LruCache;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/image/Cache;->init(Lorg/nativescript/widgets/image/Cache$CacheParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/image/Cache;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/image/Cache;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/nativescript/widgets/image/Cache;
    .param p2, "x0"    # I

    .line 127
    iput-object p1, p0, Lorg/nativescript/widgets/image/Cache$1;->this$0:Lorg/nativescript/widgets/image/Cache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 127
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/nativescript/widgets/image/Cache$1;->entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Landroid/graphics/Bitmap;
    .param p4, "newValue"    # Landroid/graphics/Bitmap;

    .line 135
    iget-object v0, p0, Lorg/nativescript/widgets/image/Cache$1;->this$0:Lorg/nativescript/widgets/image/Cache;

    invoke-static {v0}, Lorg/nativescript/widgets/image/Cache;->access$000(Lorg/nativescript/widgets/image/Cache;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 136
    .local v0, "count":Ljava/lang/Integer;
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 139
    :cond_0
    iget-object v1, p0, Lorg/nativescript/widgets/image/Cache$1;->this$0:Lorg/nativescript/widgets/image/Cache;

    invoke-static {v1}, Lorg/nativescript/widgets/image/Cache;->access$100(Lorg/nativescript/widgets/image/Cache;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 127
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/nativescript/widgets/image/Cache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .line 149
    invoke-static {p2}, Lorg/nativescript/widgets/image/Cache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    .line 150
    .local v0, "bitmapSize":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method
