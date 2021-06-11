.class Lorg/nativescript/widgets/Async$Image$LoadImageFromBase64StringTask;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadImageFromBase64StringTask"
.end annotation


# instance fields
.field private callback:Lorg/nativescript/widgets/Async$CompleteCallback;

.field private requestId:I


# direct methods
.method public constructor <init>(ILorg/nativescript/widgets/Async$CompleteCallback;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromBase64StringTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 269
    iput p1, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromBase64StringTask;->requestId:I

    .line 270
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 274
    .local v1, "source":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 275
    .local v2, "bytes":[B
    array-length v3, v2

    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 279
    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromBase64StringTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget v1, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromBase64StringTask;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onComplete(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromBase64StringTask;->callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget v1, p0, Lorg/nativescript/widgets/Async$Image$LoadImageFromBase64StringTask;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LoadImageFromBase64StringTask returns no result."

    invoke-interface {v0, v2, v1}, Lorg/nativescript/widgets/Async$CompleteCallback;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    :goto_0
    return-void
.end method
