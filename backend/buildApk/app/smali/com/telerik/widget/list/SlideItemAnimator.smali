.class public Lcom/telerik/widget/list/SlideItemAnimator;
.super Lcom/telerik/widget/list/ListViewItemAnimator;
.source "SlideItemAnimator.java"


# static fields
.field private static final DEFAULT_DIRECTION:I = 0x2

.field public static final DIRECTION_BOTTOM:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_TOP:I = 0x1


# instance fields
.field private animateInDirection:I

.field private animateOutDirection:I

.field private originalTranslateX:F

.field private originalTranslateY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateX:F

    .line 21
    iput v0, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateY:F

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/telerik/widget/list/SlideItemAnimator;->animateInDirection:I

    .line 24
    iput v0, p0, Lcom/telerik/widget/list/SlideItemAnimator;->animateOutDirection:I

    .line 30
    return-void
.end method

.method private calculateTranslationValue(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)F
    .locals 2
    .param p1, "direction"    # I
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "isHorizontal"    # Z

    .line 165
    const/4 v0, 0x0

    if-eqz p2, :cond_9

    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_2

    .line 168
    :cond_0
    if-eqz p1, :cond_7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 178
    return v0

    .line 176
    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/telerik/widget/list/SlideItemAnimator;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    .line 174
    :cond_3
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/telerik/widget/list/SlideItemAnimator;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :cond_4
    return v0

    .line 172
    :cond_5
    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_1
    return v0

    .line 170
    :cond_7
    if-eqz p3, :cond_8

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :cond_8
    return v0

    .line 166
    :cond_9
    :goto_2
    return v0
.end method


# virtual methods
.method protected addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 5
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 91
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 92
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 96
    .local v0, "animatedView":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 97
    .local v1, "animation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    iget v2, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateX:F

    .line 98
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    iget v3, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateY:F

    .line 99
    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 101
    .local v2, "addAnimation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v2
.end method

.method protected animateViewAddedPrepare(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 74
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 80
    .local v0, "animatedView":Landroid/view/View;
    iget v2, p0, Lcom/telerik/widget/list/SlideItemAnimator;->animateInDirection:I

    invoke-direct {p0, v2, p1, v1}, Lcom/telerik/widget/list/SlideItemAnimator;->calculateTranslationValue(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)F

    move-result v1

    .line 81
    .local v1, "translationValueX":F
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    iput v2, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateX:F

    .line 82
    add-float/2addr v2, v1

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 84
    iget v2, p0, Lcom/telerik/widget/list/SlideItemAnimator;->animateInDirection:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/telerik/widget/list/SlideItemAnimator;->calculateTranslationValue(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)F

    move-result v2

    .line 85
    .local v2, "translationValueY":F
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    iput v3, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateY:F

    .line 86
    add-float/2addr v3, v2

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 87
    return-void
.end method

.method public getAnimateInDirection()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/telerik/widget/list/SlideItemAnimator;->animateInDirection:I

    return v0
.end method

.method public getAnimateOutDirection()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/telerik/widget/list/SlideItemAnimator;->animateOutDirection:I

    return v0
.end method

.method protected onAnimationAddCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 106
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 107
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationAddCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 108
    return-void

    .line 111
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 112
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateX:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 113
    iget v1, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateY:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 114
    return-void
.end method

.method protected onAnimationAddEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "animation"    # Landroidx/core/view/ViewPropertyAnimatorCompat;
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 118
    invoke-super {p0, p1, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationAddEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 119
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 124
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateX:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 125
    iget v1, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateY:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 126
    return-void
.end method

.method protected onAnimationRemoveEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "animation"    # Landroidx/core/view/ViewPropertyAnimatorCompat;
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 152
    invoke-super {p0, p1, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationRemoveEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 154
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 160
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateX:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 161
    iget v1, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateY:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 162
    return-void
.end method

.method protected removeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 6
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 130
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideItemAnimator;->getType()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 131
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->removeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 136
    .local v0, "animatedView":Landroid/view/View;
    iget v1, p0, Lcom/telerik/widget/list/SlideItemAnimator;->animateOutDirection:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/telerik/widget/list/SlideItemAnimator;->calculateTranslationValue(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)F

    move-result v1

    .line 137
    .local v1, "translationValueX":F
    iget v2, p0, Lcom/telerik/widget/list/SlideItemAnimator;->animateOutDirection:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/telerik/widget/list/SlideItemAnimator;->calculateTranslationValue(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)F

    move-result v2

    .line 139
    .local v2, "translationValueY":F
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    iput v3, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateX:F

    .line 140
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    iput v3, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateY:F

    .line 142
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 143
    .local v3, "animation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    nop

    .line 144
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideItemAnimator;->getRemoveDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    iget v5, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateX:F

    add-float/2addr v5, v1

    .line 145
    invoke-virtual {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    iget v5, p0, Lcom/telerik/widget/list/SlideItemAnimator;->originalTranslateY:F

    add-float/2addr v5, v2

    .line 146
    invoke-virtual {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 147
    .local v4, "removeAnimation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v4
.end method

.method public setAnimateInDirection(I)V
    .locals 0
    .param p1, "animateInDirection"    # I

    .line 49
    iput p1, p0, Lcom/telerik/widget/list/SlideItemAnimator;->animateInDirection:I

    .line 50
    return-void
.end method

.method public setAnimateOutDirection(I)V
    .locals 0
    .param p1, "animateOutDirection"    # I

    .line 69
    iput p1, p0, Lcom/telerik/widget/list/SlideItemAnimator;->animateOutDirection:I

    .line 70
    return-void
.end method
