.class public abstract Lorg/nativescript/widgets/image/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;,
        Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable;,
        Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;,
        Lorg/nativescript/widgets/image/AsyncTask$Status;,
        Lorg/nativescript/widgets/image/AsyncTask$SerialExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field public static final DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lorg/nativescript/widgets/image/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 204
    new-instance v0, Lorg/nativescript/widgets/image/AsyncTask$1;

    invoke-direct {v0}, Lorg/nativescript/widgets/image/AsyncTask$1;-><init>()V

    sput-object v0, Lorg/nativescript/widgets/image/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 212
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lorg/nativescript/widgets/image/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 218
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lorg/nativescript/widgets/image/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lorg/nativescript/widgets/image/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v3, 0x5

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lorg/nativescript/widgets/image/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 227
    invoke-static {}, Lorg/nativescript/widgets/image/Utils;->hasHoneycomb()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/nativescript/widgets/image/AsyncTask$SerialExecutor;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/image/AsyncTask$SerialExecutor;-><init>(Lorg/nativescript/widgets/image/AsyncTask$1;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/nativescript/widgets/image/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 228
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    sput-object v0, Lorg/nativescript/widgets/image/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 230
    const/4 v0, 0x2

    sget-object v2, Lorg/nativescript/widgets/image/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 231
    invoke-static {v0, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/nativescript/widgets/image/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 236
    new-instance v0, Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;-><init>(Lorg/nativescript/widgets/image/AsyncTask$1;)V

    sput-object v0, Lorg/nativescript/widgets/image/AsyncTask;->sHandler:Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;

    .line 238
    sget-object v0, Lorg/nativescript/widgets/image/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lorg/nativescript/widgets/image/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 306
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    sget-object v0, Lorg/nativescript/widgets/image/AsyncTask$Status;->PENDING:Lorg/nativescript/widgets/image/AsyncTask$Status;

    iput-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mStatus:Lorg/nativescript/widgets/image/AsyncTask$Status;

    .line 244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 307
    new-instance v0, Lorg/nativescript/widgets/image/AsyncTask$2;

    invoke-direct {v0, p0}, Lorg/nativescript/widgets/image/AsyncTask$2;-><init>(Lorg/nativescript/widgets/image/AsyncTask;)V

    iput-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mWorker:Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable;

    .line 317
    new-instance v0, Lorg/nativescript/widgets/image/AsyncTask$3;

    iget-object v1, p0, Lorg/nativescript/widgets/image/AsyncTask;->mWorker:Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lorg/nativescript/widgets/image/AsyncTask$3;-><init>(Lorg/nativescript/widgets/image/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 332
    return-void
.end method

.method static synthetic access$300(Lorg/nativescript/widgets/image/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/AsyncTask;

    .line 197
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lorg/nativescript/widgets/image/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 197
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/image/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/nativescript/widgets/image/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/image/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 197
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/image/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lorg/nativescript/widgets/image/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/image/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 197
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/image/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 629
    sget-object v0, Lorg/nativescript/widgets/image/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 630
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 654
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lorg/nativescript/widgets/image/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/image/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 657
    :cond_0
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/image/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 659
    :goto_0
    sget-object v0, Lorg/nativescript/widgets/image/AsyncTask$Status;->FINISHED:Lorg/nativescript/widgets/image/AsyncTask$Status;

    iput-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mStatus:Lorg/nativescript/widgets/image/AsyncTask$Status;

    .line 660
    return-void
.end method

.method public static init()V
    .locals 1

    .line 295
    sget-object v0, Lorg/nativescript/widgets/image/AsyncTask;->sHandler:Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;

    invoke-virtual {v0}, Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 296
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    sget-object v0, Lorg/nativescript/widgets/image/AsyncTask;->sHandler:Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;

    new-instance v1, Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;-><init>(Lorg/nativescript/widgets/image/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 346
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 335
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 336
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 337
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/image/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "exec"    # Ljava/util/concurrent/Executor;

    .line 300
    sput-object p0, Lorg/nativescript/widgets/image/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 301
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .line 492
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 493
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lorg/nativescript/widgets/image/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lorg/nativescript/widgets/image/AsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 560
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lorg/nativescript/widgets/image/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/nativescript/widgets/image/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lorg/nativescript/widgets/image/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lorg/nativescript/widgets/image/AsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lorg/nativescript/widgets/image/AsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 598
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mStatus:Lorg/nativescript/widgets/image/AsyncTask$Status;

    sget-object v1, Lorg/nativescript/widgets/image/AsyncTask$Status;->PENDING:Lorg/nativescript/widgets/image/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 599
    sget-object v0, Lorg/nativescript/widgets/image/AsyncTask$4;->$SwitchMap$org$nativescript$widgets$image$AsyncTask$Status:[I

    iget-object v1, p0, Lorg/nativescript/widgets/image/AsyncTask;->mStatus:Lorg/nativescript/widgets/image/AsyncTask$Status;

    invoke-virtual {v1}, Lorg/nativescript/widgets/image/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_2
    :goto_0
    sget-object v0, Lorg/nativescript/widgets/image/AsyncTask$Status;->RUNNING:Lorg/nativescript/widgets/image/AsyncTask$Status;

    iput-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mStatus:Lorg/nativescript/widgets/image/AsyncTask$Status;

    .line 612
    invoke-virtual {p0}, Lorg/nativescript/widgets/image/AsyncTask;->onPreExecute()V

    .line 614
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mWorker:Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 615
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 617
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 508
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 528
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lorg/nativescript/widgets/image/AsyncTask$Status;
    .locals 1

    .line 355
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mStatus:Lorg/nativescript/widgets/image/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 459
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .line 446
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 430
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lorg/nativescript/widgets/image/AsyncTask;->onCancelled()V

    .line 431
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 399
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 383
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 412
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 647
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask;, "Lorg/nativescript/widgets/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-virtual {p0}, Lorg/nativescript/widgets/image/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    sget-object v0, Lorg/nativescript/widgets/image/AsyncTask;->sHandler:Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;-><init>(Lorg/nativescript/widgets/image/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 651
    :cond_0
    return-void
.end method
