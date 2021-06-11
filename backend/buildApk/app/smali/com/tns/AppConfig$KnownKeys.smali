.class public final enum Lcom/tns/AppConfig$KnownKeys;
.super Ljava/lang/Enum;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/AppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "KnownKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tns/AppConfig$KnownKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tns/AppConfig$KnownKeys;

.field public static final enum CodeCacheKey:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum DiscardUncaughtJsExceptions:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum EnableLineBreakpoins:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum EnableMultithreadedJavascript:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum ForceLog:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum FreeMemoryRatio:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum GcThrottleTime:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum HandleTimeZoneChanges:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum HeapSnapshotScriptKey:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum MarkingMode:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum MaxLogcatObjectSize:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum MemoryCheckInterval:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum ProfilerOutputDirKey:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum Profiling:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum SnapshotFile:Lcom/tns/AppConfig$KnownKeys;

.field public static final enum V8FlagsKey:Lcom/tns/AppConfig$KnownKeys;


# instance fields
.field private final defaultValue:Ljava/lang/Object;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 10
    const-string v4, "V8FlagsKey"

    const-string v5, "v8Flags"

    const-string v6, "--expose_gc"

    invoke-direct {v0, v4, v1, v5, v6}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->V8FlagsKey:Lcom/tns/AppConfig$KnownKeys;

    .line 11
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/4 v4, 0x1

    const-string v5, "CodeCacheKey"

    const-string v6, "codeCache"

    invoke-direct {v0, v5, v4, v6, v3}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->CodeCacheKey:Lcom/tns/AppConfig$KnownKeys;

    .line 12
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/4 v5, 0x2

    const-string v6, ""

    const-string v7, "HeapSnapshotScriptKey"

    const-string v8, "heapSnapshotScript"

    invoke-direct {v0, v7, v5, v8, v6}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->HeapSnapshotScriptKey:Lcom/tns/AppConfig$KnownKeys;

    .line 13
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/4 v7, 0x3

    const-string v8, "SnapshotFile"

    const-string v9, "snapshot.blob"

    invoke-direct {v0, v8, v7, v9, v6}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->SnapshotFile:Lcom/tns/AppConfig$KnownKeys;

    .line 14
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/4 v8, 0x4

    const-string v9, "ProfilerOutputDirKey"

    const-string v10, "profilerOutputDir"

    invoke-direct {v0, v9, v8, v10, v6}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->ProfilerOutputDirKey:Lcom/tns/AppConfig$KnownKeys;

    .line 15
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/4 v9, 0x5

    const-string v10, "GcThrottleTime"

    const-string v11, "gcThrottleTime"

    invoke-direct {v0, v10, v9, v11, v2}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->GcThrottleTime:Lcom/tns/AppConfig$KnownKeys;

    .line 16
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/4 v10, 0x6

    const-string v11, "MemoryCheckInterval"

    const-string v12, "memoryCheckInterval"

    invoke-direct {v0, v11, v10, v12, v2}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->MemoryCheckInterval:Lcom/tns/AppConfig$KnownKeys;

    .line 17
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v11, 0x7

    const-string v12, "FreeMemoryRatio"

    const-string v13, "freeMemoryRatio"

    invoke-direct {v0, v12, v11, v13, v2}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->FreeMemoryRatio:Lcom/tns/AppConfig$KnownKeys;

    .line 18
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/16 v2, 0x8

    const-string v12, "Profiling"

    const-string v13, "profiling"

    invoke-direct {v0, v12, v2, v13, v6}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->Profiling:Lcom/tns/AppConfig$KnownKeys;

    .line 19
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    sget-object v6, Lcom/tns/MarkingMode;->none:Lcom/tns/MarkingMode;

    const/16 v12, 0x9

    const-string v13, "MarkingMode"

    const-string v14, "markingMode"

    invoke-direct {v0, v13, v12, v14, v6}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->MarkingMode:Lcom/tns/AppConfig$KnownKeys;

    .line 20
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/16 v6, 0xa

    const-string v13, "HandleTimeZoneChanges"

    const-string v14, "handleTimeZoneChanges"

    invoke-direct {v0, v13, v6, v14, v3}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->HandleTimeZoneChanges:Lcom/tns/AppConfig$KnownKeys;

    .line 21
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/16 v13, 0x400

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0xb

    const-string v15, "MaxLogcatObjectSize"

    const-string v6, "maxLogcatObjectSize"

    invoke-direct {v0, v15, v14, v6, v13}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->MaxLogcatObjectSize:Lcom/tns/AppConfig$KnownKeys;

    .line 22
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/16 v6, 0xc

    const-string v13, "ForceLog"

    const-string v15, "forceLog"

    invoke-direct {v0, v13, v6, v15, v3}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->ForceLog:Lcom/tns/AppConfig$KnownKeys;

    .line 23
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/16 v13, 0xd

    const-string v15, "DiscardUncaughtJsExceptions"

    const-string v6, "discardUncaughtJsExceptions"

    invoke-direct {v0, v15, v13, v6, v3}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->DiscardUncaughtJsExceptions:Lcom/tns/AppConfig$KnownKeys;

    .line 24
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/16 v6, 0xe

    const-string v15, "EnableLineBreakpoins"

    const-string v13, "enableLineBreakpoints"

    invoke-direct {v0, v15, v6, v13, v3}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->EnableLineBreakpoins:Lcom/tns/AppConfig$KnownKeys;

    .line 25
    new-instance v0, Lcom/tns/AppConfig$KnownKeys;

    const/16 v13, 0xf

    const-string v15, "EnableMultithreadedJavascript"

    const-string v6, "enableMultithreadedJavascript"

    invoke-direct {v0, v15, v13, v6, v3}, Lcom/tns/AppConfig$KnownKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/tns/AppConfig$KnownKeys;->EnableMultithreadedJavascript:Lcom/tns/AppConfig$KnownKeys;

    .line 9
    const/16 v3, 0x10

    new-array v3, v3, [Lcom/tns/AppConfig$KnownKeys;

    sget-object v6, Lcom/tns/AppConfig$KnownKeys;->V8FlagsKey:Lcom/tns/AppConfig$KnownKeys;

    aput-object v6, v3, v1

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->CodeCacheKey:Lcom/tns/AppConfig$KnownKeys;

    aput-object v1, v3, v4

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->HeapSnapshotScriptKey:Lcom/tns/AppConfig$KnownKeys;

    aput-object v1, v3, v5

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->SnapshotFile:Lcom/tns/AppConfig$KnownKeys;

    aput-object v1, v3, v7

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->ProfilerOutputDirKey:Lcom/tns/AppConfig$KnownKeys;

    aput-object v1, v3, v8

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->GcThrottleTime:Lcom/tns/AppConfig$KnownKeys;

    aput-object v1, v3, v9

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->MemoryCheckInterval:Lcom/tns/AppConfig$KnownKeys;

    aput-object v1, v3, v10

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->FreeMemoryRatio:Lcom/tns/AppConfig$KnownKeys;

    aput-object v1, v3, v11

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->Profiling:Lcom/tns/AppConfig$KnownKeys;

    aput-object v1, v3, v2

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->MarkingMode:Lcom/tns/AppConfig$KnownKeys;

    aput-object v1, v3, v12

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->HandleTimeZoneChanges:Lcom/tns/AppConfig$KnownKeys;

    const/16 v2, 0xa

    aput-object v1, v3, v2

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->MaxLogcatObjectSize:Lcom/tns/AppConfig$KnownKeys;

    aput-object v1, v3, v14

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->ForceLog:Lcom/tns/AppConfig$KnownKeys;

    const/16 v2, 0xc

    aput-object v1, v3, v2

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->DiscardUncaughtJsExceptions:Lcom/tns/AppConfig$KnownKeys;

    const/16 v2, 0xd

    aput-object v1, v3, v2

    sget-object v1, Lcom/tns/AppConfig$KnownKeys;->EnableLineBreakpoins:Lcom/tns/AppConfig$KnownKeys;

    const/16 v2, 0xe

    aput-object v1, v3, v2

    aput-object v0, v3, v13

    sput-object v3, Lcom/tns/AppConfig$KnownKeys;->$VALUES:[Lcom/tns/AppConfig$KnownKeys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/tns/AppConfig$KnownKeys;->name:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/tns/AppConfig$KnownKeys;->defaultValue:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tns/AppConfig$KnownKeys;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/tns/AppConfig$KnownKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tns/AppConfig$KnownKeys;

    return-object v0
.end method

.method public static values()[Lcom/tns/AppConfig$KnownKeys;
    .locals 1

    .line 9
    sget-object v0, Lcom/tns/AppConfig$KnownKeys;->$VALUES:[Lcom/tns/AppConfig$KnownKeys;

    invoke-virtual {v0}, [Lcom/tns/AppConfig$KnownKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tns/AppConfig$KnownKeys;

    return-object v0
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tns/AppConfig$KnownKeys;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/tns/AppConfig$KnownKeys;->name:Ljava/lang/String;

    return-object v0
.end method
