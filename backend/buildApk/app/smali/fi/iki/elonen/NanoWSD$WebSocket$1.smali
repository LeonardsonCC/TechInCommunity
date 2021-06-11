.class Lfi/iki/elonen/NanoWSD$WebSocket$1;
.super Lfi/iki/elonen/NanoHTTPD$Response;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD$WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfi/iki/elonen/NanoWSD$WebSocket;


# direct methods
.method constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocket;Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 6
    .param p1, "this$0"    # Lfi/iki/elonen/NanoWSD$WebSocket;
    .param p2, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/io/InputStream;
    .param p5, "totalBytes"    # J

    .line 79
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket$1;->this$0:Lfi/iki/elonen/NanoWSD$WebSocket;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-void
.end method


# virtual methods
.method protected send(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 83
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket$1;->this$0:Lfi/iki/elonen/NanoWSD$WebSocket;

    invoke-static {v0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->access$002(Lfi/iki/elonen/NanoWSD$WebSocket;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 84
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket$1;->this$0:Lfi/iki/elonen/NanoWSD$WebSocket;

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->CONNECTING:Lfi/iki/elonen/NanoWSD$State;

    invoke-static {v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->access$102(Lfi/iki/elonen/NanoWSD$WebSocket;Lfi/iki/elonen/NanoWSD$State;)Lfi/iki/elonen/NanoWSD$State;

    .line 85
    invoke-super {p0, p1}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 86
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket$1;->this$0:Lfi/iki/elonen/NanoWSD$WebSocket;

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    invoke-static {v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->access$102(Lfi/iki/elonen/NanoWSD$WebSocket;Lfi/iki/elonen/NanoWSD$State;)Lfi/iki/elonen/NanoWSD$State;

    .line 87
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket$1;->this$0:Lfi/iki/elonen/NanoWSD$WebSocket;

    invoke-virtual {v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->onOpen()V

    .line 88
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket$1;->this$0:Lfi/iki/elonen/NanoWSD$WebSocket;

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->access$200(Lfi/iki/elonen/NanoWSD$WebSocket;)V

    .line 89
    return-void
.end method
