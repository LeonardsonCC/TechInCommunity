.class Lorg/nativescript/widgets/Async$Image$LoadImageFromFileTask;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadImageFromFileTask"
.end annotation


# instance fields
.field private callback:Lorg/nativescript/widgets/Async$CompleteCallback;

.field private requestId:I


# direct methods
.method public constructor <init>(ILorg/nativescript/widgets/Async$CompleteCallback;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromFileTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 246
    iput p1, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromFileTask;->requestId:I

    .line 247
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 251
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 255
    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromFileTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget v1, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromFileTask;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onComplete(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromFileTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget v1, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromFileTask;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LoadImageFromFileTask returns no result."

    invoke-interface {v0, v2, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    :goto_0
    return-void
.end method
