.class public Lorg/nativescript/widgets/Async;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/Async$File;,
        Lorg/nativescript/widgets/Async$Http;,
        Lorg/nativescript/widgets/Async$Image;,
        Lorg/nativescript/widgets/Async$PriorityThreadFactory;,
        Lorg/nativescript/widgets/Async$CompleteCallback;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Async"

.field static executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lorg/nativescript/widgets/Async;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static threadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 47
    sget-object v0, Lorg/nativescript/widgets/Async;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 49
    .local v0, "NUMBER_OF_CORES":I
    new-instance v8, Lorg/nativescript/widgets/Async$PriorityThreadFactory;

    const/16 v1, 0xa

    invoke-direct {v8, v1}, Lorg/nativescript/widgets/Async$PriorityThreadFactory;-><init>(I)V

    .line 51
    .local v8, "backgroundPriorityThreadFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v9, Lorg/nativescript/widgets/Async;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    .end local v0    # "NUMBER_OF_CORES":I
    .end local v8    # "backgroundPriorityThreadFactory":Ljava/util/concurrent/ThreadFactory;
    :cond_0
    sget-object v0, Lorg/nativescript/widgets/Async;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
