.class Lcom/tns/AndroidJsV8Inspector;
.super Ljava/lang/Object;
.source "AndroidJsV8Inspector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;,
        Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;
    }
.end annotation


# static fields
.field private static ApplicationDir:Ljava/lang/String;

.field private static ReadyToProcessMessages:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private currentRuntimeLogger:Lcom/tns/Logger;

.field private final debugBrkLock:Ljava/lang/Object;

.field private inspectorMessages:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mainHandler:Landroid/os/Handler;

.field private packageName:Ljava/lang/String;

.field private pendingInspectorMessages:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private server:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tns/AndroidJsV8Inspector;->ReadyToProcessMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "filesDir"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tns/AndroidJsV8Inspector;->inspectorMessages:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tns/AndroidJsV8Inspector;->pendingInspectorMessages:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    sput-object p1, Lcom/tns/AndroidJsV8Inspector;->ApplicationDir:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/tns/AndroidJsV8Inspector;->packageName:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tns/AndroidJsV8Inspector;->debugBrkLock:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/tns/AndroidJsV8Inspector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tns/AndroidJsV8Inspector;

    .line 25
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tns/AndroidJsV8Inspector;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/tns/AndroidJsV8Inspector;

    .line 25
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector;->inspectorMessages:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 25
    sget-object v0, Lcom/tns/AndroidJsV8Inspector;->ReadyToProcessMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tns/AndroidJsV8Inspector;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/tns/AndroidJsV8Inspector;

    .line 25
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector;->pendingInspectorMessages:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tns/AndroidJsV8Inspector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/tns/AndroidJsV8Inspector;

    .line 25
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector;->debugBrkLock:Ljava/lang/Object;

    return-object v0
.end method

.method protected static native disconnect()V
.end method

.method private static getInspectorMessage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "connection"    # Ljava/lang/Object;

    .line 113
    move-object v0, p0

    check-cast v0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    invoke-virtual {v0}, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->getInspectorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "type":Ljava/lang/String;
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "extension":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 160
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xd49

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v3, v4, :cond_5

    const/16 v4, 0xe5c

    if-eq v3, v4, :cond_4

    const/16 v4, 0xe7f

    if-eq v3, v4, :cond_3

    const v4, 0x18203

    if-eq v3, v4, :cond_2

    const v4, 0x31ece8

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "json"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "css"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    const-string v3, "ts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_4
    const-string v3, "so"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_5
    const-string v3, "js"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_a

    if-eq v2, v8, :cond_9

    if-eq v2, v7, :cond_8

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_6

    goto :goto_1

    .line 179
    :cond_6
    const-string v0, "application/binary"

    goto :goto_1

    .line 175
    :cond_7
    const-string v0, "text/typescript"

    .line 176
    goto :goto_1

    .line 172
    :cond_8
    const-string v0, "text/css"

    .line 173
    goto :goto_1

    .line 169
    :cond_9
    const-string v0, "application/json"

    .line 170
    goto :goto_1

    .line 166
    :cond_a
    const-string v0, "text/javascript"

    .line 184
    :cond_b
    :goto_1
    return-object v0
.end method

.method public static getPageResources()[Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/tns/AndroidJsV8Inspector;->ApplicationDir:Ljava/lang/String;

    const-string v1, "/data/user/0/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/tns/AndroidJsV8Inspector;->ApplicationDir:Ljava/lang/String;

    const-string v2, "/data/data/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tns/AndroidJsV8Inspector;->ApplicationDir:Ljava/lang/String;

    .line 123
    :cond_0
    sget-object v0, Lcom/tns/AndroidJsV8Inspector;->ApplicationDir:Ljava/lang/String;

    .line 124
    .local v0, "dataDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "app"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v1, "rootFilesDir":Ljava/io/File;
    invoke-static {v1}, Lcom/tns/AndroidJsV8Inspector;->traverseResources(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, "resources":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Pair;

    check-cast v3, [Landroid/util/Pair;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Pair;

    .line 131
    .local v3, "result":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v3
.end method

.method private processDebugBreak()V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/tns/AndroidJsV8Inspector;->processDebugBreakMessages()V

    .line 212
    invoke-direct {p0}, Lcom/tns/AndroidJsV8Inspector;->scheduleBreak()V

    .line 213
    return-void
.end method

.method private processDebugBreakMessages()V
    .locals 1

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector;->pendingInspectorMessages:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector;->pendingInspectorMessages:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "inspectorMessage":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tns/AndroidJsV8Inspector;->dispatchMessage(Ljava/lang/String;)V

    .line 219
    .end local v0    # "inspectorMessage":Ljava/lang/String;
    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method private native scheduleBreak()V
.end method

.method private static send(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "connection"    # Ljava/lang/Object;
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    move-object v0, p0

    check-cast v0, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;

    .line 106
    .local v0, "socketConnection":Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;
    invoke-virtual {v0}, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorWebSocket;->send(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method private static sendToDevToolsConsole(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "connection"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;

    .line 79
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v0, "consoleMessage":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v1, "params":Lorg/json/JSONObject;
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v2, "executionContextId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    const-string v2, "timestamp"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 86
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 87
    .local v2, "args":Lorg/json/JSONArray;
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 88
    const-string v3, "args"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v3, "method"

    const-string v4, "Runtime.consoleAPICalled"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v3, "params"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "sendingText":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/tns/AndroidJsV8Inspector;->send(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "consoleMessage":Lorg/json/JSONObject;
    .end local v1    # "params":Lorg/json/JSONObject;
    .end local v2    # "args":Lorg/json/JSONArray;
    .end local v3    # "sendingText":Ljava/lang/String;
    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void
.end method

.method private static traverseResources(Ljava/io/File;)Ljava/util/List;
    .locals 10
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "resources":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 138
    .local v1, "directories":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/io/File;>;"
    invoke-interface {v1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 143
    .local v2, "currentDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 144
    .local v3, "files":[Ljava/io/File;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 145
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    invoke-interface {v1, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    :cond_0
    new-instance v7, Landroid/util/Pair;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tns/AndroidJsV8Inspector;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v6    # "file":Ljava/io/File;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 151
    .end local v2    # "currentDir":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 153
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected final native connect(Ljava/lang/Object;)V
.end method

.method protected final native dispatchMessage(Ljava/lang/String;)V
.end method

.method protected final native init()V
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/tns/AndroidJsV8Inspector;->server:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 61
    .local v0, "currentRuntime":Lcom/tns/Runtime;
    invoke-virtual {v0}, Lcom/tns/Runtime;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/tns/AndroidJsV8Inspector;->mainHandler:Landroid/os/Handler;

    .line 63
    invoke-virtual {v0}, Lcom/tns/Runtime;->getLogger()Lcom/tns/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/tns/AndroidJsV8Inspector;->currentRuntimeLogger:Lcom/tns/Logger;

    .line 65
    new-instance v1, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tns/AndroidJsV8Inspector;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-inspectorServer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tns/AndroidJsV8Inspector;->currentRuntimeLogger:Lcom/tns/Logger;

    invoke-direct {v1, p0, v2, v3}, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;-><init>(Lcom/tns/AndroidJsV8Inspector;Ljava/lang/String;Lcom/tns/Logger;)V

    iput-object v1, p0, Lcom/tns/AndroidJsV8Inspector;->server:Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;

    .line 66
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/tns/AndroidJsV8Inspector$JsV8InspectorServer;->start(I)V

    .line 68
    iget-object v1, p0, Lcom/tns/AndroidJsV8Inspector;->currentRuntimeLogger:Lcom/tns/Logger;

    invoke-interface {v1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start debugger ThreadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "V8Inspector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/tns/AndroidJsV8Inspector;->init()V

    .line 74
    .end local v0    # "currentRuntime":Lcom/tns/Runtime;
    :cond_1
    return-void
.end method

.method protected waitForDebugger(Z)V
    .locals 5
    .param p1, "shouldBreak"    # Z

    .line 190
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/tns/AndroidJsV8Inspector;->debugBrkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/tns/AndroidJsV8Inspector;->debugBrkLock:Ljava/lang/Object;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    :try_start_1
    sget-object v2, Lcom/tns/AndroidJsV8Inspector;->ReadyToProcessMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 200
    :goto_0
    invoke-direct {p0}, Lcom/tns/AndroidJsV8Inspector;->processDebugBreak()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    goto :goto_1

    .line 202
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 199
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_3
    sget-object v2, Lcom/tns/AndroidJsV8Inspector;->ReadyToProcessMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 202
    :goto_1
    monitor-exit v1

    goto :goto_4

    .line 199
    :goto_2
    sget-object v3, Lcom/tns/AndroidJsV8Inspector;->ReadyToProcessMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 200
    invoke-direct {p0}, Lcom/tns/AndroidJsV8Inspector;->processDebugBreak()V

    .line 201
    nop

    .end local p1    # "shouldBreak":Z
    throw v2

    .line 202
    .restart local p1    # "shouldBreak":Z
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 204
    :cond_1
    sget-object v1, Lcom/tns/AndroidJsV8Inspector;->ReadyToProcessMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 206
    :goto_4
    return-void
.end method
