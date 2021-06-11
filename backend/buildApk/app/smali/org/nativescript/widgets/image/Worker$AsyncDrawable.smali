.class Lorg/nativescript/widgets/image/Worker$AsyncDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncDrawable"
.end annotation


# instance fields
.field private final bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "bitmapWorkerTask"    # Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;

    .line 438
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 439
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/nativescript/widgets/image/Worker$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    .line 441
    return-void
.end method


# virtual methods
.method public getBitmapWorkerTask()Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;
    .locals 1

    .line 444
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker$AsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/image/Worker$BitmapWorkerTask;

    return-object v0
.end method
