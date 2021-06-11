.class final Lorg/nativescript/widgets/Async$File$2;
.super Ljava/lang/Object;
.source "Async.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/Async$File;->read(Ljava/lang/String;Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/nativescript/widgets/Async$CompleteCallback;

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$mHandler:Landroid/os/Handler;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lorg/nativescript/widgets/Async$File$2;->val$callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iput-object p2, p0, Lorg/nativescript/widgets/Async$File$2;->val$context:Ljava/lang/Object;

    iput-object p3, p0, Lorg/nativescript/widgets/Async$File$2;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lorg/nativescript/widgets/Async$File$2;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 623
    new-instance v0, Lorg/nativescript/widgets/Async$File$ReadTask;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$File$2;->val$callback:Lorg/nativescript/widgets/Async$CompleteCallback;

    iget-object v2, p0, Lorg/nativescript/widgets/Async$File$2;->val$context:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/nativescript/widgets/Async$File$ReadTask;-><init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V

    .line 624
    .local v0, "task":Lorg/nativescript/widgets/Async$File$ReadTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lorg/nativescript/widgets/Async$File$2;->val$path:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/Async$File$ReadTask;->doInBackground([Ljava/lang/String;)[B

    move-result-object v1

    .line 625
    .local v1, "result":[B
    iget-object v2, p0, Lorg/nativescript/widgets/Async$File$2;->val$mHandler:Landroid/os/Handler;

    new-instance v3, Lorg/nativescript/widgets/Async$File$2$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/nativescript/widgets/Async$File$2$1;-><init>(Lorg/nativescript/widgets/Async$File$2;Lorg/nativescript/widgets/Async$File$ReadTask;[B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 631
    return-void
.end method
