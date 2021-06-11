.class public final Lcom/tns/WorkThreadScheduler;
.super Ljava/lang/Object;
.source "WorkThreadScheduler.java"

# interfaces
.implements Lcom/tns/ThreadScheduler;


# instance fields
.field private final myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/tns/WorkThreadScheduler;->myHandler:Landroid/os/Handler;

    .line 10
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tns/WorkThreadScheduler;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getThread()Ljava/lang/Thread;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tns/WorkThreadScheduler;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 14
    iget-object v0, p0, Lcom/tns/WorkThreadScheduler;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
