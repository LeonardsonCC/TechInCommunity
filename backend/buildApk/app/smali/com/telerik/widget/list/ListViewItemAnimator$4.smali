.class Lcom/telerik/widget/list/ListViewItemAnimator$4;
.super Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;
.source "ListViewItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewRemovedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

.field final synthetic val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/ListViewItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 292
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$4;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iput-object p2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/telerik/widget/list/ListViewItemAnimator$4;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 301
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$4;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationRemoveCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 302
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 306
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$4;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$4;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationRemoveEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 307
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 296
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$4;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationRemoveStarted(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 297
    return-void
.end method
