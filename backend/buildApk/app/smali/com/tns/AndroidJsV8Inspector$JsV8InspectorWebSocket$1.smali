.class Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket$1;
.super Ljava/lang/Object;
.source "AndroidJsV8Inspector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->onClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
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

    .line 280
    iput-object p1, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket$1;->this$1:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket$1;->this$1:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    invoke-static {v0}, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->access$000(Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;)Lcom/tns/Logger;

    move-result-object v0

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "V8Inspector"

    const-string v1, "Disconnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    invoke-static {}, Lcom/tns/AndroidJsV8Inspector;->disconnect()V

    .line 287
    return-void
.end method
