.class public final Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;
.super Ljava/io/ByteArrayOutputStream;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async$Http$RequestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArrayOutputStream2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 489
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 490
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 493
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 494
    return-void
.end method


# virtual methods
.method public declared-synchronized buf()[B
    .locals 1

    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lorg/nativescript/widgets/Async$Http$RequestResult$ByteArrayOutputStream2;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
