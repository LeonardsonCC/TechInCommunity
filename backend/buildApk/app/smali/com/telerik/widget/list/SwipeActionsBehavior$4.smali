.class Lcom/telerik/widget/list/SwipeActionsBehavior$4;
.super Ljava/lang/Object;
.source "SwipeActionsBehavior.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/SwipeActionsBehavior;->dockItem(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

.field final synthetic val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/SwipeActionsBehavior;Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;

    .line 644
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    iput-object p2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 668
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 673
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 647
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->RESETTING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    invoke-static {v0, v1}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$300(Lcom/telerik/widget/list/SwipeActionsBehavior;Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;)V

    .line 648
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;

    invoke-direct {v1, p0}, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;-><init>(Lcom/telerik/widget/list/SwipeActionsBehavior$4;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 663
    return-void
.end method
