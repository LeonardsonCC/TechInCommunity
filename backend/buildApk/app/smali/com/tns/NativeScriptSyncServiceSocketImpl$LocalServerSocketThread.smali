.class Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;
.super Ljava/lang/Object;
.source "NativeScriptSyncServiceSocketImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptSyncServiceSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalServerSocketThread"
.end annotation


# instance fields
.field private deviceSystemSocket:Landroid/net/LocalServerSocket;

.field private livesyncWorker:Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;

.field private final name:Ljava/lang/String;

.field private volatile running:Z

.field final synthetic this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;


# direct methods
.method public constructor <init>(Lcom/tns/NativeScriptSyncServiceSocketImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->name:Ljava/lang/String;

    .line 43
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->running:Z

    .line 44
    return-void
.end method

.method private setUpLivesyncThread()Ljava/lang/Thread;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->livesyncWorker:Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 81
    .local v0, "livesyncThread":Ljava/lang/Thread;
    new-instance v1, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread$1;

    invoke-direct {v1, p0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread$1;-><init>(Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 87
    const-string v1, "Livesync Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 88
    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->deviceSystemSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    .line 94
    return-void
.end method

.method public run()V
    .locals 3

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->running:Z

    .line 60
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    iget-object v1, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->deviceSystemSocket:Landroid/net/LocalServerSocket;

    .line 61
    :goto_0
    iget-boolean v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->running:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->deviceSystemSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    .line 63
    .local v0, "systemSocket":Landroid/net/LocalSocket;
    new-instance v1, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;

    iget-object v2, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-direct {v1, v2, v0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;-><init>(Lcom/tns/NativeScriptSyncServiceSocketImpl;Landroid/net/LocalSocket;)V

    iput-object v1, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->livesyncWorker:Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;

    .line 64
    invoke-direct {p0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->setUpLivesyncThread()Ljava/lang/Thread;

    move-result-object v1

    .line 65
    .local v1, "liveSyncThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "systemSocket":Landroid/net/LocalSocket;
    .end local v1    # "liveSyncThread":Ljava/lang/Thread;
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 67
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    nop

    .line 77
    :cond_1
    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->running:Z

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->deviceSystemSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method
