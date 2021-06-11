.class abstract Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 679
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable;, "Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/image/AsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/image/AsyncTask$1;

    .line 679
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable;, "Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method
