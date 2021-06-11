.class public Lcom/telerik/widget/list/FadeItemAnimator;
.super Lcom/telerik/widget/list/ListViewItemAnimator;
.source "FadeItemAnimator.java"


# static fields
.field private static final DEFAULT_ALPHA:F


# instance fields
.field private alpha:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/list/FadeItemAnimator;->alpha:F

    .line 21
    return-void
.end method


# virtual methods
.method protected addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 5
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 56
    invoke-virtual {p0}, Lcom/telerik/widget/list/FadeItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 57
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 61
    .local v0, "animatedView":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 62
    .local v1, "animation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Lcom/telerik/widget/list/FadeItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 65
    .local v2, "addAnimation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v2
.end method

.method protected animateViewAddedPrepare(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 47
    invoke-virtual {p0}, Lcom/telerik/widget/list/FadeItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 48
    return-void

    .line 51
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/telerik/widget/list/FadeItemAnimator;->alpha:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 52
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/telerik/widget/list/FadeItemAnimator;->alpha:F

    return v0
.end method

.method protected onAnimationAddCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 70
    invoke-virtual {p0}, Lcom/telerik/widget/list/FadeItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 75
    return-void
.end method

.method protected onAnimationAddEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "animation"    # Landroidx/core/view/ViewPropertyAnimatorCompat;
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 79
    invoke-super {p0, p1, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationAddEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 80
    invoke-virtual {p0}, Lcom/telerik/widget/list/FadeItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 81
    return-void

    .line 84
    :cond_0
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 85
    return-void
.end method

.method protected onAnimationRemoveEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "animation"    # Landroidx/core/view/ViewPropertyAnimatorCompat;
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 104
    invoke-super {p0, p1, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationRemoveEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 106
    invoke-virtual {p0}, Lcom/telerik/widget/list/FadeItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 107
    return-void

    .line 110
    :cond_0
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 111
    return-void
.end method

.method protected removeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 4
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 89
    invoke-virtual {p0}, Lcom/telerik/widget/list/FadeItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 90
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->removeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 95
    .local v0, "animatedView":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 96
    .local v1, "animation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    nop

    .line 97
    invoke-virtual {p0}, Lcom/telerik/widget/list/FadeItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    iget v3, p0, Lcom/telerik/widget/list/FadeItemAnimator;->alpha:F

    .line 98
    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 99
    .local v2, "removeAnimation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v2
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .line 42
    iput p1, p0, Lcom/telerik/widget/list/FadeItemAnimator;->alpha:F

    .line 43
    return-void
.end method
