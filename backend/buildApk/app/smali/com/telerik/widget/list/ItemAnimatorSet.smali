.class public Lcom/telerik/widget/list/ItemAnimatorSet;
.super Lcom/telerik/widget/list/ListViewItemAnimator;
.source "ItemAnimatorSet.java"


# instance fields
.field private animators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/ListViewItemAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/telerik/widget/list/ItemAnimatorSet;Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/ItemAnimatorSet;
    .param p1, "x1"    # Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .param p2, "x2"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/telerik/widget/list/ItemAnimatorSet;->onAnimationSetRemoveEnded(Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/telerik/widget/list/ItemAnimatorSet;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/ItemAnimatorSet;
    .param p1, "x1"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 16
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ItemAnimatorSet;->onAnimationSetAddCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/telerik/widget/list/ItemAnimatorSet;Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/ItemAnimatorSet;
    .param p1, "x1"    # Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .param p2, "x2"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/telerik/widget/list/ItemAnimatorSet;->onAnimationSetAddEnded(Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method private addAnimationSet(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .locals 6
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 107
    const/4 v0, 0x1

    .line 108
    .local v0, "setIsEmpty":Z
    new-instance v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 109
    .local v1, "animationSet":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    iget-object v2, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 110
    .local v3, "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    invoke-virtual {v3}, Lcom/telerik/widget/list/ListViewItemAnimator;->getType()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 111
    invoke-virtual {v3, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 112
    const/4 v0, 0x0

    .line 114
    .end local v3    # "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    :cond_0
    goto :goto_0

    .line 115
    :cond_1
    if-eqz v0, :cond_2

    .line 116
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 118
    :cond_2
    return-object v1
.end method

.method private onAnimationSetAddCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 137
    const/4 v0, 0x1

    .line 138
    .local v0, "setIsEmpty":Z
    iget-object v1, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 139
    .local v2, "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    invoke-virtual {v2}, Lcom/telerik/widget/list/ListViewItemAnimator;->getType()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 140
    invoke-virtual {v2, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationAddCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 141
    const/4 v0, 0x0

    .line 143
    .end local v2    # "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    :cond_0
    goto :goto_0

    .line 144
    :cond_1
    if-eqz v0, :cond_2

    .line 145
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationAddCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 147
    :cond_2
    return-void
.end method

.method private onAnimationSetAddEnded(Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "animationSet"    # Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 150
    const/4 v0, 0x1

    .line 151
    .local v0, "setIsEmpty":Z
    iget-object v1, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 152
    .local v2, "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    invoke-virtual {v2}, Lcom/telerik/widget/list/ListViewItemAnimator;->getType()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 153
    invoke-virtual {v2, v3, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationAddEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 154
    const/4 v0, 0x0

    .line 156
    .end local v2    # "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    :cond_0
    goto :goto_0

    .line 157
    :cond_1
    if-eqz v0, :cond_2

    .line 158
    invoke-super {p0, v3, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationAddEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 160
    :cond_2
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 161
    invoke-virtual {p0, p2}, Lcom/telerik/widget/list/ItemAnimatorSet;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 162
    iget-object v1, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemAnimatorSet;->dispatchFinishedWhenDone()V

    .line 164
    return-void
.end method

.method private onAnimationSetRemoveEnded(Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "animationSet"    # Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 167
    const/4 v0, 0x1

    .line 168
    .local v0, "setIsEmpty":Z
    iget-object v1, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 169
    .local v2, "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    invoke-virtual {v2}, Lcom/telerik/widget/list/ListViewItemAnimator;->getType()I

    move-result v4

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 170
    invoke-virtual {v2, v3, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationRemoveEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 171
    const/4 v0, 0x0

    .line 173
    .end local v2    # "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    :cond_0
    goto :goto_0

    .line 174
    :cond_1
    if-eqz v0, :cond_2

    .line 175
    invoke-super {p0, v3, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAnimationRemoveEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 177
    :cond_2
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 178
    invoke-virtual {p0, p2}, Lcom/telerik/widget/list/ItemAnimatorSet;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 179
    iget-object v1, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p0}, Lcom/telerik/widget/list/ItemAnimatorSet;->dispatchFinishedWhenDone()V

    .line 181
    return-void
.end method

.method private removeAnimationSet(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    .locals 6
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 122
    const/4 v0, 0x1

    .line 123
    .local v0, "setIsEmpty":Z
    new-instance v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 124
    .local v1, "animationSet":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    iget-object v2, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 125
    .local v3, "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    invoke-virtual {v3}, Lcom/telerik/widget/list/ListViewItemAnimator;->getType()I

    move-result v4

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 126
    invoke-virtual {v3, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->removeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 127
    const/4 v0, 0x0

    .line 129
    .end local v3    # "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    :cond_0
    goto :goto_0

    .line 130
    :cond_1
    if-eqz v0, :cond_2

    .line 131
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->removeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 133
    :cond_2
    return-object v1
.end method


# virtual methods
.method public addAnimator(Lcom/telerik/widget/list/ListViewItemAnimator;)V
    .locals 1
    .param p1, "animator"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 20
    iget-object v0, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method protected animateViewAddedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 84
    iget-object v0, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ItemAnimatorSet;->addAnimationSet(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    .line 86
    .local v0, "addAnimationSet":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    new-instance v1, Lcom/telerik/widget/list/ItemAnimatorSet$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/telerik/widget/list/ItemAnimatorSet$2;-><init>(Lcom/telerik/widget/list/ItemAnimatorSet;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)V

    .line 103
    .local v1, "listenerAdapter":Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 104
    return-void
.end method

.method protected animateViewAddedPrepare(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "animatorExecuted":Z
    iget-object v1, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 74
    .local v2, "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    invoke-virtual {v2, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewAddedPrepare(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 75
    const/4 v0, 0x1

    .line 76
    .end local v2    # "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    goto :goto_0

    .line 77
    :cond_0
    if-nez v0, :cond_1

    .line 78
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewAddedPrepare(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 80
    :cond_1
    return-void
.end method

.method protected animateViewRemovedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 48
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ItemAnimatorSet;->removeAnimationSet(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    .line 49
    .local v0, "animationSet":Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
    new-instance v1, Lcom/telerik/widget/list/ItemAnimatorSet$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/telerik/widget/list/ItemAnimatorSet$1;-><init>(Lcom/telerik/widget/list/ItemAnimatorSet;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)V

    .line 66
    .local v1, "listenerAdapter":Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 67
    iget-object v2, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public clearAnimators()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 185
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 186
    iget-object v0, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 187
    .local v1, "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    invoke-virtual {v1, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onEndAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 188
    .end local v1    # "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method public onAttached(Lcom/telerik/widget/list/RadListView;)V
    .locals 2
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 33
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAttached(Lcom/telerik/widget/list/RadListView;)V

    .line 34
    iget-object v0, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 35
    .local v1, "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    invoke-virtual {v1, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAttached(Lcom/telerik/widget/list/RadListView;)V

    .line 36
    .end local v1    # "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public onDetached(Lcom/telerik/widget/list/RadListView;)V
    .locals 2
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 41
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onDetached(Lcom/telerik/widget/list/RadListView;)V

    .line 42
    iget-object v0, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 43
    .local v1, "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    invoke-virtual {v1, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->onDetached(Lcom/telerik/widget/list/RadListView;)V

    .line 44
    .end local v1    # "animator":Lcom/telerik/widget/list/ListViewItemAnimator;
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public removeAnimator(Lcom/telerik/widget/list/ListViewItemAnimator;)V
    .locals 1
    .param p1, "animator"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 24
    iget-object v0, p0, Lcom/telerik/widget/list/ItemAnimatorSet;->animators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method
