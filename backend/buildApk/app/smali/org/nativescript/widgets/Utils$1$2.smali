.class Lorg/nativescript/widgets/Utils$1$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/Utils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/Utils$1;

.field final synthetic val$finalBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$finalError:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/Utils$1;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/nativescript/widgets/Utils$1;

    .line 268
    iput-object p1, p0, Lorg/nativescript/widgets/Utils$1$2;->this$0:Lorg/nativescript/widgets/Utils$1;

    iput-object p2, p0, Lorg/nativescript/widgets/Utils$1$2;->val$finalError:Ljava/lang/String;

    iput-object p3, p0, Lorg/nativescript/widgets/Utils$1$2;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 271
    iget-object v0, p0, Lorg/nativescript/widgets/Utils$1$2;->val$finalError:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lorg/nativescript/widgets/Utils$1$2;->this$0:Lorg/nativescript/widgets/Utils$1;

    iget-object v0, v0, Lorg/nativescript/widgets/Utils$1;->val$callback:Lorg/nativescript/widgets/Utils$AsyncImageCallback;

    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lorg/nativescript/widgets/Utils$1$2;->val$finalError:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/nativescript/widgets/Utils$AsyncImageCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/Utils$1$2;->this$0:Lorg/nativescript/widgets/Utils$1;

    iget-object v0, v0, Lorg/nativescript/widgets/Utils$1;->val$callback:Lorg/nativescript/widgets/Utils$AsyncImageCallback;

    iget-object v1, p0, Lorg/nativescript/widgets/Utils$1$2;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lorg/nativescript/widgets/Utils$AsyncImageCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    .line 276
    :goto_0
    return-void
.end method
