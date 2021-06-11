.class Lcom/tns/NativeScriptSyncService$ListenerWorker;
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
    name = "ListenerWorker"
.end annotation


# instance fields
.field private final input:Ljava/io/DataInputStream;

.field private output:Ljava/io/OutputStream;

.field private socket:Ljava/io/Closeable;

.field final synthetic this$0:Lcom/tns/NativeScriptSyncService;


# direct methods
.method public constructor <init>(Lcom/tns/NativeScriptSyncService;Landroid/net/LocalSocket;)V
    .locals 1
    .param p2, "socket"    # Landroid/net/LocalSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->this$0:Lcom/tns/NativeScriptSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->socket:Ljava/io/Closeable;

    .line 123
    new-instance p1, Ljava/io/DataInputStream;

    invoke-virtual {p2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->input:Ljava/io/DataInputStream;

    .line 124
    invoke-virtual {p2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->output:Ljava/io/OutputStream;

    .line 125
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 130
    .local v0, "length":I
    iget-object v1, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->input:Ljava/io/DataInputStream;

    new-array v2, v0, [B

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 131
    iget-object v1, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->this$0:Lcom/tns/NativeScriptSyncService;

    iget-object v2, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->this$0:Lcom/tns/NativeScriptSyncService;

    invoke-static {v2}, Lcom/tns/NativeScriptSyncService;->access$000(Lcom/tns/NativeScriptSyncService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->this$0:Lcom/tns/NativeScriptSyncService;

    invoke-static {v3}, Lcom/tns/NativeScriptSyncService;->access$100(Lcom/tns/NativeScriptSyncService;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tns/NativeScriptSyncService;->access$200(Lcom/tns/NativeScriptSyncService;Landroid/content/Context;Ljava/io/File;)V

    .line 132
    iget-object v1, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->this$0:Lcom/tns/NativeScriptSyncService;

    iget-object v2, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->this$0:Lcom/tns/NativeScriptSyncService;

    invoke-static {v2}, Lcom/tns/NativeScriptSyncService;->access$000(Lcom/tns/NativeScriptSyncService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->this$0:Lcom/tns/NativeScriptSyncService;

    invoke-static {v3}, Lcom/tns/NativeScriptSyncService;->access$300(Lcom/tns/NativeScriptSyncService;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tns/NativeScriptSyncService;->access$400(Lcom/tns/NativeScriptSyncService;Landroid/content/Context;Ljava/io/File;)V

    .line 134
    iget-object v1, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->this$0:Lcom/tns/NativeScriptSyncService;

    invoke-static {v1}, Lcom/tns/NativeScriptSyncService;->access$500(Lcom/tns/NativeScriptSyncService;)Lcom/tns/Runtime;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->this$0:Lcom/tns/NativeScriptSyncService;

    invoke-static {v3}, Lcom/tns/NativeScriptSyncService;->access$000(Lcom/tns/NativeScriptSyncService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "internal/livesync.js"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tns/Runtime;->runScript(Ljava/io/File;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :try_start_1
    iget-object v1, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->output:Ljava/io/OutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tns/NativeScriptSyncService$ListenerWorker;->socket:Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    .end local v0    # "length":I
    goto :goto_1

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method
