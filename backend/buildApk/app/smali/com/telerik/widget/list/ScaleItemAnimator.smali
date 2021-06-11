.class public Lcom/telerik/widget/list/ScaleItemAnimator;
.super Lcom/telerik/widget/list/ListViewItemAnimator;
.source "ScaleItemAnimator.java"


# static fields
.field private static final DEFAULT_SCALE:F = 0.3f


# instance fields
.field private scaleX:F

.field private scaleY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;-><init>()V

    .line 15
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/telerik/widget/list/ScaleItemAnimator;->scaleX:F

    .line 16
    iput v0, p0, Lcom/telerik/widget/list/ScaleItemAnimator;->scaleY:F

    .line 22
    return-void
.end method


# virtual methods
.method protected addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 5
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 79
    invoke-virtual {p0}, Lcom/telerik/widget/list/ScaleItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 80
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 84
    .local v0, "animatedView":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 85
    .local v1, "animation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    nop

    .line 86
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 87
    invoke-virtual {v3, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 88
    invoke-virtual {v3, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 89
    invoke-virtual {p0}, Lcom/telerik/widget/list/ScaleItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 90
    .local v2, "addAnimation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v2
.end method

.method protected animateViewAddedPrepare(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 66
    invoke-virtual {p0}, Lcom/telerik/widget/list/ScaleItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 67
    return-void

    .line 70
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 72
    .local v0, "animatedView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 73
    iget v1, p0, Lcom/telerik/widget/list/ScaleItemAnimator;->scaleX:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 74
    iget v1, p0, Lcom/telerik/widget/list/ScaleItemAnimator;->scaleY:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 75
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 153
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 155
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 157
    .local v0, "view":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 158
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 159
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 160
    return-void
.end method

.method public getScaleX()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/telerik/widget/list/ScaleItemAnimator;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/telerik/widget/list/ScaleItemAnimator;->scaleY:F

    return v0
.end method

.method protected onAnimationAddCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 95
    invoke-virtual {p0}, Lcom/telerik/widget/list/ScaleItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 96
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationAddCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 97
    return-void

    .line 100
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 101
    .local v0, "view":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 102
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 103
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 104
    return-void
.end method

.method protected onAnimationAddEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "animation"    # Landroidx/core/view/ViewPropertyAnimatorCompat;
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 108
    invoke-super {p0, p1, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationAddEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 109
    invoke-virtual {p0}, Lcom/telerik/widget/list/ScaleItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 110
    return-void

    .line 113
    :cond_0
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 114
    .local v0, "view":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 115
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 116
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 117
    return-void
.end method

.method protected onAnimationRemoveEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "animation"    # Landroidx/core/view/ViewPropertyAnimatorCompat;
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 138
    invoke-super {p0, p1, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationRemoveEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 140
    invoke-virtual {p0}, Lcom/telerik/widget/list/ScaleItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 146
    .local v0, "view":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 147
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 148
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 149
    return-void
.end method

.method protected onEndAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 164
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 166
    .local v0, "view":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 167
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 168
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 169
    return-void
.end method

.method protected removeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 4
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 121
    invoke-virtual {p0}, Lcom/telerik/widget/list/ScaleItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 122
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->removeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 127
    .local v0, "animatedView":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 128
    .local v1, "animation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    nop

    .line 129
    invoke-virtual {p0}, Lcom/telerik/widget/list/ScaleItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/4 v3, 0x0

    .line 130
    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    iget v3, p0, Lcom/telerik/widget/list/ScaleItemAnimator;->scaleX:F

    .line 131
    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    iget v3, p0, Lcom/telerik/widget/list/ScaleItemAnimator;->scaleY:F

    .line 132
    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 133
    .local v2, "removeAnimation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v2
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F

    .line 41
    iput p1, p0, Lcom/telerik/widget/list/ScaleItemAnimator;->scaleX:F

    .line 42
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "scaleY"    # F

    .line 61
    iput p1, p0, Lcom/telerik/widget/list/ScaleItemAnimator;->scaleY:F

    .line 62
    return-void
.end method
