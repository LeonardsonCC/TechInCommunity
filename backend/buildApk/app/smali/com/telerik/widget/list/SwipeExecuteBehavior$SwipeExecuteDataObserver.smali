.class Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SwipeExecuteBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/SwipeExecuteBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeExecuteDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 785
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->endExecute()V

    .line 797
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 788
    add-int v0, p1, p2

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-static {v1}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->access$900(Lcom/telerik/widget/list/SwipeExecuteBehavior;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->access$900(Lcom/telerik/widget/list/SwipeExecuteBehavior;)I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->access$1102(Lcom/telerik/widget/list/SwipeExecuteBehavior;Z)Z

    .line 790
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->endExecute()V

    .line 792
    :cond_0
    return-void
.end method
