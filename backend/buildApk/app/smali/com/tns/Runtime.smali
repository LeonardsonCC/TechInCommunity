.class public Lcom/tns/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/Runtime$MainThreadHandler;,
        Lcom/tns/Runtime$WorkerThread;,
        Lcom/tns/Runtime$WorkerThreadHandler;
    }
.end annotation


# static fields
.field private static final FAILED_CTOR_RESOLUTION_MSG:Ljava/lang/String; = "Check the number and type of arguments.\nPrimitive types need to be manually wrapped in their respective Object wrappers.\nIf you are creating an instance of an inner class, make sure to always provide reference to the outer `this` as the first argument."

.field private static final classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

.field private static final currentRuntime:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/tns/Runtime;",
            ">;"
        }
    .end annotation
.end field

.field private static final methodComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static nativeLibraryLoaded:Z

.field private static nextRuntimeId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static pendingWorkerMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final runtimeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tns/Runtime;",
            ">;"
        }
    .end annotation
.end field

.field private static staticConfiguration:Lcom/tns/StaticConfiguration;


# instance fields
.field private final classResolver:Lcom/tns/ClassResolver;

.field private final config:Lcom/tns/StaticConfiguration;

.field private ctorCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private currentObjectId:I

.field private final dalvikRuntime:Ljava/lang/Runtime;

.field private dexFactory:Lcom/tns/DexFactory;

.field private final dynamicConfig:Lcom/tns/DynamicConfiguration;

.field private extractPolicy:Lcom/tns/ExtractPolicy;

.field private final gcListener:Lcom/tns/GcListener;

.field private initialized:Z

.field private isLiveSyncStarted:Z

.field private isTerminating:Z

.field private final keyNotFoundObject:Ljava/lang/Object;

.field private final loadedJavaScriptExtends:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/tns/JavaScriptImplementation;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lcom/tns/Logger;

.field private mainThreadHandler:Landroid/os/Handler;

.field private final runtimeId:I

.field private strongInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private strongJavaObjectToID:Lcom/tns/NativeScriptHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tns/NativeScriptHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private threadScheduler:Lcom/tns/ThreadScheduler;

.field private weakInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private weakJavaObjectToID:Lcom/tns/NativeScriptWeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tns/NativeScriptWeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final workerId:I

.field private workerIdToHandler:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 151
    new-instance v0, Lcom/tns/Runtime$1;

    invoke-direct {v0}, Lcom/tns/Runtime$1;-><init>()V

    sput-object v0, Lcom/tns/Runtime;->methodComparator:Ljava/util/Comparator;

    .line 176
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tns/Runtime;->nextRuntimeId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 177
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/tns/Runtime;->currentRuntime:Ljava/lang/ThreadLocal;

    .line 178
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tns/Runtime;->runtimeCache:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tns/Runtime;->pendingWorkerMessages:Ljava/util/Map;

    .line 188
    new-instance v0, Lcom/tns/system/classes/loading/impl/ClassStorageServiceImpl;

    sget-object v1, Lcom/tns/system/classes/caching/impl/ClassCacheImpl;->INSTANCE:Lcom/tns/system/classes/caching/impl/ClassCacheImpl;

    sget-object v2, Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;->INSTANCE:Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;

    invoke-direct {v0, v1, v2}, Lcom/tns/system/classes/loading/impl/ClassStorageServiceImpl;-><init>(Lcom/tns/system/classes/caching/ClassCache;Lcom/tns/system/classloaders/ClassLoadersCollection;)V

    sput-object v0, Lcom/tns/Runtime;->classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

    return-void
.end method

.method public constructor <init>(Lcom/tns/ClassResolver;Lcom/tns/GcListener;Lcom/tns/StaticConfiguration;Lcom/tns/DynamicConfiguration;IILjava/util/HashMap;Ljava/util/HashMap;Lcom/tns/NativeScriptHashMap;Lcom/tns/NativeScriptWeakHashMap;)V
    .locals 1
    .param p1, "classResolver"    # Lcom/tns/ClassResolver;
    .param p2, "gcListener"    # Lcom/tns/GcListener;
    .param p3, "config"    # Lcom/tns/StaticConfiguration;
    .param p4, "dynamicConfig"    # Lcom/tns/DynamicConfiguration;
    .param p5, "runtimeId"    # I
    .param p6, "workerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tns/ClassResolver;",
            "Lcom/tns/GcListener;",
            "Lcom/tns/StaticConfiguration;",
            "Lcom/tns/DynamicConfiguration;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/tns/NativeScriptHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tns/NativeScriptWeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p7, "strongInstances":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .local p8, "weakInstances":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .local p9, "strongJavaObjectToId":Lcom/tns/NativeScriptHashMap;, "Lcom/tns/NativeScriptHashMap<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .local p10, "weakJavaObjectToId":Lcom/tns/NativeScriptWeakHashMap;, "Lcom/tns/NativeScriptWeakHashMap<Ljava/lang/Object;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->strongInstances:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->weakInstances:Ljava/util/HashMap;

    .line 112
    new-instance v0, Lcom/tns/NativeScriptHashMap;

    invoke-direct {v0}, Lcom/tns/NativeScriptHashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->strongJavaObjectToID:Lcom/tns/NativeScriptHashMap;

    .line 114
    new-instance v0, Lcom/tns/NativeScriptWeakHashMap;

    invoke-direct {v0}, Lcom/tns/NativeScriptWeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->weakJavaObjectToID:Lcom/tns/NativeScriptWeakHashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->loadedJavaScriptExtends:Ljava/util/Map;

    .line 118
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/Runtime;->dalvikRuntime:Ljava/lang/Runtime;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->keyNotFoundObject:Ljava/lang/Object;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/tns/Runtime;->currentObjectId:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->ctorCache:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->workerIdToHandler:Ljava/util/Map;

    .line 191
    iput-object p1, p0, Lcom/tns/Runtime;->classResolver:Lcom/tns/ClassResolver;

    .line 192
    iput-object p2, p0, Lcom/tns/Runtime;->gcListener:Lcom/tns/GcListener;

    .line 193
    iput-object p3, p0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    .line 194
    iput-object p4, p0, Lcom/tns/Runtime;->dynamicConfig:Lcom/tns/DynamicConfiguration;

    .line 195
    iput p5, p0, Lcom/tns/Runtime;->runtimeId:I

    .line 196
    iput p6, p0, Lcom/tns/Runtime;->workerId:I

    .line 197
    iput-object p7, p0, Lcom/tns/Runtime;->strongInstances:Ljava/util/HashMap;

    .line 198
    iput-object p8, p0, Lcom/tns/Runtime;->weakInstances:Ljava/util/HashMap;

    .line 199
    iput-object p9, p0, Lcom/tns/Runtime;->strongJavaObjectToID:Lcom/tns/NativeScriptHashMap;

    .line 200
    iput-object p10, p0, Lcom/tns/Runtime;->weakJavaObjectToID:Lcom/tns/NativeScriptWeakHashMap;

    .line 201
    return-void
.end method

.method public constructor <init>(Lcom/tns/StaticConfiguration;Lcom/tns/DynamicConfiguration;)V
    .locals 7
    .param p1, "config"    # Lcom/tns/StaticConfiguration;
    .param p2, "dynamicConfiguration"    # Lcom/tns/DynamicConfiguration;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->strongInstances:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->weakInstances:Ljava/util/HashMap;

    .line 112
    new-instance v0, Lcom/tns/NativeScriptHashMap;

    invoke-direct {v0}, Lcom/tns/NativeScriptHashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->strongJavaObjectToID:Lcom/tns/NativeScriptHashMap;

    .line 114
    new-instance v0, Lcom/tns/NativeScriptWeakHashMap;

    invoke-direct {v0}, Lcom/tns/NativeScriptWeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->weakJavaObjectToID:Lcom/tns/NativeScriptWeakHashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->loadedJavaScriptExtends:Ljava/util/Map;

    .line 118
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/Runtime;->dalvikRuntime:Ljava/lang/Runtime;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->keyNotFoundObject:Ljava/lang/Object;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/tns/Runtime;->currentObjectId:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->ctorCache:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/Runtime;->workerIdToHandler:Ljava/util/Map;

    .line 204
    sget-object v0, Lcom/tns/Runtime;->currentRuntime:Ljava/lang/ThreadLocal;

    monitor-enter v0

    .line 205
    :try_start_0
    const-string v1, "new Runtime"

    invoke-static {v1}, Lcom/tns/ManualInstrumentation;->start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    .local v1, "frame":Lcom/tns/ManualInstrumentation$Frame;
    :try_start_1
    sget-object v2, Lcom/tns/Runtime;->currentRuntime:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tns/Runtime;

    .line 208
    .local v2, "existingRuntime":Lcom/tns/Runtime;
    if-nez v2, :cond_1

    .line 212
    sget-object v3, Lcom/tns/Runtime;->nextRuntimeId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    iput v3, p0, Lcom/tns/Runtime;->runtimeId:I

    .line 213
    iput-object p1, p0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    .line 214
    iput-object p2, p0, Lcom/tns/Runtime;->dynamicConfig:Lcom/tns/DynamicConfiguration;

    .line 215
    iget-object v3, p2, Lcom/tns/DynamicConfiguration;->myThreadScheduler:Lcom/tns/ThreadScheduler;

    iput-object v3, p0, Lcom/tns/Runtime;->threadScheduler:Lcom/tns/ThreadScheduler;

    .line 216
    iget-object v3, p2, Lcom/tns/DynamicConfiguration;->workerId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/tns/Runtime;->workerId:I

    .line 217
    iget-object v3, p2, Lcom/tns/DynamicConfiguration;->mainThreadScheduler:Lcom/tns/ThreadScheduler;

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p2, Lcom/tns/DynamicConfiguration;->mainThreadScheduler:Lcom/tns/ThreadScheduler;

    invoke-interface {v3}, Lcom/tns/ThreadScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/tns/Runtime;->mainThreadHandler:Landroid/os/Handler;

    .line 221
    :cond_0
    new-instance v3, Lcom/tns/ClassResolver;

    sget-object v4, Lcom/tns/Runtime;->classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

    invoke-direct {v3, v4}, Lcom/tns/ClassResolver;-><init>(Lcom/tns/system/classes/loading/ClassStorageService;)V

    iput-object v3, p0, Lcom/tns/Runtime;->classResolver:Lcom/tns/ClassResolver;

    .line 222
    sget-object v3, Lcom/tns/Runtime;->currentRuntime:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 224
    sget-object v3, Lcom/tns/Runtime;->runtimeCache:Ljava/util/Map;

    iget v4, p0, Lcom/tns/Runtime;->runtimeId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v3, p1, Lcom/tns/StaticConfiguration;->appConfig:Lcom/tns/AppConfig;

    invoke-virtual {v3}, Lcom/tns/AppConfig;->getGcThrottleTime()I

    move-result v3

    iget-object v4, p1, Lcom/tns/StaticConfiguration;->appConfig:Lcom/tns/AppConfig;

    invoke-virtual {v4}, Lcom/tns/AppConfig;->getMemoryCheckInterval()I

    move-result v4

    iget-object v5, p1, Lcom/tns/StaticConfiguration;->appConfig:Lcom/tns/AppConfig;

    invoke-virtual {v5}, Lcom/tns/AppConfig;->getFreeMemoryRatio()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/tns/GcListener;->getInstance(IID)Lcom/tns/GcListener;

    move-result-object v3

    iput-object v3, p0, Lcom/tns/Runtime;->gcListener:Lcom/tns/GcListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v2    # "existingRuntime":Lcom/tns/Runtime;
    :try_start_2
    invoke-interface {v1}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 229
    nop

    .line 230
    .end local v1    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    return-void

    .line 209
    .restart local v1    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    .restart local v2    # "existingRuntime":Lcom/tns/Runtime;
    :cond_1
    :try_start_3
    new-instance v3, Lcom/tns/NativeScriptException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is an existing runtime on this thread with id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tns/NativeScriptException;-><init>(Ljava/lang/String;)V

    .end local v1    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    .end local p1    # "config":Lcom/tns/StaticConfiguration;
    .end local p2    # "dynamicConfiguration":Lcom/tns/DynamicConfiguration;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    .end local v2    # "existingRuntime":Lcom/tns/Runtime;
    .restart local v1    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    .restart local p1    # "config":Lcom/tns/StaticConfiguration;
    .restart local p2    # "dynamicConfiguration":Lcom/tns/DynamicConfiguration;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-interface {v1}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 229
    nop

    .end local p1    # "config":Lcom/tns/StaticConfiguration;
    .end local p2    # "dynamicConfiguration":Lcom/tns/DynamicConfiguration;
    throw v2

    .line 230
    .end local v1    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    .restart local p1    # "config":Lcom/tns/StaticConfiguration;
    .restart local p2    # "dynamicConfiguration":Lcom/tns/DynamicConfiguration;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static native CallWorkerObjectOnErrorHandleMain(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation
.end method

.method private static native ClearWorkerPersistent(II)V
.end method

.method private static native ResetDateTimeConfigurationCache(I)V
.end method

.method public static native SetManualInstrumentationMode(Ljava/lang/String;)V
.end method

.method private static native TerminateWorkerCallback(I)V
.end method

.method private static native WorkerGlobalOnMessageCallback(ILjava/lang/String;)V
.end method

.method private static native WorkerObjectOnMessageCallback(IILjava/lang/String;)V
.end method

.method static synthetic access$000(Lcom/tns/Runtime;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime;

    .line 39
    iget-boolean v0, p0, Lcom/tns/Runtime;->isTerminating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/tns/Runtime;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tns/Runtime;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/tns/Runtime;->isTerminating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tns/Runtime;)Lcom/tns/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime;

    .line 39
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/tns/StaticConfiguration;
    .locals 1

    .line 39
    sget-object v0, Lcom/tns/Runtime;->staticConfiguration:Lcom/tns/StaticConfiguration;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tns/DynamicConfiguration;)Lcom/tns/Runtime;
    .locals 1
    .param p0, "x0"    # Lcom/tns/DynamicConfiguration;

    .line 39
    invoke-static {p0}, Lcom/tns/Runtime;->initRuntime(Lcom/tns/DynamicConfiguration;)Lcom/tns/Runtime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tns/Runtime;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tns/Runtime;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tns/Runtime;->runWorker(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/tns/Runtime;)V
    .locals 0
    .param p0, "x0"    # Lcom/tns/Runtime;

    .line 39
    invoke-direct {p0}, Lcom/tns/Runtime;->processPendingMessages()V

    return-void
.end method

.method static synthetic access$1600(IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 39
    invoke-static {p0, p1, p2}, Lcom/tns/Runtime;->WorkerObjectOnMessageCallback(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/tns/Runtime;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime;

    .line 39
    iget-object v0, p0, Lcom/tns/Runtime;->workerIdToHandler:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 39
    invoke-static {p0, p1}, Lcom/tns/Runtime;->ClearWorkerPersistent(II)V

    return-void
.end method

.method static synthetic access$1900(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 39
    invoke-static/range {p0 .. p6}, Lcom/tns/Runtime;->CallWorkerObjectOnErrorHandleMain(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tns/Runtime;)I
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime;

    .line 39
    iget v0, p0, Lcom/tns/Runtime;->workerId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/tns/Runtime;ILjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tns/Runtime;->runScript(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/tns/Runtime;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 39
    invoke-direct {p0, p1}, Lcom/tns/Runtime;->packageArgs([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/tns/Runtime;IILjava/lang/String;IZ[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/tns/Runtime;->callJSMethodNative(IILjava/lang/String;IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/tns/Runtime;)I
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime;

    .line 39
    iget v0, p0, Lcom/tns/Runtime;->runtimeId:I

    return v0
.end method

.method static synthetic access$400(ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .line 39
    invoke-static {p0, p1}, Lcom/tns/Runtime;->WorkerGlobalOnMessageCallback(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    .line 39
    sget-object v0, Lcom/tns/Runtime;->runtimeCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(I)V
    .locals 0
    .param p0, "x0"    # I

    .line 39
    invoke-static {p0}, Lcom/tns/Runtime;->TerminateWorkerCallback(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/tns/Runtime;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tns/Runtime;

    .line 39
    iget-object v0, p0, Lcom/tns/Runtime;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static varargs callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "isConstructor"    # Z
    .param p4, "delay"    # J
    .param p6, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;ZJ[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 1165
    .local p2, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 1167
    .local v0, "runtime":Lcom/tns/Runtime;
    if-nez v0, :cond_0

    .line 1168
    invoke-static {p0}, Lcom/tns/Runtime;->getObjectRuntime(Ljava/lang/Object;)Lcom/tns/Runtime;

    move-result-object v0

    .line 1171
    :cond_0
    if-nez v0, :cond_2

    .line 1172
    new-instance v1, Lcom/tns/NativeScriptException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find runtime for instance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const-string v3, "null"

    goto :goto_0

    :cond_1
    move-object v3, p0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tns/NativeScriptException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1175
    :cond_2
    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/tns/Runtime;->callJSMethodImpl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "isConstructor"    # Z
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 1153
    .local p2, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 1149
    .local p2, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs callJSMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "isConstructor"    # Z
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 1157
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs callJSMethodFromPossibleNonMainThread(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "isConstructor"    # Z
    .param p4, "delay"    # J
    .param p6, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;ZJ[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 1123
    .local p2, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/tns/Runtime;->isNotOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    new-instance v0, Lcom/tns/Runtime$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/tns/Runtime$4;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)V

    .line 1131
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1132
    .local v1, "task":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/tns/Runtime;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1135
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/RunnableFuture;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1136
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 1137
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1141
    .end local v0    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    .end local v1    # "task":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Object;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs callJSMethodFromPossibleNonMainThread(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "isConstructor"    # Z
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 1115
    .local p2, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/tns/Runtime;->callJSMethodFromPossibleNonMainThread(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs callJSMethodFromPossibleNonMainThread(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 1111
    .local p2, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/tns/Runtime;->callJSMethodFromPossibleNonMainThread(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs callJSMethodFromPossibleNonMainThread(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "isConstructor"    # Z
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 1119
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/tns/Runtime;->callJSMethodFromPossibleNonMainThread(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private varargs callJSMethodImpl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "javaObject"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p4, "isConstructor"    # Z
    .param p5, "delay"    # J
    .param p7, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;ZJ[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 1179
    .local p3, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v8, p0

    invoke-direct {p0, p1}, Lcom/tns/Runtime;->getJavaObjectID(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v9

    .line 1180
    .local v9, "javaObjectID":Ljava/lang/Integer;
    const-string v0, "null"

    if-nez v9, :cond_1

    .line 1181
    new-instance v1, Lcom/tns/NativeScriptException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find object id for instance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tns/NativeScriptException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1184
    :cond_1
    iget-object v1, v8, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    invoke-interface {v1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1185
    iget-object v1, v8, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Platform.CallJSMethod: calling js method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with javaObjectID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1184
    :cond_3
    move-object v10, p2

    .line 1188
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p4

    move-wide/from16 v4, p5

    move-object v6, p3

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/tns/Runtime;->dispatchCallJSMethodNative(ILjava/lang/String;ZJLjava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1190
    .local v0, "result":Ljava/lang/Object;
    return-object v0
.end method

.method private varargs native callJSMethodNative(IILjava/lang/String;IZ[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation
.end method

.method public static varargs callJSMethodWithDelay(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;J[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "delay"    # J
    .param p5, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;J[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 1161
    .local p2, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private checkWeakObjectAreAlive(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .param p3, "length"    # I

    .line 1031
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1032
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1033
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_3

    .line 1034
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 1036
    .local v2, "javaObjectId":I
    iget-object v3, p0, Lcom/tns/Runtime;->weakInstances:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1040
    .local v3, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    if-eqz v3, :cond_1

    .line 1041
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 1043
    .local v4, "instance":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 1044
    const/4 v5, 0x1

    .line 1045
    .local v5, "isReleased":I
    iget-object v6, p0, Lcom/tns/Runtime;->weakInstances:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1047
    .end local v5    # "isReleased":I
    :cond_0
    const/4 v5, 0x0

    .line 1049
    .end local v4    # "instance":Ljava/lang/Object;
    .restart local v5    # "isReleased":I
    :goto_1
    goto :goto_3

    .line 1050
    .end local v5    # "isReleased":I
    :cond_1
    iget-object v4, p0, Lcom/tns/Runtime;->strongInstances:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    move v5, v4

    .line 1053
    .restart local v5    # "isReleased":I
    :goto_3
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1033
    .end local v2    # "javaObjectId":I
    .end local v3    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    .end local v5    # "isReleased":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1055
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private native clearStartupData(I)V
.end method

.method private static createArrayHelper(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .param p0, "arrayClassName"    # Ljava/lang/String;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1395
    invoke-static {p0}, Lcom/tns/Runtime;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1397
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 1399
    .local v1, "arr":Ljava/lang/Object;
    return-object v1
.end method

.method private createJSInstance(Ljava/lang/Object;)V
    .locals 6
    .param p1, "instance"    # Ljava/lang/Object;

    .line 816
    invoke-virtual {p0}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tns/Runtime;->generateNewObjectId(I)I

    move-result v0

    .line 818
    .local v0, "javaObjectID":I
    invoke-direct {p0, p1, v0}, Lcom/tns/Runtime;->makeInstanceStrong(Ljava/lang/Object;I)V

    .line 820
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 822
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/tns/Runtime;->loadedJavaScriptExtends:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 823
    const-class v2, Lcom/tns/JavaScriptImplementation;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/tns/JavaScriptImplementation;

    .line 824
    .local v2, "jsImpl":Lcom/tns/JavaScriptImplementation;
    if-eqz v2, :cond_0

    .line 825
    new-instance v3, Ljava/io/File;

    invoke-interface {v2}, Lcom/tns/JavaScriptImplementation;->javaScriptFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 826
    .local v3, "jsFile":Ljava/io/File;
    invoke-virtual {p0, v3}, Lcom/tns/Runtime;->runModule(Ljava/io/File;)V

    .line 827
    .end local v3    # "jsFile":Ljava/io/File;
    goto :goto_0

    .line 828
    :cond_0
    iget-object v3, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find JavaScriptImplementation annotation for class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 830
    :goto_0
    iget-object v3, p0, Lcom/tns/Runtime;->loadedJavaScriptExtends:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .end local v2    # "jsImpl":Lcom/tns/JavaScriptImplementation;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 835
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v3

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/tns/Runtime;->createJSInstanceNative(ILjava/lang/Object;ILjava/lang/String;)V

    .line 837
    iget-object v3, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    invoke-interface {v3}, Lcom/tns/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 838
    iget-object v3, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSInstance for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " created with overrides"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 840
    :cond_2
    return-void
.end method

.method private native createJSInstanceNative(ILjava/lang/Object;ILjava/lang/String;)V
.end method

.method private dispatchCallJSMethodNative(ILjava/lang/String;ZJLjava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "javaObjectID"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "isConstructor"    # Z
    .param p4, "delay"    # J
    .param p7, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 1290
    .local p6, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v10, p0

    invoke-static/range {p6 .. p6}, Lcom/tns/TypeIDs;->GetObjectTypeId(Ljava/lang/Class;)I

    move-result v11

    .line 1291
    .local v11, "returnType":I
    const/4 v12, 0x0

    .line 1293
    .local v12, "ret":Ljava/lang/Object;
    iget-object v0, v10, Lcom/tns/Runtime;->threadScheduler:Lcom/tns/ThreadScheduler;

    invoke-interface {v0}, Lcom/tns/ThreadScheduler;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1295
    .local v13, "isWorkThread":Z
    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v9, p7

    invoke-direct {v10, v14, v15, v9}, Lcom/tns/Runtime;->extendConstructorArgs(Ljava/lang/String;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 1296
    .local v7, "tmpArgs":[Ljava/lang/Object;
    iget-object v0, v10, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-object v0, v0, Lcom/tns/StaticConfiguration;->appConfig:Lcom/tns/AppConfig;

    invoke-virtual {v0}, Lcom/tns/AppConfig;->getDiscardUncaughtJsExceptions()Z

    move-result v16

    .line 1297
    .local v16, "discardUncaughtJsExceptions":Z
    iget-object v0, v10, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-object v0, v0, Lcom/tns/StaticConfiguration;->appConfig:Lcom/tns/AppConfig;

    invoke-virtual {v0}, Lcom/tns/AppConfig;->getEnableMultithreadedJavascript()Z

    move-result v17

    .line 1299
    .local v17, "enableMultithreadedJavascript":Z
    if-nez v17, :cond_4

    if-eqz v13, :cond_0

    move-object/from16 v19, v12

    move-object v12, v7

    goto :goto_4

    .line 1313
    :cond_0
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    .line 1315
    .local v6, "arr":[Ljava/lang/Object;
    move/from16 v8, p3

    .line 1317
    .local v8, "isCtor":Z
    new-instance v0, Lcom/tns/Runtime$5;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v7

    move-object v4, v6

    move/from16 v5, p1

    move-object/from16 v18, v6

    .end local v6    # "arr":[Ljava/lang/Object;
    .local v18, "arr":[Ljava/lang/Object;
    move-object/from16 v6, p2

    move-object/from16 v19, v12

    move-object v12, v7

    .end local v7    # "tmpArgs":[Ljava/lang/Object;
    .local v12, "tmpArgs":[Ljava/lang/Object;
    .local v19, "ret":Ljava/lang/Object;
    move v7, v11

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/tns/Runtime$5;-><init>(Lcom/tns/Runtime;[Ljava/lang/Object;[Ljava/lang/Object;ILjava/lang/String;IZZ)V

    .line 1340
    .local v1, "r":Ljava/lang/Runnable;
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-lez v0, :cond_1

    .line 1342
    :try_start_0
    invoke-static/range {p4 .. p5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    goto :goto_0

    .line 1343
    :catch_0
    move-exception v0

    .line 1347
    :cond_1
    :goto_0
    iget-object v0, v10, Lcom/tns/Runtime;->threadScheduler:Lcom/tns/ThreadScheduler;

    invoke-interface {v0, v1}, Lcom/tns/ThreadScheduler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 1349
    .local v2, "success":Z
    if-eqz v2, :cond_3

    .line 1350
    monitor-enter v1

    .line 1352
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, v18, v0

    if-nez v0, :cond_2

    .line 1353
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1357
    :cond_2
    move-object/from16 v3, v19

    goto :goto_1

    .line 1358
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1355
    :catch_1
    move-exception v0

    .line 1356
    .local v0, "e":Ljava/lang/InterruptedException;
    move-object v3, v0

    .line 1358
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v19    # "ret":Ljava/lang/Object;
    .local v3, "ret":Ljava/lang/Object;
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v19, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v19, v3

    .end local v3    # "ret":Ljava/lang/Object;
    .restart local v19    # "ret":Ljava/lang/Object;
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1361
    :cond_3
    :goto_3
    const/4 v0, 0x0

    aget-object v0, v18, v0

    .end local v19    # "ret":Ljava/lang/Object;
    .local v0, "ret":Ljava/lang/Object;
    goto :goto_6

    .line 1299
    .end local v0    # "ret":Ljava/lang/Object;
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v2    # "success":Z
    .end local v8    # "isCtor":Z
    .end local v18    # "arr":[Ljava/lang/Object;
    .restart local v7    # "tmpArgs":[Ljava/lang/Object;
    .local v12, "ret":Ljava/lang/Object;
    :cond_4
    move-object/from16 v19, v12

    move-object v12, v7

    .line 1300
    .end local v7    # "tmpArgs":[Ljava/lang/Object;
    .local v12, "tmpArgs":[Ljava/lang/Object;
    .restart local v19    # "ret":Ljava/lang/Object;
    :goto_4
    invoke-direct {v10, v12}, Lcom/tns/Runtime;->packageArgs([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .line 1302
    .local v8, "packagedArgs":[Ljava/lang/Object;
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v2

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v11

    move/from16 v6, p3

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/tns/Runtime;->callJSMethodNative(IILjava/lang/String;IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Lcom/tns/NativeScriptException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1311
    .end local v19    # "ret":Ljava/lang/Object;
    .restart local v0    # "ret":Ljava/lang/Object;
    goto :goto_5

    .line 1303
    .end local v0    # "ret":Ljava/lang/Object;
    .restart local v19    # "ret":Ljava/lang/Object;
    :catch_2
    move-exception v0

    .line 1304
    .local v0, "e":Lcom/tns/NativeScriptException;
    if-eqz v16, :cond_5

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" thread for callJSMethodNative\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1306
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "Warning"

    const-string v3, "NativeScript discarding uncaught JS exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-virtual {v10, v0, v1}, Lcom/tns/Runtime;->passDiscardedExceptionToJs(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1308
    .end local v1    # "errorMessage":Ljava/lang/String;
    move-object/from16 v0, v19

    .line 1312
    .end local v8    # "packagedArgs":[Ljava/lang/Object;
    .end local v19    # "ret":Ljava/lang/Object;
    .local v0, "ret":Ljava/lang/Object;
    :goto_5
    nop

    .line 1364
    :goto_6
    return-object v0

    .line 1309
    .local v0, "e":Lcom/tns/NativeScriptException;
    .restart local v8    # "packagedArgs":[Ljava/lang/Object;
    .restart local v19    # "ret":Ljava/lang/Object;
    :cond_5
    throw v0
.end method

.method private dispatchCallJSMethodNative(ILjava/lang/String;ZLjava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "javaObjectID"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "isConstructor"    # Z
    .param p5, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 1286
    .local p4, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/tns/Runtime;->dispatchCallJSMethodNative(ILjava/lang/String;ZJLjava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private extendConstructorArgs(Ljava/lang/String;Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "isConstructor"    # Z
    .param p3, "args"    # [Ljava/lang/Object;

    .line 1267
    const/4 v0, 0x0

    .line 1269
    .local v0, "arr":[Ljava/lang/Object;
    const-string v1, "init"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1270
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_0

    .line 1271
    new-array v2, v2, [Ljava/lang/Object;

    .line 1272
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v0, v2

    goto :goto_0

    .line 1274
    :cond_0
    array-length v3, p3

    add-int/2addr v3, v2

    new-array v0, v3, [Ljava/lang/Object;

    .line 1275
    array-length v3, p3

    invoke-static {p3, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1276
    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 1279
    :cond_1
    move-object v0, p3

    .line 1282
    :goto_0
    return-object v0
.end method

.method private findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1381
    iget-object v0, p0, Lcom/tns/Runtime;->dexFactory:Lcom/tns/DexFactory;

    invoke-virtual {v0, p1}, Lcom/tns/DexFactory;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1382
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0
.end method

.method private native generateNewObjectId(I)I
.end method

.method private static getCachedClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1372
    :try_start_0
    sget-object v0, Lcom/tns/Runtime;->classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

    invoke-interface {v0, p0}, Lcom/tns/system/classes/loading/ClassStorageService;->retrieveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0

    .line 1374
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 1375
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1226
    sget-object v0, Lcom/tns/Runtime;->classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

    invoke-interface {v0, p0}, Lcom/tns/system/classes/loading/ClassStorageService;->retrieveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentRuntime()Lcom/tns/Runtime;
    .locals 4

    .line 238
    sget-object v0, Lcom/tns/Runtime;->currentRuntime:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tns/Runtime;

    .line 240
    .local v0, "runtime":Lcom/tns/Runtime;
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/tns/Runtime;->nativeLibraryLoaded:Z

    if-eqz v1, :cond_0

    .line 243
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntimeId()I

    move-result v1

    .line 244
    .local v1, "runtimeId":I
    sget-object v2, Lcom/tns/Runtime;->runtimeCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/tns/Runtime;

    .line 247
    .end local v1    # "runtimeId":I
    :cond_0
    return-object v0
.end method

.method private static native getCurrentRuntimeId()I
.end method

.method public static getJSStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 288
    instance-of v0, p0, Lcom/tns/NativeScriptException;

    if-eqz v0, :cond_0

    .line 289
    move-object v0, p0

    check-cast v0, Lcom/tns/NativeScriptException;

    invoke-virtual {v0}, Lcom/tns/NativeScriptException;->getIncomingStackTrace()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getJavaObjectByID(I)Ljava/lang/Object;
    .locals 5
    .param p1, "javaObjectID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1059
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform.getJavaObjectByID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/tns/Runtime;->strongInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1065
    .local v0, "instance":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/tns/Runtime;->keyNotFoundObject:Ljava/lang/Object;

    .line 1069
    :cond_1
    iget-object v1, p0, Lcom/tns/Runtime;->keyNotFoundObject:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 1070
    iget-object v1, p0, Lcom/tns/Runtime;->weakInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1071
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    if-eqz v1, :cond_3

    .line 1075
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1076
    if-eqz v0, :cond_2

    goto :goto_0

    .line 1077
    :cond_2
    new-instance v2, Lcom/tns/NativeScriptException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to use cleared object reference id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tns/NativeScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1072
    :cond_3
    new-instance v2, Lcom/tns/NativeScriptException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No weak reference found. Attempt to use cleared object reference id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tns/NativeScriptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1084
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    :cond_4
    :goto_0
    return-object v0
.end method

.method private getJavaObjectID(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1088
    iget-object v0, p0, Lcom/tns/Runtime;->strongJavaObjectToID:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v0, p1}, Lcom/tns/NativeScriptHashMap;->get(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1089
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1090
    iget-object v1, p0, Lcom/tns/Runtime;->weakJavaObjectToID:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v1, p1}, Lcom/tns/NativeScriptWeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    .line 1093
    :cond_0
    return-object v0
.end method

.method public static getLineBreakpointsEnabled()Z
    .locals 1

    .line 329
    sget-object v0, Lcom/tns/Runtime;->staticConfiguration:Lcom/tns/StaticConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tns/StaticConfiguration;->appConfig:Lcom/tns/AppConfig;

    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lcom/tns/Runtime;->staticConfiguration:Lcom/tns/StaticConfiguration;

    iget-object v0, v0, Lcom/tns/StaticConfiguration;->appConfig:Lcom/tns/AppConfig;

    invoke-virtual {v0}, Lcom/tns/AppConfig;->getLineBreakpointsEnabled()Z

    move-result v0

    return v0

    .line 332
    :cond_0
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->EnableLineBreakpoins:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static getMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .line 791
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private static getObjectRuntime(Ljava/lang/Object;)Lcom/tns/Runtime;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .line 260
    const/4 v0, 0x0

    .line 262
    .local v0, "runtime":Lcom/tns/Runtime;
    sget-object v1, Lcom/tns/Runtime;->runtimeCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tns/Runtime;

    .line 263
    .local v2, "r":Lcom/tns/Runtime;
    invoke-direct {v2, p0}, Lcom/tns/Runtime;->getJavaObjectID(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 264
    move-object v0, v2

    .line 265
    goto :goto_1

    .line 267
    .end local v2    # "r":Lcom/tns/Runtime;
    :cond_0
    goto :goto_0

    .line 269
    :cond_1
    :goto_1
    return-object v0
.end method

.method private getOrCreateJavaObjectID(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1098
    invoke-direct {p0, p1}, Lcom/tns/Runtime;->getJavaObjectID(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 1100
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tns/Runtime;->generateNewObjectId(I)I

    move-result v1

    .line 1102
    .local v1, "objectId":I
    invoke-direct {p0, p1, v1}, Lcom/tns/Runtime;->makeInstanceStrong(Ljava/lang/Object;I)V

    .line 1104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1107
    .end local v1    # "objectId":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static native getPointerSize()I
.end method

.method public static getStackTraceErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 297
    const/4 v0, 0x0

    .line 300
    .local v0, "ps":Ljava/io/PrintStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 301
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 302
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "content":Ljava/lang/String;
    invoke-static {p0}, Lcom/tns/Runtime;->getJSStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "jsStackTrace":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 308
    invoke-static {v2}, Lcom/tns/Runtime;->getStackTraceOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 313
    .end local v3    # "jsStackTrace":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 311
    .end local v2    # "content":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 312
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    .line 315
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v2, "content":Ljava/lang/String;
    :goto_0
    nop

    .line 316
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 320
    return-object v2

    .line 315
    .end local v2    # "content":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 318
    :cond_1
    throw v1
.end method

.method private static getStackTraceOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;

    .line 276
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "lines":[Ljava/lang/String;
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "at"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    array-length v2, v1

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_0
    const-string v2, ""

    .line 281
    .local v2, "result":Ljava/lang/String;
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 282
    .local v5, "line":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .end local v5    # "line":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    :cond_1
    return-object v2
.end method

.method private static getTypeMetadata(Ljava/lang/Class;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 901
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    const-string v1, "I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 906
    :cond_0
    const-string v1, "C "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 910
    const-string v1, "S\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 912
    :cond_1
    const-string v1, "I\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 916
    .local v1, "baseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, ""

    :goto_2
    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 919
    .local v2, "methods":[Ljava/lang/reflect/Method;
    sget-object v4, Lcom/tns/Runtime;->methodComparator:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 921
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    const-string v7, " "

    if-ge v6, v4, :cond_5

    aget-object v8, v2, v6

    .line 922
    .local v8, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    .line 923
    .local v9, "modifiers":I
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 924
    :cond_3
    const-string v10, "M "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 927
    .local v10, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/tns/MethodResolver;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    .line 928
    .local v11, "sig":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    array-length v12, v10

    .line 931
    .local v12, "paramCount":I
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 933
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .end local v8    # "m":Ljava/lang/reflect/Method;
    .end local v9    # "modifiers":I
    .end local v10    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "sig":Ljava/lang/String;
    .end local v12    # "paramCount":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 937
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 938
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v4, v3

    :goto_4
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    .line 939
    .local v6, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    .line 940
    .local v8, "modifiers":I
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 941
    :cond_6
    const-string v9, "F "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/tns/MethodResolver;->getTypeSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    .line 945
    .local v9, "sig":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    const-string v10, " 0\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .end local v6    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "modifiers":I
    .end local v9    # "sig":Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 950
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 952
    .local v4, "ret":Ljava/lang/String;
    return-object v4
.end method

.method private static getTypeMetadata(Ljava/lang/Class;I)[Ljava/lang/String;
    .locals 14
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 852
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    .line 853
    .local v0, "mostOuterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v1, "outerClasses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 856
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    .line 857
    .local v3, "nextOuterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_0

    .line 858
    goto :goto_1

    .line 860
    :cond_0
    move-object v0, v3

    .line 861
    .end local v3    # "nextOuterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 863
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 864
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    goto :goto_2

    .line 865
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    :goto_2
    nop

    .line 866
    .local v3, "p":Ljava/lang/Package;
    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 868
    .local v2, "packageCount":I
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    const-string v4, ""

    .line 870
    .local v4, "pname":Ljava/lang/String;
    :goto_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 871
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_5

    .line 872
    add-int/lit8 v2, v2, 0x1

    .line 870
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 876
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 877
    .local v5, "name":Ljava/lang/String;
    const-string v6, "[\\.\\$]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 879
    .local v6, "parts":[Ljava/lang/String;
    array-length v7, v6

    .line 880
    .local v7, "endIdx":I
    sub-int v8, v7, p1

    .line 881
    .local v8, "len":I
    new-array v9, v8, [Ljava/lang/String;

    .line 883
    .local v9, "result":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v10, v2

    .line 885
    .local v10, "endOuterTypeIdx":I
    move v11, p1

    .local v11, "i":I
    :goto_5
    if-ge v11, v7, :cond_9

    .line 886
    if-ge v11, v2, :cond_7

    .line 887
    sub-int v12, v11, p1

    const-string v13, "P"

    aput-object v13, v9, v12

    goto :goto_6

    .line 889
    :cond_7
    if-ge v11, v10, :cond_8

    .line 890
    sub-int v12, v11, p1

    sub-int v13, v11, v2

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Class;

    invoke-static {v13}, Lcom/tns/Runtime;->getTypeMetadata(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    goto :goto_6

    .line 892
    :cond_8
    sub-int v12, v11, p1

    invoke-static {p0}, Lcom/tns/Runtime;->getTypeMetadata(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    .line 885
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 897
    .end local v11    # "i":I
    :cond_9
    return-object v9
.end method

.method private static getTypeMetadata(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 844
    sget-object v0, Lcom/tns/Runtime;->classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

    invoke-interface {v0, p0}, Lcom/tns/system/classes/loading/ClassStorageService;->retrieveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 846
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1}, Lcom/tns/Runtime;->getTypeMetadata(Ljava/lang/Class;I)[Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, "result":[Ljava/lang/String;
    return-object v1
.end method

.method private getUsedMemory()J
    .locals 4

    .line 751
    iget-object v0, p0, Lcom/tns/Runtime;->dalvikRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tns/Runtime;->dalvikRuntime:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 752
    .local v0, "usedMemory":J
    return-wide v0
.end method

.method private init(Lcom/tns/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;Ljava/io/File;Ljava/lang/String;Lcom/tns/AppConfig;Ljava/lang/String;Z)V
    .locals 16
    .param p1, "logger"    # Lcom/tns/Logger;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "nativeLibDir"    # Ljava/lang/String;
    .param p4, "rootDir"    # Ljava/io/File;
    .param p5, "appDir"    # Ljava/io/File;
    .param p6, "classLoader"    # Ljava/lang/ClassLoader;
    .param p7, "dexDir"    # Ljava/io/File;
    .param p8, "dexThumb"    # Ljava/lang/String;
    .param p9, "appConfig"    # Lcom/tns/AppConfig;
    .param p10, "callingJsDir"    # Ljava/lang/String;
    .param p11, "isDebuggable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 620
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    iget-boolean v0, v12, Lcom/tns/Runtime;->initialized:Z

    if-nez v0, :cond_4

    .line 624
    const-string v0, "Runtime.init"

    invoke-static {v0}, Lcom/tns/ManualInstrumentation;->start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;

    move-result-object v14

    .line 626
    .local v14, "frame":Lcom/tns/ManualInstrumentation$Frame;
    :try_start_0
    iput-object v13, v12, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    .line 628
    new-instance v0, Lcom/tns/DexFactory;

    sget-object v6, Lcom/tns/Runtime;->classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v1 .. v6}, Lcom/tns/DexFactory;-><init>(Lcom/tns/Logger;Ljava/lang/ClassLoader;Ljava/io/File;Ljava/lang/String;Lcom/tns/system/classes/loading/ClassStorageService;)V

    iput-object v0, v12, Lcom/tns/Runtime;->dexFactory:Lcom/tns/DexFactory;

    .line 630
    invoke-interface/range {p1 .. p1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    const-string v0, "Initializing NativeScript JAVA"

    invoke-interface {v13, v0}, Lcom/tns/Logger;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    :cond_0
    move-object/from16 v15, p4

    move-object/from16 v10, p5

    :try_start_1
    invoke-static {v13, v15, v10}, Lcom/tns/Module;->init(Lcom/tns/Logger;Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    nop

    .line 640
    :try_start_2
    invoke-virtual/range {p9 .. p9}, Lcom/tns/AppConfig;->getForceLog()Z

    move-result v0

    const/4 v9, 0x1

    if-nez v0, :cond_2

    const-string v0, "timeline"

    invoke-virtual/range {p9 .. p9}, Lcom/tns/AppConfig;->getProfilingMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v11, 0x1

    .line 642
    .local v11, "forceConsoleLog":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v2

    invoke-static {}, Lcom/tns/Module;->getApplicationFilesPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v5

    invoke-virtual/range {p9 .. p9}, Lcom/tns/AppConfig;->getAsArray()[Ljava/lang/Object;

    move-result-object v8

    .line 643
    invoke-virtual/range {p9 .. p9}, Lcom/tns/AppConfig;->getMaxLogcatObjectSize()I

    move-result v0

    .line 642
    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move/from16 v6, p11

    move-object/from16 v7, p2

    const/4 v15, 0x1

    move-object/from16 v9, p10

    move v10, v0

    invoke-direct/range {v1 .. v11}, Lcom/tns/Runtime;->initNativeScript(ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/Object;Ljava/lang/String;IZ)V

    .line 647
    invoke-interface/range {p1 .. p1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 648
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 649
    .local v0, "d":Ljava/util/Date;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 650
    .local v1, "pid":I
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 651
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 652
    .local v3, "lastModDate":Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 655
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "pid":I
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "lastModDate":Ljava/util/Date;
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/tns/GcListener;->subscribe(Lcom/tns/Runtime;)V

    .line 657
    iput-boolean v15, v12, Lcom/tns/Runtime;->initialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 659
    .end local v11    # "forceConsoleLog":Z
    invoke-interface {v14}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 660
    nop

    .line 661
    return-void

    .line 636
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 637
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to initialize Require class"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v14    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    .end local p1    # "logger":Lcom/tns/Logger;
    .end local p2    # "appName":Ljava/lang/String;
    .end local p3    # "nativeLibDir":Ljava/lang/String;
    .end local p4    # "rootDir":Ljava/io/File;
    .end local p5    # "appDir":Ljava/io/File;
    .end local p6    # "classLoader":Ljava/lang/ClassLoader;
    .end local p7    # "dexDir":Ljava/io/File;
    .end local p8    # "dexThumb":Ljava/lang/String;
    .end local p9    # "appConfig":Lcom/tns/AppConfig;
    .end local p10    # "callingJsDir":Ljava/lang/String;
    .end local p11    # "isDebuggable":Z
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 659
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v14    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    .restart local p1    # "logger":Lcom/tns/Logger;
    .restart local p2    # "appName":Ljava/lang/String;
    .restart local p3    # "nativeLibDir":Ljava/lang/String;
    .restart local p4    # "rootDir":Ljava/io/File;
    .restart local p5    # "appDir":Ljava/io/File;
    .restart local p6    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p7    # "dexDir":Ljava/io/File;
    .restart local p8    # "dexThumb":Ljava/lang/String;
    .restart local p9    # "appConfig":Lcom/tns/AppConfig;
    .restart local p10    # "callingJsDir":Ljava/lang/String;
    .restart local p11    # "isDebuggable":Z
    :catchall_0
    move-exception v0

    invoke-interface {v14}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 660
    throw v0

    .line 621
    .end local v14    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeScriptApplication already initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initInstance(Ljava/lang/Object;)V
    .locals 4
    .param p0, "instance"    # Ljava/lang/Object;

    .line 799
    const-string v0, "Runtime.initInstance"

    invoke-static {v0}, Lcom/tns/ManualInstrumentation;->start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;

    move-result-object v0

    .line 801
    .local v0, "frame":Lcom/tns/ManualInstrumentation$Frame;
    :try_start_0
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v1

    .line 803
    .local v1, "runtime":Lcom/tns/Runtime;
    iget v2, v1, Lcom/tns/Runtime;->currentObjectId:I

    .line 805
    .local v2, "objectId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 806
    invoke-direct {v1, p0, v2}, Lcom/tns/Runtime;->makeInstanceStrong(Ljava/lang/Object;I)V

    goto :goto_0

    .line 808
    :cond_0
    invoke-direct {v1, p0}, Lcom/tns/Runtime;->createJSInstance(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    .end local v1    # "runtime":Lcom/tns/Runtime;
    .end local v2    # "objectId":I
    :goto_0
    invoke-interface {v0}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 812
    nop

    .line 813
    return-void

    .line 811
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 812
    throw v1
.end method

.method public static initInstanceFromPossibleNonMainThread(Ljava/lang/Object;)V
    .locals 4
    .param p0, "instance"    # Ljava/lang/Object;

    .line 768
    invoke-static {}, Lcom/tns/Runtime;->isNotOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    new-instance v0, Lcom/tns/Runtime$3;

    invoke-direct {v0, p0}, Lcom/tns/Runtime$3;-><init>(Ljava/lang/Object;)V

    .line 776
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 777
    .local v1, "task":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/tns/Runtime;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 780
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/RunnableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    nop

    .line 785
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "task":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Void;>;"
    goto :goto_1

    .line 781
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    .restart local v1    # "task":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Void;>;"
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 782
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 786
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "task":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Void;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {p0}, Lcom/tns/Runtime;->initInstance(Ljava/lang/Object;)V

    .line 788
    :goto_1
    return-void
.end method

.method private native initNativeScript(ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/Object;Ljava/lang/String;IZ)V
.end method

.method private static initRuntime(Lcom/tns/DynamicConfiguration;)Lcom/tns/Runtime;
    .locals 2
    .param p0, "dynamicConfiguration"    # Lcom/tns/DynamicConfiguration;

    .line 605
    new-instance v0, Lcom/tns/Runtime;

    sget-object v1, Lcom/tns/Runtime;->staticConfiguration:Lcom/tns/StaticConfiguration;

    invoke-direct {v0, v1, p0}, Lcom/tns/Runtime;-><init>(Lcom/tns/StaticConfiguration;Lcom/tns/DynamicConfiguration;)V

    .line 606
    .local v0, "runtime":Lcom/tns/Runtime;
    invoke-virtual {v0}, Lcom/tns/Runtime;->init()V

    .line 608
    return-object v0
.end method

.method public static initWorker(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "jsFileName"    # Ljava/lang/String;
    .param p1, "callingJsDir"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 592
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 593
    .local v0, "runtime":Lcom/tns/Runtime;
    invoke-virtual {v0}, Lcom/tns/Runtime;->getDynamicConfig()Lcom/tns/DynamicConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/tns/DynamicConfiguration;->myThreadScheduler:Lcom/tns/ThreadScheduler;

    .line 595
    .local v1, "mainThreadScheduler":Lcom/tns/ThreadScheduler;
    new-instance v2, Lcom/tns/Runtime$WorkerThread;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1, p1}, Lcom/tns/Runtime$WorkerThread;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/tns/ThreadScheduler;Ljava/lang/String;)V

    .line 596
    .local v2, "worker":Lcom/tns/Runtime$WorkerThread;
    invoke-virtual {v2}, Lcom/tns/Runtime$WorkerThread;->start()V

    .line 597
    invoke-virtual {v2}, Lcom/tns/Runtime$WorkerThread;->startRuntime()V

    .line 598
    return-void
.end method

.method public static initializeRuntimeWithConfiguration(Lcom/tns/StaticConfiguration;)Lcom/tns/Runtime;
    .locals 4
    .param p0, "config"    # Lcom/tns/StaticConfiguration;

    .line 578
    sput-object p0, Lcom/tns/Runtime;->staticConfiguration:Lcom/tns/StaticConfiguration;

    .line 579
    new-instance v0, Lcom/tns/WorkThreadScheduler;

    new-instance v1, Lcom/tns/Runtime$MainThreadHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tns/Runtime$MainThreadHandler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/tns/WorkThreadScheduler;-><init>(Landroid/os/Handler;)V

    .line 580
    .local v0, "mainThreadScheduler":Lcom/tns/WorkThreadScheduler;
    new-instance v1, Lcom/tns/DynamicConfiguration;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/tns/DynamicConfiguration;-><init>(Ljava/lang/Integer;Lcom/tns/ThreadScheduler;Lcom/tns/ThreadScheduler;)V

    .line 581
    .local v1, "dynamicConfiguration":Lcom/tns/DynamicConfiguration;
    invoke-static {v1}, Lcom/tns/Runtime;->initRuntime(Lcom/tns/DynamicConfiguration;)Lcom/tns/Runtime;

    move-result-object v2

    .line 582
    .local v2, "runtime":Lcom/tns/Runtime;
    return-object v2
.end method

.method public static isDebuggable()Z
    .locals 2

    .line 251
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 252
    .local v0, "runtime":Lcom/tns/Runtime;
    if-eqz v0, :cond_0

    .line 253
    iget-object v1, v0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-boolean v1, v1, Lcom/tns/StaticConfiguration;->isDebuggable:Z

    return v1

    .line 255
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isInitialized()Z
    .locals 2

    .line 346
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 347
    .local v0, "runtime":Lcom/tns/Runtime;
    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/tns/Runtime;->isInitializedImpl()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isInitializedImpl()Z
    .locals 1

    .line 612
    iget-boolean v0, p0, Lcom/tns/Runtime;->initialized:Z

    return v0
.end method

.method private static isNotOnMainThread()Z
    .locals 2

    .line 795
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native lock(I)V
.end method

.method private makeInstanceStrong(Ljava/lang/Object;I)V
    .locals 5
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "objectId"    # I

    .line 957
    if-eqz p1, :cond_1

    .line 961
    move v0, p2

    .line 962
    .local v0, "key":I
    iget-object v1, p0, Lcom/tns/Runtime;->strongInstances:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    iget-object v1, p0, Lcom/tns/Runtime;->strongJavaObjectToID:Lcom/tns/NativeScriptHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/tns/NativeScriptHashMap;->put(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;

    .line 965
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 966
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lcom/tns/Runtime;->classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/tns/system/classes/loading/ClassStorageService;->storeClass(Ljava/lang/String;Ljava/lang/Class;)V

    .line 968
    iget-object v2, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/tns/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 969
    iget-object v2, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MakeInstanceStrong ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 971
    :cond_0
    return-void

    .line 958
    .end local v0    # "key":I
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "instance cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeInstanceWeak(IZ)V
    .locals 4
    .param p1, "javaObjectID"    # I
    .param p2, "keepAsWeak"    # Z

    .line 974
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeInstanceWeak instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " keepAsWeak="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/tns/Runtime;->strongInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 979
    .local v0, "instance":Ljava/lang/Object;
    if-eqz p2, :cond_1

    .line 980
    iget-object v1, p0, Lcom/tns/Runtime;->weakJavaObjectToID:Lcom/tns/NativeScriptWeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tns/NativeScriptWeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;

    .line 981
    iget-object v1, p0, Lcom/tns/Runtime;->weakInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    :cond_1
    iget-object v1, p0, Lcom/tns/Runtime;->strongInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    iget-object v1, p0, Lcom/tns/Runtime;->strongJavaObjectToID:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v1, v0}, Lcom/tns/NativeScriptHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Number;

    .line 986
    return-void
.end method

.method private makeInstanceWeak(Ljava/nio/ByteBuffer;IZ)V
    .locals 2
    .param p1, "buff"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .param p3, "keepAsWeak"    # Z

    .line 990
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 991
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 992
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 993
    .local v1, "javaObjectId":I
    invoke-direct {p0, v1, p3}, Lcom/tns/Runtime;->makeInstanceWeak(IZ)V

    .line 991
    .end local v1    # "javaObjectId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 995
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private makeInstanceWeakAndCheckIfAlive(I)Z
    .locals 5
    .param p1, "javaObjectID"    # I

    .line 999
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeInstanceWeakAndCheckIfAlive instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/tns/Runtime;->strongInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1003
    .local v0, "instance":Ljava/lang/Object;
    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 1004
    iget-object v2, p0, Lcom/tns/Runtime;->weakInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1005
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1006
    return v3

    .line 1008
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1009
    if-nez v0, :cond_2

    .line 1011
    iget-object v1, p0, Lcom/tns/Runtime;->weakInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v1, p0, Lcom/tns/Runtime;->weakJavaObjectToID:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v1, v2}, Lcom/tns/NativeScriptWeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Number;

    .line 1013
    return v3

    .line 1015
    :cond_2
    return v1

    .line 1019
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    :cond_3
    iget-object v2, p0, Lcom/tns/Runtime;->strongInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iget-object v2, p0, Lcom/tns/Runtime;->strongJavaObjectToID:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v2, v0}, Lcom/tns/NativeScriptHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Number;

    .line 1022
    iget-object v2, p0, Lcom/tns/Runtime;->weakJavaObjectToID:Lcom/tns/NativeScriptWeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/tns/NativeScriptWeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;

    .line 1023
    iget-object v2, p0, Lcom/tns/Runtime;->weakInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    return v1
.end method

.method private native notifyGc(I)Z
.end method

.method private varargs packageArgs([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .param p1, "args"    # [Ljava/lang/Object;

    .line 1198
    if-eqz p1, :cond_0

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1199
    .local v0, "len":I
    :goto_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 1201
    .local v1, "packagedArgs":[Ljava/lang/Object;
    if-lez v0, :cond_2

    .line 1202
    const/4 v2, 0x0

    .line 1204
    .local v2, "jsArgsIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 1205
    aget-object v4, p1, v3

    .line 1206
    .local v4, "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/tns/TypeIDs;->GetObjectTypeId(Ljava/lang/Object;)I

    move-result v5

    .line 1207
    .local v5, "typeId":I
    const/4 v6, 0x0

    .line 1209
    .local v6, "javaClassPath":Ljava/lang/String;
    sget v7, Lcom/tns/TypeIDs;->JsObject:I

    if-ne v5, v7, :cond_1

    .line 1210
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1211
    invoke-direct {p0, v4}, Lcom/tns/Runtime;->getOrCreateJavaObjectID(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1214
    :cond_1
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "jsArgsIndex":I
    .local v7, "jsArgsIndex":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v2

    .line 1216
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "jsArgsIndex":I
    .restart local v2    # "jsArgsIndex":I
    aput-object v4, v1, v7

    .line 1218
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "jsArgsIndex":I
    .restart local v7    # "jsArgsIndex":I
    aput-object v6, v1, v2

    .line 1204
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "typeId":I
    .end local v6    # "javaClassPath":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    move v2, v7

    goto :goto_1

    .line 1222
    .end local v3    # "i":I
    .end local v7    # "jsArgsIndex":I
    :cond_2
    return-object v1
.end method

.method private native passExceptionToJsNative(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static passSuppressedExceptionToJs(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 96
    .local v0, "runtime":Lcom/tns/Runtime;
    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" thread for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, p0, v2}, Lcom/tns/Runtime;->passDiscardedExceptionToJs(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 100
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static passUncaughtExceptionFromWorkerToMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/String;
    .param p3, "lineno"    # I

    .line 1552
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 1554
    .local v0, "currentRuntime":Lcom/tns/Runtime;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1555
    .local v1, "msg":Landroid/os/Message;
    sget v2, Lcom/tns/MessageType;->BubbleUpException:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1556
    iget v2, v0, Lcom/tns/Runtime;->workerId:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 1558
    invoke-virtual {v0}, Lcom/tns/Runtime;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1559
    .local v2, "threadName":Ljava/lang/String;
    new-instance v9, Lcom/tns/JavaScriptErrorMessage;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    move v7, p3

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/tns/JavaScriptErrorMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1561
    .local v3, "error":Lcom/tns/JavaScriptErrorMessage;
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1564
    iget-object v4, v0, Lcom/tns/Runtime;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1565
    return-void
.end method

.method private processPendingMessages()V
    .locals 3

    .line 496
    sget-object v0, Lcom/tns/Runtime;->pendingWorkerMessages:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/tns/Runtime;->getWorkerId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 497
    .local v0, "messages":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/os/Message;>;"
    if-nez v0, :cond_0

    .line 498
    return-void

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/tns/Runtime;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 502
    .local v1, "handler":Landroid/os/Handler;
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 503
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 505
    :cond_1
    return-void
.end method

.method private purgeAllProxies()V
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/tns/Runtime;->dexFactory:Lcom/tns/DexFactory;

    if-nez v0, :cond_0

    .line 1387
    return-void

    .line 1390
    :cond_0
    invoke-virtual {v0}, Lcom/tns/DexFactory;->purgeAllProxies()V

    .line 1391
    return-void
.end method

.method private resolveClass(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 7
    .param p1, "baseClassName"    # Ljava/lang/String;
    .param p2, "fullClassName"    # Ljava/lang/String;
    .param p3, "methodOverrides"    # [Ljava/lang/String;
    .param p4, "implementedInterfaces"    # [Ljava/lang/String;
    .param p5, "isInterface"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/tns/Runtime;->classResolver:Lcom/tns/ClassResolver;

    iget-object v3, p0, Lcom/tns/Runtime;->dexFactory:Lcom/tns/DexFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/tns/ClassResolver;->resolveClass(Ljava/lang/String;Ljava/lang/String;Lcom/tns/DexFactory;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    .line 746
    .local v0, "javaClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0
.end method

.method private resolveConstructorSignature(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1233
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveConstructorSignature: Resolving constructor for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 1237
    :cond_0
    invoke-static {p1, p2}, Lcom/tns/MethodResolver;->resolveConstructorSignature(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, "res":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1240
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed resolving constructor for class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    array-length v3, p2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " parameters. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Check the number and type of arguments.\nPrimitive types need to be manually wrapped in their respective Object wrappers.\nIf you are creating an instance of an inner class, make sure to always provide reference to the outer `this` as the first argument."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1243
    :cond_2
    return-object v0
.end method

.method private resolveMethodOverload(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1248
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    const-string v1, " on class "

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveMethodOverload: Resolving method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 1252
    :cond_0
    sget-object v0, Lcom/tns/Runtime;->classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

    invoke-interface {v0, p1}, Lcom/tns/system/classes/loading/ClassStorageService;->retrieveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1255
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p2, p3}, Lcom/tns/MethodResolver;->resolveMethodOverload(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1256
    .local v2, "res":Ljava/lang/String;
    iget-object v3, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    invoke-interface {v3}, Lcom/tns/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1257
    iget-object v3, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveMethodOverload: method found :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 1259
    :cond_1
    if-eqz v2, :cond_2

    .line 1263
    return-object v2

    .line 1260
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed resolving method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private native runModule(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation
.end method

.method private native runScript(ILjava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation
.end method

.method private native runWorker(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation
.end method

.method public static sendMessageFromMainToWorker(ILjava/lang/String;)V
    .locals 7
    .param p0, "workerId"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 1418
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 1420
    .local v0, "currentRuntime":Lcom/tns/Runtime;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1421
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1422
    sget v2, Lcom/tns/MessageType;->MainToWorker:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1424
    iget-object v2, v0, Lcom/tns/Runtime;->workerIdToHandler:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 1425
    .local v2, "hasKey":Z
    iget-object v3, v0, Lcom/tns/Runtime;->workerIdToHandler:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 1435
    .local v3, "workerHandler":Landroid/os/Handler;
    if-nez v3, :cond_4

    .line 1437
    const-string v4, "Worker(id="

    if-eqz v2, :cond_1

    .line 1438
    iget-object v5, v0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    invoke-interface {v5}, Lcom/tns/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1439
    iget-object v5, v0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") that you are trying to send a message to has been terminated. No message will be sent."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 1442
    :cond_0
    return-void

    .line 1445
    :cond_1
    iget-object v5, v0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    invoke-interface {v5}, Lcom/tns/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1446
    iget-object v5, v0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")\'s handler still not initialized. Requeueing message for Worker(id="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 1449
    :cond_2
    sget-object v4, Lcom/tns/Runtime;->pendingWorkerMessages:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1450
    sget-object v4, Lcom/tns/Runtime;->pendingWorkerMessages:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    :cond_3
    sget-object v4, Lcom/tns/Runtime;->pendingWorkerMessages:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    .line 1454
    .local v4, "messages":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/os/Message;>;"
    invoke-interface {v4, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1456
    return-void

    .line 1459
    .end local v4    # "messages":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/os/Message;>;"
    :cond_4
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1460
    return-void

    .line 1463
    :cond_5
    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1464
    return-void
.end method

.method public static sendMessageFromWorkerToMain(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 1468
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 1470
    .local v0, "currentRuntime":Lcom/tns/Runtime;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1471
    .local v1, "msg":Landroid/os/Message;
    sget v2, Lcom/tns/MessageType;->WorkerToMain:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1476
    invoke-virtual {v0}, Lcom/tns/Runtime;->getWorkerId()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 1477
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1479
    iget-object v2, v0, Lcom/tns/Runtime;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1480
    return-void
.end method

.method private native unlock(I)V
.end method

.method private static useGlobalRefs()Z
    .locals 2

    .line 1404
    const/16 v0, 0x10

    .line 1405
    .local v0, "JELLY_BEAN":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1406
    .local v1, "useGlobalRefs":Z
    :goto_0
    return v1
.end method

.method public static workerObjectTerminate(I)V
    .locals 9
    .param p0, "workerId"    # I

    .line 1485
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 1486
    .local v0, "currentRuntime":Lcom/tns/Runtime;
    const-wide/16 v1, 0x3e8

    .line 1488
    .local v1, "ResendDelay":J
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1490
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, v0, Lcom/tns/Runtime;->workerIdToHandler:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 1491
    .local v4, "hasKey":Z
    iget-object v5, v0, Lcom/tns/Runtime;->workerIdToHandler:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    .line 1493
    .local v5, "workerHandler":Landroid/os/Handler;
    sget v6, Lcom/tns/MessageType;->TerminateThread:I

    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 1494
    iput p0, v3, Landroid/os/Message;->arg2:I

    .line 1503
    if-nez v5, :cond_4

    .line 1505
    const-string v6, "Worker(id="

    if-eqz v4, :cond_1

    .line 1506
    iget-object v7, v0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    invoke-interface {v7}, Lcom/tns/Logger;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1507
    iget-object v7, v0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") is already terminated. No message will be sent."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 1510
    :cond_0
    return-void

    .line 1512
    :cond_1
    iget-object v7, v0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    invoke-interface {v7}, Lcom/tns/Logger;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1513
    iget-object v7, v0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")\'s handler still not initialized. Requeueing terminate() message for Worker(id="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 1516
    :cond_2
    sget-object v6, Lcom/tns/Runtime;->pendingWorkerMessages:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1517
    sget-object v6, Lcom/tns/Runtime;->pendingWorkerMessages:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    :cond_3
    sget-object v6, Lcom/tns/Runtime;->pendingWorkerMessages:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Queue;

    .line 1521
    .local v6, "messages":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/os/Message;>;"
    invoke-interface {v6, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1522
    return-void

    .line 1527
    .end local v6    # "messages":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/os/Message;>;"
    :cond_4
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1528
    return-void

    .line 1532
    :cond_5
    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1535
    iget-object v6, v0, Lcom/tns/Runtime;->workerIdToHandler:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    return-void
.end method

.method public static workerScopeClose()V
    .locals 3

    .line 1541
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 1543
    .local v0, "currentRuntime":Lcom/tns/Runtime;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1544
    .local v1, "msgToWorker":Landroid/os/Message;
    sget v2, Lcom/tns/MessageType;->TerminateAndCloseThread:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1546
    invoke-virtual {v0}, Lcom/tns/Runtime;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1547
    return-void
.end method


# virtual methods
.method public ResetDateTimeConfigurationCache()V
    .locals 2

    .line 359
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 360
    .local v0, "runtime":Lcom/tns/Runtime;
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v1

    invoke-static {v1}, Lcom/tns/Runtime;->ResetDateTimeConfigurationCache(I)V

    .line 363
    :cond_0
    return-void
.end method

.method public clearStartupData()V
    .locals 1

    .line 1568
    invoke-virtual {p0}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tns/Runtime;->clearStartupData(I)V

    .line 1569
    return-void
.end method

.method public disableVerboseLogging()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tns/Logger;->setEnabled(Z)V

    .line 674
    sput-boolean v1, Lcom/tns/bindings/ProxyGenerator;->IsLogEnabled:Z

    .line 675
    return-void
.end method

.method public enableVerboseLogging()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tns/Logger;->setEnabled(Z)V

    .line 667
    sput-boolean v1, Lcom/tns/bindings/ProxyGenerator;->IsLogEnabled:Z

    .line 668
    return-void
.end method

.method public getDynamicConfig()Lcom/tns/DynamicConfiguration;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/tns/Runtime;->dynamicConfig:Lcom/tns/DynamicConfiguration;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/tns/Runtime;->threadScheduler:Lcom/tns/ThreadScheduler;

    invoke-interface {v0}, Lcom/tns/ThreadScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getIsLiveSyncStarted()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/tns/Runtime;->isLiveSyncStarted:Z

    return v0
.end method

.method public getLogger()Lcom/tns/Logger;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/tns/Runtime;->logger:Lcom/tns/Logger;

    return-object v0
.end method

.method public getMarkingModeOrdinal()I
    .locals 1

    .line 338
    sget-object v0, Lcom/tns/Runtime;->staticConfiguration:Lcom/tns/StaticConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tns/StaticConfiguration;->appConfig:Lcom/tns/AppConfig;

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/tns/Runtime;->staticConfiguration:Lcom/tns/StaticConfiguration;

    iget-object v0, v0, Lcom/tns/StaticConfiguration;->appConfig:Lcom/tns/AppConfig;

    invoke-virtual {v0}, Lcom/tns/AppConfig;->getMarkingMode()Lcom/tns/MarkingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tns/MarkingMode;->ordinal()I

    move-result v0

    return v0

    .line 341
    :cond_0
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->MarkingMode:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tns/MarkingMode;

    invoke-virtual {v0}, Lcom/tns/MarkingMode;->ordinal()I

    move-result v0

    return v0
.end method

.method public getRuntimeId()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/tns/Runtime;->runtimeId:I

    return v0
.end method

.method public getWorkerId()I
    .locals 1

    .line 351
    iget v0, p0, Lcom/tns/Runtime;->workerId:I

    return v0
.end method

.method public init()V
    .locals 13

    .line 616
    iget-object v0, p0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-object v2, v0, Lcom/tns/StaticConfiguration;->logger:Lcom/tns/Logger;

    iget-object v0, p0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-object v3, v0, Lcom/tns/StaticConfiguration;->appName:Ljava/lang/String;

    iget-object v0, p0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-object v4, v0, Lcom/tns/StaticConfiguration;->nativeLibDir:Ljava/lang/String;

    iget-object v0, p0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-object v5, v0, Lcom/tns/StaticConfiguration;->rootDir:Ljava/io/File;

    iget-object v0, p0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-object v6, v0, Lcom/tns/StaticConfiguration;->appDir:Ljava/io/File;

    iget-object v0, p0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-object v7, v0, Lcom/tns/StaticConfiguration;->classLoader:Ljava/lang/ClassLoader;

    iget-object v0, p0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-object v8, v0, Lcom/tns/StaticConfiguration;->dexDir:Ljava/io/File;

    iget-object v0, p0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-object v9, v0, Lcom/tns/StaticConfiguration;->dexThumb:Ljava/lang/String;

    iget-object v0, p0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-object v10, v0, Lcom/tns/StaticConfiguration;->appConfig:Lcom/tns/AppConfig;

    iget-object v0, p0, Lcom/tns/Runtime;->dynamicConfig:Lcom/tns/DynamicConfiguration;

    iget-object v11, v0, Lcom/tns/DynamicConfiguration;->callingJsDir:Ljava/lang/String;

    iget-object v0, p0, Lcom/tns/Runtime;->config:Lcom/tns/StaticConfiguration;

    iget-boolean v12, v0, Lcom/tns/StaticConfiguration;->isDebuggable:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/tns/Runtime;->init(Lcom/tns/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;Ljava/io/File;Ljava/lang/String;Lcom/tns/AppConfig;Ljava/lang/String;Z)V

    .line 617
    return-void
.end method

.method public lock()V
    .locals 1

    .line 760
    iget v0, p0, Lcom/tns/Runtime;->runtimeId:I

    invoke-direct {p0, v0}, Lcom/tns/Runtime;->lock(I)V

    .line 761
    return-void
.end method

.method public notifyGc()V
    .locals 1

    .line 756
    iget v0, p0, Lcom/tns/Runtime;->runtimeId:I

    invoke-direct {p0, v0}, Lcom/tns/Runtime;->notifyGc(I)Z

    .line 757
    return-void
.end method

.method passDiscardedExceptionToJs(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/tns/Runtime;->getStackTraceErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/tns/Runtime;->getJSStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/tns/Runtime;->passExceptionToJsNative(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method passUncaughtExceptionToJs(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "fullStackTrace"    # Ljava/lang/String;
    .param p4, "jsStackTrace"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/tns/Runtime;->passExceptionToJsNative(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

.method public releaseNativeCounterpart(I)V
    .locals 4
    .param p1, "nativeObjectId"    # I

    .line 366
    iget-object v0, p0, Lcom/tns/Runtime;->strongInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 367
    .local v0, "strongRef":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/tns/Runtime;->strongInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v1, p0, Lcom/tns/Runtime;->strongJavaObjectToID:Lcom/tns/NativeScriptHashMap;

    invoke-virtual {v1, v0}, Lcom/tns/NativeScriptHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Number;

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/tns/Runtime;->weakInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 373
    .local v1, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    .line 374
    iget-object v2, p0, Lcom/tns/Runtime;->weakInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v2, p0, Lcom/tns/Runtime;->weakJavaObjectToID:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v2, v1}, Lcom/tns/NativeScriptWeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Number;

    .line 377
    :cond_1
    return-void
.end method

.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 678
    const-string v0, "Runtime.run"

    invoke-static {v0}, Lcom/tns/ManualInstrumentation;->start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;

    move-result-object v0

    .line 680
    .local v0, "frame":Lcom/tns/ManualInstrumentation$Frame;
    :try_start_0
    invoke-static {}, Lcom/tns/Module;->bootstrapApp()Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "mainModule":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/tns/Runtime;->runModule(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    .end local v1    # "mainModule":Ljava/lang/String;
    invoke-interface {v0}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 684
    nop

    .line 685
    return-void

    .line 683
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 684
    throw v1
.end method

.method public runModule(Ljava/io/File;)V
    .locals 2
    .param p1, "jsFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 688
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/tns/Runtime;->runModule(ILjava/lang/String;)V

    .line 690
    return-void
.end method

.method public runScript(Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .param p1, "jsFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 693
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tns/Runtime;->runScript(Ljava/io/File;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public runScript(Ljava/io/File;Z)Ljava/lang/Object;
    .locals 7
    .param p1, "jsFile"    # Ljava/io/File;
    .param p2, "waitForResultOnMainThread"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;
        }
    .end annotation

    .line 697
    const/4 v0, 0x0

    .line 699
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 700
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/tns/Runtime;->threadScheduler:Lcom/tns/ThreadScheduler;

    invoke-interface {v2}, Lcom/tns/ThreadScheduler;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 704
    .local v2, "isWorkThread":Z
    if-eqz v2, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/tns/Runtime;->runScript(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 707
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 709
    .local v3, "arr":[Ljava/lang/Object;
    new-instance v4, Lcom/tns/Runtime$2;

    invoke-direct {v4, p0, v3, v1}, Lcom/tns/Runtime$2;-><init>(Lcom/tns/Runtime;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    .local v4, "r":Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/tns/Runtime;->threadScheduler:Lcom/tns/ThreadScheduler;

    invoke-interface {v5, v4}, Lcom/tns/ThreadScheduler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 725
    .local v5, "success":Z
    if-eqz v5, :cond_2

    .line 726
    monitor-enter v4

    .line 728
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v3, v6

    if-nez v6, :cond_1

    if-eqz p2, :cond_1

    .line 729
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    :cond_1
    goto :goto_0

    .line 734
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 731
    :catch_0
    move-exception v6

    .line 732
    .local v6, "e":Ljava/lang/InterruptedException;
    move-object v0, v6

    .line 734
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :goto_0
    :try_start_1
    monitor-exit v4

    goto :goto_2

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 739
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "isWorkThread":Z
    .end local v3    # "arr":[Ljava/lang/Object;
    .end local v4    # "r":Ljava/lang/Runnable;
    .end local v5    # "success":Z
    :cond_2
    :goto_2
    return-object v0
.end method

.method public setIsLiveSyncStarted(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 136
    iput-boolean p1, p0, Lcom/tns/Runtime;->isLiveSyncStarted:Z

    .line 137
    return-void
.end method

.method public unlock()V
    .locals 1

    .line 764
    iget v0, p0, Lcom/tns/Runtime;->runtimeId:I

    invoke-direct {p0, v0}, Lcom/tns/Runtime;->unlock(I)V

    .line 765
    return-void
.end method
