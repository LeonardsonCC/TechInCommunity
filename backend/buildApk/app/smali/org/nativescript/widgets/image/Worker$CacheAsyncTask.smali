.class Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;
.super Lorg/nativescript/widgets/image/AsyncTask;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/nativescript/widgets/image/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/image/Worker;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/image/Worker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/nativescript/widgets/image/Worker;

    .line 495
    iput-object p1, p0, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-direct {p0}, Lorg/nativescript/widgets/image/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 495
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .line 499
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-virtual {v0}, Lorg/nativescript/widgets/image/Worker;->closeCacheInternal()V

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-virtual {v0}, Lorg/nativescript/widgets/image/Worker;->flushCacheInternal()V

    .line 508
    goto :goto_0

    .line 504
    :cond_2
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-virtual {v0}, Lorg/nativescript/widgets/image/Worker;->initDiskCacheInternal()V

    .line 505
    goto :goto_0

    .line 501
    :cond_3
    iget-object v0, p0, Lorg/nativescript/widgets/image/Worker$CacheAsyncTask;->this$0:Lorg/nativescript/widgets/image/Worker;

    invoke-virtual {v0}, Lorg/nativescript/widgets/image/Worker;->clearCacheInternal()V

    .line 502
    nop

    .line 513
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
