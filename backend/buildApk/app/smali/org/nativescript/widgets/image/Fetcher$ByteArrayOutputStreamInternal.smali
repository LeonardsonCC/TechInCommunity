.class Lorg/nativescript/widgets/image/Fetcher$ByteArrayOutputStreamInternal;
.super Ljava/io/ByteArrayOutputStream;
.source "Fetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/Fetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayOutputStreamInternal"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/image/Fetcher$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/image/Fetcher$1;

    .line 342
    invoke-direct {p0}, Lorg/nativescript/widgets/image/Fetcher$ByteArrayOutputStreamInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/nativescript/widgets/image/Fetcher$ByteArrayOutputStreamInternal;->buf:[B

    return-object v0
.end method
