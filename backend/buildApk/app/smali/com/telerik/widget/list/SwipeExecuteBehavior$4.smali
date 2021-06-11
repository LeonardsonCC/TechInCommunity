.class Lcom/telerik/widget/list/SwipeExecuteBehavior$4;
.super Ljava/lang/Object;
.source "SwipeExecuteBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/SwipeExecuteBehavior;->moveSwipe(FFFF)V
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

    .line 518
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 521
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->access$400(Lcom/telerik/widget/list/SwipeExecuteBehavior;)Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    move-result-object v0

    sget-object v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->STARTED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-ne v0, v1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-static {v1}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->access$500(Lcom/telerik/widget/list/SwipeExecuteBehavior;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 523
    .local v0, "swipeView":Landroid/view/View;
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-static {v1}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->access$600(Lcom/telerik/widget/list/SwipeExecuteBehavior;)I

    move-result v1

    iget-object v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-static {v2}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->access$700(Lcom/telerik/widget/list/SwipeExecuteBehavior;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 524
    .local v1, "currentOffset":I
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-static {v2}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->access$800(Lcom/telerik/widget/list/SwipeExecuteBehavior;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;

    .line 525
    .local v3, "listener":Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;
    iget-object v4, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$4;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-static {v4}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->access$900(Lcom/telerik/widget/list/SwipeExecuteBehavior;)I

    move-result v4

    invoke-interface {v3, v4, v1, v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;->onSwipeProgressChanged(IILandroid/view/View;)V

    .line 526
    .end local v3    # "listener":Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;
    goto :goto_0

    .line 528
    .end local v0    # "swipeView":Landroid/view/View;
    .end local v1    # "currentOffset":I
    :cond_0
    return-void
.end method
