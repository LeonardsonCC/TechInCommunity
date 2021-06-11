.class Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 662
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/image/AsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/image/AsyncTask$1;

    .line 662
    invoke-direct {p0}, Lorg/nativescript/widgets/image/AsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 666
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;

    .line 667
    .local v0, "result":Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    iget-object v1, v0, Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;->mTask:Lorg/nativescript/widgets/image/AsyncTask;

    iget-object v2, v0, Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/nativescript/widgets/image/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 670
    :cond_1
    iget-object v1, v0, Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;->mTask:Lorg/nativescript/widgets/image/AsyncTask;

    iget-object v2, v0, Lorg/nativescript/widgets/image/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/nativescript/widgets/image/AsyncTask;->access$600(Lorg/nativescript/widgets/image/AsyncTask;Ljava/lang/Object;)V

    .line 671
    nop

    .line 676
    :goto_0
    return-void
.end method
