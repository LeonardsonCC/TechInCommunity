.class Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread$1;
.super Ljava/lang/Object;
.source "NativeScriptSyncServiceSocketImpl.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;->setUpLivesyncThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;


# direct methods
.method constructor <init>(Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;

    .line 81
    iput-object p1, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread$1;->this$1:Lcom/tns/NativeScriptSyncServiceSocketImpl$LocalServerSocketThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 84
    invoke-static {}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$000()Lcom/tns/Logger;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "%s(%s): %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 85
    return-void
.end method
