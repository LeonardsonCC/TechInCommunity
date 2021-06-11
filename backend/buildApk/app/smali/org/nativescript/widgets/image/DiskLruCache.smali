.class public final Lorg/nativescript/widgets/image/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/image/DiskLruCache$Entry;,
        Lorg/nativescript/widgets/image/DiskLruCache$Editor;,
        Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/nativescript/widgets/image/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/nativescript/widgets/image/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .line 288
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lorg/nativescript/widgets/image/DiskLruCache;->size:J

    .line 162
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 171
    iput-wide v2, v0, Lorg/nativescript/widgets/image/DiskLruCache;->nextSequenceNumber:J

    .line 270
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lorg/nativescript/widgets/image/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 272
    new-instance v2, Lorg/nativescript/widgets/image/DiskLruCache$1;

    invoke-direct {v2, p0}, Lorg/nativescript/widgets/image/DiskLruCache$1;-><init>(Lorg/nativescript/widgets/image/DiskLruCache;)V

    iput-object v2, v0, Lorg/nativescript/widgets/image/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 289
    iput-object v1, v0, Lorg/nativescript/widgets/image/DiskLruCache;->directory:Ljava/io/File;

    .line 290
    move/from16 v2, p2

    iput v2, v0, Lorg/nativescript/widgets/image/DiskLruCache;->appVersion:I

    .line 291
    new-instance v3, Ljava/io/File;

    const-string v4, "journal"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lorg/nativescript/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    .line 292
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.tmp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lorg/nativescript/widgets/image/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 293
    move/from16 v3, p3

    iput v3, v0, Lorg/nativescript/widgets/image/DiskLruCache;->valueCount:I

    .line 294
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lorg/nativescript/widgets/image/DiskLruCache;->maxSize:J

    .line 295
    return-void
.end method

.method static synthetic access$000(Lorg/nativescript/widgets/image/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache;

    .line 100
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lorg/nativescript/widgets/image/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1500(Lorg/nativescript/widgets/image/DiskLruCache;Ljava/lang/String;J)Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lorg/nativescript/widgets/image/DiskLruCache;->edit(Ljava/lang/String;J)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-static {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Ljava/nio/charset/Charset;
    .locals 1

    .line 100
    sget-object v0, Lorg/nativescript/widgets/image/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/nativescript/widgets/image/DiskLruCache;Lorg/nativescript/widgets/image/DiskLruCache$Editor;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache;
    .param p1, "x1"    # Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/nativescript/widgets/image/DiskLruCache;->completeEdit(Lorg/nativescript/widgets/image/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/nativescript/widgets/image/DiskLruCache;)Z
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache;

    .line 100
    invoke-direct {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lorg/nativescript/widgets/image/DiskLruCache;)I
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache;

    .line 100
    iget v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$2200(Lorg/nativescript/widgets/image/DiskLruCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache;

    .line 100
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lorg/nativescript/widgets/image/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lorg/nativescript/widgets/image/DiskLruCache;I)I
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache;
    .param p1, "x1"    # I

    .line 100
    iput p1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .line 667
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 670
    return-void

    .line 668
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 240
    if-eqz p0, :cond_0

    .line 242
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0

    .line 243
    :catch_1
    move-exception v0

    .line 244
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 248
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lorg/nativescript/widgets/image/DiskLruCache$Editor;Z)V
    .locals 10
    .param p1, "editor"    # Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 566
    :try_start_0
    invoke-static {p1}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->access$1400(Lorg/nativescript/widgets/image/DiskLruCache$Editor;)Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    move-result-object v0

    .line 567
    .local v0, "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$700(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_9

    .line 572
    if-eqz p2, :cond_1

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$600(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 573
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/nativescript/widgets/image/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_1

    .line 574
    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {p1}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->abort()V

    .line 576
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit didn\'t create file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 581
    .end local v1    # "i":I
    .end local p0    # "this":Lorg/nativescript/widgets/image/DiskLruCache;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lorg/nativescript/widgets/image/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_4

    .line 582
    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    .line 583
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_2

    .line 584
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 585
    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 586
    .local v3, "clean":Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 587
    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1000(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    move-wide v4, v5

    .line 588
    .local v4, "oldLength":J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 589
    .local v6, "newLength":J
    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1000(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v6, v8, v1

    .line 590
    iget-wide v8, p0, Lorg/nativescript/widgets/image/DiskLruCache;->size:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lorg/nativescript/widgets/image/DiskLruCache;->size:J

    .line 591
    .end local v3    # "clean":Ljava/io/File;
    .end local v4    # "oldLength":J
    .end local v6    # "newLength":J
    goto :goto_2

    .line 593
    :cond_2
    invoke-static {v2}, Lorg/nativescript/widgets/image/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 581
    .end local v2    # "dirty":Ljava/io/File;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 597
    .end local v1    # "i":I
    :cond_4
    iget v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->redundantOpCount:I

    .line 598
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$702(Lorg/nativescript/widgets/image/DiskLruCache$Entry;Lorg/nativescript/widgets/image/DiskLruCache$Editor;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    .line 599
    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$600(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Z

    move-result v1

    or-int/2addr v1, p2

    const/16 v3, 0xa

    if-eqz v1, :cond_5

    .line 600
    invoke-static {v0, v2}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$602(Lorg/nativescript/widgets/image/DiskLruCache$Entry;Z)Z

    .line 601
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1100(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 602
    if-eqz p2, :cond_6

    .line 603
    iget-wide v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/nativescript/widgets/image/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v0, v1, v2}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1202(Lorg/nativescript/widgets/image/DiskLruCache$Entry;J)J

    goto :goto_3

    .line 606
    :cond_5
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1100(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REMOVE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1100(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 610
    :cond_6
    :goto_3
    iget-wide v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->size:J

    iget-wide v3, p0, Lorg/nativescript/widgets/image/DiskLruCache;->maxSize:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_7

    invoke-direct {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 611
    :cond_7
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lorg/nativescript/widgets/image/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :cond_8
    monitor-exit p0

    return-void

    .line 568
    :cond_9
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    .end local v0    # "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    .end local p1    # "editor":Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 176
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    .line 177
    .local v0, "originalLength":I
    if-gt p1, p2, :cond_1

    .line 180
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 183
    sub-int v1, p2, p1

    .line 184
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 185
    .local v2, "copyLength":I
    nop

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 187
    .local v3, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    return-object v3

    .line 181
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 178
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 256
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 260
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    invoke-static {v3}, Lorg/nativescript/widgets/image/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 263
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .restart local v3    # "file":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to delete file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    return-void
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 466
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 518
    :try_start_0
    invoke-direct {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->checkNotClosed()V

    .line 519
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/image/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 521
    .local v0, "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 522
    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1200(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 523
    .end local p0    # "this":Lorg/nativescript/widgets/image/DiskLruCache;
    :cond_0
    monitor-exit p0

    return-object v3

    .line 525
    :cond_1
    if-nez v0, :cond_2

    .line 526
    :try_start_1
    new-instance v1, Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1, v3}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;-><init>(Lorg/nativescript/widgets/image/DiskLruCache;Ljava/lang/String;Lorg/nativescript/widgets/image/DiskLruCache$1;)V

    move-object v0, v1

    .line 527
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 528
    :cond_2
    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$700(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 529
    monitor-exit p0

    return-object v3

    .line 532
    :cond_3
    :goto_0
    :try_start_2
    new-instance v1, Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v3}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;-><init>(Lorg/nativescript/widgets/image/DiskLruCache;Lorg/nativescript/widgets/image/DiskLruCache$Entry;Lorg/nativescript/widgets/image/DiskLruCache$1;)V

    .line 533
    .local v1, "editor":Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$702(Lorg/nativescript/widgets/image/DiskLruCache$Entry;Lorg/nativescript/widgets/image/DiskLruCache$Editor;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    .line 536
    iget-object v2, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 538
    monitor-exit p0

    return-object v1

    .line 517
    .end local v0    # "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    .end local v1    # "editor":Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lorg/nativescript/widgets/image/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .line 620
    const/16 v0, 0x7d0

    .line 621
    .local v0, "REDUNDANT_OP_COMPACT_THRESHOLD":I
    iget v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 622
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 621
    :goto_0
    return v1
.end method

.method public static open(Ljava/io/File;IIJ)Lorg/nativescript/widgets/image/DiskLruCache;
    .locals 9
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    .line 312
    if-lez p2, :cond_1

    .line 317
    new-instance v0, Lorg/nativescript/widgets/image/DiskLruCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lorg/nativescript/widgets/image/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 318
    .local v0, "cache":Lorg/nativescript/widgets/image/DiskLruCache;
    iget-object v1, v0, Lorg/nativescript/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    :try_start_0
    invoke-direct {v0}, Lorg/nativescript/widgets/image/DiskLruCache;->readJournal()V

    .line 321
    invoke-direct {v0}, Lorg/nativescript/widgets/image/DiskLruCache;->processJournal()V

    .line 322
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lorg/nativescript/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    return-object v0

    .line 325
    :catch_0
    move-exception v1

    .line 328
    .local v1, "journalIsCorrupt":Ljava/io/IOException;
    invoke-virtual {v0}, Lorg/nativescript/widgets/image/DiskLruCache;->delete()V

    .line 333
    .end local v1    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 334
    new-instance v1, Lorg/nativescript/widgets/image/DiskLruCache;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/nativescript/widgets/image/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    move-object v0, v1

    .line 335
    invoke-direct {v0}, Lorg/nativescript/widgets/image/DiskLruCache;->rebuildJournal()V

    .line 336
    return-object v0

    .line 313
    .end local v0    # "cache":Lorg/nativescript/widgets/image/DiskLruCache;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 405
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/nativescript/widgets/image/DiskLruCache$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 407
    .local v1, "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$700(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 408
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lorg/nativescript/widgets/image/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 409
    iget-wide v3, p0, Lorg/nativescript/widgets/image/DiskLruCache;->size:J

    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1000(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p0, Lorg/nativescript/widgets/image/DiskLruCache;->size:J

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "t":I
    :cond_0
    goto :goto_3

    .line 412
    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$702(Lorg/nativescript/widgets/image/DiskLruCache$Entry;Lorg/nativescript/widgets/image/DiskLruCache$Editor;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    .line 413
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lorg/nativescript/widgets/image/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 414
    invoke-virtual {v1, v2}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lorg/nativescript/widgets/image/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 415
    invoke-virtual {v1, v2}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lorg/nativescript/widgets/image/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 417
    .end local v2    # "t":I
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 419
    .end local v1    # "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    :goto_3
    goto :goto_0

    .line 420
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/nativescript/widgets/image/DiskLruCache$Entry;>;"
    :cond_3
    return-void
.end method

.method public static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 220
    .local v0, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 221
    .local v1, "c":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 223
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 224
    nop

    .line 229
    .end local v1    # "c":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 230
    .local v1, "length":I
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 231
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 233
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 227
    .local v1, "c":I
    :cond_1
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    .end local v1    # "c":I
    goto :goto_0

    .line 222
    .restart local v1    # "c":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 197
    .local v0, "writer":Ljava/io/StringWriter;
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 199
    .local v1, "buffer":[C
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    move v3, v2

    .local v3, "count":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 202
    return-object v2

    .line 204
    .end local v0    # "writer":Ljava/io/StringWriter;
    .end local v1    # "buffer":[C
    .end local v3    # "count":I
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 205
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    const-string v0, ", "

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 342
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "magic":Ljava/lang/String;
    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "version":Ljava/lang/String;
    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "appVersionString":Ljava/lang/String;
    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 347
    .local v6, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    .line 348
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lorg/nativescript/widgets/image/DiskLruCache;->appVersion:I

    .line 349
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lorg/nativescript/widgets/image/DiskLruCache;->valueCount:I

    .line 350
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    .line 351
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 358
    :goto_0
    :try_start_1
    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nativescript/widgets/image/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "endOfJournal":Ljava/io/EOFException;
    nop

    .line 364
    .end local v0    # "endOfJournal":Ljava/io/EOFException;
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 365
    nop

    .line 366
    return-void

    .line 352
    .restart local v2    # "magic":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    .restart local v4    # "appVersionString":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "blank":Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "in":Ljava/io/InputStream;
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 365
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 10
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const-string v2, "unexpected journal line: "

    const/4 v3, 0x2

    if-lt v1, v3, :cond_5

    .line 374
    const/4 v1, 0x1

    aget-object v4, v0, v1

    .line 375
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v0, v5

    const-string v7, "REMOVE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    array-length v6, v0

    if-ne v6, v3, :cond_0

    .line 376
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    return-void

    .line 380
    :cond_0
    iget-object v6, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 381
    .local v6, "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 382
    new-instance v8, Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    invoke-direct {v8, p0, v4, v7}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;-><init>(Lorg/nativescript/widgets/image/DiskLruCache;Ljava/lang/String;Lorg/nativescript/widgets/image/DiskLruCache$1;)V

    move-object v6, v8

    .line 383
    iget-object v8, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_1
    aget-object v8, v0, v5

    const-string v9, "CLEAN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    array-length v8, v0

    iget v9, p0, Lorg/nativescript/widgets/image/DiskLruCache;->valueCount:I

    add-int/2addr v9, v3

    if-ne v8, v9, :cond_2

    .line 387
    invoke-static {v6, v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$602(Lorg/nativescript/widgets/image/DiskLruCache$Entry;Z)Z

    .line 388
    invoke-static {v6, v7}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$702(Lorg/nativescript/widgets/image/DiskLruCache$Entry;Lorg/nativescript/widgets/image/DiskLruCache$Editor;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    .line 389
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lorg/nativescript/widgets/image/DiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v6, v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$800(Lorg/nativescript/widgets/image/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_2
    aget-object v1, v0, v5

    const-string v8, "DIRTY"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, v0

    if-ne v1, v3, :cond_3

    .line 391
    new-instance v1, Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    invoke-direct {v1, p0, v6, v7}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;-><init>(Lorg/nativescript/widgets/image/DiskLruCache;Lorg/nativescript/widgets/image/DiskLruCache$Entry;Lorg/nativescript/widgets/image/DiskLruCache$1;)V

    invoke-static {v6, v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$702(Lorg/nativescript/widgets/image/DiskLruCache$Entry;Lorg/nativescript/widgets/image/DiskLruCache$Editor;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    goto :goto_0

    .line 392
    :cond_3
    aget-object v1, v0, v5

    const-string v5, "READ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, v0

    if-ne v1, v3, :cond_4

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 431
    .end local p0    # "this":Lorg/nativescript/widgets/image/DiskLruCache;
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 432
    .local v0, "writer":Ljava/io/Writer;
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 433
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 434
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 436
    iget v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 437
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 438
    iget v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 440
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 443
    .local v3, "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    invoke-static {v3}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$700(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v4

    const/16 v5, 0xa

    if-eqz v4, :cond_1

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DIRTY "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1100(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 446
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLEAN "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1100(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 448
    .end local v3    # "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    :goto_1
    goto :goto_0

    .line 450
    :cond_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 451
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 452
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-void

    .line 426
    .end local v0    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    :goto_0
    iget-wide v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->size:J

    iget-wide v2, p0, Lorg/nativescript/widgets/image/DiskLruCache;->maxSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 701
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 702
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/nativescript/widgets/image/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/nativescript/widgets/image/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 703
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/nativescript/widgets/image/DiskLruCache$Entry;>;"
    goto :goto_0

    .line 704
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 717
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    return-void

    .line 718
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 685
    :try_start_0
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 686
    monitor-exit p0

    return-void

    .line 688
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 689
    .local v1, "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$700(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 690
    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$700(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->abort()V

    .line 692
    .end local v1    # "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    .end local p0    # "this":Lorg/nativescript/widgets/image/DiskLruCache;
    :cond_1
    goto :goto_0

    .line 693
    :cond_2
    invoke-direct {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->trimToSize()V

    .line 694
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 695
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    invoke-virtual {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->close()V

    .line 713
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 714
    return-void
.end method

.method public edit(Ljava/lang/String;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/nativescript/widgets/image/DiskLruCache;->edit(Ljava/lang/String;J)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 676
    :try_start_0
    invoke-direct {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->checkNotClosed()V

    .line 677
    invoke-direct {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->trimToSize()V

    .line 678
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit p0

    return-void

    .line 675
    .end local p0    # "this":Lorg/nativescript/widgets/image/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 474
    :try_start_0
    invoke-direct {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->checkNotClosed()V

    .line 475
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/image/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    .local v0, "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 478
    monitor-exit p0

    return-object v1

    .line 481
    :cond_0
    :try_start_1
    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$600(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 482
    monitor-exit p0

    return-object v1

    .line 490
    :cond_1
    :try_start_2
    iget v2, p0, Lorg/nativescript/widgets/image/DiskLruCache;->valueCount:I

    new-array v2, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 492
    .local v2, "ins":[Ljava/io/InputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_3
    iget v4, p0, Lorg/nativescript/widgets/image/DiskLruCache;->valueCount:I

    if-ge v3, v4, :cond_2

    .line 493
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v2, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 498
    .end local v3    # "i":I
    .end local p0    # "this":Lorg/nativescript/widgets/image/DiskLruCache;
    :cond_2
    nop

    .line 500
    :try_start_4
    iget v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->redundantOpCount:I

    .line 501
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 502
    invoke-direct {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 503
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lorg/nativescript/widgets/image/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 506
    :cond_3
    new-instance v1, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1200(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v8, v2

    invoke-direct/range {v3 .. v9}, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;-><init>(Lorg/nativescript/widgets/image/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lorg/nativescript/widgets/image/DiskLruCache$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 495
    :catch_0
    move-exception v3

    .line 497
    .local v3, "e":Ljava/io/FileNotFoundException;
    monitor-exit p0

    return-object v1

    .line 473
    .end local v0    # "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    .end local v2    # "ins":[Ljava/io/InputStream;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 545
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 663
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maxSize()J
    .locals 2

    .line 553
    iget-wide v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 632
    :try_start_0
    invoke-direct {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->checkNotClosed()V

    .line 633
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/image/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 635
    .local v0, "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$700(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 639
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/nativescript/widgets/image/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_2

    .line 640
    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 641
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 644
    iget-wide v3, p0, Lorg/nativescript/widgets/image/DiskLruCache;->size:J

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1000(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v6, v5, v1

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lorg/nativescript/widgets/image/DiskLruCache;->size:J

    .line 645
    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1000(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 639
    .end local v2    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    .end local p0    # "this":Lorg/nativescript/widgets/image/DiskLruCache;
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 648
    .end local v1    # "i":I
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    iget v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->redundantOpCount:I

    .line 649
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REMOVE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 650
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-direct {p0}, Lorg/nativescript/widgets/image/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 653
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lorg/nativescript/widgets/image/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    :cond_3
    monitor-exit p0

    return v2

    .line 636
    :cond_4
    :goto_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 631
    .end local v0    # "entry":Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 562
    :try_start_0
    iget-wide v0, p0, Lorg/nativescript/widgets/image/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Lorg/nativescript/widgets/image/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
