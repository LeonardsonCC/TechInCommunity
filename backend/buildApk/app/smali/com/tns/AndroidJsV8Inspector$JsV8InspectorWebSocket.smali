.class Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;
.super Lfi/iki/elonen/NanoWSD$WebSocket;
.source "AndroidJsV8Inspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/AndroidJsV8Inspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsV8InspectorWebSocket"
.end annotation


# instance fields
.field private currentRuntimeLogger:Lcom/tns/Logger;

.field final synthetic this$0:Lcom/tns/AndroidJsV8Inspector;


# direct methods
.method constructor <init>(Lcom/tns/AndroidJsV8Inspector;Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Lcom/tns/Logger;)V
    .locals 0
    .param p2, "handshakeRequest"    # Lfi/iki/elonen/NanoHTTPD$IHTTPSession;
    .param p3, "runtimeLogger"    # Lcom/tns/Logger;

    .line 260
    iput-object p1, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    .line 261
    invoke-direct {p0, p2}, Lfi/iki/elonen/NanoWSD$WebSocket;-><init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V

    .line 262
    iput-object p3, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->currentRuntimeLogger:Lcom/tns/Logger;

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;)Lcom/tns/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    .line 257
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->currentRuntimeLogger:Lcom/tns/Logger;

    return-object v0
.end method


# virtual methods
.method public getInspectorMessage()Ljava/lang/String;
    .locals 2

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-static {v0}, Lcom/tns/AndroidJsV8Inspector;->access$200(Lcom/tns/AndroidJsV8Inspector;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 343
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "code"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "initiatedByRemote"    # Z

    .line 276
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->currentRuntimeLogger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "V8Inspector"

    const-string v1, "onClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-static {v0}, Lcom/tns/AndroidJsV8Inspector;->access$100(Lcom/tns/AndroidJsV8Inspector;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket$1;

    invoke-direct {v1, p0}, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket$1;-><init>(Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "exception"    # Ljava/io/IOException;

    .line 353
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Broken pipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->currentRuntimeLogger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 358
    :cond_1
    invoke-static {}, Lcom/tns/AndroidJsV8Inspector;->disconnect()V

    .line 359
    return-void
.end method

.method protected onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 3
    .param p1, "message"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    .line 293
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->currentRuntimeLogger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To dbg backend: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getTextPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ThreadId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V8Inspector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-static {v0}, Lcom/tns/AndroidJsV8Inspector;->access$200(Lcom/tns/AndroidJsV8Inspector;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getTextPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 299
    invoke-static {}, Lcom/tns/AndroidJsV8Inspector;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-static {v0}, Lcom/tns/AndroidJsV8Inspector;->access$200(Lcom/tns/AndroidJsV8Inspector;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    .local v0, "nextMessage":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 302
    iget-object v1, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-static {v1}, Lcom/tns/AndroidJsV8Inspector;->access$400(Lcom/tns/AndroidJsV8Inspector;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 303
    iget-object v1, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-static {v1}, Lcom/tns/AndroidJsV8Inspector;->access$200(Lcom/tns/AndroidJsV8Inspector;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getTextPayload()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Debugger.enable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-static {v1}, Lcom/tns/AndroidJsV8Inspector;->access$500(Lcom/tns/AndroidJsV8Inspector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-static {v2}, Lcom/tns/AndroidJsV8Inspector;->access$500(Lcom/tns/AndroidJsV8Inspector;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 309
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 311
    .end local v0    # "nextMessage":Ljava/lang/String;
    :cond_2
    :goto_1
    goto :goto_2

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-static {v0}, Lcom/tns/AndroidJsV8Inspector;->access$100(Lcom/tns/AndroidJsV8Inspector;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket$2;

    invoke-direct {v1, p0}, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket$2;-><init>(Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 323
    :goto_2
    return-void
.end method

.method protected onOpen()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->currentRuntimeLogger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpen: ThreadID:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V8Inspector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-virtual {v0, p0}, Lcom/tns/AndroidJsV8Inspector;->connect(Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method protected onPong(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 0
    .param p1, "pong"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    .line 348
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->currentRuntimeLogger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To dbg client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V8Inspector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    invoke-super {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->send(Ljava/lang/String;)V

    .line 332
    return-void
.end method
