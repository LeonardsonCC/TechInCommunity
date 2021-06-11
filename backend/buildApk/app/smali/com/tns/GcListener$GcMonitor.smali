.class Lcom/tns/GcListener$GcMonitor;
.super Ljava/lang/Object;
.source "GcListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/GcListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GcMonitor"
.end annotation


# instance fields
.field private lastUpdateTime:J

.field final synthetic this$0:Lcom/tns/GcListener;

.field private final throttleTime:J


# direct methods
.method public constructor <init>(Lcom/tns/GcListener;I)V
    .locals 2
    .param p2, "throttleTime"    # I

    .line 25
    iput-object p1, p0, Lcom/tns/GcListener$GcMonitor;->this$0:Lcom/tns/GcListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tns/GcListener$GcMonitor;->lastUpdateTime:J

    .line 26
    const p1, 0xf4240

    mul-int p1, p1, p2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tns/GcListener$GcMonitor;->throttleTime:J

    .line 27
    return-void
.end method

.method private createRef()Ljava/lang/ref/PhantomReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/ref/PhantomReference;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lcom/tns/GcListener$GcMonitor;->this$0:Lcom/tns/GcListener;

    invoke-static {v2}, Lcom/tns/GcListener;->access$000(Lcom/tns/GcListener;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 50
    .local v0, "ref":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<Ljava/lang/Object;>;"
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 32
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/tns/GcListener$GcMonitor;->createRef()Ljava/lang/ref/PhantomReference;

    move-result-object v0

    .line 34
    .local v0, "ref":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/tns/GcListener$GcMonitor;->this$0:Lcom/tns/GcListener;

    invoke-static {v1}, Lcom/tns/GcListener;->access$000(Lcom/tns/GcListener;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/PhantomReference;

    .line 35
    .local v1, "o":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<Lcom/tns/Objects;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 36
    .local v2, "currentUpdateTime":J
    iget-wide v4, p0, Lcom/tns/GcListener$GcMonitor;->lastUpdateTime:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/tns/GcListener$GcMonitor;->throttleTime:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 37
    iget-object v4, p0, Lcom/tns/GcListener$GcMonitor;->this$0:Lcom/tns/GcListener;

    invoke-static {v4}, Lcom/tns/GcListener;->access$100(Lcom/tns/GcListener;)V

    .line 38
    iput-wide v2, p0, Lcom/tns/GcListener$GcMonitor;->lastUpdateTime:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 40
    .end local v0    # "ref":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<Ljava/lang/Object;>;"
    .end local v1    # "o":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<Lcom/tns/Objects;>;"
    .end local v2    # "currentUpdateTime":J
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 44
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    goto :goto_0
.end method
