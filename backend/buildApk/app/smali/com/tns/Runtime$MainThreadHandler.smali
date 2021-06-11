.class Lcom/tns/Runtime$MainThreadHandler;
.super Landroid/os/Handler;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 509
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 510
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 517
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/tns/MessageType;->WorkerToMain:I

    if-ne v0, v1, :cond_0

    .line 521
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    invoke-static {v0}, Lcom/tns/Runtime;->access$300(Lcom/tns/Runtime;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tns/Runtime;->access$1600(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 527
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/tns/MessageType;->Handshake:I

    if-ne v0, v1, :cond_4

    .line 528
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 529
    .local v0, "senderRuntimeId":I
    invoke-static {}, Lcom/tns/Runtime;->access$500()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tns/Runtime;

    .line 530
    .local v1, "workerRuntime":Lcom/tns/Runtime;
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v2

    .line 533
    .local v2, "mainRuntime":Lcom/tns/Runtime;
    if-nez v1, :cond_2

    .line 534
    invoke-static {v2}, Lcom/tns/Runtime;->access$100(Lcom/tns/Runtime;)Lcom/tns/Logger;

    move-result-object v3

    invoke-interface {v3}, Lcom/tns/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    invoke-static {v2}, Lcom/tns/Runtime;->access$100(Lcom/tns/Runtime;)Lcom/tns/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Main thread couldn\'t shake hands with worker (runtimeId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") because it has been terminated!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 538
    :cond_1
    return-void

    .line 545
    :cond_2
    invoke-static {v2}, Lcom/tns/Runtime;->access$1700(Lcom/tns/Runtime;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tns/Runtime;->getWorkerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tns/Runtime;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-static {v2}, Lcom/tns/Runtime;->access$100(Lcom/tns/Runtime;)Lcom/tns/Logger;

    move-result-object v3

    invoke-interface {v3}, Lcom/tns/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 548
    invoke-static {v2}, Lcom/tns/Runtime;->access$100(Lcom/tns/Runtime;)Lcom/tns/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Worker thread (workerId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tns/Runtime;->getWorkerId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") shook hands with the main thread!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 550
    .end local v0    # "senderRuntimeId":I
    .end local v1    # "workerRuntime":Lcom/tns/Runtime;
    .end local v2    # "mainRuntime":Lcom/tns/Runtime;
    :cond_3
    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/tns/MessageType;->CloseWorker:I

    if-ne v0, v1, :cond_5

    .line 551
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 554
    .local v0, "currentRuntime":Lcom/tns/Runtime;
    invoke-static {v0}, Lcom/tns/Runtime;->access$1700(Lcom/tns/Runtime;)Ljava/util/Map;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-static {v0}, Lcom/tns/Runtime;->access$300(Lcom/tns/Runtime;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Lcom/tns/Runtime;->access$1800(II)V

    .line 557
    .end local v0    # "currentRuntime":Lcom/tns/Runtime;
    goto :goto_0

    .line 561
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/tns/MessageType;->BubbleUpException:I

    if-ne v0, v1, :cond_6

    .line 562
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 564
    .restart local v0    # "currentRuntime":Lcom/tns/Runtime;
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 565
    .local v8, "workerId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/tns/JavaScriptErrorMessage;

    .line 567
    .local v9, "errorMessage":Lcom/tns/JavaScriptErrorMessage;
    invoke-static {v0}, Lcom/tns/Runtime;->access$300(Lcom/tns/Runtime;)I

    move-result v1

    invoke-virtual {v9}, Lcom/tns/JavaScriptErrorMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/tns/JavaScriptErrorMessage;->getStackTrace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/tns/JavaScriptErrorMessage;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/tns/JavaScriptErrorMessage;->getLineno()I

    move-result v6

    invoke-virtual {v9}, Lcom/tns/JavaScriptErrorMessage;->getThreadName()Ljava/lang/String;

    move-result-object v7

    move v2, v8

    invoke-static/range {v1 .. v7}, Lcom/tns/Runtime;->access$1900(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 569
    .end local v0    # "currentRuntime":Lcom/tns/Runtime;
    .end local v8    # "workerId":I
    .end local v9    # "errorMessage":Lcom/tns/JavaScriptErrorMessage;
    :cond_6
    :goto_0
    return-void
.end method
