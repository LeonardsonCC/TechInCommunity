.class Lcom/tns/Runtime$WorkerThreadHandler;
.super Landroid/os/Handler;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThreadHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 382
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 383
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 387
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 389
    .local v0, "currentRuntime":Lcom/tns/Runtime;
    invoke-static {v0}, Lcom/tns/Runtime;->access$000(Lcom/tns/Runtime;)Z

    move-result v1

    const-string v2, "Worker(id="

    if-eqz v1, :cond_1

    .line 390
    invoke-static {v0}, Lcom/tns/Runtime;->access$100(Lcom/tns/Runtime;)Lcom/tns/Logger;

    move-result-object v1

    invoke-interface {v1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-static {v0}, Lcom/tns/Runtime;->access$100(Lcom/tns/Runtime;)Lcom/tns/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/tns/Runtime;->access$200(Lcom/tns/Runtime;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is terminating, it will not process the message."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 394
    :cond_0
    return-void

    .line 400
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    sget v3, Lcom/tns/MessageType;->MainToWorker:I

    if-ne v1, v3, :cond_2

    .line 404
    invoke-static {v0}, Lcom/tns/Runtime;->access$300(Lcom/tns/Runtime;)I

    move-result v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tns/Runtime;->access$400(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    sget v3, Lcom/tns/MessageType;->TerminateThread:I

    const-string v4, "\") has terminated execution. Don\'t make further function calls to it."

    const-string v5, ", name=\""

    const/4 v6, 0x1

    if-ne v1, v3, :cond_4

    .line 406
    invoke-static {v0, v6}, Lcom/tns/Runtime;->access$002(Lcom/tns/Runtime;Z)Z

    .line 407
    invoke-static {v0}, Lcom/tns/GcListener;->unsubscribe(Lcom/tns/Runtime;)V

    .line 409
    invoke-static {}, Lcom/tns/Runtime;->access$500()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/tns/Runtime;->access$300(Lcom/tns/Runtime;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-static {v0}, Lcom/tns/Runtime;->access$300(Lcom/tns/Runtime;)I

    move-result v1

    invoke-static {v1}, Lcom/tns/Runtime;->access$600(I)V

    .line 413
    invoke-static {v0}, Lcom/tns/Runtime;->access$100(Lcom/tns/Runtime;)Lcom/tns/Logger;

    move-result-object v1

    invoke-interface {v1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 414
    invoke-static {v0}, Lcom/tns/Runtime;->access$100(Lcom/tns/Runtime;)Lcom/tns/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/tns/Runtime;->access$200(Lcom/tns/Runtime;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 417
    :cond_3
    invoke-virtual {p0}, Lcom/tns/Runtime$WorkerThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 418
    :cond_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    sget v3, Lcom/tns/MessageType;->TerminateAndCloseThread:I

    if-ne v1, v3, :cond_6

    .line 419
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 420
    .local v1, "msgToMain":Landroid/os/Message;
    sget v3, Lcom/tns/MessageType;->CloseWorker:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 421
    invoke-static {v0}, Lcom/tns/Runtime;->access$200(Lcom/tns/Runtime;)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 423
    invoke-static {v0}, Lcom/tns/Runtime;->access$700(Lcom/tns/Runtime;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 425
    invoke-static {v0, v6}, Lcom/tns/Runtime;->access$002(Lcom/tns/Runtime;Z)Z

    .line 426
    invoke-static {v0}, Lcom/tns/GcListener;->unsubscribe(Lcom/tns/Runtime;)V

    .line 428
    invoke-static {}, Lcom/tns/Runtime;->access$500()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Lcom/tns/Runtime;->access$300(Lcom/tns/Runtime;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {v0}, Lcom/tns/Runtime;->access$300(Lcom/tns/Runtime;)I

    move-result v3

    invoke-static {v3}, Lcom/tns/Runtime;->access$600(I)V

    .line 432
    invoke-static {v0}, Lcom/tns/Runtime;->access$100(Lcom/tns/Runtime;)Lcom/tns/Logger;

    move-result-object v3

    invoke-interface {v3}, Lcom/tns/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 433
    invoke-static {v0}, Lcom/tns/Runtime;->access$100(Lcom/tns/Runtime;)Lcom/tns/Logger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/tns/Runtime;->access$200(Lcom/tns/Runtime;)I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 436
    :cond_5
    invoke-virtual {p0}, Lcom/tns/Runtime$WorkerThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 438
    .end local v1    # "msgToMain":Landroid/os/Message;
    :cond_6
    :goto_0
    return-void
.end method
