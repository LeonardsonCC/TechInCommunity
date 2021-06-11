.class public Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureServerSocketFactory"
.end annotation


# instance fields
.field private sslProtocols:[Ljava/lang/String;

.field private sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V
    .locals 0
    .param p1, "sslServerSocketFactory"    # Ljavax/net/ssl/SSLServerSocketFactory;
    .param p2, "sslProtocols"    # [Ljava/lang/String;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 549
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslProtocols:[Ljava/lang/String;

    .line 550
    return-void
.end method


# virtual methods
.method public create()Ljava/net/ServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "ss":Ljavax/net/ssl/SSLServerSocket;
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    .line 556
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslProtocols:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 561
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    .line 562
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 563
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 564
    return-object v0
.end method
