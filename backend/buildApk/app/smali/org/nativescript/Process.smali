.class public Lorg/nativescript/Process;
.super Ljava/lang/Object;
.source "Process.java"


# static fields
.field static startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/nativescript/Process;->startTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStartTime()J
    .locals 19

    .line 16
    const-string v1, "_SC_CLK_TCK"

    const-string v0, " "

    const-string v2, ") "

    sget-wide v3, Lorg/nativescript/Process;->startTime:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 17
    return-wide v3

    .line 21
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 22
    .local v3, "pid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 23
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .local v6, "stat":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 29
    nop

    .line 30
    move-object v7, v2

    .line 31
    .local v7, "field2End":Ljava/lang/String;
    move-object v8, v0

    .line 32
    .local v8, "fieldSep":Ljava/lang/String;
    const/16 v9, 0x14

    .line 33
    .local v9, "fieldStartTime":I
    const/16 v10, 0x3e8

    .line 35
    .local v10, "msInSec":I
    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 36
    .local v2, "fields":[Ljava/lang/String;
    const/16 v0, 0x14

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 39
    .local v11, "t":J
    const/4 v13, 0x0

    :try_start_3
    const-string v0, "android.system.OsConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 42
    .local v0, "tckName":I
    goto :goto_0

    .line 40
    .end local v0    # "tckName":I
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    const-string v14, "libcore.io.OsConstants"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .line 43
    .local v0, "tckName":I
    :goto_0
    const-string v1, "libcore.io.Libcore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v14, "os"

    invoke-virtual {v1, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, "os":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "sysconf"

    const/4 v15, 0x1

    move-object/from16 v16, v2

    .end local v2    # "fields":[Ljava/lang/String;
    .local v16, "fields":[Ljava/lang/String;
    new-array v2, v15, [Ljava/lang/Class;

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v17, v2, v18

    invoke-virtual {v13, v14, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v13, v15, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v18

    invoke-virtual {v2, v1, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 45
    .local v13, "tck":J
    const-wide/16 v17, 0x3e8

    mul-long v17, v17, v11

    div-long v17, v17, v13

    sput-wide v17, Lorg/nativescript/Process;->startTime:J

    .line 49
    .end local v0    # "tckName":I
    .end local v1    # "os":Ljava/lang/Object;
    .end local v3    # "pid":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "stat":Ljava/lang/String;
    .end local v7    # "field2End":Ljava/lang/String;
    .end local v8    # "fieldSep":Ljava/lang/String;
    .end local v9    # "fieldStartTime":I
    .end local v10    # "msInSec":I
    .end local v11    # "t":J
    .end local v13    # "tck":J
    .end local v16    # "fields":[Ljava/lang/String;
    goto :goto_1

    .line 28
    .restart local v3    # "pid":I
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 29
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 46
    .end local v3    # "pid":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get process start time. Using the current time as start time. Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JS"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lorg/nativescript/Process;->startTime:J

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    sget-wide v0, Lorg/nativescript/Process;->startTime:J

    return-wide v0
.end method

.method public static getUpTime()J
    .locals 6

    .line 55
    invoke-static {}, Lorg/nativescript/Process;->getStartTime()J

    move-result-wide v0

    .line 56
    .local v0, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 57
    .local v2, "currentTime":J
    sub-long v4, v2, v0

    return-wide v4
.end method
