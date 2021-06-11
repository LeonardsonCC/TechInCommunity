.class public final Lorg/nativescript/widgets/image/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lorg/nativescript/widgets/image/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lorg/nativescript/widgets/image/DiskLruCache;


# direct methods
.method private constructor <init>(Lorg/nativescript/widgets/image/DiskLruCache;Lorg/nativescript/widgets/image/DiskLruCache$Entry;)V
    .locals 0
    .param p1, "this$0"    # Lorg/nativescript/widgets/image/DiskLruCache;
    .param p2, "entry"    # Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 778
    iput-object p1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p2, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->entry:Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    .line 780
    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/image/DiskLruCache;Lorg/nativescript/widgets/image/DiskLruCache$Entry;Lorg/nativescript/widgets/image/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache;
    .param p2, "x1"    # Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    .param p3, "x2"    # Lorg/nativescript/widgets/image/DiskLruCache$1;

    .line 774
    invoke-direct {p0, p1, p2}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;-><init>(Lorg/nativescript/widgets/image/DiskLruCache;Lorg/nativescript/widgets/image/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/nativescript/widgets/image/DiskLruCache$Editor;)Lorg/nativescript/widgets/image/DiskLruCache$Entry;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    .line 774
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->entry:Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/nativescript/widgets/image/DiskLruCache$Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    .param p1, "x1"    # Z

    .line 774
    iput-boolean p1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/nativescript/widgets/image/DiskLruCache;->access$1900(Lorg/nativescript/widgets/image/DiskLruCache;Lorg/nativescript/widgets/image/DiskLruCache$Editor;Z)V

    .line 855
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    iget-boolean v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/nativescript/widgets/image/DiskLruCache;->access$1900(Lorg/nativescript/widgets/image/DiskLruCache;Lorg/nativescript/widgets/image/DiskLruCache$Editor;Z)V

    .line 843
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->entry:Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$1100(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/image/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 845
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lorg/nativescript/widgets/image/DiskLruCache;->access$1900(Lorg/nativescript/widgets/image/DiskLruCache;Lorg/nativescript/widgets/image/DiskLruCache$Editor;Z)V

    .line 847
    :goto_0
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 803
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 804
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    monitor-enter v0

    .line 788
    :try_start_0
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->entry:Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$700(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 791
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->entry:Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$600(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 792
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 794
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->entry:Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v0

    return-object v1

    .line 789
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "index":I
    throw v1

    .line 795
    .restart local p1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->this$0:Lorg/nativescript/widgets/image/DiskLruCache;

    monitor-enter v0

    .line 816
    :try_start_0
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->entry:Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    invoke-static {v1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->access$700(Lorg/nativescript/widgets/image/DiskLruCache$Entry;)Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 819
    new-instance v1, Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->entry:Lorg/nativescript/widgets/image/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lorg/nativescript/widgets/image/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lorg/nativescript/widgets/image/DiskLruCache$Editor;Ljava/io/OutputStream;Lorg/nativescript/widgets/image/DiskLruCache$1;)V

    monitor-exit v0

    return-object v1

    .line 817
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "index":I
    throw v1

    .line 820
    .restart local p1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    const/4 v0, 0x0

    .line 829
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {}, Lorg/nativescript/widgets/image/DiskLruCache;->access$1800()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v1

    .line 830
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 833
    nop

    .line 834
    return-void

    .line 832
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/nativescript/widgets/image/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 833
    throw v1
.end method
