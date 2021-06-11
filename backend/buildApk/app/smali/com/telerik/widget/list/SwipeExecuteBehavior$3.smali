.class Lcom/telerik/widget/list/SwipeExecuteBehavior$3;
.super Ljava/lang/Object;
.source "SwipeExecuteBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/SwipeExecuteBehavior;->endExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

.field final synthetic val$swipeContentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 227
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$3;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    iput-object p2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$3;->val$swipeContentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$3;->val$swipeContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$3;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->access$200(Lcom/telerik/widget/list/SwipeExecuteBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$3;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$3;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$3;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-static {v1}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->access$300(Lcom/telerik/widget/list/SwipeExecuteBehavior;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 236
    :cond_1
    return-void
.end method
