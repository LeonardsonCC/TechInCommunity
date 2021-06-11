.class Lcom/tns/GcListener$MemoryMonitor;
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
    name = "MemoryMonitor"
.end annotation


# instance fields
.field private final freeMemoryRatio:D

.field private final runtime:Ljava/lang/Runtime;

.field final synthetic this$0:Lcom/tns/GcListener;

.field private final timeInterval:I


# direct methods
.method public constructor <init>(Lcom/tns/GcListener;ID)V
    .locals 0
    .param p2, "timeInterval"    # I
    .param p3, "freeMemoryRatio"    # D

    .line 59
    iput-object p1, p0, Lcom/tns/GcListener$MemoryMonitor;->this$0:Lcom/tns/GcListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p2, p0, Lcom/tns/GcListener$MemoryMonitor;->timeInterval:I

    .line 61
    iput-wide p3, p0, Lcom/tns/GcListener$MemoryMonitor;->freeMemoryRatio:D

    .line 62
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    iput-object p1, p0, Lcom/tns/GcListener$MemoryMonitor;->runtime:Ljava/lang/Runtime;

    .line 63
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 68
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tns/GcListener$MemoryMonitor;->runtime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 69
    .local v0, "freeMemory":J
    iget-object v2, p0, Lcom/tns/GcListener$MemoryMonitor;->runtime:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 70
    .local v2, "totalMemory":J
    iget-object v4, p0, Lcom/tns/GcListener$MemoryMonitor;->runtime:Ljava/lang/Runtime;

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .local v4, "maxMemory":J
    sub-long v6, v4, v2

    add-long/2addr v6, v0

    long-to-double v6, v6

    long-to-double v8, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    .line 72
    .local v6, "ratio":D
    :try_start_1
    iget-wide v8, p0, Lcom/tns/GcListener$MemoryMonitor;->freeMemoryRatio:D

    cmpg-double v10, v6, v8

    if-gez v10, :cond_0

    .line 73
    iget-object v8, p0, Lcom/tns/GcListener$MemoryMonitor;->this$0:Lcom/tns/GcListener;

    invoke-static {v8}, Lcom/tns/GcListener;->access$100(Lcom/tns/GcListener;)V

    .line 75
    :cond_0
    iget v8, p0, Lcom/tns/GcListener$MemoryMonitor;->timeInterval:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "freeMemory":J
    .end local v2    # "totalMemory":J
    .end local v4    # "maxMemory":J
    .end local v6    # "ratio":D
    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 80
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_1
    goto :goto_0
.end method
