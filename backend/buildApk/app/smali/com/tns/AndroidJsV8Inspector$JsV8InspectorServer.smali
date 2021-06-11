.class Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;
.super Lfi/iki/elonen/NanoWSD;
.source "AndroidJsV8Inspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/AndroidJsV8Inspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsV8InspectorServer"
.end annotation


# instance fields
.field private currentRuntimeLogger:Lcom/tns/Logger;

.field final synthetic this$0:Lcom/tns/AndroidJsV8Inspector;

.field private webSocket:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;


# direct methods
.method constructor <init>(Lcom/tns/AndroidJsV8Inspector;Ljava/lang/String;Lcom/tns/Logger;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "runtimeLogger"    # Lcom/tns/Logger;

    .line 225
    iput-object p1, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;->this$0:Lcom/tns/AndroidJsV8Inspector;

    .line 226
    invoke-direct {p0, p2}, Lfi/iki/elonen/NanoWSD;-><init>(Ljava/lang/String;)V

    .line 227
    iput-object p3, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;->currentRuntimeLogger:Lcom/tns/Logger;

    .line 228
    return-void
.end method


# virtual methods
.method protected openWebSocket(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;
    .locals 4
    .param p1, "handshake"    # Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    .line 243
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;->webSocket:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "New browser connection is open"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->close(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "ioException":Ljava/io/IOException;
    iget-object v1, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;->webSocket:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    invoke-virtual {v1}, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->getState()Lfi/iki/elonen/NanoWSD$State;

    move-result-object v1

    sget-object v2, Lfi/iki/elonen/NanoWSD$State;->CLOSED:Lfi/iki/elonen/NanoWSD$State;

    if-eq v1, v2, :cond_0

    .line 248
    const-string v1, "{N}.v8-inspector"

    const-string v2, "Error closing previous connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v0    # "ioException":Ljava/io/IOException;
    :cond_0
    :goto_0
    new-instance v0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    iget-object v1, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;->this$0:Lcom/tns/AndroidJsV8Inspector;

    iget-object v2, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;->currentRuntimeLogger:Lcom/tns/Logger;

    invoke-direct {v0, v1, p1, v2}, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;-><init>(Lcom/tns/AndroidJsV8Inspector;Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Lcom/tns/Logger;)V

    iput-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;->webSocket:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    .line 253
    return-object v0
.end method

.method protected serveHttp(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 2
    .param p1, "session"    # Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    .line 232
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;->currentRuntimeLogger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http request for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{N}.v8-inspector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    invoke-super {p0, p1}, Lfi/iki/elonen/NanoWSD;->serveHttp(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method
