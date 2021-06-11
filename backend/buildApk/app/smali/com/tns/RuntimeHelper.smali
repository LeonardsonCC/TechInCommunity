.class public final Lcom/tns/RuntimeHelper;
.super Ljava/lang/Object;
.source "RuntimeHelper.java"


# static fields
.field private static final PREF_TIMEZONE:Ljava/lang/String; = "_android_runtime_pref_timezone_"

.field private static final logTag:Ljava/lang/String; = "MyApp"

.field private static v8Inspector:Lcom/tns/AndroidJsV8Inspector;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static hasErrorIntent(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    .line 36
    .local v0, "hasErrorIntent":Z
    :try_start_0
    invoke-static {p0}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 40
    :try_start_1
    const-string v1, "com.tns.ErrorReport"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 41
    .local v1, "ErrReport":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "ERROR_FILE_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 42
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    .line 45
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .local v1, "fileName":Ljava/lang/String;
    nop

    .line 47
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .local v2, "errFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "errFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_1

    .line 54
    :catch_1
    move-exception v1

    .line 55
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MyApp"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public static initLiveSync(Landroid/app/Application;)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;

    .line 303
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    .line 304
    .local v0, "currentRuntime":Lcom/tns/Runtime;
    invoke-virtual {v0}, Lcom/tns/Runtime;->getIsLiveSyncStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/tns/Runtime;->getLogger()Lcom/tns/Logger;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/tns/RuntimeHelper;->initLiveSync(Lcom/tns/Runtime;Lcom/tns/Logger;Landroid/content/Context;)V

    .line 306
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tns/Runtime;->setIsLiveSyncStarted(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method public static initLiveSync(Lcom/tns/Runtime;Lcom/tns/Logger;Landroid/content/Context;)V
    .locals 8
    .param p0, "runtime"    # Lcom/tns/Runtime;
    .param p1, "logger"    # Lcom/tns/Logger;
    .param p2, "context"    # Landroid/content/Context;

    .line 312
    invoke-static {p2}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v0

    .line 314
    .local v0, "isDebuggable":Z
    if-nez v0, :cond_0

    .line 315
    return-void

    .line 322
    :cond_0
    :try_start_0
    const-string v1, "com.tns.NativeScriptSyncServiceSocketImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 325
    .local v1, "NativeScriptSyncService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/tns/Runtime;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/tns/Logger;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/content/Context;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 326
    .local v3, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 329
    .local v2, "syncService":Ljava/lang/Object;
    const-string v4, "startServer"

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 330
    .local v4, "startServerMethod":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    nop

    .end local v1    # "NativeScriptSyncService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "syncService":Ljava/lang/Object;
    .end local v3    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "startServerMethod":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-static {p2}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 343
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {p2}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 339
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {p2}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {p2}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 331
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p2}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 351
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_0
    nop

    .line 352
    :cond_2
    :goto_1
    return-void
.end method

.method public static initRuntime(Landroid/content/Context;)Lcom/tns/Runtime;
    .locals 32
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    move-object/from16 v11, p0

    const-string v12, "/data/local/tmp"

    invoke-static {}, Lcom/tns/Runtime;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/tns/Runtime;->getCurrentRuntime()Lcom/tns/Runtime;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    const-string v0, "RuntimeHelper.initRuntime"

    invoke-static {v0}, Lcom/tns/ManualInstrumentation;->start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;

    move-result-object v13

    .line 68
    .local v13, "frame":Lcom/tns/ManualInstrumentation$Frame;
    :try_start_0
    const-string v0, "loadLibrary NativeScript"

    invoke-static {v0}, Lcom/tns/ManualInstrumentation;->start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v14, v0

    .line 70
    .local v14, "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    :try_start_1
    const-string v0, "NativeScript"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 72
    :try_start_2
    invoke-interface {v14}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 73
    nop

    .line 75
    new-instance v0, Lcom/tns/LogcatLogger;

    invoke-direct {v0, v11}, Lcom/tns/LogcatLogger;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 77
    .local v15, "logger":Lcom/tns/Logger;
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tns/Runtime;->nativeLibraryLoaded:Z

    .line 78
    const/16 v26, 0x0

    .line 79
    .local v26, "runtime":Lcom/tns/Runtime;
    invoke-static/range {p0 .. p0}, Lcom/tns/RuntimeHelper;->hasErrorIntent(Landroid/content/Context;)Z

    move-result v0

    move/from16 v27, v0

    .line 80
    .local v27, "showErrorIntent":Z
    if-nez v27, :cond_11

    .line 81
    new-instance v0, Lcom/tns/NativeScriptUncaughtExceptionHandler;

    invoke-direct {v0, v15, v11}, Lcom/tns/NativeScriptUncaughtExceptionHandler;-><init>(Lcom/tns/Logger;Landroid/content/Context;)V

    move-object/from16 v28, v0

    .line 83
    .local v28, "exHandler":Lcom/tns/NativeScriptUncaughtExceptionHandler;
    invoke-static/range {v28 .. v28}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 85
    new-instance v0, Lcom/tns/DefaultExtractPolicy;

    invoke-direct {v0, v15}, Lcom/tns/DefaultExtractPolicy;-><init>(Lcom/tns/Logger;)V

    move-object v10, v0

    .line 86
    .local v10, "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    invoke-static {v15, v11}, Lcom/tns/Util;->runPlugin(Lcom/tns/Logger;Landroid/content/Context;)Z

    move-result v0

    move/from16 v29, v0

    .line 88
    .local v29, "skipAssetExtraction":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 89
    .local v9, "appName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 90
    .local v8, "rootDir":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v1, v0

    .line 93
    .local v1, "appDir":Ljava/io/File;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object v1, v0

    .line 95
    move-object v7, v1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    move-object v7, v1

    .line 97
    .end local v1    # "appDir":Ljava/io/File;
    .local v7, "appDir":Ljava/io/File;
    :goto_0
    if-nez v29, :cond_4

    .line 98
    :try_start_4
    const-string v0, "Extracting assets"

    invoke-static {v0}, Lcom/tns/ManualInstrumentation;->start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v16, v0

    .line 100
    .local v16, "extractionFrame":Lcom/tns/ManualInstrumentation$Frame;
    :try_start_5
    invoke-interface {v15}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_1

    .line 101
    :try_start_6
    const-string v0, "Extracting assets..."

    invoke-interface {v15, v0}, Lcom/tns/Logger;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 130
    :catchall_0
    move-exception v0

    move-object v3, v7

    move-object v2, v8

    move-object v5, v10

    move-object/from16 v30, v14

    move-object v14, v9

    goto/16 :goto_3

    .line 104
    :cond_1
    :goto_1
    :try_start_7
    new-instance v1, Lcom/tns/AssetExtractor;

    const/4 v0, 0x0

    invoke-direct {v1, v0, v15}, Lcom/tns/AssetExtractor;-><init>(Ljava/io/File;Lcom/tns/Logger;)V

    .line 106
    .local v1, "aE":Lcom/tns/AssetExtractor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "outputDir":Ljava/lang/String;
    const/4 v0, 0x1

    .line 111
    .local v0, "removePreviouslyInstalledAssets":Z
    const-string v3, "app"

    move-object/from16 v2, p0

    move-object v5, v10

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/tns/AssetExtractor;->extractAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tns/ExtractPolicy;Z)V

    .line 112
    const-string v2, "internal"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v5, v1

    move-object/from16 v6, p0

    move-object v3, v7

    .end local v7    # "appDir":Ljava/io/File;
    .local v3, "appDir":Ljava/io/File;
    move-object v7, v2

    move-object v2, v8

    .end local v8    # "rootDir":Ljava/io/File;
    .local v2, "rootDir":Ljava/io/File;
    move-object v8, v4

    move-object/from16 v30, v14

    move-object v14, v9

    .end local v9    # "appName":Ljava/lang/String;
    .local v14, "appName":Ljava/lang/String;
    .local v30, "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    move-object v9, v10

    move-object/from16 v31, v10

    .end local v10    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .local v31, "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    move v10, v0

    :try_start_8
    invoke-virtual/range {v5 .. v10}, Lcom/tns/AssetExtractor;->extractAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tns/ExtractPolicy;Z)V

    .line 113
    const-string v7, "metadata"

    const/4 v10, 0x0

    move-object v5, v1

    move-object/from16 v6, p0

    move-object v8, v4

    move-object/from16 v9, v31

    invoke-virtual/range {v5 .. v10}, Lcom/tns/AssetExtractor;->extractAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tns/ExtractPolicy;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 115
    const/16 v17, 0x1

    .line 118
    .local v17, "shouldExtractSnapshots":Z
    if-eqz v17, :cond_3

    .line 119
    :try_start_9
    invoke-interface {v15}, Lcom/tns/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    const-string v5, "Extracting snapshot blob"

    invoke-interface {v15, v5}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 124
    :cond_2
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    move-object v10, v5

    .line 125
    .local v10, "cpu_abi":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "snapshots/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v1

    move-object/from16 v6, p0

    move-object v8, v4

    move-object/from16 v9, v31

    move-object/from16 v18, v10

    .end local v10    # "cpu_abi":Ljava/lang/String;
    .local v18, "cpu_abi":Ljava/lang/String;
    move v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/tns/AssetExtractor;->extractAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tns/ExtractPolicy;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 130
    .end local v0    # "removePreviouslyInstalledAssets":Z
    .end local v1    # "aE":Lcom/tns/AssetExtractor;
    .end local v4    # "outputDir":Ljava/lang/String;
    .end local v17    # "shouldExtractSnapshots":Z
    .end local v18    # "cpu_abi":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v5, v31

    goto :goto_3

    .line 128
    .restart local v0    # "removePreviouslyInstalledAssets":Z
    .restart local v1    # "aE":Lcom/tns/AssetExtractor;
    .restart local v4    # "outputDir":Ljava/lang/String;
    .restart local v17    # "shouldExtractSnapshots":Z
    :cond_3
    :goto_2
    move-object/from16 v5, v31

    .end local v31    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .local v5, "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    :try_start_a
    invoke-virtual {v5, v11}, Lcom/tns/DefaultExtractPolicy;->setAssetsThumb(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 130
    .end local v0    # "removePreviouslyInstalledAssets":Z
    .end local v1    # "aE":Lcom/tns/AssetExtractor;
    .end local v4    # "outputDir":Ljava/lang/String;
    .end local v17    # "shouldExtractSnapshots":Z
    :try_start_b
    invoke-interface/range {v16 .. v16}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 131
    goto :goto_4

    .line 130
    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v5    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .restart local v31    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    :catchall_3
    move-exception v0

    move-object/from16 v5, v31

    .end local v31    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .restart local v5    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    goto :goto_3

    .end local v2    # "rootDir":Ljava/io/File;
    .end local v3    # "appDir":Ljava/io/File;
    .end local v5    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .end local v30    # "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    .restart local v7    # "appDir":Ljava/io/File;
    .restart local v8    # "rootDir":Ljava/io/File;
    .restart local v9    # "appName":Ljava/lang/String;
    .local v10, "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .local v14, "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    :catchall_4
    move-exception v0

    move-object v3, v7

    move-object v2, v8

    move-object v5, v10

    move-object/from16 v30, v14

    move-object v14, v9

    .end local v7    # "appDir":Ljava/io/File;
    .end local v8    # "rootDir":Ljava/io/File;
    .end local v9    # "appName":Ljava/lang/String;
    .end local v10    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .restart local v2    # "rootDir":Ljava/io/File;
    .restart local v3    # "appDir":Ljava/io/File;
    .restart local v5    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .local v14, "appName":Ljava/lang/String;
    .restart local v30    # "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    :goto_3
    invoke-interface/range {v16 .. v16}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 131
    nop

    .end local v13    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    .end local p0    # "context":Landroid/content/Context;
    throw v0

    .line 97
    .end local v2    # "rootDir":Ljava/io/File;
    .end local v3    # "appDir":Ljava/io/File;
    .end local v5    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .end local v16    # "extractionFrame":Lcom/tns/ManualInstrumentation$Frame;
    .end local v30    # "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    .restart local v7    # "appDir":Ljava/io/File;
    .restart local v8    # "rootDir":Ljava/io/File;
    .restart local v9    # "appName":Ljava/lang/String;
    .restart local v10    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .restart local v13    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    .local v14, "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_4
    move-object v3, v7

    move-object v2, v8

    move-object v5, v10

    move-object/from16 v30, v14

    move-object v14, v9

    .line 134
    .end local v7    # "appDir":Ljava/io/File;
    .end local v8    # "rootDir":Ljava/io/File;
    .end local v9    # "appName":Ljava/lang/String;
    .end local v10    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .restart local v2    # "rootDir":Ljava/io/File;
    .restart local v3    # "appDir":Ljava/io/File;
    .restart local v5    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .local v14, "appName":Ljava/lang/String;
    .restart local v30    # "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    :goto_4
    new-instance v0, Lcom/tns/AppConfig;

    invoke-direct {v0, v3}, Lcom/tns/AppConfig;-><init>(Ljava/io/File;)V

    move-object/from16 v24, v0

    .line 135
    .local v24, "appConfig":Lcom/tns/AppConfig;
    invoke-virtual/range {v24 .. v24}, Lcom/tns/AppConfig;->getProfilingMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tns/ManualInstrumentation;->setMode(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    .line 138
    .local v21, "classLoader":Ljava/lang/ClassLoader;
    new-instance v0, Ljava/io/File;

    const-string v1, "code_cache/secondary-dexes"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object/from16 v22, v0

    .line 139
    .local v22, "dexDir":Ljava/io/File;
    const/4 v1, 0x0

    .line 141
    .local v1, "dexThumb":Ljava/lang/String;
    :try_start_c
    invoke-static/range {p0 .. p0}, Lcom/tns/Util;->getDexThumb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object v1, v0

    .line 149
    goto :goto_5

    .line 142
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 143
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_d
    invoke-interface {v15}, Lcom/tns/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 144
    const-string v4, "Error while getting current proxy thumb"

    invoke-interface {v15, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 146
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 147
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 151
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    :goto_5
    const/4 v4, 0x0

    .line 153
    .local v4, "nativeLibDir":Ljava/lang/String;
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v14, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-object v4, v0

    .line 158
    goto :goto_6

    .line 154
    :catch_2
    move-exception v0

    .line 155
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_f
    invoke-static/range {p0 .. p0}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 156
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 160
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v0

    move v6, v0

    .line 161
    .local v6, "isDebuggable":Z
    new-instance v0, Lcom/tns/StaticConfiguration;

    move-object v7, v15

    .end local v15    # "logger":Lcom/tns/Logger;
    .local v7, "logger":Lcom/tns/Logger;
    move-object v15, v0

    move-object/from16 v16, v7

    move-object/from16 v17, v14

    move-object/from16 v18, v4

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v23, v1

    move/from16 v25, v6

    invoke-direct/range {v15 .. v25}, Lcom/tns/StaticConfiguration;-><init>(Lcom/tns/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;Ljava/io/File;Ljava/lang/String;Lcom/tns/AppConfig;Z)V

    move-object v8, v0

    .line 164
    .local v8, "config":Lcom/tns/StaticConfiguration;
    invoke-static {v8}, Lcom/tns/Runtime;->initializeRuntimeWithConfiguration(Lcom/tns/StaticConfiguration;)Lcom/tns/Runtime;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-object v9, v0

    .line 165
    .end local v26    # "runtime":Lcom/tns/Runtime;
    .local v9, "runtime":Lcom/tns/Runtime;
    if-eqz v6, :cond_b

    .line 167
    :try_start_10
    new-instance v0, Lcom/tns/AndroidJsV8Inspector;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v10, v15}, Lcom/tns/AndroidJsV8Inspector;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tns/RuntimeHelper;->v8Inspector:Lcom/tns/AndroidJsV8Inspector;

    .line 168
    invoke-virtual {v0}, Lcom/tns/AndroidJsV8Inspector;->start()V

    .line 172
    new-instance v0, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "-debugger-started"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v0, "debuggerStartedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    const-string v15, "started"

    const-wide/16 v16, 0x0

    if-eqz v10, :cond_8

    :try_start_11
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v10, v18, v16

    if-nez v10, :cond_8

    .line 174
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 175
    .local v10, "fileWriter":Ljava/io/FileWriter;
    invoke-virtual {v10, v15}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_7

    .line 193
    .end local v0    # "debuggerStartedFile":Ljava/io/File;
    .end local v10    # "fileWriter":Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    move-object/from16 v19, v1

    goto :goto_8

    .line 182
    .restart local v0    # "debuggerStartedFile":Ljava/io/File;
    :cond_8
    :goto_7
    :try_start_12
    new-instance v10, Ljava/io/File;

    move-object/from16 v18, v0

    .end local v0    # "debuggerStartedFile":Ljava/io/File;
    .local v18, "debuggerStartedFile":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object/from16 v19, v1

    .end local v1    # "dexThumb":Ljava/lang/String;
    .local v19, "dexThumb":Ljava/lang/String;
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-debugbreak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 183
    .local v0, "debugBreakFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 184
    .local v1, "shouldBreak":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v25

    cmp-long v10, v25, v16

    if-nez v10, :cond_9

    .line 185
    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 186
    .restart local v10    # "fileWriter":Ljava/io/FileWriter;
    invoke-virtual {v10, v15}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V

    .line 189
    const/4 v1, 0x1

    .line 192
    .end local v10    # "fileWriter":Ljava/io/FileWriter;
    :cond_9
    sget-object v10, Lcom/tns/RuntimeHelper;->v8Inspector:Lcom/tns/AndroidJsV8Inspector;

    invoke-virtual {v10, v1}, Lcom/tns/AndroidJsV8Inspector;->waitForDebugger(Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 197
    .end local v0    # "debugBreakFile":Ljava/io/File;
    .end local v1    # "shouldBreak":Z
    .end local v18    # "debuggerStartedFile":Ljava/io/File;
    goto :goto_9

    .line 193
    :catch_4
    move-exception v0

    goto :goto_8

    .end local v19    # "dexThumb":Ljava/lang/String;
    .local v1, "dexThumb":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v19, v1

    .line 194
    .end local v1    # "dexThumb":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v19    # "dexThumb":Ljava/lang/String;
    :goto_8
    :try_start_14
    invoke-static/range {p0 .. p0}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 195
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 201
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_9
    invoke-static {v9, v7, v11}, Lcom/tns/RuntimeHelper;->initLiveSync(Lcom/tns/Runtime;Lcom/tns/Logger;Landroid/content/Context;)V

    .line 203
    invoke-static/range {p0 .. p0}, Lcom/tns/RuntimeHelper;->waitForLiveSync(Landroid/content/Context;)V

    goto :goto_a

    .line 165
    .end local v19    # "dexThumb":Ljava/lang/String;
    .restart local v1    # "dexThumb":Ljava/lang/String;
    :cond_b
    move-object/from16 v19, v1

    .line 206
    .end local v1    # "dexThumb":Ljava/lang/String;
    .restart local v19    # "dexThumb":Ljava/lang/String;
    :goto_a
    new-instance v0, Ljava/io/File;

    const-string v1, "internal/ts_helpers.js"

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/tns/Runtime;->runScript(Ljava/io/File;)Ljava/lang/Object;

    .line 208
    new-instance v0, Ljava/io/File;

    const-string v1, "app/tns-java-classes.js"

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 209
    .local v1, "javaClassesModule":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 210
    invoke-virtual {v9, v1}, Lcom/tns/Runtime;->runModule(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 215
    :cond_c
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v10, Lcom/tns/JavaScriptImplementation;

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/tns/JavaScriptImplementation;

    .line 216
    .local v0, "jsImpl":Lcom/tns/JavaScriptImplementation;
    if-eqz v0, :cond_d

    instance-of v10, v11, Landroid/app/Service;

    if-nez v10, :cond_d

    .line 217
    invoke-static/range {p0 .. p0}, Lcom/tns/Runtime;->initInstance(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 226
    .end local v0    # "jsImpl":Lcom/tns/JavaScriptImplementation;
    :cond_d
    goto :goto_b

    .line 219
    :catch_6
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    :try_start_16
    invoke-interface {v7}, Lcom/tns/Logger;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 221
    const-string v10, "Cannot initialize application instance."

    invoke-interface {v7, v10}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 223
    :cond_e
    invoke-static/range {p0 .. p0}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_b
    invoke-virtual/range {v24 .. v24}, Lcom/tns/AppConfig;->handleTimeZoneChanges()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 232
    invoke-static {v11, v9}, Lcom/tns/RuntimeHelper;->registerTimezoneChangedListener(Landroid/content/Context;Lcom/tns/Runtime;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 235
    .end local v1    # "javaClassesModule":Ljava/io/File;
    .end local v2    # "rootDir":Ljava/io/File;
    .end local v3    # "appDir":Ljava/io/File;
    .end local v4    # "nativeLibDir":Ljava/lang/String;
    .end local v5    # "extractPolicy":Lcom/tns/DefaultExtractPolicy;
    .end local v6    # "isDebuggable":Z
    .end local v8    # "config":Lcom/tns/StaticConfiguration;
    .end local v14    # "appName":Ljava/lang/String;
    .end local v19    # "dexThumb":Ljava/lang/String;
    .end local v21    # "classLoader":Ljava/lang/ClassLoader;
    .end local v22    # "dexDir":Ljava/io/File;
    .end local v24    # "appConfig":Lcom/tns/AppConfig;
    .end local v28    # "exHandler":Lcom/tns/NativeScriptUncaughtExceptionHandler;
    .end local v29    # "skipAssetExtraction":Z
    :cond_10
    move-object/from16 v26, v9

    goto :goto_c

    .line 80
    .end local v7    # "logger":Lcom/tns/Logger;
    .end local v9    # "runtime":Lcom/tns/Runtime;
    .end local v30    # "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    .local v14, "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    .restart local v15    # "logger":Lcom/tns/Logger;
    .restart local v26    # "runtime":Lcom/tns/Runtime;
    :cond_11
    move-object/from16 v30, v14

    move-object v7, v15

    .line 235
    .end local v14    # "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    .end local v15    # "logger":Lcom/tns/Logger;
    .restart local v7    # "logger":Lcom/tns/Logger;
    .restart local v30    # "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    :goto_c
    nop

    .line 237
    invoke-interface {v13}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 235
    return-object v26

    .line 72
    .end local v7    # "logger":Lcom/tns/Logger;
    .end local v26    # "runtime":Lcom/tns/Runtime;
    .end local v27    # "showErrorIntent":Z
    .end local v30    # "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    .restart local v14    # "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    :catchall_5
    move-exception v0

    move-object/from16 v30, v14

    .end local v14    # "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    .restart local v30    # "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    :try_start_17
    invoke-interface/range {v30 .. v30}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 73
    nop

    .end local v13    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    .end local p0    # "context":Landroid/content/Context;
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 237
    .end local v30    # "loadLibraryFrame":Lcom/tns/ManualInstrumentation$Frame;
    .restart local v13    # "frame":Lcom/tns/ManualInstrumentation$Frame;
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_6
    move-exception v0

    invoke-interface {v13}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 238
    throw v0
.end method

.method private static registerTimezoneChangedListener(Landroid/content/Context;Lcom/tns/Runtime;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "runtime"    # Lcom/tns/Runtime;

    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "timezoneFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/tns/RuntimeHelper$1;

    invoke-direct {v1, p1}, Lcom/tns/RuntimeHelper$1;-><init>(Lcom/tns/Runtime;)V

    .line 299
    .local v1, "timezoneReceiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    return-void
.end method

.method private static waitForLiveSync(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 242
    const/4 v0, 0x0

    .line 245
    .local v0, "needToWait":Z
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/local/tmp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-livesync-in-progress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "liveSyncFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const/4 v0, 0x1

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 250
    .local v2, "lastModified":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 253
    .local v3, "fileCreatedBeforeMillis":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 259
    .end local v2    # "lastModified":Ljava/lang/Long;
    .end local v3    # "fileCreatedBeforeMillis":Ljava/lang/Long;
    :cond_0
    if-eqz v0, :cond_1

    .line 262
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 263
    :catch_0
    move-exception v2

    .line 266
    :cond_1
    :goto_0
    return-void
.end method
