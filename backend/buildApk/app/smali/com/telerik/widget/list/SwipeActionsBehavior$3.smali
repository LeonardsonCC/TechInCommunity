.class Lcom/telerik/widget/list/SwipeActionsBehavior$3;
.super Landroid/view/animation/Animation;
.source "SwipeActionsBehavior.java"


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

    .line 626
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    iput-object p2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 630
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$000(Lcom/telerik/widget/list/SwipeActionsBehavior;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 631
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$100(Lcom/telerik/widget/list/SwipeActionsBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget-object v1, v1, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget v2, v2, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->startPosition:F

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget v3, v3, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->startPosition:F

    iget-object v4, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget v4, v4, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->dockPosition:F

    add-float/2addr v3, v4

    mul-float v3, v3, p1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget-object v3, v3, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$200(Lcom/telerik/widget/list/SwipeActionsBehavior;Landroid/view/View;II)V

    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget-object v1, v1, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget-object v2, v2, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget v3, v3, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->startPosition:F

    iget-object v4, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget v4, v4, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->startPosition:F

    iget-object v5, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$3;->val$context:Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget v5, v5, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->dockPosition:F

    add-float/2addr v4, v5

    mul-float v4, v4, p1

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$200(Lcom/telerik/widget/list/SwipeActionsBehavior;Landroid/view/View;II)V

    .line 639
    :goto_0
    return-void
.end method
