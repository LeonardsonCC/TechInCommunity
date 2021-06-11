.class public Lorg/nativescript/widgets/CustomTransition;
.super Landroidx/transition/Visibility;
.source "CustomTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;,
        Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;,
        Lorg/nativescript/widgets/CustomTransition$ReverseInterpolator;
    }
.end annotation


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private immediateAnimatorSet:Landroid/animation/AnimatorSet;

.field private resetOnTransitionEnd:Z

.field private transitionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet;Ljava/lang/String;)V
    .locals 0
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "transitionName"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/nativescript/widgets/CustomTransition;->animatorSet:Landroid/animation/AnimatorSet;

    .line 28
    iput-object p2, p0, Lorg/nativescript/widgets/CustomTransition;->transitionName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lorg/nativescript/widgets/CustomTransition;)Z
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/CustomTransition;

    .line 20
    iget-boolean v0, p0, Lorg/nativescript/widgets/CustomTransition;->resetOnTransitionEnd:Z

    return v0
.end method

.method static synthetic access$100(Lorg/nativescript/widgets/CustomTransition;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/CustomTransition;

    .line 20
    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition;->immediateAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$102(Lorg/nativescript/widgets/CustomTransition;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/CustomTransition;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .line 20
    iput-object p1, p0, Lorg/nativescript/widgets/CustomTransition;->immediateAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private setAnimatorsTarget(Landroid/animation/AnimatorSet;Landroid/view/View;)Landroid/animation/Animator;
    .locals 4
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "view"    # Landroid/view/View;

    .line 61
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    .local v0, "animatorsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-boolean v1, p0, Lorg/nativescript/widgets/CustomTransition;->resetOnTransitionEnd:Z

    .line 64
    .local v1, "resetOnTransitionEnd":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 65
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v3, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_0
    iget-boolean v2, p0, Lorg/nativescript/widgets/CustomTransition;->resetOnTransitionEnd:Z

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lorg/nativescript/widgets/CustomTransition;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lorg/nativescript/widgets/CustomTransition;->immediateAnimatorSet:Landroid/animation/AnimatorSet;

    .line 74
    :cond_1
    new-instance v2, Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;

    invoke-direct {v2, p2}, Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;-><init>(Landroid/view/View;)V

    .line 75
    .local v2, "listener":Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    new-instance v3, Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;

    invoke-direct {v3, p0, p0}, Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;-><init>(Lorg/nativescript/widgets/CustomTransition;Lorg/nativescript/widgets/CustomTransition;)V

    invoke-virtual {p0, v3}, Lorg/nativescript/widgets/CustomTransition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 78
    iget-object v3, p0, Lorg/nativescript/widgets/CustomTransition;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v3
.end method


# virtual methods
.method public getTransitionName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition;->transitionName:Ljava/lang/String;

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .line 35
    if-eqz p4, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/nativescript/widgets/CustomTransition;->setAnimatorsTarget(Landroid/animation/AnimatorSet;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .line 45
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/nativescript/widgets/CustomTransition;->setAnimatorsTarget(Landroid/animation/AnimatorSet;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 46
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setResetOnTransitionEnd(Z)V
    .locals 0
    .param p1, "resetOnTransitionEnd"    # Z

    .line 53
    iput-boolean p1, p0, Lorg/nativescript/widgets/CustomTransition;->resetOnTransitionEnd:Z

    .line 54
    return-void
.end method
