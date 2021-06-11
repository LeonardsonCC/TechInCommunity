.class public final Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lorg/nativescript/widgets/image/DiskLruCache;


# direct methods
.method private constructor <init>(Lorg/nativescript/widgets/image/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lorg/nativescript/widgets/image/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;

    .line 735
    iput-object p1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p2, p0, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 737
    iput-wide p3, p0, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 738
    iput-object p5, p0, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 739
    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/image/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lorg/nativescript/widgets/image/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/InputStream;
    .param p6, "x4"    # Lorg/nativescript/widgets/image/DiskLruCache$1;

    .line 730
    invoke-direct/range {p0 .. p5}, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;-><init>(Lorg/nativescript/widgets/image/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 765
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 766
    .local v3, "in":Ljava/io/InputStream;
    invoke-static {v3}, Lorg/nativescript/widgets/image/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 765
    .end local v3    # "in":Ljava/io/InputStream;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    :cond_0
    return-void
.end method

.method public edit()Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lorg/nativescript/widgets/image/DiskLruCache;->access$1500(Lorg/nativescript/widgets/image/DiskLruCache;Ljava/lang/String;J)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .line 754
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/image/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
