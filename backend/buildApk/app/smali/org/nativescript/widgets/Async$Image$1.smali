.class final Lorg/nativescript/widgets/Async$Image$1;
.super Ljava/lang/Object;
.source "Async.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/Async$Image;->fromResource(Ljava/lang/String;Landroid/content/Context;ILorg/nativescript/widgets/Async$CompleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/nativescript/widgets/Async$CompleteCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mHandler:Landroid/os/Handler;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/nativescript/widgets/Async$Image$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lorg/nativescript/widgets/Async$Image$1;->val$requestId:I

    iput-object p3, p0, Lorg/nativescript/widgets/Async$Image$1;->val$callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iput-object p4, p0, Lorg/nativescript/widgets/Async$Image$1;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lorg/nativescript/widgets/Async$Image$1;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 106
    new-instance v0, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$Image$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lorg/nativescript/widgets/Async$Image$1;->val$requestId:I

    iget-object v3, p0, Lorg/nativescript/widgets/Async$Image$1;->val$callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    invoke-direct {v0, v1, v2, v3}, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;-><init>(Landroid/content/Context;ILorg/nativescript/widgets/Async$CompleteCallback;)V

    .line 107
    .local v0, "task":Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lorg/nativescript/widgets/Async$Image$1;->val$name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    .local v1, "result":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lorg/nativescript/widgets/Async$Image$1;->val$mHandler:Landroid/os/Handler;

    new-instance v3, Lorg/nativescript/widgets/Async$Image$1$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/nativescript/widgets/Async$Image$1$1;-><init>(Lorg/nativescript/widgets/Async$Image$1;Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method
