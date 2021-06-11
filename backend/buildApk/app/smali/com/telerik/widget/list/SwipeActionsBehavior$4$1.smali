.class Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;
.super Ljava/lang/Object;
.source "SwipeActionsBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/SwipeActionsBehavior$4;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/SwipeActionsBehavior$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    .line 648
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 651
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    iget-object v0, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$400(Lcom/telerik/widget/list/SwipeActionsBehavior;)Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    move-result-object v0

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->RESETTING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne v0, v1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    iget-object v0, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$100(Lcom/telerik/widget/list/SwipeActionsBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    iget-object v0, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    iget-object v1, v1, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget-object v1, v1, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    iget-object v2, v2, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget v2, v2, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->dockPosition:F

    neg-float v2, v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    iget-object v3, v3, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget-object v3, v3, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$200(Lcom/telerik/widget/list/SwipeActionsBehavior;Landroid/view/View;II)V

    goto :goto_0

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    iget-object v0, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    iget-object v1, v1, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget-object v1, v1, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    iget-object v2, v2, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget-object v2, v2, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    iget-object v3, v3, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget v3, v3, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->dockPosition:F

    float-to-int v3, v3

    neg-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$200(Lcom/telerik/widget/list/SwipeActionsBehavior;Landroid/view/View;II)V

    .line 659
    :goto_0
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    iget-object v0, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$4$1;->this$1:Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    iget-object v1, v1, Lcom/telerik/widget/list/SwipeActionsBehavior$4;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    invoke-static {v0, v1}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$500(Lcom/telerik/widget/list/SwipeActionsBehavior;Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;)V

    .line 661
    :cond_1
    return-void
.end method
