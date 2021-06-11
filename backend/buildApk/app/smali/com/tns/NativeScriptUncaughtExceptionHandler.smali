.class public Lcom/tns/NativeScriptUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "NativeScriptUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final logger:Lcom/tns/Logger;


# direct methods
.method public constructor <init>(Lcom/tns/Logger;Landroid/content/Context;)V
    .locals 1
    .param p1, "logger"    # Lcom/tns/Logger;
    .param p2, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/tns/NativeScriptUncaughtExceptionHandler;->logger:Lcom/tns/Logger;

    .line 15
    iput-object p2, p0, Lcom/tns/NativeScriptUncaughtExceptionHandler;->context:Landroid/content/Context;

    .line 16
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/NativeScriptUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 17
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 12
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 21
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "An uncaught Exception occurred on \"%s\" thread.\n%s\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "currentThreadMessage":Ljava/lang/String;
    invoke-static {p2}, Lcom/tns/Runtime;->getStackTraceErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "stackTraceErrorMessage":Ljava/lang/String;
    new-array v5, v0, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v2, v5, v4

    const-string v6, "%s\nStackTrace:\n%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 25
    .local v5, "errorMessage":Ljava/lang/String;
    invoke-static {}, Lcom/tns/Runtime;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 27
    :try_start_0
    iget-object v6, p0, Lcom/tns/NativeScriptUncaughtExceptionHandler;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 28
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v6

    .line 33
    .local v6, "runtime":Lcom/tns/Runtime;
    if-eqz v6, :cond_1

    .line 34
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2}, Lcom/tns/Runtime;->getJSStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p2, v7, v2, v8}, Lcom/tns/Runtime;->passUncaughtExceptionToJs(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v6    # "runtime":Lcom/tns/Runtime;
    :cond_1
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v6

    .line 37
    .local v6, "t":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/tns/NativeScriptUncaughtExceptionHandler;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 38
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/tns/NativeScriptUncaughtExceptionHandler;->logger:Lcom/tns/Logger;

    invoke-interface {v6}, Lcom/tns/Logger;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 44
    iget-object v6, p0, Lcom/tns/NativeScriptUncaughtExceptionHandler;->logger:Lcom/tns/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Uncaught Exception Message="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 47
    :cond_3
    const/4 v6, 0x0

    .line 49
    .local v6, "res":Z
    iget-object v7, p0, Lcom/tns/NativeScriptUncaughtExceptionHandler;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 51
    const/4 v7, 0x0

    .line 52
    .local v7, "ErrReport":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 54
    .local v8, "startActivity":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v9, "com.tns.ErrorReport"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    move-object v7, v9

    .line 56
    const-string v9, "startActivity"

    new-array v10, v0, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v3

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v4

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v8, v9

    .line 58
    const/4 v9, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/tns/NativeScriptUncaughtExceptionHandler;->context:Landroid/content/Context;

    aput-object v10, v0, v3

    aput-object v5, v0, v4

    invoke-virtual {v8, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v0

    .line 65
    .end local v7    # "ErrReport":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "startActivity":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Error"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v3, p0, Lcom/tns/NativeScriptUncaughtExceptionHandler;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :cond_4
    const-string v3, "Application Error"

    const-string v4, "ErrorActivity default implementation not found. Reinstall android platform to fix."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    if-nez v6, :cond_6

    iget-object v0, p0, Lcom/tns/NativeScriptUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_6

    .line 69
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 71
    :cond_6
    return-void
.end method
