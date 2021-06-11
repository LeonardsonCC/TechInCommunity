.class public Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;
.super Lfi/iki/elonen/NanoHTTPD$ClientHandler;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalClientHandler"
.end annotation


# instance fields
.field private final acceptSocket:Landroid/net/LocalSocket;

.field private final inputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Landroid/net/LocalSocket;)V
    .locals 0
    .param p1, "this$0"    # Lfi/iki/elonen/NanoHTTPD;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "acceptSocket"    # Landroid/net/LocalSocket;

    .line 231
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD$ClientHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;)V

    .line 232
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->inputStream:Ljava/io/InputStream;

    .line 233
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->acceptSocket:Landroid/net/LocalSocket;

    .line 234
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 238
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->acceptSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public run()V
    .locals 8

    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->acceptSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .local v6, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$100(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    move-result-object v0

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;->create()Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    move-result-object v4

    .line 248
    .local v4, "tempFileManager":Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;

    .end local v4    # "tempFileManager":Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .line 251
    :goto_0
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->execute()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    goto :goto_1

    .line 265
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_2

    .line 253
    :catch_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    nop

    instance-of v1, v0, Ljava/net/SocketException;

    if-eqz v1, :cond_0

    const-string v1, "NanoHttpd Shutdown"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_1

    .line 262
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Communication with the client broken, or an bug in the handler code"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {v6}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->acceptSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v0, p0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    .line 269
    nop

    .line 270
    return-void

    .line 265
    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v6}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 267
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->acceptSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 268
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$LocalClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v1, v1, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v1, p0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    .line 269
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
