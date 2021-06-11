.class Lcom/telerik/widget/list/ListViewItemAnimator$5;
.super Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;
.source "ListViewItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewAddedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

.field final synthetic val$addAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/ListViewItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 375
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$5;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iput-object p2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/telerik/widget/list/ListViewItemAnimator$5;->val$addAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 384
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$5;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationAddCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 385
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 389
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$5;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$5;->val$addAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationAddEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 390
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 379
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$5;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationAddStarted(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 380
    return-void
.end method
