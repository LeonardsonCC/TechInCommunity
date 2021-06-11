.class Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;
.super Landroidx/transition/TransitionListenerAdapter;
.source "CustomTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/CustomTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTransitionListenerAdapter"
.end annotation


# instance fields
.field private customTransition:Lorg/nativescript/widgets/CustomTransition;

.field final synthetic this$0:Lorg/nativescript/widgets/CustomTransition;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/CustomTransition;Lorg/nativescript/widgets/CustomTransition;)V
    .locals 0
    .param p2, "transition"    # Lorg/nativescript/widgets/CustomTransition;

    .line 91
    iput-object p1, p0, Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;->this$0:Lorg/nativescript/widgets/CustomTransition;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 92
    iput-object p2, p0, Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;->customTransition:Lorg/nativescript/widgets/CustomTransition;

    .line 93
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 4
    .param p1, "transition"    # Landroidx/transition/Transition;

    .line 97
    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;->customTransition:Lorg/nativescript/widgets/CustomTransition;

    invoke-static {v0}, Lorg/nativescript/widgets/CustomTransition;->access$000(Lorg/nativescript/widgets/CustomTransition;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;->customTransition:Lorg/nativescript/widgets/CustomTransition;

    invoke-static {v0}, Lorg/nativescript/widgets/CustomTransition;->access$100(Lorg/nativescript/widgets/CustomTransition;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 99
    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;->customTransition:Lorg/nativescript/widgets/CustomTransition;

    invoke-static {v0}, Lorg/nativescript/widgets/CustomTransition;->access$100(Lorg/nativescript/widgets/CustomTransition;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v2, Lorg/nativescript/widgets/CustomTransition$ReverseInterpolator;

    iget-object v3, p0, Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;->this$0:Lorg/nativescript/widgets/CustomTransition;

    invoke-direct {v2, v3, v1}, Lorg/nativescript/widgets/CustomTransition$ReverseInterpolator;-><init>(Lorg/nativescript/widgets/CustomTransition;Lorg/nativescript/widgets/CustomTransition$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;->customTransition:Lorg/nativescript/widgets/CustomTransition;

    invoke-static {v0}, Lorg/nativescript/widgets/CustomTransition;->access$100(Lorg/nativescript/widgets/CustomTransition;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 101
    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;->customTransition:Lorg/nativescript/widgets/CustomTransition;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/nativescript/widgets/CustomTransition;->setResetOnTransitionEnd(Z)V

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;->customTransition:Lorg/nativescript/widgets/CustomTransition;

    invoke-static {v0, v1}, Lorg/nativescript/widgets/CustomTransition;->access$102(Lorg/nativescript/widgets/CustomTransition;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 105
    iput-object v1, p0, Lorg/nativescript/widgets/CustomTransition$CustomTransitionListenerAdapter;->customTransition:Lorg/nativescript/widgets/CustomTransition;

    .line 106
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 107
    return-void
.end method
