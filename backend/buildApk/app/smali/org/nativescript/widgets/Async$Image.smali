.class public Lorg/nativescript/widgets/Async$Image;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/Async$Image$LoadImageFromBase64StringTask;,
        Lorg/nativescript/widgets/Async$Image$LoadImageFromFileTask;,
        Lorg/nativescript/widgets/Async$Image$LoadImageFromResourceTask;,
        Lorg/nativescript/widgets/Async$Image$DownloadImageTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Ljava/lang/String;Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;
    .param p2, "context"    # Ljava/lang/Object;

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 154
    .local v0, "mHandler":Landroid/os/Handler;
    invoke-static {}, Lorg/nativescript/widgets/Async;->threadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lorg/nativescript/widgets/Async$Image$4;

    invoke-direct {v2, p1, p2, p0, v0}, Lorg/nativescript/widgets/Async$Image$4;-><init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public static fromBase64(Ljava/lang/String;ILorg/nativescript/widgets/Async$CompleteCallback;)V
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "requestId"    # I
    .param p2, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 137
    .local v0, "mHandler":Landroid/os/Handler;
    invoke-static {}, Lorg/nativescript/widgets/Async;->threadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lorg/nativescript/widgets/Async$Image$3;

    invoke-direct {v2, p1, p2, p0, v0}, Lorg/nativescript/widgets/Async$Image$3;-><init>(ILorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public static fromFile(Ljava/lang/String;ILorg/nativescript/widgets/Async$CompleteCallback;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "requestId"    # I
    .param p2, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 120
    .local v0, "mHandler":Landroid/os/Handler;
    invoke-static {}, Lorg/nativescript/widgets/Async;->threadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lorg/nativescript/widgets/Async$Image$2;

    invoke-direct {v2, p1, p2, p0, v0}, Lorg/nativescript/widgets/Async$Image$2;-><init>(ILorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public static fromResource(Ljava/lang/String;Landroid/content/Context;ILorg/nativescript/widgets/Async$CompleteCallback;)V
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestId"    # I
    .param p3, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;

    .line 102
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 103
    .local v5, "mHandler":Landroid/os/Handler;
    invoke-static {}, Lorg/nativescript/widgets/Async;->threadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v7, Lorg/nativescript/widgets/Async$Image$1;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/nativescript/widgets/Async$Image$1;-><init>(Landroid/content/Context;ILorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method
