.class Lcom/tns/Runtime$WorkerThread;
.super Landroid/os/HandlerThread;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# instance fields
.field private callingJsDir:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private mainThreadScheduler:Lcom/tns/ThreadScheduler;

.field private workerId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/tns/ThreadScheduler;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workerId"    # Ljava/lang/Integer;
    .param p3, "mainThreadScheduler"    # Lcom/tns/ThreadScheduler;
    .param p4, "callingJsDir"    # Ljava/lang/String;

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 450
    iput-object p1, p0, Lcom/tns/Runtime$WorkerThread;->filePath:Ljava/lang/String;

    .line 451
    iput-object p2, p0, Lcom/tns/Runtime$WorkerThread;->workerId:Ljava/lang/Integer;

    .line 452
    iput-object p3, p0, Lcom/tns/Runtime$WorkerThread;->mainThreadScheduler:Lcom/tns/ThreadScheduler;

    .line 453
    iput-object p4, p0, Lcom/tns/Runtime$WorkerThread;->callingJsDir:Ljava/lang/String;

    .line 454
    return-void
.end method

.method static synthetic access$1000(Lcom/tns/Runtime$WorkerThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime$WorkerThread;

    .line 441
    iget-object v0, p0, Lcom/tns/Runtime$WorkerThread;->callingJsDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tns/Runtime$WorkerThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime$WorkerThread;

    .line 441
    iget-object v0, p0, Lcom/tns/Runtime$WorkerThread;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tns/Runtime$WorkerThread;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime$WorkerThread;

    .line 441
    iget-object v0, p0, Lcom/tns/Runtime$WorkerThread;->workerId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tns/Runtime$WorkerThread;)Lcom/tns/ThreadScheduler;
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime$WorkerThread;

    .line 441
    iget-object v0, p0, Lcom/tns/Runtime$WorkerThread;->mainThreadScheduler:Lcom/tns/ThreadScheduler;

    return-object v0
.end method


# virtual methods
.method public startRuntime()V
    .locals 2

    .line 457
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/tns/Runtime$WorkerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 459
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/tns/Runtime$WorkerThread$1;

    invoke-direct {v1, p0, v0}, Lcom/tns/Runtime$WorkerThread$1;-><init>(Lcom/tns/Runtime$WorkerThread;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method
