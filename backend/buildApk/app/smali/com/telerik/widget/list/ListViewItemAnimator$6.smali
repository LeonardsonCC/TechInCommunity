.class Lcom/telerik/widget/list/ListViewItemAnimator$6;
.super Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;
.source "ListViewItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/ListViewItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

.field final synthetic val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/ListViewItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IILandroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 463
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iput-object p2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->val$deltaX:I

    iput p4, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->val$deltaY:I

    iput-object p5, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 470
    iget v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->val$deltaX:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 471
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 473
    :cond_0
    iget v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 474
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 476
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 479
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 480
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 481
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-static {v0}, Lcom/telerik/widget/list/ListViewItemAnimator;->access$400(Lcom/telerik/widget/list/ListViewItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 482
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchFinishedWhenDone()V

    .line 483
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 466
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 467
    return-void
.end method
