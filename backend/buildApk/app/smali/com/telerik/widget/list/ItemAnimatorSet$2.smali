.class Lcom/telerik/widget/list/ItemAnimatorSet$2;
.super Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;
.source "ItemAnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/ItemAnimatorSet;->animateViewAddedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/ItemAnimatorSet;

.field final synthetic val$addAnimationSet:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/ItemAnimatorSet;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/ItemAnimatorSet;

    .line 86
    iput-object p1, p0, Lcom/telerik/widget/list/ItemAnimatorSet$2;->this$0:Lcom/telerik/widget/list/ItemAnimatorSet;

    iput-object p2, p0, Lcom/telerik/widget/list/ItemAnimatorSet$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/telerik/widget/list/ItemAnimatorSet$2;->val$addAnimationSet:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/telerik/widget/list/ItemAnimatorSet$2;->this$0:Lcom/telerik/widget/list/ItemAnimatorSet;

    iget-object v1, p0, Lcom/telerik/widget/list/ItemAnimatorSet$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v0, v1}, Lcom/telerik/widget/list/ItemAnimatorSet;->access$100(Lcom/telerik/widget/list/ItemAnimatorSet;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 96
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/telerik/widget/list/ItemAnimatorSet$2;->this$0:Lcom/telerik/widget/list/ItemAnimatorSet;

    iget-object v1, p0, Lcom/telerik/widget/list/ItemAnimatorSet$2;->val$addAnimationSet:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v2, p0, Lcom/telerik/widget/list/ItemAnimatorSet$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v0, v1, v2}, Lcom/telerik/widget/list/ItemAnimatorSet;->access$200(Lcom/telerik/widget/list/ItemAnimatorSet;Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 101
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/telerik/widget/list/ItemAnimatorSet$2;->this$0:Lcom/telerik/widget/list/ItemAnimatorSet;

    iget-object v1, p0, Lcom/telerik/widget/list/ItemAnimatorSet$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ItemAnimatorSet;->onAnimationAddStarted(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 91
    return-void
.end method
