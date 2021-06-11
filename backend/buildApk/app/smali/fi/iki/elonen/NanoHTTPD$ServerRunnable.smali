.class public Lfi/iki/elonen/NanoHTTPD$ServerRunnable;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerRunnable"
.end annotation


# instance fields
.field private bindException:Ljava/io/IOException;

.field private hasBinded:Z

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;I)V
    .locals 1
    .param p1, "this$0"    # Lfi/iki/elonen/NanoHTTPD;
    .param p2, "timeout"    # I

    .line 1810
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z

    .line 1811
    iput p2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    .line 1812
    return-void
.end method

.method static synthetic access$1300(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD$ServerRunnable;

    .line 1802
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z

    return v0
.end method

.method static synthetic access$1400(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD$ServerRunnable;

    .line 1802
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1816
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$700(Lfi/iki/elonen/NanoHTTPD;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$800(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$800(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->run(Ljava/lang/String;)V

    .line 1818
    return-void

    .line 1822
    :cond_0
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$1000(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v0

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$900(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$900(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$700(Lfi/iki/elonen/NanoHTTPD;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$700(Lfi/iki/elonen/NanoHTTPD;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 1823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1827
    nop

    .line 1830
    :cond_2
    :try_start_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$1000(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 1831
    .local v0, "finalAccept":Ljava/net/Socket;
    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    if-lez v1, :cond_3

    .line 1832
    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1834
    :cond_3
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1835
    .local v1, "inputStream":Ljava/io/InputStream;
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v2, v2, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v3, v0, v1}, Lfi/iki/elonen/NanoHTTPD;->createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    move-result-object v3

    invoke-interface {v2, v3}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->exec(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1838
    .end local v0    # "finalAccept":Ljava/net/Socket;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 1836
    :catch_0
    move-exception v0

    .line 1837
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Communication with the client broken"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1839
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$1000(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1840
    return-void

    .line 1824
    :catch_1
    move-exception v0

    .line 1825
    .restart local v0    # "e":Ljava/io/IOException;
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    .line 1826
    return-void
.end method

.method public run(Ljava/lang/String;)V
    .locals 4
    .param p1, "localSocketName"    # Ljava/lang/String;

    .line 1845
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    new-instance v1, Landroid/net/LocalServerSocket;

    invoke-direct {v1, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lfi/iki/elonen/NanoHTTPD;->access$1102(Lfi/iki/elonen/NanoHTTPD;Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;

    .line 1847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1851
    nop

    .line 1855
    :cond_0
    :try_start_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$1100(Lfi/iki/elonen/NanoHTTPD;)Landroid/net/LocalServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    .line 1856
    .local v0, "finalAccept":Landroid/net/LocalSocket;
    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    if-lez v1, :cond_1

    .line 1857
    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1859
    :cond_1
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1860
    .local v1, "inputStream":Ljava/io/InputStream;
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v2, v2, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v3, v0, v1}, Lfi/iki/elonen/NanoHTTPD;->createClientHandler(Landroid/net/LocalSocket;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    move-result-object v3

    invoke-interface {v2, v3}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->exec(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1863
    .end local v0    # "finalAccept":Landroid/net/LocalSocket;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 1861
    :catch_0
    move-exception v0

    .line 1862
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Communication with the client broken"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1864
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$1000(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1865
    return-void

    .line 1848
    :catch_1
    move-exception v0

    .line 1849
    .restart local v0    # "e":Ljava/io/IOException;
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    .line 1850
    return-void
.end method
