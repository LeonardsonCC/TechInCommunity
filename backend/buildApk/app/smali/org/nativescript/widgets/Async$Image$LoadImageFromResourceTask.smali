.class Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadImageFromResourceTask"
.end annotation


# instance fields
.field private callback:Lorg/nativescript/widgets/Async$CompleteCallback;

.field private context:Landroid/content/Context;

.field private requestId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/nativescript/widgets/Async$CompleteCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestId"    # I
    .param p3, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p3, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 214
    iput-object p1, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;->context:Landroid/content/Context;

    .line 215
    iput p2, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;->requestId:I

    .line 216
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 220
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 221
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 223
    .local v2, "id":I
    if-lez v2, :cond_0

    .line 224
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 225
    .local v3, "result":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 228
    .end local v3    # "result":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 232
    if-eqz p1, :cond_0

    .line 233
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget v1, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onComplete(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget v1, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LoadImageFromResourceTask returns no result."

    invoke-interface {v0, v2, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    :goto_0
    return-void
.end method
