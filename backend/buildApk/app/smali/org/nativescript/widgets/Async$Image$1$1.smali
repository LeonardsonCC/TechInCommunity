.class Lorg/nativescript/widgets/Async$Image$1$1;
.super Ljava/lang/Object;
.source "Async.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/Async$Image$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/Async$Image$1;

.field final synthetic val$result:Landroid/graphics/Bitmap;

.field final synthetic val$task:Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/Async$Image$1;Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/nativescript/widgets/Async$Image$1;

    .line 108
    iput-object p1, p0, Lorg/nativescript/widgets/Async$Image$1$1;->this$0:Lorg/nativescript/widgets/Async$Image$1;

    iput-object p2, p0, Lorg/nativescript/widgets/Async$Image$1$1;->val$task:Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;

    iput-object p3, p0, Lorg/nativescript/widgets/Async$Image$1$1;->val$result:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Image$1$1;->val$task:Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$Image$1$1;->val$result:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    .line 112
    return-void
.end method
