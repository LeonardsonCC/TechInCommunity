.class public Lorg/nativescript/widgets/Async$Http;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Http"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/Async$Http$HttpRequestTask;,
        Lorg/nativescript/widgets/Async$Http$RequestResult;,
        Lorg/nativescript/widgets/Async$Http$RequestOptions;,
        Lorg/nativescript/widgets/Async$Http$KeyValuePair;
    }
.end annotation


# static fields
.field private static final DELETE_METHOD:Ljava/lang/String; = "DELETE"

.field private static final GET_METHOD:Ljava/lang/String; = "GET"

.field private static final HEAD_METHOD:Ljava/lang/String; = "HEAD"

.field private static cookieManager:Ljava/net/CookieManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MakeRequest(Lorg/nativescript/widgets/Async$Http$RequestOptions;Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;)V
    .locals 3
    .param p0, "options"    # Lorg/nativescript/widgets/Async$Http$RequestOptions;
    .param p1, "callback"    # Lorg/nativescript/widgets/Async$CompleteCallback;
    .param p2, "context"    # Ljava/lang/Object;

    .line 295
    sget-object v0, Lorg/nativescript/widgets/Async$Http;->cookieManager:Ljava/net/CookieManager;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lorg/nativescript/widgets/Async$Http;->cookieManager:Ljava/net/CookieManager;

    .line 297
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 300
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 301
    .local v0, "mHandler":Landroid/os/Handler;
    invoke-static {}, Lorg/nativescript/widgets/Async;->threadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lorg/nativescript/widgets/Async$Http$1;

    invoke-direct {v2, p1, p2, p0, v0}, Lorg/nativescript/widgets/Async$Http$1;-><init>(Lorg/nativescript/widgets/Async$CompleteCallback;Ljava/lang/Object;Lorg/nativescript/widgets/Async$Http$RequestOptions;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method
