.class final Lorg/nativescript/widgets/image/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lorg/nativescript/widgets/image/DiskLruCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lorg/nativescript/widgets/image/DiskLruCache;


# direct methods
.method private constructor <init>(Lorg/nativescript/widgets/image/DiskLruCache;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;

    .line 911
    iput-object p1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput-object p2, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 913
    invoke-static {p1}, Lorg/nativescript/widgets/image/DiskLruCache;->access$2100(Lorg/nativescript/widgets/image/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->lengths:[J

    .line 914
    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/image/DiskLruCache;Ljava/lang/String;Lorg/nativescript/widgets/image/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/nativescript/widgets/image/DiskLruCache$1;

    .line 896
    invoke-direct {p0, p1, p2}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;-><init>(Lorg/nativescript/widgets/image/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)[J
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 896
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1100(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 896
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)J
    .locals 2
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 896
    iget-wide v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1202(Lorg/nativescript/widgets/image/DiskLruCache$Entry;J)J
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    .param p1, "x1"    # J

    .line 896
    iput-wide p1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$600(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Z
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 896
    iget-boolean v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$602(Lorg/nativescript/widgets/image/DiskLruCache$Entry;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    .param p1, "x1"    # Z

    .line 896
    iput-boolean p1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$700(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 896
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->currentEditor:Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$702(Lorg/nativescript/widgets/image/DiskLruCache$Entry;Lorg/nativescript/widgets/image/DiskLruCache$Editor;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    .param p1, "x1"    # Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    .line 896
    iput-object p1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->currentEditor:Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$800(Lorg/nativescript/widgets/image/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 896
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 928
    array-length v0, p1

    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->access$2100(Lorg/nativescript/widgets/image/DiskLruCache;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 933
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 934
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    .end local v0    # "i":I
    :cond_0
    nop

    .line 939
    return-void

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 929
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .line 946
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->access$2200(Lorg/nativescript/widgets/image/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .line 950
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache;->access$2200(Lorg/nativescript/widgets/image/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->lengths:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    .line 919
    .local v4, "size":J
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 918
    .end local v4    # "size":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 921
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
