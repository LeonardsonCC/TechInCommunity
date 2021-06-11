.class Lorg/nativescript/widgets/image/AsyncTask$2;
.super Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/image/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/image/AsyncTask;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/image/AsyncTask;)V
    .locals 1
    .param p1, "this$0"    # Lorg/nativescript/widgets/image/AsyncTask;

    .line 307
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask$2;, "Lorg/nativescript/widgets/image/AsyncTask$2;"
    iput-object p1, p0, Lorg/nativescript/widgets/image/AsyncTask$2;->this$0:Lorg/nativescript/widgets/image/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/nativescript/widgets/image/AsyncTask$WorkerRunnable;-><init>(Lorg/nativescript/widgets/image/AsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 309
    .local p0, "this":Lorg/nativescript/widgets/image/AsyncTask$2;, "Lorg/nativescript/widgets/image/AsyncTask$2;"
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask$2;->this$0:Lorg/nativescript/widgets/image/AsyncTask;

    invoke-static {v0}, Lorg/nativescript/widgets/image/AsyncTask;->access$300(Lorg/nativescript/widgets/image/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 311
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 313
    iget-object v0, p0, Lorg/nativescript/widgets/image/AsyncTask$2;->this$0:Lorg/nativescript/widgets/image/AsyncTask;

    iget-object v1, p0, Lorg/nativescript/widgets/image/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/image/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/nativescript/widgets/image/AsyncTask;->access$400(Lorg/nativescript/widgets/image/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
