.class Lcom/telerik/widget/list/ListViewItemAnimator$3;
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

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/ListViewItemAnimator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 239
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$3;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iput-object p2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 241
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 242
    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$3;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-static {v2, v1}, Lcom/telerik/widget/list/ListViewItemAnimator;->access$200(Lcom/telerik/widget/list/ListViewItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$3;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-virtual {v2, v1}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewAppearedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$3;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iget-object v2, v2, Lcom/telerik/widget/list/ListViewItemAnimator;->alreadyAppearedViews:Ljava/util/HashSet;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$3;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-virtual {v2, v1}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewAddedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 248
    .end local v1    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_1
    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 250
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$3;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-static {v0}, Lcom/telerik/widget/list/ListViewItemAnimator;->access$300(Lcom/telerik/widget/list/ListViewItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method
