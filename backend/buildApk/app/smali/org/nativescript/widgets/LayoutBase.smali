.class public abstract Lorg/nativescript/widgets/LayoutBase;
.super Landroid/view/ViewGroup;
.source "LayoutBase.java"


# instance fields
.field private passThroughParent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method protected static getGravity(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 82
    const/4 v0, -0x1

    .line 83
    .local v0, "gravity":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 84
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 85
    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 89
    const/16 v0, 0x77

    .line 92
    :cond_1
    return v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 47
    instance-of v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 31
    new-instance v0, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v0}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    new-instance v0, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v0}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "from"    # Landroid/view/ViewGroup$LayoutParams;

    .line 52
    instance-of v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lorg/nativescript/widgets/CommonLayoutParams;

    move-object v1, p1

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Lorg/nativescript/widgets/CommonLayoutParams;)V

    return-object v0

    .line 55
    :cond_0
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lorg/nativescript/widgets/CommonLayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0

    .line 58
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 59
    new-instance v0, Lorg/nativescript/widgets/CommonLayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 61
    :cond_2
    new-instance v0, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v0, p1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getPassThroughParent()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/nativescript/widgets/LayoutBase;->passThroughParent:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 71
    iget-boolean v0, p0, Lorg/nativescript/widgets/LayoutBase;->passThroughParent:Z

    if-nez v0, :cond_0

    .line 72
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPassThroughParent(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 100
    iput-boolean p1, p0, Lorg/nativescript/widgets/LayoutBase;->passThroughParent:Z

    .line 101
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method
