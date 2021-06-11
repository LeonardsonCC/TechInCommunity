.class Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket$2;
.super Ljava/lang/Object;
.source "AndroidJsV8Inspector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;


# direct methods
.method constructor <init>(Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    .line 312
    iput-object p1, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket$2;->this$1:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket$2;->this$1:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    iget-object v0, v0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-static {v0}, Lcom/tns/AndroidJsV8Inspector;->access$200(Lcom/tns/AndroidJsV8Inspector;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 316
    .local v0, "nextMessage":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 317
    iget-object v1, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket$2;->this$1:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    iget-object v1, v1, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-virtual {v1, v0}, Lcom/tns/AndroidJsV8Inspector;->dispatchMessage(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket$2;->this$1:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    iget-object v1, v1, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->this$0:Lcom/tns/AndroidJsV8Inspector;

    invoke-static {v1}, Lcom/tns/AndroidJsV8Inspector;->access$200(Lcom/tns/AndroidJsV8Inspector;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method
