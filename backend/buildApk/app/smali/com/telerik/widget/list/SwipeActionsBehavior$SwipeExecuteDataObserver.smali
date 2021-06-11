.class Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SwipeActionsBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/SwipeActionsBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeExecuteDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/SwipeActionsBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;

    .line 866
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 879
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$400(Lcom/telerik/widget/list/SwipeActionsBehavior;)Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    move-result-object v0

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-eq v0, v1, :cond_0

    .line 880
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$800(Lcom/telerik/widget/list/SwipeActionsBehavior;ZZ)V

    .line 882
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 869
    add-int v0, p1, p2

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-static {v1}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$600(Lcom/telerik/widget/list/SwipeActionsBehavior;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$600(Lcom/telerik/widget/list/SwipeActionsBehavior;)I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 870
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$400(Lcom/telerik/widget/list/SwipeActionsBehavior;)Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    move-result-object v0

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-eq v0, v1, :cond_0

    .line 871
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$702(Lcom/telerik/widget/list/SwipeActionsBehavior;Z)Z

    .line 872
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/telerik/widget/list/SwipeActionsBehavior;->access$800(Lcom/telerik/widget/list/SwipeActionsBehavior;ZZ)V

    .line 875
    :cond_0
    return-void
.end method
