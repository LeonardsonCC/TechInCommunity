.class Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;
.super Ljava/lang/Object;
.source "NativeScriptSyncServiceSocketImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptSyncServiceSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveSyncWorker"
.end annotation


# static fields
.field public static final CREATE_FILE_OPERATION:I = 0x8

.field public static final DEFAULT_OPERATION:I = -0x1

.field public static final DELETE_FILE_OPERATION:I = 0x7

.field public static final DO_REFRESH_LENGTH:I = 0x1

.field public static final DO_REFRESH_VALUE:I = 0x1

.field public static final DO_SYNC_OPERATION:I = 0x9

.field public static final ERROR_REPORT_CODE:I = 0x1

.field public static final FILE_CONTENT:Ljava/lang/String; = "fileContent"

.field public static final FILE_CONTENT_LENGTH:Ljava/lang/String; = "fileContentLength"

.field public static final FILE_NAME:Ljava/lang/String; = "fileName"

.field public static final FILE_NAME_LENGTH:Ljava/lang/String; = "fileNameLength"

.field public static final HASH_BYTE_SIZE:I = 0x10

.field public static final LENGTH_BYTE_SIZE:I = 0x1

.field public static final OPERATION:Ljava/lang/String; = "operation"

.field public static final OPERATION_BYTE_SIZE:I = 0x1

.field public static final OPERATION_END_NO_REFRESH_REPORT_CODE:I = 0x3

.field public static final OPERATION_END_REPORT_CODE:I = 0x2

.field public static final OPERATION_ID_BYTE_SIZE:I = 0x20

.field private static final PROTOCOL_VERSION:Ljava/lang/String; = "0.2.0"

.field public static final REPORT_CODE_SIZE:I = 0x1


# instance fields
.field private handshakeMessage:[B

.field private final input:Ljava/security/DigestInputStream;

.field private livesyncSocket:Ljava/io/Closeable;

.field private output:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;


# direct methods
.method public constructor <init>(Lcom/tns/NativeScriptSyncServiceSocketImpl;Landroid/net/LocalSocket;)V
    .locals 2
    .param p2, "systemSocket"    # Landroid/net/LocalSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->livesyncSocket:Ljava/io/Closeable;

    .line 132
    const-string p1, "MD5"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 133
    .local p1, "md":Ljava/security/MessageDigest;
    new-instance v0, Ljava/security/DigestInputStream;

    invoke-virtual {p2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    iput-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->input:Ljava/security/DigestInputStream;

    .line 134
    invoke-virtual {p2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->output:Ljava/io/OutputStream;

    .line 135
    invoke-direct {p0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->getHandshakeMessage()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->handshakeMessage:[B

    .line 136
    return-void
.end method

.method private closeWithError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->output:Ljava/io/OutputStream;

    invoke-direct {p0, p1}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->getErrorMessageBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 433
    iget-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 434
    invoke-static {}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$000()Lcom/tns/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->livesyncSocket:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 441
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private createOrOverrideFile(Ljava/lang/String;[B)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    invoke-direct {p0, p1}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->prepareFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 364
    .local v0, "fileToCreate":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 365
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "fos":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-static {v2}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$200(Lcom/tns/NativeScriptSyncServiceSocketImpl;)Lcom/tns/Runtime;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-static {v2}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$200(Lcom/tns/NativeScriptSyncServiceSocketImpl;)Lcom/tns/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tns/Runtime;->lock()V

    .line 369
    :cond_0
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 370
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-static {v1}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$200(Lcom/tns/NativeScriptSyncServiceSocketImpl;)Lcom/tns/Runtime;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-static {v1}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$200(Lcom/tns/NativeScriptSyncServiceSocketImpl;)Lcom/tns/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tns/Runtime;->unlock()V

    .line 379
    :cond_1
    return-void

    .line 375
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "\nLiveSync: failed to write file: %s\nOriginal Exception: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileToCreate":Ljava/io/File;
    .end local p1    # "fileName":Ljava/lang/String;
    .end local p2    # "content":[B
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "fileToCreate":Ljava/io/File;
    .restart local p1    # "fileName":Ljava/lang/String;
    .restart local p2    # "content":[B
    :goto_0
    iget-object v2, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-static {v2}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$200(Lcom/tns/NativeScriptSyncServiceSocketImpl;)Lcom/tns/Runtime;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 376
    iget-object v2, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-static {v2}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$200(Lcom/tns/NativeScriptSyncServiceSocketImpl;)Lcom/tns/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tns/Runtime;->unlock()V

    .line 378
    :cond_2
    throw v1
.end method

.method private getErrorMessageBytes(Ljava/lang/String;)[B
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->getReportMessageBytes(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private getFileContent(Ljava/lang/String;I)[B
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 315
    const/4 v0, 0x0

    .line 318
    .local v0, "contentBuff":[B
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lez p2, :cond_0

    .line 319
    :try_start_0
    invoke-direct {p0, p2}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->readNextBytes(I)[B

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 323
    :catch_0
    move-exception v4

    goto :goto_0

    .line 320
    :cond_0
    if-nez p2, :cond_1

    .line 321
    new-array v4, v3, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_1

    .line 324
    .local v4, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v5, Ljava/lang/IllegalStateException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "\nLiveSync: failed to parse content of file: %s.\nOriginal Exception: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 325
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    nop

    .line 327
    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    .line 328
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "fileContent"

    aput-object v6, v5, v3

    aput-object p1, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "\nLiveSync: Missing %s bytes for file: %s. Did you send %s bytes?"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 331
    :cond_3
    :goto_2
    return-object v0
.end method

.method private getFileContentLength(Ljava/lang/String;)I
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 302
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->getLength()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .local v2, "contentLength":I
    nop

    .line 307
    if-ltz v2, :cond_0

    .line 311
    return v2

    .line 308
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "\nLiveSync: Content length must be positive number or zero. Provided content length: %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 303
    .end local v2    # "contentLength":I
    :catch_0
    move-exception v2

    .line 304
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "fileContentLength"

    aput-object v5, v4, v1

    aput-object p1, v4, v0

    const/4 v0, 0x2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v0, "\nLiveSync: failed to read %s for %s.\nOriginal Exception: %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getFileName()Ljava/lang/String;
    .locals 9

    .line 268
    const-string v0, "fileNameLength"

    const-string v1, "fileName"

    const/4 v2, -0x1

    .line 271
    .local v2, "fileNameLength":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->getLength()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v6

    .line 274
    nop

    .line 276
    if-lez v2, :cond_2

    .line 281
    :try_start_1
    invoke-direct {p0, v2}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->readNextBytes(I)[B

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    .local v6, "fileNameBuffer":[B
    nop

    .line 286
    if-eqz v6, :cond_1

    .line 290
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    .line 291
    .local v7, "fileName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v2, :cond_0

    .line 292
    invoke-static {}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$000()Lcom/tns/Logger;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v0, v3, v4

    const-string v0, "WARNING: %s parsed length is less than %s. We read less information than you specified!"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 295
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 287
    .end local v7    # "fileName":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const-string v1, "\nLiveSync: Missing %s bytes."

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    .end local v6    # "fileNameBuffer":[B
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "\nLiveSync: failed to parse %s.\nOriginal Exception: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "\nLiveSync: File name length must be positive number or zero. Provided length: %s."

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :catch_1
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "\nLiveSync: failed to parse %s. \nOriginal Exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private getHandshakeMessage()[B
    .locals 7

    .line 218
    const-string v0, "0.2.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 219
    .local v0, "protocolVersionBytes":[B
    const/4 v1, 0x1

    new-array v1, v1, [B

    array-length v2, v0

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 220
    .local v1, "versionLength":[B
    iget-object v2, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-static {v2}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$300(Lcom/tns/NativeScriptSyncServiceSocketImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 221
    .local v2, "packageNameBytes":[B
    array-length v4, v0

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 223
    .local v4, "combined":[B
    array-length v5, v1

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    array-length v5, v1

    array-length v6, v0

    invoke-static {v0, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    array-length v5, v0

    array-length v6, v1

    add-int/2addr v5, v6

    array-length v6, v2

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    return-object v4
.end method

.method private getLength()I
    .locals 8

    .line 339
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->readNextBytes(I)[B

    move-result-object v2

    aget-byte v2, v2, v1

    .line 341
    .local v2, "lengthSize":B
    and-int/lit16 v3, v2, 0xff

    .line 342
    .local v3, "lengthSizeInt":I
    invoke-direct {p0, v3}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->readNextBytes(I)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
    .local v4, "lengthBuffer":[B
    if-eqz v4, :cond_0

    .line 349
    .end local v2    # "lengthSize":B
    .end local v3    # "lengthSizeInt":I
    nop

    .line 352
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 355
    .local v0, "lengthInt":I
    nop

    .line 357
    return v0

    .line 353
    .end local v0    # "lengthInt":I
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    const-string v1, "\nLiveSync: Failed to parse size length. \nOriginal Exception: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    .local v2, "lengthSize":B
    .restart local v3    # "lengthSizeInt":I
    :cond_0
    :try_start_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "\nLiveSync: Missing size length bytes."

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 347
    .end local v2    # "lengthSize":B
    .end local v3    # "lengthSizeInt":I
    .end local v4    # "lengthBuffer":[B
    :catch_1
    move-exception v2

    .line 348
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "\nLiveSync: Failed to read size length. \nOriginal Exception: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getOperation()I
    .locals 7

    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, "operationBuff":[B
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->readNextBytes(I)[B

    move-result-object v2

    move-object v0, v2

    .line 252
    if-nez v0, :cond_0

    .line 253
    const/4 v1, -0x1

    return v1

    .line 255
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .local v1, "operation":Ljava/lang/Integer;
    nop

    .line 263
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 257
    .end local v1    # "operation":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 259
    new-array v0, v3, [B

    .line 261
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "operation"

    aput-object v6, v5, v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    const/4 v1, 0x2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    const-string v1, "\nLiveSync: failed to parse %s. Bytes read: $s %s\nOriginal Exception: %s"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getReportMessageBytes(I[B)[B
    .locals 5
    .param p1, "reportType"    # I
    .param p2, "messageBytes"    # [B

    .line 208
    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 209
    .local v1, "reportBytes":[B
    array-length v2, p2

    add-int/2addr v2, v0

    new-array v2, v2, [B

    .line 211
    .local v2, "combined":[B
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    array-length v4, p2

    invoke-static {p2, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    return-object v2
.end method

.method private prepareFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 391
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .local v0, "fileToCreate":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 395
    :cond_0
    return-object v0
.end method

.method private readNextBytes(I)[B
    .locals 7
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    new-array v0, p1, [B

    .line 403
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 404
    .local v1, "bytesRead":I
    move v2, v1

    .line 408
    .local v2, "bufferWriteOffset":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->input:Ljava/security/DigestInputStream;

    invoke-virtual {v3, v0, v2, p1}, Ljava/security/DigestInputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 409
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 410
    if-nez v2, :cond_2

    .line 411
    const/4 v3, 0x0

    return-object v3

    .line 415
    :cond_1
    sub-int/2addr p1, v1

    .line 416
    add-int/2addr v2, v1

    .line 417
    if-gtz p1, :cond_0

    .line 425
    :cond_2
    nop

    .line 427
    return-object v0

    .line 418
    :catch_0
    move-exception v3

    .line 419
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, "message":Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v5, "Try again"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 421
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Error while LiveSyncing: Read operation timed out."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 423
    :cond_3
    goto :goto_1

    :goto_0
    throw v3

    :goto_1
    goto :goto_0
.end method

.method private validateData()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->input:Ljava/security/DigestInputStream;

    invoke-virtual {v0}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 232
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 233
    .local v1, "digest":[B
    iget-object v2, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->input:Ljava/security/DigestInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/DigestInputStream;->on(Z)V

    .line 234
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->readNextBytes(I)[B

    move-result-object v2

    .line 235
    .local v2, "inputMD5":[B
    iget-object v4, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->input:Ljava/security/DigestInputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/security/DigestInputStream;->on(Z)V

    .line 238
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    return-void

    .line 239
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    const-string v3, "\nLiveSync: Validation of data failed.\nComputed hash: %s\nOriginal hash: %s "

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method deleteRecursive(Ljava/io/File;)V
    .locals 4
    .param p1, "fileOrDirectory"    # Ljava/io/File;

    .line 382
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 384
    .local v3, "child":Ljava/io/File;
    invoke-virtual {p0, v3}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->deleteRecursive(Ljava/io/File;)V

    .line 383
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 388
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->livesyncSocket:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 446
    return-void
.end method

.method public run()V
    .locals 10

    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->output:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->handshakeMessage:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 141
    iget-object v2, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->output:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$000()Lcom/tns/Logger;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "Error while LiveSyncing: Client socket might be closed!"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 151
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->getOperation()I

    move-result v2

    .line 153
    .local v2, "operation":I
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "fileName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->validateData()V

    .line 157
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->deleteRecursive(Ljava/io/File;)V

    .line 159
    .end local v3    # "fileName":Ljava/lang/String;
    goto :goto_2

    :cond_1
    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 161
    invoke-direct {p0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 162
    .restart local v3    # "fileName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->getFileContentLength(Ljava/lang/String;)I

    move-result v4

    .line 163
    .local v4, "contentLength":I
    invoke-direct {p0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->validateData()V

    .line 164
    invoke-direct {p0, v3, v4}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->getFileContent(Ljava/lang/String;I)[B

    move-result-object v5

    .line 165
    .local v5, "content":[B
    invoke-direct {p0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->validateData()V

    .line 166
    invoke-direct {p0, v3, v5}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->createOrOverrideFile(Ljava/lang/String;[B)V

    .line 168
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "contentLength":I
    .end local v5    # "content":[B
    goto :goto_2

    :cond_2
    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    .line 169
    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->readNextBytes(I)[B

    move-result-object v3

    .line 170
    .local v3, "operationUid":[B
    invoke-direct {p0, v1}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->readNextBytes(I)[B

    move-result-object v4

    aget-byte v4, v4, v0

    .line 171
    .local v4, "doRefresh":B
    move v5, v4

    .line 174
    .local v5, "doRefreshInt":I
    invoke-direct {p0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->validateData()V

    .line 175
    iget-object v6, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-static {v6}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$200(Lcom/tns/NativeScriptSyncServiceSocketImpl;)Lcom/tns/Runtime;

    move-result-object v6

    if-eqz v6, :cond_3

    if-ne v5, v1, :cond_3

    .line 176
    iget-object v6, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-static {v6}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$200(Lcom/tns/NativeScriptSyncServiceSocketImpl;)Lcom/tns/Runtime;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->this$0:Lcom/tns/NativeScriptSyncServiceSocketImpl;

    invoke-static {v8}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$300(Lcom/tns/NativeScriptSyncServiceSocketImpl;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "internal/livesync.js"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Lcom/tns/Runtime;->runScript(Ljava/io/File;Z)Ljava/lang/Object;

    .line 177
    const/4 v6, 0x2

    .local v6, "operationReportCode":I
    goto :goto_1

    .line 179
    .end local v6    # "operationReportCode":I
    :cond_3
    const/4 v6, 0x3

    .line 182
    .restart local v6    # "operationReportCode":I
    :goto_1
    iget-object v7, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->output:Ljava/io/OutputStream;

    invoke-direct {p0, v6, v3}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->getReportMessageBytes(I[B)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 183
    iget-object v7, p0, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->output:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 185
    .end local v3    # "operationUid":[B
    .end local v4    # "doRefresh":B
    .end local v5    # "doRefreshInt":I
    .end local v6    # "operationReportCode":I
    nop

    .line 192
    .end local v2    # "operation":I
    :goto_2
    goto :goto_0

    .line 185
    .restart local v2    # "operation":I
    :cond_4
    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 186
    invoke-static {}, Lcom/tns/NativeScriptSyncServiceSocketImpl;->access$000()Lcom/tns/Logger;

    move-result-object v3

    const-string v4, "LiveSync: input stream is empty!"

    invoke-interface {v3, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 187
    goto :goto_3

    .line 189
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\nLiveSync: Operation not recognised. Received operation is %s."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    .end local v2    # "operation":I
    :catchall_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "%s(%s): Error while LiveSyncing.\nOriginal Exception: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "message":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->closeWithError(Ljava/lang/String;)V

    goto :goto_4

    .line 193
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 194
    .local v2, "e":Ljava/lang/Exception;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Error while LiveSyncing: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .restart local v0    # "message":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/tns/NativeScriptSyncServiceSocketImpl$LiveSyncWorker;->closeWithError(Ljava/lang/String;)V

    .line 199
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 201
    :goto_4
    return-void
.end method
