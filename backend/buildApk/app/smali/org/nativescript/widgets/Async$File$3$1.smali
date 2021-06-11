.class Lorg/nativescript/widgets/Async$File$3$1;
.super Ljava/lang/Object;
.source "Async.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/Async$File$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/Async$File$3;

.field final synthetic val$result:Z

.field final synthetic val$task:Lorg/nativescript/widgets/Async$File$WriteTextTask;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/Async$File$3;Lorg/nativescript/widgets/Async$File$WriteTextTask;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/nativescript/widgets/Async$File$3;

    .line 642
    iput-object p1, p0, Lorg/nativescript/widgets/Async$File$3$1;->this$0:Lorg/nativescript/widgets/Async$File$3;

    iput-object p2, p0, Lorg/nativescript/widgets/Async$File$3$1;->val$task:Lorg/nativescript/widgets/Async$File$WriteTextTask;

    iput-boolean p3, p0, Lorg/nativescript/widgets/Async$File$3$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 645
    iget-object v0, p0, Lorg/nativescript/widgets/Async$File$3$1;->val$task:Lorg/nativescript/widgets/Async$File$WriteTextTask;

    iget-boolean v1, p0, Lorg/nativescript/widgets/Async$File$3$1;->val$result:Z

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/Async$File$WriteTextTask;->onPostExecute(Z)V

    .line 646
    return-void
.end method
