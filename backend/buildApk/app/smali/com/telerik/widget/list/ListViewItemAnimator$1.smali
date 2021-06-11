.class Lcom/telerik/widget/list/ListViewItemAnimator$1;
.super Ljava/lang/Object;
.source "ListViewItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/ListViewItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/ListViewItemAnimator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 192
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$1;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iput-object p2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 195
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;

    .line 196
    .local v1, "moveInfo":Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$1;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iget-object v3, v1, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->toY:I

    invoke-virtual/range {v2 .. v7}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    .line 198
    .end local v1    # "moveInfo":Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;
    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$1;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-static {v0}, Lcom/telerik/widget/list/ListViewItemAnimator;->access$000(Lcom/telerik/widget/list/ListViewItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method
