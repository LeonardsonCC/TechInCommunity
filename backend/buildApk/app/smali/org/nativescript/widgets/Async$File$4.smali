.class final Lorg/nativescript/widgets/Async$File$4;
.super Ljava/lang/Object;
.source "Async.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/Async$File;->write(Ljava/lang/String;[BLorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/nativescript/widgets/Async$CompleteCallback;

.field final synthetic val$content:[B

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$mHandler:Landroid/os/Handler;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;Ljava/lang/String;[BLandroid/os/Handler;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lorg/nativescript/widgets/Async$File$4;->val$callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iput-object p2, p0, Lorg/nativescript/widgets/Async$File$4;->val$context:Ljava/lang/Object;

    iput-object p3, p0, Lorg/nativescript/widgets/Async$File$4;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lorg/nativescript/widgets/Async$File$4;->val$content:[B

    iput-object p5, p0, Lorg/nativescript/widgets/Async$File$4;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 657
    new-instance v0, Lorg/nativescript/widgets/Async$File$WriteTask;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$File$4;->val$callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget-object v2, p0, Lorg/nativescript/widgets/Async$File$4;->val$context:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/nativescript/widgets/Async$File$WriteTask;-><init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V

    .line 658
    .local v0, "task":Lorg/nativescript/widgets/Async$File$WriteTask;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/nativescript/widgets/Async$File$4;->val$path:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/nativescript/widgets/Async$File$4;->val$content:[B

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/Async$File$WriteTask;->doInBackground([Ljava/lang/Object;)Z

    move-result v1

    .line 659
    .local v1, "result":Z
    iget-object v2, p0, Lorg/nativescript/widgets/Async$File$4;->val$mHandler:Landroid/os/Handler;

    new-instance v3, Lorg/nativescript/widgets/Async$File$4$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/nativescript/widgets/Async$File$4$1;-><init>(Lorg/nativescript/widgets/Async$File$4;Lorg/nativescript/widgets/Async$File$WriteTask;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    return-void
.end method
