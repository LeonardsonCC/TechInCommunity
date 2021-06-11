.class Landroidx/fragment/app/FragmentAnim;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;,
        Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;Landroidx/fragment/app/FragmentTransition$Callback;)V
    .locals 11
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "anim"    # Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .param p2, "callback"    # Landroidx/fragment/app/FragmentTransition$Callback;

    .line 140
    iget-object v6, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 141
    .local v6, "viewToAnimate":Landroid/view/View;
    iget-object v7, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 142
    .local v7, "container":Landroid/view/ViewGroup;
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 143
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    move-object v8, v0

    .line 144
    .local v8, "signal":Landroidx/core/os/CancellationSignal;
    new-instance v0, Landroidx/fragment/app/FragmentAnim$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentAnim$1;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v8, v0}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 155
    invoke-interface {p2, p0, v8}, Landroidx/fragment/app/FragmentTransition$Callback;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 156
    iget-object v0, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    iget-object v1, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-direct {v0, v1, v7, v6}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 159
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 160
    new-instance v1, Landroidx/fragment/app/FragmentAnim$2;

    invoke-direct {v1, v7, p0, p2, v8}, Landroidx/fragment/app/FragmentAnim$2;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 185
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    .end local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 187
    :cond_0
    iget-object v9, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 188
    .local v9, "animator":Landroid/animation/Animator;
    iget-object v0, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 189
    new-instance v10, Landroidx/fragment/app/FragmentAnim$3;

    move-object v0, v10

    move-object v1, v7

    move-object v2, v6

    move-object v3, p0

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/FragmentAnim$3;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransition$Callback;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    .line 205
    .end local v9    # "animator":Landroid/animation/Animator;
    :goto_0
    return-void
.end method

.method static loadAnimation(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentContainer"    # Landroidx/fragment/app/FragmentContainer;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "enter"    # Z

    .line 47
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    .line 48
    .local v0, "transit":I
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v1

    .line 50
    .local v1, "nextAnim":I
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 56
    iget v2, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, "container":Landroid/view/View;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget v4, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 58
    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 59
    sget v4, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 62
    :cond_0
    iget-object v4, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    iget-object v4, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 63
    return-object v3

    .line 65
    :cond_1
    invoke-virtual {p2, v0, p3, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v4

    .line 66
    .local v4, "animation":Landroid/view/animation/Animation;
    if-eqz v4, :cond_2

    .line 67
    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v3

    .line 70
    :cond_2
    invoke-virtual {p2, v0, p3, v1}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v5

    .line 71
    .local v5, "animator":Landroid/animation/Animator;
    if-eqz v5, :cond_3

    .line 72
    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v3, v5}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-object v3

    .line 75
    :cond_3
    if-eqz v1, :cond_8

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "dir":Ljava/lang/String;
    const-string v7, "anim"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 78
    .local v7, "isAnim":Z
    const/4 v8, 0x0

    .line 79
    .local v8, "successfulLoad":Z
    if-eqz v7, :cond_5

    .line 82
    :try_start_0
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    move-object v4, v9

    .line 83
    if-eqz v4, :cond_4

    .line 84
    new-instance v9, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v9, v4}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 87
    :cond_4
    const/4 v8, 0x1

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v9

    goto :goto_0

    .line 88
    :catch_1
    move-exception v3

    .line 89
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    throw v3

    .line 94
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    :goto_0
    if-nez v8, :cond_8

    .line 97
    :try_start_1
    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v9

    move-object v5, v9

    .line 98
    if-eqz v5, :cond_6

    .line 99
    new-instance v9, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v9, v5}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v9

    .line 111
    :cond_6
    goto :goto_1

    .line 101
    :catch_2
    move-exception v9

    .line 102
    .local v9, "e":Ljava/lang/RuntimeException;
    if-nez v7, :cond_7

    .line 107
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 108
    if-eqz v4, :cond_8

    .line 109
    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v3, v4}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v3

    .line 104
    :cond_7
    throw v9

    .line 115
    .end local v6    # "dir":Ljava/lang/String;
    .end local v7    # "isAnim":Z
    .end local v8    # "successfulLoad":Z
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :cond_8
    :goto_1
    if-nez v0, :cond_9

    .line 116
    return-object v3

    .line 119
    :cond_9
    invoke-static {v0, p3}, Landroidx/fragment/app/FragmentAnim;->transitToAnimResourceId(IZ)I

    move-result v6

    .line 120
    .local v6, "animResourceId":I
    if-gez v6, :cond_a

    .line 121
    return-object v3

    .line 124
    :cond_a
    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-direct {v3, v7}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v3
.end method

.method private static transitToAnimResourceId(IZ)I
    .locals 2
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .line 209
    const/4 v0, -0x1

    .line 210
    .local v0, "animAttr":I
    const/16 v1, 0x1001

    if-eq p0, v1, :cond_4

    const/16 v1, 0x1003

    if-eq p0, v1, :cond_2

    const/16 v1, 0x2002

    if-eq p0, v1, :cond_0

    goto :goto_3

    .line 215
    :cond_0
    if-eqz p1, :cond_1

    sget v1, Landroidx/fragment/R$anim;->fragment_close_enter:I

    goto :goto_0

    :cond_1
    sget v1, Landroidx/fragment/R$anim;->fragment_close_exit:I

    :goto_0
    move v0, v1

    .line 216
    goto :goto_3

    .line 218
    :cond_2
    if-eqz p1, :cond_3

    sget v1, Landroidx/fragment/R$anim;->fragment_fade_enter:I

    goto :goto_1

    :cond_3
    sget v1, Landroidx/fragment/R$anim;->fragment_fade_exit:I

    :goto_1
    move v0, v1

    goto :goto_3

    .line 212
    :cond_4
    if-eqz p1, :cond_5

    sget v1, Landroidx/fragment/R$anim;->fragment_open_enter:I

    goto :goto_2

    :cond_5
    sget v1, Landroidx/fragment/R$anim;->fragment_open_exit:I

    :goto_2
    move v0, v1

    .line 213
    nop

    .line 221
    :goto_3
    return v0
.end method
