.class public Lcom/tns/NativeScriptSyncService;
.super Ljava/lang/Object;
.source "NativeScriptSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/NativeScriptSyncService$ListenerWorker;,
        Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;
    }
.end annotation


# static fields
.field private static final FULL_SYNC_SOURCE_DIR:Ljava/lang/String; = "/fullsync/"

.field private static final REMOVED_SYNC_SOURCE_DIR:Ljava/lang/String; = "/removedsync/"

.field private static SYNC_ROOT_SOURCE_DIR:Ljava/lang/String; = null

.field private static final SYNC_SOURCE_DIR:Ljava/lang/String; = "/sync/"

.field private static logger:Lcom/tns/Logger;


# instance fields
.field private final context:Landroid/content/Context;

.field final deletingFilesFilter:Ljava/io/FileFilter;

.field private final fullSyncDir:Ljava/io/File;

.field private final fullSyncPath:Ljava/lang/String;

.field private localServerJavaThread:Ljava/lang/Thread;

.field private localServerThread:Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;

.field private final removedSyncDir:Ljava/io/File;

.field private final removedSyncPath:Ljava/lang/String;

.field private final runtime:Lcom/tns/Runtime;

.field private final syncDir:Ljava/io/File;

.field private final syncPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, "/data/local/tmp/"

    sput-object v0, Lcom/tns/NativeScriptSyncService;->SYNC_ROOT_SOURCE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tns/Runtime;Lcom/tns/Logger;Landroid/content/Context;)V
    .locals 2
    .param p1, "runtime"    # Lcom/tns/Runtime;
    .param p2, "logger"    # Lcom/tns/Logger;
    .param p3, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Lcom/tns/NativeScriptSyncService$1;

    invoke-direct {v0, p0}, Lcom/tns/NativeScriptSyncService$1;-><init>(Lcom/tns/NativeScriptSyncService;)V

    iput-object v0, p0, Lcom/tns/NativeScriptSyncService;->deletingFilesFilter:Ljava/io/FileFilter;

    .line 42
    iput-object p1, p0, Lcom/tns/NativeScriptSyncService;->runtime:Lcom/tns/Runtime;

    .line 43
    sput-object p2, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    .line 44
    iput-object p3, p0, Lcom/tns/NativeScriptSyncService;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tns/NativeScriptSyncService;->SYNC_ROOT_SOURCE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sync/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/NativeScriptSyncService;->syncPath:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tns/NativeScriptSyncService;->SYNC_ROOT_SOURCE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/fullsync/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/NativeScriptSyncService;->fullSyncPath:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tns/NativeScriptSyncService;->SYNC_ROOT_SOURCE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/removedsync/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/NativeScriptSyncService;->removedSyncPath:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tns/NativeScriptSyncService;->fullSyncPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tns/NativeScriptSyncService;->fullSyncDir:Ljava/io/File;

    .line 50
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tns/NativeScriptSyncService;->syncPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tns/NativeScriptSyncService;->syncDir:Ljava/io/File;

    .line 51
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tns/NativeScriptSyncService;->removedSyncPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tns/NativeScriptSyncService;->removedSyncDir:Ljava/io/File;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/tns/NativeScriptSyncService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tns/NativeScriptSyncService;

    .line 21
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tns/NativeScriptSyncService;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/tns/NativeScriptSyncService;

    .line 21
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService;->syncDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tns/NativeScriptSyncService;Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/tns/NativeScriptSyncService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/io/File;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tns/NativeScriptSyncService;->executePartialSync(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tns/NativeScriptSyncService;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/tns/NativeScriptSyncService;

    .line 21
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService;->removedSyncDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tns/NativeScriptSyncService;Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/tns/NativeScriptSyncService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/io/File;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tns/NativeScriptSyncService;->executeRemovedSync(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tns/NativeScriptSyncService;)Lcom/tns/Runtime;
    .locals 1
    .param p0, "x0"    # Lcom/tns/NativeScriptSyncService;

    .line 21
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService;->runtime:Lcom/tns/Runtime;

    return-object v0
.end method

.method static synthetic access$600()Lcom/tns/Logger;
    .locals 1

    .line 21
    sget-object v0, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    return-object v0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "sourceFile"    # Ljava/lang/String;
    .param p2, "destinationFile"    # Ljava/lang/String;

    .line 307
    const-string v0, "Error copying file "

    const/4 v1, 0x0

    .line 308
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 311
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 312
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 314
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 315
    .local v4, "buffer":[B
    const/4 v5, 0x0

    .line 317
    .local v5, "read":I
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v5, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 318
    invoke-virtual {v2, v4, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 334
    .end local v4    # "buffer":[B
    .end local v5    # "read":I
    :cond_0
    nop

    .line 335
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 337
    nop

    .line 338
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    goto :goto_1

    .line 340
    :catch_0
    move-exception v0

    .line 342
    nop

    .line 344
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 333
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 326
    :catch_1
    move-exception v4

    .line 327
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v5, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    :cond_1
    nop

    .line 334
    if-eqz v1, :cond_2

    .line 335
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    .line 340
    :catch_2
    move-exception v0

    goto :goto_3

    .line 337
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 338
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 341
    :cond_3
    nop

    .line 331
    :goto_3
    return v3

    .line 320
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 321
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    sget-object v5, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    :cond_4
    nop

    .line 334
    if-eqz v1, :cond_5

    .line 335
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    .line 340
    :catch_4
    move-exception v0

    goto :goto_5

    .line 337
    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 338
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 341
    :cond_6
    nop

    .line 325
    :goto_5
    return v3

    .line 334
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_6
    if-eqz v1, :cond_7

    .line 335
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    .line 340
    :catch_5
    move-exception v3

    goto :goto_8

    .line 337
    :cond_7
    :goto_7
    if-eqz v2, :cond_8

    .line 338
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 341
    :cond_8
    nop

    .line 342
    :goto_8
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method private deleteDir(Ljava/io/File;)V
    .locals 5
    .param p1, "directory"    # Ljava/io/File;

    .line 189
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService;->deletingFilesFilter:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 190
    .local v0, "subDirectories":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 191
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 192
    aget-object v2, v0, v1

    .line 193
    .local v2, "subDir":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/tns/NativeScriptSyncService;->deleteDir(Ljava/io/File;)V

    .line 191
    .end local v2    # "subDir":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 198
    .local v1, "success":Z
    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    sget-object v2, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Syncing: directory not deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 201
    :cond_1
    return-void
.end method

.method private deleteRemovedFiles(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "sourceDir"    # Ljava/io/File;
    .param p2, "sourceRootAbsolutePath"    # Ljava/lang/String;
    .param p3, "targetRootAbsolutePath"    # Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    sget-object v0, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 276
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 278
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_4

    .line 279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 280
    aget-object v2, v0, v1

    .line 281
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "targetFilePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v4, "targetFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    sget-object v5, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    invoke-interface {v5}, Lcom/tns/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 285
    sget-object v5, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Syncing removed file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 288
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 290
    :cond_2
    invoke-direct {p0, v2, p2, p3}, Lcom/tns/NativeScriptSyncService;->deleteRemovedFiles(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_3

    .line 294
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 279
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "targetFilePath":Ljava/lang/String;
    .end local v4    # "targetFile":Ljava/io/File;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private executeFullSync(Landroid/content/Context;Ljava/io/File;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceDir"    # Ljava/io/File;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "appPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, "appDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-direct {p0, v1}, Lcom/tns/NativeScriptSyncService;->deleteDir(Ljava/io/File;)V

    .line 249
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/tns/NativeScriptSyncService;->moveFiles(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method

.method private executePartialSync(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceDir"    # Ljava/io/File;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "appPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "appDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application dir does not exists. Partial Sync failed. appDir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TNS"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 262
    :cond_0
    sget-object v2, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    invoke-interface {v2}, Lcom/tns/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    sget-object v2, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Syncing sourceDir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 266
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/tns/NativeScriptSyncService;->moveFiles(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private executeRemovedSync(Landroid/content/Context;Ljava/io/File;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceDir"    # Ljava/io/File;

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "appPath":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Lcom/tns/NativeScriptSyncService;->deleteRemovedFiles(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public static isSyncEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "shouldExecuteSync":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 168
    nop

    .line 170
    return v0

    .line 163
    .end local v2    # "flags":I
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 167
    :cond_1
    return v1
.end method

.method private moveFiles(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "sourceDir"    # Ljava/io/File;
    .param p2, "sourceRootAbsolutePath"    # Ljava/lang/String;
    .param p3, "targetRootAbsolutePath"    # Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 206
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_6

    .line 207
    sget-object v1, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    invoke-interface {v1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    sget-object v1, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Syncing total number of fiiles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 211
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 212
    aget-object v2, v0, v1

    .line 213
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 214
    sget-object v3, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    invoke-interface {v3}, Lcom/tns/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    sget-object v3, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Syncing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 218
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "targetFilePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v4, "targetFileDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 222
    .local v5, "targetParent":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 223
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 226
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/tns/NativeScriptSyncService;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 227
    .local v6, "success":Z
    if-nez v6, :cond_3

    .line 228
    sget-object v7, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 230
    .end local v3    # "targetFilePath":Ljava/lang/String;
    .end local v4    # "targetFileDir":Ljava/io/File;
    .end local v5    # "targetParent":Ljava/io/File;
    .end local v6    # "success":Z
    :cond_3
    goto :goto_1

    .line 231
    :cond_4
    invoke-direct {p0, v2, p2, p3}, Lcom/tns/NativeScriptSyncService;->moveFiles(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .end local v2    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_5
    goto :goto_2

    .line 235
    :cond_6
    sget-object v1, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    invoke-interface {v1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 236
    sget-object v1, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    const-string v2, "Can\'t move files. Source is empty."

    invoke-interface {v1, v2}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 239
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public startServer()V
    .locals 3

    .line 152
    new-instance v0, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tns/NativeScriptSyncService;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-livesync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;-><init>(Lcom/tns/NativeScriptSyncService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tns/NativeScriptSyncService;->localServerThread:Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;

    .line 153
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/tns/NativeScriptSyncService;->localServerThread:Lcom/tns/NativeScriptSyncService$LocalServerSocketThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tns/NativeScriptSyncService;->localServerJavaThread:Ljava/lang/Thread;

    .line 154
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    return-void
.end method

.method public sync()V
    .locals 3

    .line 55
    sget-object v0, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    const-string v1, "Sync is enabled:"

    invoke-interface {v0, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync path              : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tns/NativeScriptSyncService;->syncPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full sync path         : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tns/NativeScriptSyncService;->fullSyncPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/tns/NativeScriptSyncService;->logger:Lcom/tns/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed files sync path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tns/NativeScriptSyncService;->removedSyncPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService;->fullSyncDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tns/NativeScriptSyncService;->fullSyncDir:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/tns/NativeScriptSyncService;->executeFullSync(Landroid/content/Context;Ljava/io/File;)V

    .line 64
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService;->syncDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tns/NativeScriptSyncService;->syncDir:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/tns/NativeScriptSyncService;->executePartialSync(Landroid/content/Context;Ljava/io/File;)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService;->removedSyncDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/tns/NativeScriptSyncService;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tns/NativeScriptSyncService;->removedSyncDir:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/tns/NativeScriptSyncService;->executeRemovedSync(Landroid/content/Context;Ljava/io/File;)V

    .line 74
    :cond_3
    return-void
.end method
