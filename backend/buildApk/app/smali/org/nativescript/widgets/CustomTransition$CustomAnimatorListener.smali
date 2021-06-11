.class Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CustomTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/CustomTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field private mLayerTypeChanged:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 115
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;->mLayerTypeChanged:Z

    .line 116
    iput-object p1, p0, Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;->mView:Landroid/view/View;

    .line 117
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 130
    iget-boolean v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;->mLayerTypeChanged:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 133
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 121
    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;->mView:Landroid/view/View;

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;->mLayerTypeChanged:Z

    .line 124
    iget-object v0, p0, Lorg/nativescript/widgets/CustomTransition$CustomAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 126
    :cond_0
    return-void
.end method
