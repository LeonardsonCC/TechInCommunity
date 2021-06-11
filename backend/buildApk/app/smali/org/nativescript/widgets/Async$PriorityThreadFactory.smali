.class Lorg/nativescript/widgets/Async$PriorityThreadFactory;
.super Ljava/lang/Object;
.source "Async.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PriorityThreadFactory"
.end annotation


# instance fields
.field private final mThreadPriority:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "threadPriority"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lorg/nativescript/widgets/Async$PriorityThreadFactory;->mThreadPriority:I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/nativescript/widgets/Async$PriorityThreadFactory;)I
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/Async$PriorityThreadFactory;

    .line 70
    iget v0, p0, Lorg/nativescript/widgets/Async$PriorityThreadFactory;->mThreadPriority:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 79
    new-instance v0, Lorg/nativescript/widgets/Async$PriorityThreadFactory$1;

    invoke-direct {v0, p0, p1}, Lorg/nativescript/widgets/Async$PriorityThreadFactory$1;-><init>(Lorg/nativescript/widgets/Async$PriorityThreadFactory;Ljava/lang/Runnable;)V

    .line 90
    .local v0, "wrapperRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v1
.end method
