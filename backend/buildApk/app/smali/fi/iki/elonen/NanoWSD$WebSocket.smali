.class public abstract Lfi/iki/elonen/NanoWSD$WebSocket;
.super Ljava/lang/Object;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WebSocket"
.end annotation


# instance fields
.field private final continuousFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfi/iki/elonen/NanoWSD$WebSocketFrame;",
            ">;"
        }
    .end annotation
.end field

.field private continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field private final handshakeRequest:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

.field private final handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

.field private final in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private state:Lfi/iki/elonen/NanoWSD$State;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V
    .locals 9
    .param p1, "handshakeRequest"    # Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 73
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    .line 75
    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->UNCONNECTED:Lfi/iki/elonen/NanoWSD$State;

    iput-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    .line 79
    new-instance v1, Lfi/iki/elonen/NanoWSD$WebSocket$1;

    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;->SWITCH_PROTOCOL:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-object v6, v0

    check-cast v6, Ljava/io/InputStream;

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lfi/iki/elonen/NanoWSD$WebSocket$1;-><init>(Lfi/iki/elonen/NanoWSD$WebSocket;Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    iput-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

    .line 93
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeRequest:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    .line 94
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->in:Ljava/io/InputStream;

    .line 96
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

    const-string v1, "upgrade"

    const-string v2, "websocket"

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

    const-string v1, "connection"

    const-string v2, "Upgrade"

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method static synthetic access$002(Lfi/iki/elonen/NanoWSD$WebSocket;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p0, "x0"    # Lfi/iki/elonen/NanoWSD$WebSocket;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .line 65
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->out:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$102(Lfi/iki/elonen/NanoWSD$WebSocket;Lfi/iki/elonen/NanoWSD$State;)Lfi/iki/elonen/NanoWSD$State;
    .locals 0
    .param p0, "x0"    # Lfi/iki/elonen/NanoWSD$WebSocket;
    .param p1, "x1"    # Lfi/iki/elonen/NanoWSD$State;

    .line 65
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    return-object p1
.end method

.method static synthetic access$200(Lfi/iki/elonen/NanoWSD$WebSocket;)V
    .locals 0
    .param p0, "x0"    # Lfi/iki/elonen/NanoWSD$WebSocket;

    .line 65
    invoke-direct {p0}, Lfi/iki/elonen/NanoWSD$WebSocket;->readWebsocket()V

    return-void
.end method

.method private doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "code"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "initiatedByRemote"    # Z

    .line 144
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->CLOSED:Lfi/iki/elonen/NanoWSD$State;

    if-ne v0, v1, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->in:Ljava/io/InputStream;

    const-string v1, "close failed"

    if-eqz v0, :cond_1

    .line 149
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lfi/iki/elonen/NanoWSD;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 156
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    goto :goto_1

    .line 157
    :catch_1
    move-exception v0

    .line 158
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lfi/iki/elonen/NanoWSD;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    sget-object v0, Lfi/iki/elonen/NanoWSD$State;->CLOSED:Lfi/iki/elonen/NanoWSD$State;

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lfi/iki/elonen/NanoWSD$WebSocket;->onClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    .line 163
    return-void
.end method

.method private handleCloseFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 4
    .param p1, "frame"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 177
    .local v0, "code":Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    const-string v1, ""

    .line 178
    .local v1, "reason":Ljava/lang/String;
    instance-of v2, p1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    if-eqz v2, :cond_0

    .line 179
    move-object v2, p1

    check-cast v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    invoke-virtual {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->getCloseCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object v0

    .line 180
    move-object v2, p1

    check-cast v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    invoke-virtual {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->getCloseReason()Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_0
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v3, Lfi/iki/elonen/NanoWSD$State;->CLOSING:Lfi/iki/elonen/NanoWSD$State;

    if-ne v2, v3, :cond_1

    .line 184
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    goto :goto_0

    .line 186
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocket;->close(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    .line 188
    :goto_0
    return-void
.end method

.method private handleFrameFragment(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 3
    .param p1, "frame"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Continuation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eq v0, v1, :cond_1

    .line 193
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 197
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Previous continuous frame sequence not completed."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isFin()Z

    move-result v0

    const-string v1, "Continuous frame sequence was not started."

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 207
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 202
    :cond_2
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-direct {v0, v2, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_3
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :goto_0
    return-void

    .line 210
    :cond_4
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-direct {v0, v2, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0
.end method

.method private handleWebsocketFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 4
    .param p1, "frame"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->debugFrameReceived(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 219
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->handleCloseFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_2

    .line 221
    :cond_0
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Ping:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_1

    .line 222
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Pong:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_2

    .line 223
    :cond_1
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Pong:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_2

    .line 224
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->onPong(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_2

    .line 225
    :cond_2
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isFin()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Continuation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 227
    :cond_3
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-nez v0, :cond_6

    .line 229
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Text:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Binary:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 232
    :cond_4
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Non control or continuous frame expected."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_2

    .line 228
    :cond_6
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Continuous frame sequence not completed."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_7
    :goto_1
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->handleFrameFragment(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 234
    :goto_2
    return-void
.end method

.method private readWebsocket()V
    .locals 5

    .line 247
    const-string v0, "Handler terminated without closing the connection."

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v3, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    if-ne v2, v3, :cond_0

    .line 248
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->in:Ljava/io/InputStream;

    invoke-static {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->read(Ljava/io/InputStream;)Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    move-result-object v2

    invoke-direct {p0, v2}, Lfi/iki/elonen/NanoWSD$WebSocket;->handleWebsocketFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 259
    :cond_0
    :goto_1
    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InternalServerError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-direct {p0, v2, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    .line 260
    goto :goto_2

    .line 259
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 253
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0, v2}, Lfi/iki/elonen/NanoWSD$WebSocket;->onException(Ljava/io/IOException;)V

    .line 255
    instance-of v3, v2, Lfi/iki/elonen/NanoWSD$WebSocketException;

    if-eqz v3, :cond_0

    .line 256
    move-object v3, v2

    check-cast v3, Lfi/iki/elonen/NanoWSD$WebSocketException;

    invoke-virtual {v3}, Lfi/iki/elonen/NanoWSD$WebSocketException;->getCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lfi/iki/elonen/NanoWSD$WebSocketException;

    invoke-virtual {v4}, Lfi/iki/elonen/NanoWSD$WebSocketException;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    goto :goto_1

    .line 250
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 251
    .local v2, "e":Ljava/nio/charset/CharacterCodingException;
    invoke-virtual {p0, v2}, Lfi/iki/elonen/NanoWSD$WebSocket;->onException(Ljava/io/IOException;)V

    .line 252
    sget-object v3, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InvalidFramePayloadData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-virtual {v2}, Ljava/nio/charset/CharacterCodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/nio/charset/CharacterCodingException;
    goto :goto_1

    .line 261
    :goto_2
    return-void

    .line 259
    :goto_3
    sget-object v3, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InternalServerError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-direct {p0, v3, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    .line 260
    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public close(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "code"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "initiatedByRemote"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    .line 135
    .local v0, "oldState":Lfi/iki/elonen/NanoWSD$State;
    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->CLOSING:Lfi/iki/elonen/NanoWSD$State;

    iput-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    .line 136
    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    if-ne v0, v1, :cond_0

    .line 137
    new-instance v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    invoke-direct {v1, p1, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    .line 141
    :goto_0
    return-void
.end method

.method protected debugFrameReceived(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 0
    .param p1, "frame"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    .line 122
    return-void
.end method

.method protected debugFrameSent(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 0
    .param p1, "frame"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    .line 131
    return-void
.end method

.method public getHandshakeRequest()Lfi/iki/elonen/NanoHTTPD$IHTTPSession;
    .locals 1

    .line 168
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeRequest:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    return-object v0
.end method

.method public getHandshakeResponse()Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .line 172
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

    return-object v0
.end method

.method public getState()Lfi/iki/elonen/NanoWSD$State;
    .locals 1

    .line 104
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract onClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
.end method

.method protected abstract onException(Ljava/io/IOException;)V
.end method

.method protected abstract onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
.end method

.method protected abstract onOpen()V
.end method

.method protected abstract onPong(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
.end method

.method public ping([B)V
    .locals 3
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Ping:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 240
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 3
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Text:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 269
    return-void
.end method

.method public send([B)V
    .locals 3
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Binary:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 265
    return-void
.end method

.method public declared-synchronized sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 1
    .param p1, "frame"    # Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 272
    :try_start_0
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->debugFrameSent(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 273
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 271
    .end local p0    # "this":Lfi/iki/elonen/NanoWSD$WebSocket;
    .end local p1    # "frame":Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
