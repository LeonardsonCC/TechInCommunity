.class public Lorg/nativescript/widgets/TabViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "TabViewPager.java"


# instance fields
.field private animationEnabled:Z

.field private swipePageEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nativescript/widgets/TabViewPager;->swipePageEnabled:Z

    .line 12
    iput-boolean v0, p0, Lorg/nativescript/widgets/TabViewPager;->animationEnabled:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nativescript/widgets/TabViewPager;->swipePageEnabled:Z

    .line 12
    iput-boolean v0, p0, Lorg/nativescript/widgets/TabViewPager;->animationEnabled:Z

    .line 20
    return-void
.end method


# virtual methods
.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 50
    iget-boolean v0, p0, Lorg/nativescript/widgets/TabViewPager;->swipePageEnabled:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 32
    iget-boolean v0, p0, Lorg/nativescript/widgets/TabViewPager;->swipePageEnabled:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 41
    iget-boolean v0, p0, Lorg/nativescript/widgets/TabViewPager;->swipePageEnabled:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 27
    iput-boolean p1, p0, Lorg/nativescript/widgets/TabViewPager;->animationEnabled:Z

    .line 28
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .line 59
    iget-boolean v0, p0, Lorg/nativescript/widgets/TabViewPager;->animationEnabled:Z

    .line 60
    .local v0, "smoothScroll":Z
    invoke-super {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 61
    return-void
.end method

.method public setSwipePageEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 23
    iput-boolean p1, p0, Lorg/nativescript/widgets/TabViewPager;->swipePageEnabled:Z

    .line 24
    return-void
.end method
