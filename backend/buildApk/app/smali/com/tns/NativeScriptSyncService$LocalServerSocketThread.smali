.class Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;
.super Ljava/lang/Object;
.source "NativeScriptSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalServerSocketThread"
.end annotation


# instance fields
.field private commThread:Lcom/tns/NativeScriptSyncService$ListenerWorker;

.field private final name:Ljava/lang/String;

.field private volatile running:Z

.field private serverSocket:Landroid/net/LocalServerSocket;

.field final synthetic this$0:Lcom/tns/NativeScriptSyncService;


# direct methods
.method public constructor <init>(Lcom/tns/NativeScriptSyncService;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->this$0:Lcom/tns/NativeScriptSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->name:Ljava/lang/String;

    .line 85
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->running:Z

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->running:Z

    .line 102
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    iget-object v1, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    .line 103
    :goto_0
    iget-boolean v0, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->running:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    .line 105
    .local v0, "socket":Landroid/net/LocalSocket;
    new-instance v1, Lcom/tns/NativeScriptSyncService$ListenerWorker;

    iget-object v2, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->this$0:Lcom/tns/NativeScriptSyncService;

    invoke-direct {v1, v2, v0}, Lcom/tns/NativeScriptSyncService$ListenerWorker;-><init>(Lcom/tns/NativeScriptSyncService;Landroid/net/LocalSocket;)V

    iput-object v1, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->commThread:Lcom/tns/NativeScriptSyncService$ListenerWorker;

    .line 106
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->commThread:Lcom/tns/NativeScriptSyncService$ListenerWorker;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "socket":Landroid/net/LocalSocket;
    goto :goto_0

    .line 112
    :cond_0
    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->running:Z

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method
