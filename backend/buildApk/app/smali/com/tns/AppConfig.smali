.class Lcom/tns/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/AppConfig$KnownKeys;
    }
.end annotation


# static fields
.field private static final AndroidKey:Ljava/lang/String; = "android"

.field private static final HeapSnapshotBlobKey:Ljava/lang/String; = "heapSnapshotBlob"


# instance fields
.field private final values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 11
    .param p1, "appDir"    # Ljava/io/File;

    .line 48
    const-string v0, "/"

    const-string v1, "heapSnapshotBlob"

    const-string v2, "android"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/tns/AppConfig;->makeDefaultOptions()[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    .line 50
    new-instance v3, Ljava/io/File;

    const-string v4, "/app/package.json"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v3, "packageInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    return-void

    .line 57
    :cond_0
    :try_start_0
    invoke-static {v3}, Lcom/tns/FileSystem;->readJSONFile(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v4

    .line 58
    .local v4, "rootObject":Lorg/json/JSONObject;
    if-eqz v4, :cond_10

    .line 59
    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->Profiling:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->Profiling:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "profiling":Ljava/lang/String;
    iget-object v6, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v7, Lcom/tns/AppConfig$KnownKeys;->Profiling:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v7}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v7

    aput-object v5, v6, v7

    .line 63
    .end local v5    # "profiling":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->DiscardUncaughtJsExceptions:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 64
    iget-object v5, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v6, Lcom/tns/AppConfig$KnownKeys;->DiscardUncaughtJsExceptions:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v6}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v6

    sget-object v7, Lcom/tns/AppConfig$KnownKeys;->DiscardUncaughtJsExceptions:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v7}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 66
    :cond_2
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 67
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 68
    .local v2, "androidObject":Lorg/json/JSONObject;
    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->V8FlagsKey:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    iget-object v5, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v6, Lcom/tns/AppConfig$KnownKeys;->V8FlagsKey:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v6}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v6

    sget-object v7, Lcom/tns/AppConfig$KnownKeys;->V8FlagsKey:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v7}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 71
    :cond_3
    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->CodeCacheKey:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 72
    iget-object v5, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v6, Lcom/tns/AppConfig$KnownKeys;->CodeCacheKey:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v6}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v6

    sget-object v7, Lcom/tns/AppConfig$KnownKeys;->CodeCacheKey:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v7}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 74
    :cond_4
    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->HeapSnapshotScriptKey:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "/app/"

    if-eqz v5, :cond_5

    .line 75
    :try_start_1
    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->HeapSnapshotScriptKey:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v8, Lcom/tns/AppConfig$KnownKeys;->HeapSnapshotScriptKey:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v8}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v8

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v5, v10}, Lcom/tns/FileSystem;->resolveRelativePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 78
    .end local v5    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 79
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/tns/FileSystem;->resolveRelativePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v6, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 85
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 86
    .local v7, "cpu_abi":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->SnapshotFile:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .end local v5    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v8, Lcom/tns/AppConfig$KnownKeys;->SnapshotFile:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v8}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v8

    aput-object v0, v5, v8

    .line 90
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    .end local v6    # "dir":Ljava/io/File;
    .end local v7    # "cpu_abi":Ljava/lang/String;
    :cond_6
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->ProfilerOutputDirKey:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 91
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->ProfilerOutputDirKey:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->ProfilerOutputDirKey:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 93
    :cond_7
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->GcThrottleTime:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->GcThrottleTime:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->GcThrottleTime:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    .line 96
    :cond_8
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->MemoryCheckInterval:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->MemoryCheckInterval:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->MemoryCheckInterval:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    .line 99
    :cond_9
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->FreeMemoryRatio:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 100
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->FreeMemoryRatio:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->FreeMemoryRatio:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v0, v1

    .line 102
    :cond_a
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->MarkingMode:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_b

    .line 104
    :try_start_2
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->MarkingMode:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "markingModeString":Ljava/lang/String;
    invoke-static {v0}, Lcom/tns/MarkingMode;->valueOf(Ljava/lang/String;)Lcom/tns/MarkingMode;

    move-result-object v1

    .line 106
    .local v1, "markingMode":Lcom/tns/MarkingMode;
    iget-object v5, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v6, Lcom/tns/AppConfig$KnownKeys;->MarkingMode:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v6}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v6

    aput-object v1, v5, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .end local v0    # "markingModeString":Ljava/lang/String;
    .end local v1    # "markingMode":Lcom/tns/MarkingMode;
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "JS"

    const-string v5, "Failed to parse marking mode: %s. The default %s will be used!"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/tns/AppConfig$KnownKeys;->MarkingMode:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v8}, Lcom/tns/AppConfig$KnownKeys;->getDefaultValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tns/MarkingMode;

    invoke-virtual {v8}, Lcom/tns/MarkingMode;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_0
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->HandleTimeZoneChanges:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 115
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->HandleTimeZoneChanges:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->HandleTimeZoneChanges:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v1

    .line 117
    :cond_c
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->MaxLogcatObjectSize:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 118
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->MaxLogcatObjectSize:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->MaxLogcatObjectSize:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    .line 120
    :cond_d
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->ForceLog:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 121
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->ForceLog:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->ForceLog:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v1

    .line 123
    :cond_e
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->EnableLineBreakpoins:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 124
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->EnableLineBreakpoins:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->EnableLineBreakpoins:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v1

    .line 126
    :cond_f
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->EnableMultithreadedJavascript:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 127
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->EnableMultithreadedJavascript:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    sget-object v5, Lcom/tns/AppConfig$KnownKeys;->EnableMultithreadedJavascript:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v5}, Lcom/tns/AppConfig$KnownKeys;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 135
    .end local v2    # "androidObject":Lorg/json/JSONObject;
    :cond_10
    goto :goto_1

    .line 131
    .end local v4    # "rootObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_11
    :goto_1
    return-void
.end method

.method private static makeDefaultOptions()[Ljava/lang/Object;
    .locals 7

    .line 143
    invoke-static {}, Lcom/tns/AppConfig$KnownKeys;->values()[Lcom/tns/AppConfig$KnownKeys;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 144
    .local v0, "result":[Ljava/lang/Object;
    invoke-static {}, Lcom/tns/AppConfig$KnownKeys;->values()[Lcom/tns/AppConfig$KnownKeys;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 145
    .local v4, "key":Lcom/tns/AppConfig$KnownKeys;
    invoke-virtual {v4}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v5

    invoke-virtual {v4}, Lcom/tns/AppConfig$KnownKeys;->getDefaultValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v5

    .line 144
    .end local v4    # "key":Lcom/tns/AppConfig$KnownKeys;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAsArray()[Ljava/lang/Object;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public getDiscardUncaughtJsExceptions()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->DiscardUncaughtJsExceptions:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnableMultithreadedJavascript()Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->EnableMultithreadedJavascript:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getForceLog()Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->ForceLog:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getFreeMemoryRatio()D
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->FreeMemoryRatio:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getGcThrottleTime()I
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->GcThrottleTime:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLineBreakpointsEnabled()Z
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->EnableLineBreakpoins:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getMarkingMode()Lcom/tns/MarkingMode;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->MarkingMode:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lcom/tns/MarkingMode;

    return-object v0
.end method

.method public getMaxLogcatObjectSize()I
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->MaxLogcatObjectSize:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMemoryCheckInterval()I
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->MemoryCheckInterval:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProfilingMode()Ljava/lang/String;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->Profiling:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public handleTimeZoneChanges()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/tns/AppConfig;->values:[Ljava/lang/Object;

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->HandleTimeZoneChanges:Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v1}, Lcom/tns/AppConfig$KnownKeys;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
