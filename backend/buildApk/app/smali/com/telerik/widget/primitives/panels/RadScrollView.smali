.class public Lcom/telerik/widget/primitives/panels/RadScrollView;
.super Landroid/widget/FrameLayout;
.source "RadScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field public static final SCROLLING_MODE_BOTH:I = 0x3

.field public static final SCROLLING_MODE_HORIZONTAL:I = 0x2

.field public static final SCROLLING_MODE_NONE:I = 0x0

.field public static final SCROLLING_MODE_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RadScrollView"


# instance fields
.field private canScrollHorizontally:Z

.field private canScrollVertically:Z

.field private isLaidOut:Z

.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

.field private mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

.field private mEdgeGlowRight:Landroidx/core/widget/EdgeEffectCompat;

.field private mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mSavedState:Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mXVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocityTracker:Landroid/view/VelocityTracker;

.field private scrollMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    sget v0, Lcom/telerik/android/common/R$attr;->radScrollViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 172
    sget v0, Lcom/telerik/android/common/R$attr;->radScrollViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 180
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollMode:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollVertically:Z

    .line 68
    iput-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollHorizontally:Z

    .line 78
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 100
    iput-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsLayoutDirty:Z

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    .line 136
    iput-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mSmoothScrollingEnabled:Z

    .line 144
    iput-boolean v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->isLaidOut:Z

    .line 150
    const/4 v2, -0x1

    iput v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    .line 182
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->initScrollView()V

    .line 184
    sget-object v2, Lcom/telerik/android/common/R$styleable;->RadScrollView:[I

    sget v3, Lcom/telerik/android/common/R$style;->RadScrollViewStyle:I

    .line 185
    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 186
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/telerik/android/common/R$styleable;->RadScrollView_fillViewport:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->setFillViewport(Z)V

    .line 187
    sget v1, Lcom/telerik/android/common/R$styleable;->RadScrollView_scrollMode:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->setScrollMode(I)V

    .line 188
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    return-void
.end method

.method private applyHorizontalMoveAction(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 741
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 742
    .local v0, "x":I
    iget v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionX:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 743
    .local v1, "xDiff":I
    iget v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTouchSlop:I

    if-le v1, v2, :cond_0

    .line 744
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    .line 745
    iput v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionX:I

    .line 746
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->initVelocityTrackerIfNotExists()V

    .line 747
    iget-object v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mXVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 748
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 749
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_0

    .line 750
    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 753
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method private applyVerticalMoveAction(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 756
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 757
    .local v0, "y":I
    iget v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionY:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 758
    .local v1, "yDiff":I
    iget v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTouchSlop:I

    if-le v1, v2, :cond_0

    .line 759
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    .line 760
    iput v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionY:I

    .line 761
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->initVelocityTrackerIfNotExists()V

    .line 762
    iget-object v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mYVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 763
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 764
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_0

    .line 765
    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 768
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method private canScroll()Z
    .locals 7

    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 326
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 327
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 328
    .local v2, "childHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 329
    .local v3, "childWidth":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 329
    :cond_1
    return v0

    .line 332
    .end local v2    # "childHeight":I
    .end local v3    # "childWidth":I
    :cond_2
    return v0
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .line 2280
    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    .line 2298
    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 2304
    sub-int v0, p2, p1

    return v0

    .line 2306
    :cond_1
    return p0

    .line 2296
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private doOverScrollHorizontally(IIIIII)V
    .locals 2
    .param p1, "oldX"    # I
    .param p2, "oldY"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "xRange"    # I
    .param p6, "yRange"    # I

    .line 1815
    if-gez p3, :cond_0

    if-ltz p1, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    iget-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_0

    .line 1817
    :cond_0
    if-le p3, p5, :cond_1

    if-gt p1, p5, :cond_1

    .line 1818
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowRight:Landroidx/core/widget/EdgeEffectCompat;

    iget-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1820
    :cond_1
    :goto_0
    return-void
.end method

.method private doOverScrollVertically(IIIIII)V
    .locals 2
    .param p1, "oldX"    # I
    .param p2, "oldY"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "xRange"    # I
    .param p6, "yRange"    # I

    .line 1824
    if-gez p4, :cond_0

    if-ltz p2, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    iget-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_0

    .line 1826
    :cond_0
    if-le p4, p6, :cond_1

    if-gt p2, p6, :cond_1

    .line 1827
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    iget-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1829
    :cond_1
    :goto_0
    return-void
.end method

.method private doScroll(II)V
    .locals 1
    .param p1, "xDelta"    # I
    .param p2, "yDelta"    # I

    .line 1598
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 1599
    :cond_0
    iget-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1600
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 1602
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollBy(II)V

    .line 1605
    :cond_2
    :goto_0
    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 2162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    .line 2164
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->recycleVelocityTracker()V

    .line 2166
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2167
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 2168
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 2171
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    .line 2172
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 2173
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowRight:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 2175
    :cond_1
    return-void
.end method

.method private findFocusableViewInBoundsX(ZII)Landroid/view/View;
    .locals 12
    .param p1, "topFocus"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    .line 1306
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1307
    .local v0, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1316
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v2, 0x0

    .line 1318
    .local v2, "foundFullyContainedFocusable":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1319
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_8

    .line 1320
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1321
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1322
    .local v6, "viewLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1324
    .local v7, "viewRight":I
    if-ge v6, v7, :cond_7

    if-ge v6, p3, :cond_7

    .line 1330
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge p2, v6, :cond_0

    if-ge v7, p3, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 1333
    .local v10, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_1

    .line 1335
    move-object v1, v5

    .line 1336
    move v2, v10

    goto :goto_3

    .line 1338
    :cond_1
    if-eqz p1, :cond_2

    .line 1339
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    if-lt v6, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    .line 1341
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    if-le v7, v11, :cond_4

    :cond_3
    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 1343
    .local v8, "viewIsCloserToBoundary":Z
    :goto_2
    if-eqz v2, :cond_5

    .line 1344
    if-eqz v10, :cond_7

    if-eqz v8, :cond_7

    .line 1350
    move-object v1, v5

    goto :goto_3

    .line 1353
    :cond_5
    if-eqz v10, :cond_6

    .line 1355
    move-object v1, v5

    .line 1356
    const/4 v2, 0x1

    goto :goto_3

    .line 1357
    :cond_6
    if-eqz v8, :cond_7

    .line 1362
    move-object v1, v5

    .line 1319
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewLeft":I
    .end local v7    # "viewRight":I
    .end local v8    # "viewIsCloserToBoundary":Z
    .end local v10    # "viewIsFullyContained":Z
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1369
    .end local v4    # "i":I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInBoundsY(ZII)Landroid/view/View;
    .locals 12
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 1223
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1224
    .local v0, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1233
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v2, 0x0

    .line 1235
    .local v2, "foundFullyContainedFocusable":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1236
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_8

    .line 1237
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1238
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1239
    .local v6, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 1241
    .local v7, "viewBottom":I
    if-ge p2, v7, :cond_7

    if-ge v6, p3, :cond_7

    .line 1247
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge p2, v6, :cond_0

    if-ge v7, p3, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 1250
    .local v10, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_1

    .line 1252
    move-object v1, v5

    .line 1253
    move v2, v10

    goto :goto_3

    .line 1255
    :cond_1
    if-eqz p1, :cond_2

    .line 1256
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v6, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    .line 1258
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v7, v11, :cond_4

    :cond_3
    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 1260
    .local v8, "viewIsCloserToBoundary":Z
    :goto_2
    if-eqz v2, :cond_5

    .line 1261
    if-eqz v10, :cond_7

    if-eqz v8, :cond_7

    .line 1267
    move-object v1, v5

    goto :goto_3

    .line 1270
    :cond_5
    if-eqz v10, :cond_6

    .line 1272
    move-object v1, v5

    .line 1273
    const/4 v2, 0x1

    goto :goto_3

    .line 1274
    :cond_6
    if-eqz v8, :cond_7

    .line 1279
    move-object v1, v5

    .line 1236
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewTop":I
    .end local v7    # "viewBottom":I
    .end local v8    # "viewIsCloserToBoundary":Z
    .end local v10    # "viewIsFullyContained":Z
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1286
    .end local v4    # "i":I
    :cond_8
    return-object v1
.end method

.method private getHorizontalScrollRange()I
    .locals 6

    .line 1197
    const/4 v0, 0x0

    .line 1198
    .local v0, "scrollRange":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1199
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1200
    .local v2, "child":Landroid/view/View;
    nop

    .line 1201
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 1200
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1203
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    return v0
.end method

.method private getVerticalScrollRange()I
    .locals 6

    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, "scrollRange":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1189
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1190
    .local v2, "child":Landroid/view/View;
    nop

    .line 1191
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 1190
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1193
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    return v0
.end method

.method private inChild(II)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 525
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 526
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v0

    .line 528
    .local v0, "scrollY":I
    invoke-virtual {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 529
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    if-lt p2, v3, :cond_0

    .line 530
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_0

    .line 531
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 532
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 533
    .local v3, "inChildY":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 534
    return v4

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v5

    .line 537
    .local v5, "scrollX":I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v5

    if-lt p1, v6, :cond_2

    .line 538
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v6, v5

    if-ge p1, v6, :cond_2

    .line 539
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt p1, v6, :cond_2

    .line 540
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge p1, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 542
    .local v6, "inChildX":Z
    :goto_1
    if-eqz v6, :cond_3

    .line 543
    return v4

    .line 546
    .end local v0    # "scrollY":I
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "inChildY":Z
    .end local v5    # "scrollX":I
    .end local v6    # "inChildX":Z
    :cond_3
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mYVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 551
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mYVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mXVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 557
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mXVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 559
    :cond_1
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 561
    :goto_1
    return-void
.end method

.method private initScrollView()V
    .locals 2

    .line 273
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->setFocusable(Z)V

    .line 275
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->setDescendantFocusability(I)V

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->setWillNotDraw(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 278
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTouchSlop:I

    .line 279
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mMinimumVelocity:I

    .line 280
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mMaximumVelocity:I

    .line 281
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mOverscrollDistance:I

    .line 282
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mOverflingDistance:I

    .line 283
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mYVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 565
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mYVelocityTracker:Landroid/view/VelocityTracker;

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mXVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 569
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mXVelocityTracker:Landroid/view/VelocityTracker;

    .line 571
    :cond_1
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .line 1567
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isWithinDeltaOfScreenY(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isWithinDeltaOfScreenX(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .line 2132
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2133
    return v0

    .line 2136
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2137
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWithinDeltaOfScreenX(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "width"    # I

    .line 1587
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1588
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1590
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    .line 1591
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1590
    :goto_0
    return v0
.end method

.method private isWithinDeltaOfScreenY(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .line 1575
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1576
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1578
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    .line 1579
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1578
    :goto_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 987
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 989
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 990
    .local v1, "pointerId":I
    iget v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_2

    .line 994
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 995
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionX:I

    .line 996
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionY:I

    .line 997
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    .line 998
    iget-object v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mXVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 999
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1002
    :cond_1
    iget-object v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mYVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2

    .line 1003
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1006
    .end local v2    # "newPointerIndex":I
    :cond_2
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mYVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 576
    iput-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mYVelocityTracker:Landroid/view/VelocityTracker;

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mXVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 581
    iput-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mXVelocityTracker:Landroid/view/VelocityTracker;

    .line 583
    :cond_1
    return-void
.end method

.method private scrollAndFocus(IIIII)Z
    .locals 18
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I

    .line 1464
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const/4 v6, 0x1

    .line 1466
    .local v6, "handled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v7

    .line 1467
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v8

    .line 1468
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v9

    .line 1469
    .local v9, "containerLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v10

    .line 1470
    .local v10, "containerTop":I
    add-int v11, v9, v8

    .line 1471
    .local v11, "containerRight":I
    add-int v12, v10, v7

    .line 1472
    .local v12, "containerBottom":I
    const/16 v13, 0x21

    if-ne v1, v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 1474
    .local v13, "up":Z
    :goto_0
    invoke-direct {v0, v13, v2, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->findFocusableViewInBoundsY(ZII)Landroid/view/View;

    move-result-object v14

    .line 1475
    .local v14, "newFocused":Landroid/view/View;
    if-nez v14, :cond_1

    .line 1476
    invoke-direct {v0, v13, v4, v5}, Lcom/telerik/widget/primitives/panels/RadScrollView;->findFocusableViewInBoundsX(ZII)Landroid/view/View;

    move-result-object v14

    .line 1477
    if-nez v14, :cond_1

    .line 1478
    move-object/from16 v14, p0

    .line 1482
    :cond_1
    if-lt v2, v10, :cond_2

    if-le v3, v12, :cond_3

    :cond_2
    if-lt v4, v9, :cond_4

    if-gt v5, v11, :cond_4

    .line 1483
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 1485
    :cond_4
    if-eqz v13, :cond_5

    sub-int v15, v4, v9

    goto :goto_1

    :cond_5
    sub-int v15, v5, v11

    .line 1486
    .local v15, "deltaX":I
    :goto_1
    if-eqz v13, :cond_6

    sub-int v16, v2, v10

    goto :goto_2

    :cond_6
    sub-int v16, v3, v12

    :goto_2
    move/from16 v17, v16

    .line 1487
    .local v17, "deltaY":I
    move/from16 v2, v17

    .end local v17    # "deltaY":I
    .local v2, "deltaY":I
    invoke-direct {v0, v15, v2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->doScroll(II)V

    .line 1490
    .end local v2    # "deltaY":I
    .end local v15    # "deltaX":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eq v14, v2, :cond_7

    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 1492
    :cond_7
    return v6
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 1837
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1840
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1842
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v0

    .line 1844
    .local v0, "scrollDelta":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    if-eq v0, v1, :cond_0

    .line 1845
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollBy(II)V

    .line 1847
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .line 1858
    invoke-virtual {p0, p1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v0

    .line 1859
    .local v0, "delta":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v1, v2

    .line 1860
    .local v1, "scroll":Z
    if-eqz v1, :cond_2

    .line 1861
    if-eqz p2, :cond_1

    .line 1862
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollBy(II)V

    goto :goto_0

    .line 1864
    :cond_1
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->smoothScrollBy(II)V

    .line 1867
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 287
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 291
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 292
    return-void

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 296
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 300
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 301
    return-void

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 314
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 318
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 319
    return-void

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 305
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 309
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    return-void

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .line 1504
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1505
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1507
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1509
    .local v1, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getMaxHorizontalScrollAmount()I

    move-result v2

    .line 1510
    .local v2, "maxHorizontalJump":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getMaxVerticalScrollAmount()I

    move-result v3

    .line 1512
    .local v3, "maxVerticalJump":I
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v2, v4}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isWithinDeltaOfScreenX(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v3, v4}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isWithinDeltaOfScreenY(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1513
    :cond_1
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1514
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v4}, Lcom/telerik/widget/primitives/panels/RadScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1515
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/telerik/widget/primitives/panels/RadScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v4

    .line 1516
    .local v4, "scrollDelta":Landroid/graphics/Point;
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v6}, Lcom/telerik/widget/primitives/panels/RadScrollView;->doScroll(II)V

    .line 1517
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1518
    .end local v4    # "scrollDelta":Landroid/graphics/Point;
    goto/16 :goto_3

    .line 1520
    :cond_2
    move v4, v2

    .line 1521
    .local v4, "scrollDeltaX":I
    move v5, v3

    .line 1523
    .local v5, "scrollDeltaY":I
    const/16 v6, 0x21

    const/4 v7, 0x0

    const/16 v8, 0x82

    if-ne p1, v6, :cond_4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v6

    if-lt v6, v5, :cond_3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v6

    if-ge v6, v4, :cond_4

    .line 1524
    :cond_3
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v4

    .line 1525
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v5

    goto :goto_0

    .line 1526
    :cond_4
    if-ne p1, v8, :cond_6

    .line 1527
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_6

    .line 1528
    invoke-virtual {p0, v7}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1529
    .local v6, "daBottom":I
    invoke-virtual {p0, v7}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1530
    .local v9, "daRight":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v10

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 1531
    .local v10, "screenRight":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v11

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    .line 1532
    .local v11, "screenBottom":I
    sub-int v12, v6, v11

    if-ge v12, v3, :cond_5

    .line 1533
    sub-int v5, v6, v11

    .line 1536
    :cond_5
    sub-int v12, v9, v10

    if-ge v12, v2, :cond_6

    .line 1537
    sub-int v4, v9, v10

    .line 1541
    .end local v6    # "daBottom":I
    .end local v9    # "daRight":I
    .end local v10    # "screenRight":I
    .end local v11    # "screenBottom":I
    :cond_6
    :goto_0
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    .line 1542
    return v7

    .line 1544
    :cond_7
    if-ne p1, v8, :cond_8

    move v6, v4

    goto :goto_1

    :cond_8
    neg-int v6, v4

    :goto_1
    if-ne p1, v8, :cond_9

    move v7, v5

    goto :goto_2

    :cond_9
    neg-int v7, v5

    :goto_2
    invoke-direct {p0, v6, v7}, Lcom/telerik/widget/primitives/panels/RadScrollView;->doScroll(II)V

    .line 1547
    .end local v4    # "scrollDeltaX":I
    .end local v5    # "scrollDeltaY":I
    :goto_3
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1548
    invoke-direct {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1554
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getDescendantFocusability()I

    move-result v4

    .line 1555
    .local v4, "descendantFocusability":I
    const/high16 v5, 0x20000

    invoke-virtual {p0, v5}, Lcom/telerik/widget/primitives/panels/RadScrollView;->setDescendantFocusability(I)V

    .line 1556
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->requestFocus()Z

    .line 1557
    invoke-virtual {p0, v4}, Lcom/telerik/widget/primitives/panels/RadScrollView;->setDescendantFocusability(I)V

    .line 1559
    .end local v4    # "descendantFocusability":I
    :cond_a
    const/4 v4, 0x1

    return v4
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .line 1701
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 6

    .line 1657
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    .line 1658
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1659
    .local v1, "contentWidth":I
    if-nez v0, :cond_0

    .line 1660
    return v1

    .line 1663
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1664
    .local v3, "scrollRange":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v4

    .line 1665
    .local v4, "scrollX":I
    sub-int v5, v3, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1666
    .local v2, "overScrollRight":I
    if-gez v4, :cond_1

    .line 1667
    sub-int/2addr v3, v4

    goto :goto_0

    .line 1668
    :cond_1
    if-le v4, v2, :cond_2

    .line 1669
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    .line 1672
    :cond_2
    :goto_0
    return v3
.end method

.method public computeScroll()V
    .locals 21

    .line 1757
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1775
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v11

    .line 1776
    .local v11, "oldX":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v12

    .line 1777
    .local v12, "oldY":I
    iget-object v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v13

    .line 1778
    .local v13, "x":I
    iget-object v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    .line 1780
    .local v14, "y":I
    nop

    .line 1781
    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalScrollRange()I

    move-result v15

    .line 1782
    .local v15, "xRange":I
    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalScrollRange()I

    move-result v16

    .line 1784
    .local v16, "yRange":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getOverScrollMode()I

    move-result v9

    .line 1785
    .local v9, "overscrollMode":I
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v9, :cond_1

    if-ne v9, v1, :cond_0

    if-lez v16, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move/from16 v17, v2

    .line 1787
    .local v17, "canOverscrollVertically":Z
    if-eqz v9, :cond_2

    if-ne v9, v1, :cond_3

    if-lez v15, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    move/from16 v18, v0

    .line 1790
    .local v18, "canOverscrollHorizontally":Z
    sub-int v1, v13, v11

    sub-int v2, v14, v12

    iget v8, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mOverflingDistance:I

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v3, v11

    move v4, v12

    move v5, v15

    move/from16 v6, v16

    move v7, v8

    move/from16 v20, v9

    .end local v9    # "overscrollMode":I
    .local v20, "overscrollMode":I
    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Lcom/telerik/widget/primitives/panels/RadScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1792
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/telerik/widget/primitives/panels/RadScrollView;->onScrollChanged(IIII)V

    .line 1794
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_5

    .line 1795
    if-eqz v18, :cond_4

    .line 1796
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move v3, v13

    move v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/telerik/widget/primitives/panels/RadScrollView;->doOverScrollHorizontally(IIIIII)V

    .line 1799
    :cond_4
    if-eqz v17, :cond_5

    .line 1800
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v12

    move v4, v14

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/telerik/widget/primitives/panels/RadScrollView;->doOverScrollVertically(IIIIII)V

    .line 1805
    .end local v15    # "xRange":I
    .end local v16    # "yRange":I
    .end local v17    # "canOverscrollVertically":Z
    .end local v18    # "canOverscrollHorizontally":Z
    .end local v20    # "overscrollMode":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1807
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1811
    .end local v11    # "oldX":I
    .end local v12    # "oldY":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_6
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 13
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1879
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 1881
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v0

    .line 1882
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v2

    .line 1883
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v3

    .line 1884
    .local v3, "screenTop":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v4

    .line 1885
    .local v4, "screenLeft":I
    add-int v5, v3, v0

    .line 1886
    .local v5, "screenBottom":I
    add-int v6, v4, v2

    .line 1888
    .local v6, "screenRight":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalFadingEdgeLength()I

    move-result v7

    .line 1889
    .local v7, "xFadingEdge":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 1892
    .local v8, "yFadingEdge":I
    iget v9, p1, Landroid/graphics/Rect;->top:I

    if-lez v9, :cond_1

    .line 1893
    add-int/2addr v3, v8

    .line 1897
    :cond_1
    iget v9, p1, Landroid/graphics/Rect;->left:I

    if-lez v9, :cond_2

    .line 1898
    add-int/2addr v4, v7

    .line 1902
    :cond_2
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 1903
    sub-int/2addr v5, v8

    .line 1907
    :cond_3
    iget v9, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 1908
    sub-int/2addr v6, v7

    .line 1911
    :cond_4
    const/4 v9, 0x0

    .line 1912
    .local v9, "scrollXDelta":I
    const/4 v10, 0x0

    .line 1914
    .local v10, "scrollYDelta":I
    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    if-le v11, v5, :cond_7

    iget v11, p1, Landroid/graphics/Rect;->top:I

    if-le v11, v3, :cond_7

    .line 1919
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v11, v0, :cond_5

    .line 1921
    iget v11, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v3

    add-int/2addr v10, v11

    goto :goto_0

    .line 1924
    :cond_5
    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v5

    add-int/2addr v10, v11

    .line 1928
    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 1929
    .local v11, "bottom":I
    sub-int v12, v11, v5

    .line 1930
    .local v12, "distanceToBottom":I
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1932
    .end local v11    # "bottom":I
    .end local v12    # "distanceToBottom":I
    :cond_6
    goto :goto_2

    :cond_7
    iget v11, p1, Landroid/graphics/Rect;->top:I

    if-ge v11, v3, :cond_6

    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v11, v5, :cond_6

    .line 1937
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v11, v0, :cond_8

    .line 1939
    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v5, v11

    sub-int/2addr v10, v11

    goto :goto_1

    .line 1942
    :cond_8
    iget v11, p1, Landroid/graphics/Rect;->top:I

    sub-int v11, v3, v11

    sub-int/2addr v10, v11

    .line 1946
    :goto_1
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v11

    neg-int v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1949
    :goto_2
    iget v11, p1, Landroid/graphics/Rect;->right:I

    if-le v11, v6, :cond_b

    iget v11, p1, Landroid/graphics/Rect;->left:I

    if-le v11, v4, :cond_b

    .line 1954
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-le v11, v2, :cond_9

    .line 1956
    iget v11, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v4

    add-int/2addr v9, v11

    goto :goto_3

    .line 1959
    :cond_9
    iget v11, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v6

    add-int/2addr v9, v11

    .line 1963
    :goto_3
    invoke-virtual {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1964
    .local v1, "right":I
    sub-int v11, v1, v6

    .line 1965
    .local v11, "distanceToRight":I
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1967
    .end local v1    # "right":I
    .end local v11    # "distanceToRight":I
    :cond_a
    goto :goto_5

    :cond_b
    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v4, :cond_a

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v1, v6, :cond_a

    .line 1972
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v1, v2, :cond_c

    .line 1974
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, v6, v1

    sub-int/2addr v9, v1

    goto :goto_4

    .line 1977
    :cond_c
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v1

    sub-int/2addr v9, v1

    .line 1981
    :goto_4
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1984
    :goto_5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .line 1706
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 6

    .line 1681
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    .line 1682
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1683
    .local v1, "contentHeight":I
    if-nez v0, :cond_0

    .line 1684
    return v1

    .line 1687
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1688
    .local v3, "scrollRange":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v4

    .line 1689
    .local v4, "scrollY":I
    sub-int v5, v3, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1690
    .local v2, "overScrollBottom":I
    if-gez v4, :cond_1

    .line 1691
    sub-int/2addr v3, v4

    goto :goto_0

    .line 1692
    :cond_1
    if-le v4, v2, :cond_2

    .line 1693
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    .line 1696
    :cond_2
    :goto_0
    return v3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 471
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2219
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2220
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2221
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v0

    .line 2222
    .local v0, "scrollY":I
    iget-object v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2224
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2226
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2227
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 2228
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2229
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2231
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2233
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    :cond_1
    iget-object v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2235
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2236
    .restart local v3    # "width":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v4

    .line 2238
    .local v4, "height":I
    neg-int v5, v3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 2239
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalScrollRange()I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    .line 2238
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2240
    const/high16 v5, 0x43340000    # 180.0f

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2241
    iget-object v5, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v5, v3, v4}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 2242
    iget-object v5, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2243
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2245
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2249
    .end local v0    # "scrollY":I
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_3
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_7

    .line 2250
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v0

    .line 2251
    .local v0, "scrollX":I
    iget-object v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2253
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2255
    .local v3, "height":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2256
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2257
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 2258
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2259
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2261
    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2263
    .end local v2    # "restoreCount":I
    .end local v3    # "height":I
    :cond_5
    iget-object v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowRight:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2265
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2266
    .restart local v3    # "height":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v4

    .line 2268
    .local v4, "width":I
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2269
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2270
    iget-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowRight:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1, v3, v4}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 2271
    iget-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowRight:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2272
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2274
    :cond_6
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2277
    .end local v0    # "scrollX":I
    .end local v2    # "restoreCount":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_7
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 483
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 485
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScroll()Z

    move-result v0

    const/16 v1, 0x82

    if-nez v0, :cond_3

    .line 486
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isFocused()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 488
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 489
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 491
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    .line 493
    invoke-virtual {v3, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 491
    :goto_0
    return v2

    .line 495
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v3    # "nextFocused":Landroid/view/View;
    :cond_2
    return v2

    .line 498
    :cond_3
    const/4 v0, 0x0

    .line 499
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_a

    .line 500
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x13

    const/16 v4, 0x21

    if-eq v2, v3, :cond_8

    const/16 v3, 0x14

    if-eq v2, v3, :cond_6

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 516
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v1, 0x21

    :cond_5
    invoke-virtual {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->pageScroll(I)Z

    goto :goto_1

    .line 509
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 510
    invoke-virtual {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_1

    .line 512
    :cond_7
    invoke-virtual {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->fullScroll(I)Z

    move-result v0

    .line 514
    goto :goto_1

    .line 502
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 503
    invoke-virtual {p0, v4}, Lcom/telerik/widget/primitives/panels/RadScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_1

    .line 505
    :cond_9
    invoke-virtual {p0, v4}, Lcom/telerik/widget/primitives/panels/RadScrollView;->fullScroll(I)Z

    move-result v0

    .line 521
    :cond_a
    :goto_1
    return v0
.end method

.method public fling(II)V
    .locals 17
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 2148
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2149
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2150
    .local v1, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2151
    .local v2, "width":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2152
    .local v4, "bottom":I
    invoke-virtual {v0, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2154
    .local v5, "right":I
    iget-object v6, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v8

    const/4 v11, 0x0

    sub-int v9, v5, v2

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    sub-int v9, v4, v1

    .line 2155
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    div-int/lit8 v15, v2, 0x2

    div-int/lit8 v16, v1, 0x2

    .line 2154
    move/from16 v9, p1

    move/from16 v10, p2

    invoke-virtual/range {v6 .. v16}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2157
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2159
    .end local v1    # "height":I
    .end local v2    # "width":I
    .end local v4    # "bottom":I
    .end local v5    # "right":I
    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 9
    .param p1, "direction"    # I

    .line 1433
    const/4 v0, 0x0

    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1434
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v2

    .line 1436
    .local v2, "height":I
    iget-object v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 1437
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1439
    if-eqz v1, :cond_1

    .line 1440
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    .line 1441
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 1442
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1443
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1444
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1448
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollAndFocus(IIIII)Z

    move-result v0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .line 242
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    return v0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 247
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 248
    .local v1, "bottomEdge":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 249
    .local v2, "span":I
    if-ge v2, v0, :cond_1

    .line 250
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    return v3

    .line 253
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 217
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 221
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public getMaxHorizontalScrollAmount()I
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getMaxVerticalScrollAmount()I
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .line 226
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    return v0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 231
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 232
    .local v1, "rightEdge":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 233
    .local v2, "span":I
    if-ge v2, v0, :cond_1

    .line 234
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    return v3

    .line 237
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public getScrollMode()I
    .locals 1

    .line 401
    iget v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollMode:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .line 198
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    return v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 203
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 207
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public isFillViewport()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .line 1711
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1713
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v1

    .line 1714
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1713
    invoke-static {p2, v1, v2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1715
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v2

    .line 1716
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1715
    invoke-static {p3, v2, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 1719
    .local v2, "childHeightMeasureSpec":I
    iget v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollMode:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1720
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1723
    :cond_0
    iget v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 1724
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1727
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1728
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 1733
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1735
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 1736
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1735
    invoke-static {p2, v1, v2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1739
    .local v1, "childWidthMeasureSpec":I
    nop

    .line 1740
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1739
    invoke-static {p4, v2, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 1744
    .local v2, "childHeightMeasureSpec":I
    iget v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollMode:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1745
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1748
    :cond_0
    iget v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 1749
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1752
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1753
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 2123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->isLaidOut:Z

    .line 2125
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 2051
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->isLaidOut:Z

    .line 2053
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 1012
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 1014
    :cond_0
    iget-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_7

    .line 1015
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1016
    .local v0, "hscroll":F
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 1017
    .local v1, "vscroll":F
    const/4 v2, 0x0

    .line 1018
    .local v2, "hasScrolled":Z
    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_3

    .line 1019
    mul-float v5, v1, v3

    float-to-int v5, v5

    .line 1020
    .local v5, "delta":I
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalScrollRange()I

    move-result v6

    .line 1021
    .local v6, "range":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v7

    .line 1022
    .local v7, "oldScrollY":I
    sub-int v8, v7, v5

    .line 1023
    .local v8, "newScrollY":I
    if-gez v8, :cond_1

    .line 1024
    const/4 v8, 0x0

    goto :goto_0

    .line 1025
    :cond_1
    if-le v8, v6, :cond_2

    .line 1026
    move v8, v6

    .line 1028
    :cond_2
    :goto_0
    if-eq v8, v7, :cond_3

    .line 1029
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v9

    invoke-super {p0, v9, v8}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1030
    or-int/lit8 v2, v2, 0x1

    .line 1034
    .end local v5    # "delta":I
    .end local v6    # "range":I
    .end local v7    # "oldScrollY":I
    .end local v8    # "newScrollY":I
    :cond_3
    cmpl-float v4, v0, v4

    if-eqz v4, :cond_6

    .line 1035
    mul-float v3, v3, v0

    float-to-int v3, v3

    .line 1036
    .local v3, "delta":I
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalScrollRange()I

    move-result v4

    .line 1037
    .local v4, "range":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v5

    .line 1038
    .local v5, "oldScrollX":I
    sub-int v6, v5, v3

    .line 1039
    .local v6, "newScrollX":I
    if-gez v6, :cond_4

    .line 1040
    const/4 v6, 0x0

    goto :goto_1

    .line 1041
    :cond_4
    if-le v6, v4, :cond_5

    .line 1042
    move v6, v4

    .line 1044
    :cond_5
    :goto_1
    if-eq v6, v5, :cond_6

    .line 1045
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v7

    invoke-super {p0, v6, v7}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1046
    or-int/lit8 v2, v2, 0x1

    .line 1050
    .end local v3    # "delta":I
    .end local v4    # "range":I
    .end local v5    # "oldScrollX":I
    .end local v6    # "newScrollX":I
    :cond_6
    if-eqz v2, :cond_7

    .line 1051
    const/4 v3, 0x1

    return v3

    .line 1057
    .end local v0    # "hscroll":F
    .end local v1    # "vscroll":F
    .end local v2    # "hasScrolled":Z
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1175
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1176
    const-class v0, Lcom/telerik/widget/primitives/panels/RadScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1177
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalScrollRange()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1178
    .local v0, "hScrollable":Z
    :goto_0
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalScrollRange()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1179
    .local v3, "vScrollable":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1180
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1181
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1182
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1183
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1184
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1144
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1145
    const-class v0, Lcom/telerik/widget/primitives/panels/RadScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1146
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1147
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalScrollRange()I

    move-result v0

    .line 1148
    .local v0, "hScrollRange":I
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalScrollRange()I

    move-result v1

    .line 1150
    .local v1, "vScrollRange":I
    const/16 v2, 0x1000

    const/16 v3, 0x2000

    const/4 v4, 0x1

    if-lez v0, :cond_1

    .line 1151
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1152
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v5

    if-lez v5, :cond_0

    .line 1153
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1155
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v5

    if-ge v5, v0, :cond_1

    .line 1156
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1160
    :cond_1
    if-lez v1, :cond_3

    .line 1161
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1162
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v4

    if-lez v4, :cond_2

    .line 1163
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1165
    :cond_2
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v3

    if-ge v3, v1, :cond_3

    .line 1166
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1170
    .end local v0    # "hScrollRange":I
    .end local v1    # "vScrollRange":I
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 608
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 609
    .local v2, "action":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v5, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_0

    .line 610
    return v4

    .line 616
    :cond_0
    const/4 v5, 0x1

    .line 619
    .local v5, "direction":I
    and-int/lit16 v6, v2, 0xff

    const/4 v7, 0x0

    if-eqz v6, :cond_10

    const/4 v8, -0x1

    if-eq v6, v4, :cond_f

    if-eq v6, v3, :cond_2

    const/4 v3, 0x3

    if-eq v6, v3, :cond_f

    const/4 v3, 0x6

    if-eq v6, v3, :cond_1

    goto/16 :goto_8

    .line 729
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 630
    :cond_2
    iget v3, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    .line 631
    .local v3, "activePointerId":I
    if-ne v3, v8, :cond_3

    .line 633
    goto/16 :goto_8

    .line 636
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 637
    .local v6, "pointerIndex":I
    if-ne v6, v8, :cond_4

    .line 638
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid pointerId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " in onInterceptTouchEvent"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "RadScrollView"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    goto/16 :goto_8

    .line 643
    :cond_4
    const/4 v8, 0x0

    .line 644
    .local v8, "canScroll":Z
    const/4 v9, 0x1

    .line 645
    .local v9, "canScrollVertically":Z
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->computeVerticalScrollOffset()I

    move-result v10

    .line 646
    .local v10, "verticalOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->computeVerticalScrollRange()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->computeVerticalScrollExtent()I

    move-result v12

    sub-int/2addr v11, v12

    .line 647
    .local v11, "verticalRange":I
    if-eqz v11, :cond_9

    .line 648
    if-gez v5, :cond_6

    .line 649
    if-lez v10, :cond_5

    const/4 v12, 0x1

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    :goto_0
    move v9, v12

    goto :goto_2

    .line 651
    :cond_6
    add-int/lit8 v12, v11, -0x1

    if-ge v10, v12, :cond_7

    const/4 v12, 0x1

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    :goto_1
    move v9, v12

    .line 654
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v12

    if-nez v12, :cond_8

    if-nez v9, :cond_8

    .line 655
    or-int/lit8 v8, v8, 0x0

    goto :goto_3

    .line 657
    :cond_8
    or-int/lit8 v8, v8, 0x1

    .line 658
    invoke-direct {v0, v1, v6}, Lcom/telerik/widget/primitives/panels/RadScrollView;->applyVerticalMoveAction(Landroid/view/MotionEvent;I)V

    .line 662
    :cond_9
    :goto_3
    const/4 v12, 0x1

    .line 663
    .local v12, "canScrollHorizontally":Z
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->computeHorizontalScrollOffset()I

    move-result v13

    .line 664
    .local v13, "horizontalOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->computeHorizontalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->computeHorizontalScrollExtent()I

    move-result v15

    sub-int/2addr v14, v15

    .line 665
    .local v14, "horizontalRange":I
    if-eqz v14, :cond_e

    .line 666
    if-gez v5, :cond_b

    .line 667
    if-lez v13, :cond_a

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_4
    move v12, v4

    .end local v12    # "canScrollHorizontally":Z
    .local v4, "canScrollHorizontally":Z
    goto :goto_6

    .line 669
    .end local v4    # "canScrollHorizontally":Z
    .restart local v12    # "canScrollHorizontally":Z
    :cond_b
    add-int/lit8 v15, v14, -0x1

    if-ge v13, v15, :cond_c

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    move v12, v4

    .line 672
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v4

    if-nez v4, :cond_d

    if-nez v12, :cond_d

    .line 673
    or-int/lit8 v8, v8, 0x0

    goto :goto_7

    .line 675
    :cond_d
    or-int/lit8 v8, v8, 0x1

    .line 676
    invoke-direct {v0, v1, v6}, Lcom/telerik/widget/primitives/panels/RadScrollView;->applyHorizontalMoveAction(Landroid/view/MotionEvent;I)V

    .line 680
    :cond_e
    :goto_7
    if-nez v8, :cond_12

    .line 681
    return v7

    .line 721
    .end local v3    # "activePointerId":I
    .end local v6    # "pointerIndex":I
    .end local v8    # "canScroll":Z
    .end local v9    # "canScrollVertically":Z
    .end local v10    # "verticalOffset":I
    .end local v11    # "verticalRange":I
    .end local v12    # "canScrollHorizontally":Z
    .end local v13    # "horizontalOffset":I
    .end local v14    # "horizontalRange":I
    :cond_f
    iput-boolean v7, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    .line 722
    iput v8, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    .line 723
    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->recycleVelocityTracker()V

    .line 724
    iget-object v15, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalScrollRange()I

    move-result v20

    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalScrollRange()I

    move-result v21

    invoke-virtual/range {v15 .. v21}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 725
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_8

    .line 688
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 689
    .local v3, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    .line 690
    .local v6, "x":I
    invoke-direct {v0, v6, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->inChild(II)Z

    move-result v8

    if-nez v8, :cond_11

    .line 691
    iput-boolean v7, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    .line 692
    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->recycleVelocityTracker()V

    .line 693
    goto :goto_8

    .line 700
    :cond_11
    iput v3, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionY:I

    .line 701
    iput v6, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionX:I

    .line 703
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    .line 705
    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->initOrResetVelocityTracker()V

    .line 706
    iget-object v7, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mYVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 707
    iget-object v7, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mXVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 714
    iget-object v7, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v7

    xor-int/2addr v4, v7

    iput-boolean v4, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    .line 715
    nop

    .line 737
    .end local v3    # "y":I
    .end local v6    # "x":I
    :cond_12
    :goto_8
    iget-boolean v3, v0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 2057
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsLayoutDirty:Z

    .line 2060
    iget-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {v1, p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2061
    iget-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2063
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2065
    iget-boolean v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->isLaidOut:Z

    if-nez v2, :cond_8

    .line 2066
    iget-object v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mSavedState:Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;

    if-eqz v2, :cond_1

    .line 2067
    iget v2, v2, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;->xScrollPosition:I

    iget-object v3, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mSavedState:Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;

    iget v3, v3, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;->yScrollPosition:I

    invoke-virtual {p0, v2, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollTo(II)V

    .line 2068
    iput-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mSavedState:Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;

    .line 2071
    :cond_1
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 2072
    .local v1, "childHeight":I
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 2073
    .local v2, "childWidth":I
    :goto_1
    sub-int v3, p5, p3

    .line 2074
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v3, v1, v3

    .line 2073
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2075
    .local v3, "verticalScrollRange":I
    sub-int v4, p4, p2

    .line 2076
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v4, v2, v4

    .line 2075
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2078
    .local v0, "horizontalScrollRange":I
    const/4 v4, 0x0

    .line 2079
    .local v4, "xScroll":I
    const/4 v5, 0x0

    .line 2081
    .local v5, "yScroll":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 2082
    move v5, v3

    goto :goto_2

    .line 2083
    :cond_4
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v6

    if-gez v6, :cond_5

    .line 2084
    const/4 v5, 0x0

    .line 2087
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v6

    if-le v6, v0, :cond_6

    .line 2088
    move v4, v0

    goto :goto_3

    .line 2089
    :cond_6
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v6

    if-gez v6, :cond_7

    .line 2090
    const/4 v4, 0x0

    .line 2093
    :cond_7
    :goto_3
    invoke-virtual {p0, v4, v5}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollTo(II)V

    .line 2094
    .end local v0    # "horizontalScrollRange":I
    .end local v1    # "childHeight":I
    .end local v2    # "childWidth":I
    .end local v3    # "verticalScrollRange":I
    .end local v4    # "xScroll":I
    .end local v5    # "yScroll":I
    goto :goto_4

    .line 2095
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->isLaidOut:Z

    .line 2099
    :goto_4
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollTo(II)V

    .line 2100
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 422
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 424
    iget-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mFillViewport:Z

    if-nez v0, :cond_0

    .line 425
    return-void

    .line 428
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 429
    .local v0, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 431
    .local v1, "widthMode":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 432
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {p0, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 434
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getMeasuredHeight()I

    move-result v5

    .line 435
    .local v5, "height":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v5, :cond_1

    .line 436
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 438
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 439
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 438
    invoke-static {p1, v7, v8}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildMeasureSpec(III)I

    move-result v7

    .line 440
    .local v7, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v5, v8

    .line 441
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v5, v8

    .line 442
    nop

    .line 443
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 445
    .local v8, "childHeightMeasureSpec":I
    invoke-virtual {v4, v7, v8}, Landroid/view/View;->measure(II)V

    .line 449
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "height":I
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "childWidthMeasureSpec":I
    .end local v8    # "childHeightMeasureSpec":I
    :cond_1
    if-eqz v1, :cond_2

    .line 450
    invoke-virtual {p0, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 451
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getMeasuredWidth()I

    move-result v4

    .line 452
    .local v4, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ge v5, v4, :cond_2

    .line 453
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 455
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 456
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 455
    invoke-static {p2, v6, v7}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildMeasureSpec(III)I

    move-result v6

    .line 457
    .local v6, "childHeightMeasureSpec":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v4, v7

    .line 458
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    .line 459
    nop

    .line 460
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 462
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v3, v2, v6}, Landroid/view/View;->measure(II)V

    .line 466
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "width":I
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "childHeightMeasureSpec":I
    :cond_2
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 11
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 1064
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1065
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v0

    .line 1066
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v1

    .line 1067
    .local v1, "oldY":I
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollTo(II)V

    .line 1069
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->onScrollChanged(IIII)V

    .line 1070
    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 1071
    :cond_0
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalScrollRange()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalScrollRange()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1073
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :cond_1
    goto :goto_0

    .line 1074
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1077
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->awakenScrollBars()Z

    .line 1078
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2011
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2012
    const/16 p1, 0x82

    goto :goto_0

    .line 2013
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2014
    const/16 p1, 0x21

    .line 2017
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 2018
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2019
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    nop

    .line 2022
    .local v0, "nextFocus":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2023
    return v1

    .line 2026
    :cond_3
    invoke-direct {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2027
    return v1

    .line 2030
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2311
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    .line 2314
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2315
    return-void

    .line 2317
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;

    .line 2318
    .local v0, "ss":Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;
    invoke-virtual {v0}, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2319
    iput-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mSavedState:Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;

    .line 2320
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->requestLayout()V

    .line 2321
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 2325
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    .line 2328
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 2330
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2331
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;

    invoke-direct {v1, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2332
    .local v1, "ss":Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v2

    iput v2, v1, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;->xScrollPosition:I

    .line 2333
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v2

    iput v2, v1, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;->yScrollPosition:I

    .line 2334
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 2104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2106
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2107
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2113
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isWithinDeltaOfScreenX(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v1, p4}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isWithinDeltaOfScreenY(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2114
    :cond_1
    iget-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2115
    iget-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2116
    iget-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v1

    .line 2117
    .local v1, "scrollDelta":Landroid/graphics/Point;
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->doScroll(II)V

    .line 2119
    .end local v1    # "scrollDelta":Landroid/graphics/Point;
    :cond_2
    return-void

    .line 2108
    :cond_3
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 772
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->initVelocityTrackerIfNotExists()V

    .line 773
    iget-object v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mXVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 774
    iget-object v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mYVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    .line 778
    .local v12, "action":I
    and-int/lit16 v0, v12, 0xff

    const/4 v1, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_27

    const/4 v2, -0x1

    if-eq v0, v13, :cond_21

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    .line 978
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 979
    iget v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionX:I

    .line 980
    iget v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionY:I

    goto/16 :goto_7

    .line 971
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 972
    .local v0, "index":I
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionX:I

    .line 973
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionY:I

    .line 974
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    .line 975
    goto/16 :goto_7

    .line 961
    .end local v0    # "index":I
    :cond_2
    iget-boolean v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 962
    iget-object v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalScrollRange()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalScrollRange()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 963
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 966
    :cond_3
    iput v2, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    .line 967
    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->endDrag()V

    goto/16 :goto_7

    .line 805
    :cond_4
    iget v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 806
    .local v14, "activePointerIndex":I
    if-ne v14, v2, :cond_5

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in onTouchEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    goto/16 :goto_7

    .line 811
    :cond_5
    invoke-virtual {v11, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v15, v0

    .line 812
    .local v15, "y":I
    invoke-virtual {v11, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v9, v0

    .line 813
    .local v9, "x":I
    const/4 v0, 0x0

    .line 814
    .local v0, "deltaY":I
    const/4 v2, 0x0

    .line 816
    .local v2, "deltaX":I
    iget-boolean v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollVertically:Z

    if-eqz v3, :cond_9

    .line 817
    iget v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionY:I

    sub-int v0, v3, v15

    .line 819
    iget-boolean v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTouchSlop:I

    if-le v3, v4, :cond_8

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 821
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_6

    .line 822
    invoke-interface {v3, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 824
    :cond_6
    iput-boolean v13, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    .line 825
    if-lez v0, :cond_7

    .line 826
    iget v4, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTouchSlop:I

    sub-int/2addr v0, v4

    move v8, v0

    goto :goto_0

    .line 828
    :cond_7
    iget v4, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTouchSlop:I

    add-int/2addr v0, v4

    move v8, v0

    goto :goto_0

    .line 833
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_8
    move v8, v0

    goto :goto_0

    .line 816
    :cond_9
    move v8, v0

    .line 833
    .end local v0    # "deltaY":I
    .local v8, "deltaY":I
    :goto_0
    iget-boolean v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollHorizontally:Z

    if-eqz v0, :cond_d

    .line 834
    iget v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionX:I

    sub-int v2, v0, v9

    .line 836
    iget-boolean v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_c

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTouchSlop:I

    if-le v0, v3, :cond_c

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 838
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_a

    .line 839
    invoke-interface {v0, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 841
    :cond_a
    iput-boolean v13, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    .line 842
    if-lez v2, :cond_b

    .line 843
    iget v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTouchSlop:I

    sub-int/2addr v2, v3

    move v7, v2

    goto :goto_1

    .line 845
    :cond_b
    iget v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTouchSlop:I

    add-int/2addr v2, v3

    move v7, v2

    goto :goto_1

    .line 850
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_c
    move v7, v2

    goto :goto_1

    .line 833
    :cond_d
    move v7, v2

    .line 850
    .end local v2    # "deltaX":I
    .local v7, "deltaX":I
    :goto_1
    iget-boolean v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_20

    .line 852
    iput v15, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionY:I

    .line 853
    iput v9, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionX:I

    .line 855
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v16

    .line 856
    .local v16, "oldX":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v17

    .line 858
    .local v17, "oldY":I
    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalScrollRange()I

    move-result v6

    .line 859
    .local v6, "verticalRange":I
    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalScrollRange()I

    move-result v5

    .line 861
    .local v5, "horizontalRange":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getOverScrollMode()I

    move-result v4

    .line 863
    .local v4, "overscrollMode":I
    if-eqz v4, :cond_f

    if-ne v4, v13, :cond_10

    if-lez v6, :cond_e

    iget-boolean v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollVertically:Z

    if-nez v0, :cond_f

    :cond_e
    if-lez v5, :cond_10

    iget-boolean v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollHorizontally:Z

    if-eqz v0, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    move/from16 v18, v1

    .line 870
    .local v18, "canOverscroll":Z
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v19

    iget v1, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mOverscrollDistance:I

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v22, v1

    move v1, v7

    move/from16 v23, v4

    .end local v4    # "overscrollMode":I
    .local v23, "overscrollMode":I
    move/from16 v4, v19

    move/from16 v19, v5

    .end local v5    # "horizontalRange":I
    .local v19, "horizontalRange":I
    move/from16 v24, v6

    .end local v6    # "verticalRange":I
    .local v24, "verticalRange":I
    move v13, v7

    .end local v7    # "deltaX":I
    .local v13, "deltaX":I
    move/from16 v7, v22

    move/from16 v22, v8

    .end local v8    # "deltaY":I
    .local v22, "deltaY":I
    move/from16 v8, v20

    move/from16 v20, v9

    .end local v9    # "x":I
    .local v20, "x":I
    move/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Lcom/telerik/widget/primitives/panels/RadScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 873
    iget-object v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mXVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 876
    :cond_11
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v4

    const/4 v7, 0x0

    iget v8, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mOverscrollDistance:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v22

    move/from16 v5, v19

    move/from16 v6, v24

    invoke-virtual/range {v0 .. v9}, Lcom/telerik/widget/primitives/panels/RadScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 879
    iget-object v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mYVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 882
    :cond_12
    if-eqz v18, :cond_1e

    .line 883
    move/from16 v0, v22

    .end local v22    # "deltaY":I
    .local v0, "deltaY":I
    add-int v8, v17, v0

    .line 884
    .local v8, "pulledToY":I
    add-int v7, v16, v13

    .line 885
    .local v7, "pulledToX":I
    iget-boolean v1, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollVertically:Z

    if-eqz v1, :cond_15

    .line 886
    if-gez v8, :cond_14

    .line 887
    iget-object v1, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 888
    iget-object v1, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_13

    .line 889
    iget-object v1, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move/from16 v1, v24

    goto :goto_2

    .line 888
    :cond_13
    move/from16 v1, v24

    goto :goto_2

    .line 891
    :cond_14
    move/from16 v1, v24

    .end local v24    # "verticalRange":I
    .local v1, "verticalRange":I
    if-le v8, v1, :cond_16

    .line 892
    iget-object v2, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 893
    iget-object v2, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_16

    .line 894
    iget-object v2, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_2

    .line 885
    .end local v1    # "verticalRange":I
    .restart local v24    # "verticalRange":I
    :cond_15
    move/from16 v1, v24

    .line 899
    .end local v24    # "verticalRange":I
    .restart local v1    # "verticalRange":I
    :cond_16
    :goto_2
    iget-boolean v2, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollHorizontally:Z

    if-eqz v2, :cond_19

    .line 900
    if-gez v7, :cond_18

    .line 901
    iget-object v2, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v3, v13

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 902
    iget-object v2, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowRight:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_17

    .line 903
    iget-object v2, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowRight:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move/from16 v2, v19

    goto :goto_3

    .line 902
    :cond_17
    move/from16 v2, v19

    goto :goto_3

    .line 905
    :cond_18
    move/from16 v2, v19

    .end local v19    # "horizontalRange":I
    .local v2, "horizontalRange":I
    if-le v7, v2, :cond_1a

    .line 906
    iget-object v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowRight:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v4, v13

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 907
    iget-object v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 908
    iget-object v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_3

    .line 899
    .end local v2    # "horizontalRange":I
    .restart local v19    # "horizontalRange":I
    :cond_19
    move/from16 v2, v19

    .line 913
    .end local v19    # "horizontalRange":I
    .restart local v2    # "horizontalRange":I
    :cond_1a
    :goto_3
    iget-boolean v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollVertically:Z

    if-eqz v3, :cond_1c

    .line 914
    iget-object v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v3, :cond_1c

    .line 915
    invoke-virtual {v3}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 916
    :cond_1b
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 920
    :cond_1c
    iget-boolean v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollHorizontally:Z

    if-eqz v3, :cond_1f

    .line 921
    iget-object v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v3, :cond_1f

    .line 922
    invoke-virtual {v3}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowRight:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 923
    :cond_1d
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_4

    .line 882
    .end local v0    # "deltaY":I
    .end local v1    # "verticalRange":I
    .end local v2    # "horizontalRange":I
    .end local v7    # "pulledToX":I
    .end local v8    # "pulledToY":I
    .restart local v19    # "horizontalRange":I
    .restart local v22    # "deltaY":I
    .restart local v24    # "verticalRange":I
    :cond_1e
    move/from16 v2, v19

    move/from16 v0, v22

    move/from16 v1, v24

    .line 927
    .end local v16    # "oldX":I
    .end local v17    # "oldY":I
    .end local v18    # "canOverscroll":Z
    .end local v19    # "horizontalRange":I
    .end local v22    # "deltaY":I
    .end local v23    # "overscrollMode":I
    .end local v24    # "verticalRange":I
    .restart local v0    # "deltaY":I
    :cond_1f
    :goto_4
    goto/16 :goto_7

    .line 850
    .end local v0    # "deltaY":I
    .end local v13    # "deltaX":I
    .end local v20    # "x":I
    .local v7, "deltaX":I
    .local v8, "deltaY":I
    .restart local v9    # "x":I
    :cond_20
    move v13, v7

    move v0, v8

    move/from16 v20, v9

    .end local v7    # "deltaX":I
    .end local v8    # "deltaY":I
    .end local v9    # "x":I
    .restart local v0    # "deltaY":I
    .restart local v13    # "deltaX":I
    .restart local v20    # "x":I
    goto/16 :goto_7

    .line 930
    .end local v0    # "deltaY":I
    .end local v13    # "deltaX":I
    .end local v14    # "activePointerIndex":I
    .end local v15    # "y":I
    .end local v20    # "x":I
    :cond_21
    iget-boolean v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2b

    .line 931
    iget-object v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mYVelocityTracker:Landroid/view/VelocityTracker;

    .line 932
    .local v0, "yVelocityTracker":Landroid/view/VelocityTracker;
    iget-object v1, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mXVelocityTracker:Landroid/view/VelocityTracker;

    .line 933
    .local v1, "xVelocityTracker":Landroid/view/VelocityTracker;
    iget v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 934
    iget v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 936
    iget v3, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v3, v3

    .line 937
    .local v3, "initialXVelocity":I
    iget v4, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    float-to-int v4, v4

    .line 939
    .local v4, "initialYVelocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_26

    .line 940
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mMinimumVelocity:I

    if-gt v5, v6, :cond_23

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mMinimumVelocity:I

    if-le v5, v6, :cond_22

    goto :goto_5

    .line 949
    :cond_22
    iget-object v13, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v15

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalScrollRange()I

    move-result v17

    const/16 v18, 0x0

    .line 950
    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalScrollRange()I

    move-result v19

    .line 949
    invoke-virtual/range {v13 .. v19}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 951
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_6

    .line 941
    :cond_23
    :goto_5
    iget-boolean v5, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollHorizontally:Z

    if-nez v5, :cond_24

    .line 942
    const/4 v3, 0x0

    .line 944
    :cond_24
    iget-boolean v5, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollVertically:Z

    if-nez v5, :cond_25

    .line 945
    const/4 v4, 0x0

    .line 947
    :cond_25
    neg-int v5, v3

    neg-int v6, v4

    invoke-virtual {v10, v5, v6}, Lcom/telerik/widget/primitives/panels/RadScrollView;->fling(II)V

    .line 956
    :cond_26
    :goto_6
    iput v2, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    .line 957
    invoke-direct/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->endDrag()V

    .line 958
    .end local v0    # "yVelocityTracker":Landroid/view/VelocityTracker;
    .end local v1    # "xVelocityTracker":Landroid/view/VelocityTracker;
    .end local v3    # "initialXVelocity":I
    .end local v4    # "initialYVelocity":I
    goto :goto_7

    .line 780
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_28

    .line 781
    return v1

    .line 783
    :cond_28
    iget-object v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_29

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 785
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_29

    .line 786
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 794
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_29
    iget-object v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 795
    iget-object v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 799
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionY:I

    .line 800
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastMotionX:I

    .line 801
    invoke-virtual {v11, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/telerik/widget/primitives/panels/RadScrollView;->mActivePointerId:I

    .line 802
    nop

    .line 983
    :cond_2b
    :goto_7
    const/4 v0, 0x1

    return v0
.end method

.method public pageScroll(I)Z
    .locals 10
    .param p1, "direction"    # I

    .line 1385
    const/4 v0, 0x0

    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1386
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v2

    .line 1387
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v3

    .line 1389
    .local v3, "width":I
    if-eqz v1, :cond_3

    .line 1390
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1391
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1392
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    .line 1393
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 1394
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1395
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 1396
    iget-object v5, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1399
    :cond_1
    iget-object v5, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 1400
    iget-object v5, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1403
    .end local v0    # "count":I
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    goto :goto_1

    .line 1404
    :cond_3
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1405
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_4

    .line 1406
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1409
    :cond_4
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1410
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_5

    .line 1411
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1414
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1415
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1417
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollAndFocus(IIIII)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1083
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    const/4 v0, 0x1

    return v0

    .line 1086
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1087
    return v1

    .line 1089
    :cond_1
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_2

    .line 1138
    return v1

    .line 1114
    :cond_2
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1115
    .local v0, "viewportWidth":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1116
    .local v2, "viewportHeight":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1117
    .local v3, "targetScrollX":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1119
    .local v4, "targetScrollY":I
    const/4 v5, 0x0

    .line 1120
    .local v5, "smoothScrollToX":I
    const/4 v6, 0x0

    .line 1121
    .local v6, "smoothScrollToY":I
    const/4 v7, 0x0

    .line 1122
    .local v7, "smoothScrollTo":Z
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v8

    if-eq v4, v8, :cond_3

    .line 1123
    move v6, v4

    .line 1124
    or-int/lit8 v7, v7, 0x1

    .line 1127
    :cond_3
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v8

    if-eq v3, v8, :cond_4

    .line 1128
    move v5, v3

    .line 1129
    or-int/lit8 v7, v7, 0x1

    .line 1132
    :cond_4
    if-eqz v7, :cond_5

    .line 1133
    invoke-virtual {p0, v5, v6}, Lcom/telerik/widget/primitives/panels/RadScrollView;->smoothScrollTo(II)V

    .line 1136
    .end local v0    # "viewportWidth":I
    .end local v2    # "viewportHeight":I
    .end local v3    # "targetScrollX":I
    .end local v4    # "targetScrollY":I
    .end local v5    # "smoothScrollToX":I
    .end local v6    # "smoothScrollToY":I
    .end local v7    # "smoothScrollTo":Z
    :cond_5
    return v1

    .line 1091
    :cond_6
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1092
    .restart local v0    # "viewportWidth":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1093
    .restart local v2    # "viewportHeight":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHorizontalScrollRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1094
    .restart local v3    # "targetScrollX":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getVerticalScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1095
    .restart local v4    # "targetScrollY":I
    const/4 v5, 0x0

    .line 1096
    .restart local v5    # "smoothScrollToX":I
    const/4 v6, 0x0

    .line 1097
    .restart local v6    # "smoothScrollToY":I
    const/4 v7, 0x0

    .line 1098
    .restart local v7    # "smoothScrollTo":Z
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v8

    if-eq v4, v8, :cond_7

    .line 1099
    move v6, v4

    .line 1100
    or-int/lit8 v7, v7, 0x1

    .line 1103
    :cond_7
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v8

    if-eq v3, v8, :cond_8

    .line 1104
    move v5, v3

    .line 1105
    or-int/lit8 v7, v7, 0x1

    .line 1108
    :cond_8
    if-eqz v7, :cond_9

    .line 1109
    invoke-virtual {p0, v5, v6}, Lcom/telerik/widget/primitives/panels/RadScrollView;->smoothScrollTo(II)V

    .line 1112
    .end local v0    # "viewportWidth":I
    .end local v2    # "viewportHeight":I
    .end local v3    # "targetScrollX":I
    .end local v4    # "targetScrollY":I
    .end local v5    # "smoothScrollToX":I
    .end local v6    # "smoothScrollToY":I
    .end local v7    # "smoothScrollTo":Z
    :cond_9
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 1989
    iget-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1990
    invoke-direct {p0, p2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    .line 1993
    :cond_0
    iput-object p2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1995
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1996
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 2037
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2038
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2037
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2040
    invoke-direct {p0, p2, p3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 587
    if-eqz p1, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->recycleVelocityTracker()V

    .line 590
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 591
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mIsLayoutDirty:Z

    .line 2046
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2047
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2184
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2186
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->clamp(III)I

    move-result p1

    .line 2187
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->clamp(III)I

    move-result p2

    .line 2188
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 2189
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2192
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .line 354
    iget-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 355
    iput-boolean p1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mFillViewport:Z

    .line 356
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->requestLayout()V

    .line 358
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 2196
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 2197
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    if-nez v0, :cond_0

    .line 2198
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2199
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    .line 2200
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    .line 2203
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    if-nez v0, :cond_2

    .line 2204
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2205
    .restart local v0    # "context":Landroid/content/Context;
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    .line 2206
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowRight:Landroidx/core/widget/EdgeEffectCompat;

    .line 2207
    .end local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 2209
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowTop:Landroidx/core/widget/EdgeEffectCompat;

    .line 2210
    iput-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowBottom:Landroidx/core/widget/EdgeEffectCompat;

    .line 2211
    iput-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowLeft:Landroidx/core/widget/EdgeEffectCompat;

    .line 2212
    iput-object v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mEdgeGlowRight:Landroidx/core/widget/EdgeEffectCompat;

    .line 2214
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2215
    return-void
.end method

.method public setScrollMode(I)V
    .locals 4
    .param p1, "scrollMode"    # I

    .line 369
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be one of or combination of RadScrollView.SCROLLING_MODE_VERTICAL or RadScrollView.SCROLLING_MODE_HORIZONTAL constants or RadScrollView.SCROLLING_MODE_NONE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1
    :goto_0
    iget v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollMode:I

    if-eq v2, p1, :cond_6

    .line 377
    iput p1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollMode:I

    .line 379
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollHorizontally:Z

    .line 380
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollHorizontally:Z

    if-nez v0, :cond_3

    .line 381
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollTo(II)V

    .line 384
    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollVertically:Z

    .line 385
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->canScrollVertically:Z

    if-nez v0, :cond_5

    .line 386
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollTo(II)V

    .line 389
    :cond_5
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->requestLayout()V

    .line 391
    :cond_6
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .line 417
    iput-boolean p1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mSmoothScrollingEnabled:Z

    .line 418
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 1614
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1616
    return-void

    .line 1618
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    .line 1619
    .local v0, "duration":J
    const-wide/16 v2, 0xfa

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 1620
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1621
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1622
    .local v3, "width":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1623
    .local v5, "bottom":I
    invoke-virtual {p0, v4}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1624
    .local v6, "right":I
    sub-int v7, v5, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1625
    .local v7, "maxY":I
    sub-int v8, v6, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1626
    .local v8, "maxX":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v9

    .line 1627
    .local v9, "scrollY":I
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v10

    .line 1628
    .local v10, "scrollX":I
    add-int v11, v9, p2

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    sub-int p2, v11, v9

    .line 1629
    add-int v11, v10, p1

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int p1, v4, v10

    .line 1630
    iget-object v4, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4, v10, v9, p1, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1631
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1632
    .end local v2    # "height":I
    .end local v3    # "width":I
    .end local v5    # "bottom":I
    .end local v6    # "right":I
    .end local v7    # "maxY":I
    .end local v8    # "maxX":I
    .end local v9    # "scrollY":I
    .end local v10    # "scrollX":I
    goto :goto_0

    .line 1633
    :cond_1
    iget-object v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1634
    iget-object v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1636
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/primitives/panels/RadScrollView;->scrollBy(II)V

    .line 1638
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/telerik/widget/primitives/panels/RadScrollView;->mLastScroll:J

    .line 1639
    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1648
    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/telerik/widget/primitives/panels/RadScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/telerik/widget/primitives/panels/RadScrollView;->smoothScrollBy(II)V

    .line 1649
    return-void
.end method
