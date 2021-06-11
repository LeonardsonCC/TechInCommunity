.class Lorg/nativescript/widgets/Async$PriorityThreadFactory$1;
.super Ljava/lang/Object;
.source "Async.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/Async$PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/Async$PriorityThreadFactory;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/Async$PriorityThreadFactory;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/nativescript/widgets/Async$PriorityThreadFactory;

    .line 79
    iput-object p1, p0, Lorg/nativescript/widgets/Async$PriorityThreadFactory$1;->this$0:Lorg/nativescript/widgets/Async$PriorityThreadFactory;

    iput-object p2, p0, Lorg/nativescript/widgets/Async$PriorityThreadFactory$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/nativescript/widgets/Async$PriorityThreadFactory$1;->this$0:Lorg/nativescript/widgets/Async$PriorityThreadFactory;

    invoke-static {v0}, Lorg/nativescript/widgets/Async$PriorityThreadFactory;->access$000(Lorg/nativescript/widgets/Async$PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 87
    :goto_0
    iget-object v0, p0, Lorg/nativescript/widgets/Async$PriorityThreadFactory$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    return-void
.end method
