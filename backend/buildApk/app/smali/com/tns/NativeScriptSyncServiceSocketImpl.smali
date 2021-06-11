.class public Lcom/tns/NativeScriptSyncServiceSocketImpl;
.super Ljava/lang/Object;
.source "NativeScriptSyncServiceSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;,
        Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;
    }
.end annotation


# static fields
.field private static DEVICE_APP_DIR:Ljava/lang/String;

.field private static logger:Lcom/tns/Logger;


# instance fields
.field private final context:Landroid/content/Context;

.field private localServerJavaThread:Ljava/lang/Thread;

.field private localServerThread:Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;

.field private final runtime:Lcom/tns/Runtime;


# direct methods
.method public constructor <init>(Lcom/tns/Runtime;Lcom/tns/Logger;Landroid/content/Context;)V
    .locals 2
    .param p1, "runtime"    # Lcom/tns/Runtime;
    .param p2, "logger"    # Lcom/tns/Logger;
    .param p3, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->runtime:Lcom/tns/Runtime;

    .line 28
    sput-object p2, Lcom/tns/NativeScriptSyncServiceSocketImpl;->logger:Lcom/tns/Logger;

    .line 29
    iput-object p3, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->context:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->DEVICE_APP_DIR:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$000()Lcom/tns/Logger;
    .locals 1

    .line 16
    sget-object v0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->logger:Lcom/tns/Logger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->DEVICE_APP_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tns/NativeScriptSyncServiceSocketImpl;)Lcom/tns/Runtime;
    .locals 1
    .param p0, "x0"    # Lcom/tns/NativeScriptSyncServiceSocketImpl;

    .line 16
    iget-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->runtime:Lcom/tns/Runtime;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tns/NativeScriptSyncServiceSocketImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tns/NativeScriptSyncServiceSocketImpl;

    .line 16
    iget-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public startServer()V
    .locals 3

    .line 98
    new-instance v0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-livesync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;-><init>(Lcom/tns/NativeScriptSyncServiceSocketImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->localServerThread:Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;

    .line 99
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->localServerThread:Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->localServerJavaThread:Ljava/lang/Thread;

    .line 100
    const-string v1, "Livesync Server Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl;->localServerJavaThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    return-void
.end method
