.class Lcom/tns/Runtime$WorkerThread$1;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/Runtime$WorkerThread;->startRuntime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/Runtime$WorkerThread;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tns/Runtime$WorkerThread;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tns/Runtime$WorkerThread;

    .line 459
    iput-object p1, p0, Lcom/tns/Runtime$WorkerThread$1;->this$0:Lcom/tns/Runtime$WorkerThread;

    iput-object p2, p0, Lcom/tns/Runtime$WorkerThread$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 462
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 464
    new-instance v0, Lcom/tns/WorkThreadScheduler;

    new-instance v1, Lcom/tns/Runtime$WorkerThreadHandler;

    iget-object v2, p0, Lcom/tns/Runtime$WorkerThread$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tns/Runtime$WorkerThreadHandler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/tns/WorkThreadScheduler;-><init>(Landroid/os/Handler;)V

    .line 466
    .local v0, "workThreadScheduler":Lcom/tns/WorkThreadScheduler;
    new-instance v1, Lcom/tns/DynamicConfiguration;

    iget-object v2, p0, Lcom/tns/Runtime$WorkerThread$1;->this$0:Lcom/tns/Runtime$WorkerThread;

    invoke-static {v2}, Lcom/tns/Runtime$WorkerThread;->access$800(Lcom/tns/Runtime$WorkerThread;)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/tns/Runtime$WorkerThread$1;->this$0:Lcom/tns/Runtime$WorkerThread;

    invoke-static {v3}, Lcom/tns/Runtime$WorkerThread;->access$900(Lcom/tns/Runtime$WorkerThread;)Lcom/tns/ThreadScheduler;

    move-result-object v3

    iget-object v4, p0, Lcom/tns/Runtime$WorkerThread$1;->this$0:Lcom/tns/Runtime$WorkerThread;

    invoke-static {v4}, Lcom/tns/Runtime$WorkerThread;->access$1000(Lcom/tns/Runtime$WorkerThread;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/tns/DynamicConfiguration;-><init>(Ljava/lang/Integer;Lcom/tns/ThreadScheduler;Lcom/tns/ThreadScheduler;Ljava/lang/String;)V

    .line 468
    .local v1, "dynamicConfiguration":Lcom/tns/DynamicConfiguration;
    invoke-static {}, Lcom/tns/Runtime;->access$1100()Lcom/tns/StaticConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/tns/StaticConfiguration;->logger:Lcom/tns/Logger;

    invoke-interface {v2}, Lcom/tns/Logger;->isEnabled()Z

    move-result v2

    const-string v3, "Worker (id="

    if-eqz v2, :cond_0

    .line 469
    invoke-static {}, Lcom/tns/Runtime;->access$1100()Lcom/tns/StaticConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/tns/StaticConfiguration;->logger:Lcom/tns/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tns/Runtime$WorkerThread$1;->this$0:Lcom/tns/Runtime$WorkerThread;

    invoke-static {v5}, Lcom/tns/Runtime$WorkerThread;->access$800(Lcom/tns/Runtime$WorkerThread;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")\'s Runtime is initializing!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 472
    :cond_0
    invoke-static {v1}, Lcom/tns/Runtime;->access$1200(Lcom/tns/DynamicConfiguration;)Lcom/tns/Runtime;

    move-result-object v2

    .line 474
    .local v2, "runtime":Lcom/tns/Runtime;
    invoke-static {}, Lcom/tns/Runtime;->access$1100()Lcom/tns/StaticConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/tns/StaticConfiguration;->logger:Lcom/tns/Logger;

    invoke-interface {v4}, Lcom/tns/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 475
    invoke-static {}, Lcom/tns/Runtime;->access$1100()Lcom/tns/StaticConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/tns/StaticConfiguration;->logger:Lcom/tns/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tns/Runtime$WorkerThread$1;->this$0:Lcom/tns/Runtime$WorkerThread;

    invoke-static {v3}, Lcom/tns/Runtime$WorkerThread;->access$800(Lcom/tns/Runtime$WorkerThread;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")\'s Runtime initialized!"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 482
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 483
    .local v3, "msg":Landroid/os/Message;
    sget v4, Lcom/tns/MessageType;->Handshake:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 484
    invoke-static {v2}, Lcom/tns/Runtime;->access$300(Lcom/tns/Runtime;)I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg2:I

    .line 486
    invoke-static {v2}, Lcom/tns/Runtime;->access$700(Lcom/tns/Runtime;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    invoke-static {v2}, Lcom/tns/Runtime;->access$300(Lcom/tns/Runtime;)I

    move-result v4

    iget-object v5, p0, Lcom/tns/Runtime$WorkerThread$1;->this$0:Lcom/tns/Runtime$WorkerThread;

    invoke-static {v5}, Lcom/tns/Runtime$WorkerThread;->access$1300(Lcom/tns/Runtime$WorkerThread;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/tns/Runtime;->access$1400(Lcom/tns/Runtime;ILjava/lang/String;)V

    .line 489
    invoke-static {v2}, Lcom/tns/Runtime;->access$1500(Lcom/tns/Runtime;)V

    .line 490
    return-void
.end method
