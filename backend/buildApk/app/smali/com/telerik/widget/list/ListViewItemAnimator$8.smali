.class Lcom/telerik/widget/list/ListViewItemAnimator$8;
.super Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;
.source "ListViewItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/ListViewItemAnimator;->animateChangeImpl(Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

.field final synthetic val$changeInfo:Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/ListViewItemAnimator;Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 544
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iput-object p2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->val$changeInfo:Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 551
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 552
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 553
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 554
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 555
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->val$changeInfo:Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 556
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-static {v0}, Lcom/telerik/widget/list/ListViewItemAnimator;->access$600(Lcom/telerik/widget/list/ListViewItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->val$changeInfo:Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 557
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchFinishedWhenDone()V

    .line 558
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 547
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$8;->val$changeInfo:Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 548
    return-void
.end method
