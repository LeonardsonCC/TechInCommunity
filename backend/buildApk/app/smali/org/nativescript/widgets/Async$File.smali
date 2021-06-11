.class public Lorg/nativescript/widgets/Async$File;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "File"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/Async$File$WriteTask;,
        Lorg/nativescript/widgets/Async$File$WriteTextTask;,
        Lorg/nativescript/widgets/Async$File$ReadTask;,
        Lorg/nativescript/widgets/Async$File$ReadTextTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;
    .param p2, "context"    # Ljava/lang/Object;

    .line 619
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 620
    .local v0, "mHandler":Landroid/os/Handler;
    invoke-static {}, Lorg/nativescript/widgets/Async;->threadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lorg/nativescript/widgets/Async$File$2;

    invoke-direct {v2, p1, p2, p0, v0}, Lorg/nativescript/widgets/Async$File$2;-><init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 633
    return-void
.end method

.method public static readText(Ljava/lang/String;Ljava/lang/String;Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;
    .param p3, "context"    # Ljava/lang/Object;

    .line 602
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 603
    .local v5, "mHandler":Landroid/os/Handler;
    invoke-static {}, Lorg/nativescript/widgets/Async;->threadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v7, Lorg/nativescript/widgets/Async$File$1;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/nativescript/widgets/Async$File$1;-><init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 616
    return-void
.end method

.method public static write(Ljava/lang/String;[BLorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "content"    # [B
    .param p2, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;
    .param p3, "context"    # Ljava/lang/Object;

    .line 653
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 654
    .local v5, "mHandler":Landroid/os/Handler;
    invoke-static {}, Lorg/nativescript/widgets/Async;->threadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v7, Lorg/nativescript/widgets/Async$File$4;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/nativescript/widgets/Async$File$4;-><init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;Ljava/lang/String;[BLandroid/os/Handler;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 667
    return-void
.end method

.method public static writeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;
    .param p4, "context"    # Ljava/lang/Object;

    .line 636
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 637
    .local v6, "mHandler":Landroid/os/Handler;
    invoke-static {}, Lorg/nativescript/widgets/Async;->threadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v7

    new-instance v8, Lorg/nativescript/widgets/Async$File$3;

    move-object v0, v8

    move-object v1, p3

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/nativescript/widgets/Async$File$3;-><init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 650
    return-void
.end method
