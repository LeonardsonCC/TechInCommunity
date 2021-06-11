.class Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lorg/nativescript/widgets/image/AsyncTask;


# direct methods
.method varargs constructor <init>(Lorg/nativescript/widgets/image/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lorg/nativescript/widgets/image/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/nativescript/widgets/image/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 688
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;, "Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput-object p1, p0, Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;->mTask:Lorg/nativescript/widgets/image/AsyncTask;

    .line 690
    iput-object p2, p0, Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 691
    return-void
.end method
