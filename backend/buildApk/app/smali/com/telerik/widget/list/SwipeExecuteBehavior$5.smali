.class Lcom/telerik/widget/list/SwipeExecuteBehavior$5;
.super Ljava/lang/Object;
.source "SwipeExecuteBehavior.java"

# interfaces
.implements Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/SwipeExecuteBehavior;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 696
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$5;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeContentDismissed()V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$5;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->endExecute()V

    .line 700
    return-void
.end method
