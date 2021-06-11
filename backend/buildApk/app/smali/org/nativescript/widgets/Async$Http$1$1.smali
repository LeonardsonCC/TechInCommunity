.class Lorg/nativescript/widgets/Async$Http$1$1;
.super Ljava/lang/Object;
.source "Async.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/Async$Http$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/Async$Http$1;

.field final synthetic val$result:Lorg/nativescript/widgets/Async$Http$RequestResult;

.field final synthetic val$task:Lorg/nativescript/widgets/Async$Http$HttpRequestTask;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/Async$Http$1;Lorg/nativescript/widgets/Async$Http$HttpRequestTask;Lorg/nativescript/widgets/Async$Http$RequestResult;)V
    .locals 0
    .param p1, "this$0"    # Lorg/nativescript/widgets/Async$Http$1;

    .line 306
    iput-object p1, p0, Lorg/nativescript/widgets/Async$Http$1$1;->this$0:Lorg/nativescript/widgets/Async$Http$1;

    iput-object p2, p0, Lorg/nativescript/widgets/Async$Http$1$1;->val$task:Lorg/nativescript/widgets/Async$Http$HttpRequestTask;

    iput-object p3, p0, Lorg/nativescript/widgets/Async$Http$1$1;->val$result:Lorg/nativescript/widgets/Async$Http$RequestResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 309
    iget-object v0, p0, Lorg/nativescript/widgets/Async$Http$1$1;->val$task:Lorg/nativescript/widgets/Async$Http$HttpRequestTask;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$Http$1$1;->val$result:Lorg/nativescript/widgets/Async$Http$RequestResult;

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/Async$Http$HttpRequestTask;->onPostExecute(Lorg/nativescript/widgets/Async$Http$RequestResult;)V

    .line 310
    return-void
.end method
