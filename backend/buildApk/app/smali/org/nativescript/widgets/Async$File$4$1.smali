.class Lorg/nativescript/widgets/Async$File$4$1;
.super Ljava/lang/Object;
.source "Async.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/Async$File$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/Async$File$4;

.field final synthetic val$result:Z

.field final synthetic val$task:Lorg/nativescript/widgets/Async$File$WriteTask;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/Async$File$4;Lorg/nativescript/widgets/Async$File$WriteTask;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/nativescript/widgets/Async$File$4;

    .line 659
    iput-object p1, p0, Lorg/nativescript/widgets/Async$File$4$1;->this$0:Lorg/nativescript/widgets/Async$File$4;

    iput-object p2, p0, Lorg/nativescript/widgets/Async$File$4$1;->val$task:Lorg/nativescript/widgets/Async$File$WriteTask;

    iput-boolean p3, p0, Lorg/nativescript/widgets/Async$File$4$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 662
    iget-object v0, p0, Lorg/nativescript/widgets/Async$File$4$1;->val$task:Lorg/nativescript/widgets/Async$File$WriteTask;

    iget-boolean v1, p0, Lorg/nativescript/widgets/Async$File$4$1;->val$result:Z

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/Async$File$WriteTask;->onPostExecute(Z)V

    .line 663
    return-void
.end method
