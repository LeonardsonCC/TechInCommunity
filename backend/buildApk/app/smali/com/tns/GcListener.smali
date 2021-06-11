.class public Lcom/tns/GcListener;
.super Ljava/lang/Object;
.source "GcListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/GcListener$MemoryMonitor;,
        Lcom/tns/GcListener$GcMonitor;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/tns/GcListener;


# instance fields
.field private firstStart:Z

.field private final freeMemoryRatio:D

.field private final gcThread:Ljava/lang/Thread;

.field private final monitorInterval:I

.field private final monitorThread:Ljava/lang/Thread;

.field private final q:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/tns/Runtime;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final throttleTime:I


# direct methods
.method private constructor <init>(IID)V
    .locals 4
    .param p1, "throttleTime"    # I
    .param p2, "monitorInterval"    # I
    .param p3, "freeMemoryRatio"    # D

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tns/GcListener;->firstStart:Z

    .line 86
    iput p1, p0, Lcom/tns/GcListener;->throttleTime:I

    .line 87
    iput p2, p0, Lcom/tns/GcListener;->monitorInterval:I

    .line 88
    iput-wide p3, p0, Lcom/tns/GcListener;->freeMemoryRatio:D

    .line 89
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/tns/GcListener;->subscribers:Ljava/util/WeakHashMap;

    .line 91
    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 92
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, p0, Lcom/tns/GcListener;->q:Ljava/lang/ref/ReferenceQueue;

    .line 93
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/tns/GcListener$GcMonitor;

    invoke-direct {v3, p0, p1}, Lcom/tns/GcListener$GcMonitor;-><init>(Lcom/tns/GcListener;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/tns/GcListener;->gcThread:Ljava/lang/Thread;

    .line 94
    const-string v3, "NativeScript GC thread"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/tns/GcListener;->gcThread:Ljava/lang/Thread;

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    goto :goto_0

    .line 97
    :cond_0
    iput-object v1, p0, Lcom/tns/GcListener;->q:Ljava/lang/ref/ReferenceQueue;

    .line 98
    iput-object v1, p0, Lcom/tns/GcListener;->gcThread:Ljava/lang/Thread;

    .line 100
    :goto_0
    if-lez p2, :cond_1

    .line 101
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tns/GcListener$MemoryMonitor;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/tns/GcListener$MemoryMonitor;-><init>(Lcom/tns/GcListener;ID)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/tns/GcListener;->monitorThread:Ljava/lang/Thread;

    .line 102
    const-string v2, "NativeScript monitor thread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/tns/GcListener;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    goto :goto_1

    .line 105
    :cond_1
    iput-object v1, p0, Lcom/tns/GcListener;->monitorThread:Ljava/lang/Thread;

    .line 107
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/tns/GcListener;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lcom/tns/GcListener;

    .line 7
    iget-object v0, p0, Lcom/tns/GcListener;->q:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tns/GcListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/tns/GcListener;

    .line 7
    invoke-direct {p0}, Lcom/tns/GcListener;->notifyGc()V

    return-void
.end method

.method public static getInstance(IID)Lcom/tns/GcListener;
    .locals 2
    .param p0, "throttleTime"    # I
    .param p1, "monitorInterval"    # I
    .param p2, "freeMemoryRatio"    # D

    .line 114
    sget-object v0, Lcom/tns/GcListener;->instance:Lcom/tns/GcListener;

    if-nez v0, :cond_1

    .line 115
    const-class v0, Lcom/tns/GcListener;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Lcom/tns/GcListener;->instance:Lcom/tns/GcListener;

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Lcom/tns/GcListener;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tns/GcListener;-><init>(IID)V

    sput-object v1, Lcom/tns/GcListener;->instance:Lcom/tns/GcListener;

    .line 119
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 121
    :cond_1
    :goto_0
    sget-object v0, Lcom/tns/GcListener;->instance:Lcom/tns/GcListener;

    return-object v0
.end method

.method private notifyGc()V
    .locals 4

    .line 150
    sget-object v0, Lcom/tns/GcListener;->instance:Lcom/tns/GcListener;

    monitor-enter v0

    .line 151
    :try_start_0
    const-string v1, "GcListener.notifyGc"

    invoke-static {v1}, Lcom/tns/ManualInstrumentation;->start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    .local v1, "frame":Lcom/tns/ManualInstrumentation$Frame;
    :try_start_1
    iget-object v2, p0, Lcom/tns/GcListener;->subscribers:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tns/Runtime;

    .line 154
    .local v3, "runtime":Lcom/tns/Runtime;
    invoke-virtual {v3}, Lcom/tns/Runtime;->notifyGc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .end local v3    # "runtime":Lcom/tns/Runtime;
    goto :goto_0

    .line 157
    :cond_0
    :try_start_2
    invoke-interface {v1}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 158
    nop

    .line 159
    .end local v1    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    monitor-exit v0

    .line 160
    return-void

    .line 157
    .restart local v1    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 158
    throw v2

    .line 159
    .end local v1    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private start()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/tns/GcListener;->gcThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/tns/GcListener;->monitorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    :cond_1
    return-void
.end method

.method public static subscribe(Lcom/tns/Runtime;)V
    .locals 3
    .param p0, "runtime"    # Lcom/tns/Runtime;

    .line 125
    sget-object v0, Lcom/tns/GcListener;->instance:Lcom/tns/GcListener;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-object v1, Lcom/tns/GcListener;->instance:Lcom/tns/GcListener;

    iget-boolean v1, v1, Lcom/tns/GcListener;->firstStart:Z

    if-eqz v1, :cond_0

    .line 127
    sget-object v1, Lcom/tns/GcListener;->instance:Lcom/tns/GcListener;

    invoke-direct {v1}, Lcom/tns/GcListener;->start()V

    .line 128
    sget-object v1, Lcom/tns/GcListener;->instance:Lcom/tns/GcListener;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tns/GcListener;->firstStart:Z

    .line 130
    :cond_0
    sget-object v1, Lcom/tns/GcListener;->instance:Lcom/tns/GcListener;

    iget-object v1, v1, Lcom/tns/GcListener;->subscribers:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unsubscribe(Lcom/tns/Runtime;)V
    .locals 2
    .param p0, "runtime"    # Lcom/tns/Runtime;

    .line 135
    sget-object v0, Lcom/tns/GcListener;->instance:Lcom/tns/GcListener;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/tns/GcListener;->instance:Lcom/tns/GcListener;

    iget-object v1, v1, Lcom/tns/GcListener;->subscribers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
