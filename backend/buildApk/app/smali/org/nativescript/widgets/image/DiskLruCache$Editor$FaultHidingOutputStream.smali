.class Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/nativescript/widgets/image/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lorg/nativescript/widgets/image/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 858
    iput-object p1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    .line 859
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 860
    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/image/DiskLruCache$Editor;Ljava/io/OutputStream;Lorg/nativescript/widgets/image/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/image/DiskLruCache$Editor;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lorg/nativescript/widgets/image/DiskLruCache$1;

    .line 857
    invoke-direct {p0, p1, p2}, Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lorg/nativescript/widgets/image/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 880
    :try_start_0
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->access$2002(Lorg/nativescript/widgets/image/DiskLruCache$Editor;Z)Z

    .line 884
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 3

    .line 888
    :try_start_0
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    goto :goto_0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->access$2002(Lorg/nativescript/widgets/image/DiskLruCache$Editor;Z)Z

    .line 892
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .line 864
    :try_start_0
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->access$2002(Lorg/nativescript/widgets/image/DiskLruCache$Editor;Z)Z

    .line 868
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 872
    :try_start_0
    iget-object v0, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    goto :goto_0

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/nativescript/widgets/image/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lorg/nativescript/widgets/image/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/nativescript/widgets/image/DiskLruCache$Editor;->access$2002(Lorg/nativescript/widgets/image/DiskLruCache$Editor;Z)Z

    .line 876
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
