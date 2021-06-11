.class Lorg/nativescript/widgets/Async$File$1$1;
.super Ljava/lang/Object;
.source "Async.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/Async$File$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/Async$File$1;

.field final synthetic val$result:Ljava/lang/String;

.field final synthetic val$task:Lorg/nativescript/widgets/Async$File$ReadTextTask;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/Async$File$1;Lorg/nativescript/widgets/Async$File$ReadTextTask;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/nativescript/widgets/Async$File$1;

    .line 608
    iput-object p1, p0, Lorg/nativescript/widgets/Async$File$1$1;->this$0:Lorg/nativescript/widgets/Async$File$1;

    iput-object p2, p0, Lorg/nativescript/widgets/Async$File$1$1;->val$task:Lorg/nativescript/widgets/Async$File$ReadTextTask;

    iput-object p3, p0, Lorg/nativescript/widgets/Async$File$1$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 611
    iget-object v0, p0, Lorg/nativescript/widgets/Async$File$1$1;->val$task:Lorg/nativescript/widgets/Async$File$ReadTextTask;

    iget-object v1, p0, Lorg/nativescript/widgets/Async$File$1$1;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/Async$File$ReadTextTask;->onPostExecute(Ljava/lang/String;)V

    .line 612
    return-void
.end method
