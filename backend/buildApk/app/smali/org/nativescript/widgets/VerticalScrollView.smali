.class public Lorg/nativescript/widgets/VerticalScrollView;
.super Landroid/widget/ScrollView;
.source "VerticalScrollView.java"


# instance fields
.field private contentMeasuredHeight:I

.field private contentMeasuredWidth:I

.field private isFirstLayout:Z

.field private mChildToScrollTo:Landroid/view/View;

.field private mIsLayoutDirty:Z

.field private mSavedState:Lorg/nativescript/widgets/HorizontalScrollView$SavedState;

.field private final mTempRect:Landroid/graphics/Rect;

.field private scrollEnabled:Z

.field private scrollableLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredWidth:I

    .line 26
    iput v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredHeight:I

    .line 27
    iput v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->scrollableLength:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->isFirstLayout:Z

    .line 30
    iput-boolean v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->scrollEnabled:Z

    .line 36
    iput-boolean v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->mIsLayoutDirty:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 47
    return-void
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 248
    iget-object v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 251
    iget-object v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lorg/nativescript/widgets/VerticalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 253
    iget-object v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/VerticalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 254
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 255
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/nativescript/widgets/VerticalScrollView;->scrollBy(II)V

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 104
    instance-of v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/nativescript/widgets/VerticalScrollView;->generateDefaultLayoutParams()Lorg/nativescript/widgets/CommonLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/nativescript/widgets/VerticalScrollView;->generateDefaultLayoutParams()Lorg/nativescript/widgets/CommonLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lorg/nativescript/widgets/CommonLayoutParams;
    .locals 1

    .line 88
    new-instance v0, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v0}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/VerticalScrollView;->generateLayoutParams(Landroid/util/AttributeSet;)Lorg/nativescript/widgets/CommonLayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "from"    # Landroid/view/ViewGroup$LayoutParams;

    .line 109
    instance-of v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lorg/nativescript/widgets/CommonLayoutParams;

    move-object v1, p1

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Lorg/nativescript/widgets/CommonLayoutParams;)V

    return-object v0

    .line 112
    :cond_0
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Lorg/nativescript/widgets/CommonLayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0

    .line 115
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Lorg/nativescript/widgets/CommonLayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 118
    :cond_2
    new-instance v0, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v0, p1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/VerticalScrollView;->generateLayoutParams(Landroid/util/AttributeSet;)Lorg/nativescript/widgets/CommonLayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lorg/nativescript/widgets/CommonLayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 96
    new-instance v0, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v0}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    return-object v0
.end method

.method public getScrollEnabled()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->scrollEnabled:Z

    return v0
.end method

.method public getScrollableLength()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->scrollableLength:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 221
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->isFirstLayout:Z

    .line 223
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 227
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->isFirstLayout:Z

    .line 229
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 64
    iget-boolean v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->scrollEnabled:Z

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "childHeight":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/VerticalScrollView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 175
    invoke-virtual {p0, v2}, Lorg/nativescript/widgets/VerticalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 176
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 178
    sub-int v3, p4, p2

    .line 179
    .local v3, "width":I
    sub-int v4, p5, p3

    .line 181
    .local v4, "height":I
    iget v5, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredHeight:I

    sub-int v6, v5, v4

    iput v6, p0, Lorg/nativescript/widgets/VerticalScrollView;->scrollableLength:I

    .line 182
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v1, v2, v2, v3, v5}, Lorg/nativescript/widgets/CommonLayoutParams;->layoutChild(Landroid/view/View;IIII)V

    .line 183
    iget v5, p0, Lorg/nativescript/widgets/VerticalScrollView;->scrollableLength:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lorg/nativescript/widgets/VerticalScrollView;->scrollableLength:I

    .line 186
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_0
    iput-boolean v2, p0, Lorg/nativescript/widgets/VerticalScrollView;->mIsLayoutDirty:Z

    .line 188
    iget-object v1, p0, Lorg/nativescript/widgets/VerticalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-static {v1, p0}, Lorg/nativescript/widgets/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lorg/nativescript/widgets/VerticalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v1}, Lorg/nativescript/widgets/VerticalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 192
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/nativescript/widgets/VerticalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 194
    invoke-virtual {p0}, Lorg/nativescript/widgets/VerticalScrollView;->getScrollX()I

    move-result v3

    .line 195
    .local v3, "scrollX":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/VerticalScrollView;->getScrollY()I

    move-result v4

    .line 196
    .local v4, "scrollY":I
    iget-boolean v5, p0, Lorg/nativescript/widgets/VerticalScrollView;->isFirstLayout:Z

    if-eqz v5, :cond_4

    .line 197
    iput-boolean v2, p0, Lorg/nativescript/widgets/VerticalScrollView;->isFirstLayout:Z

    .line 199
    sub-int v5, p5, p3

    invoke-virtual {p0}, Lorg/nativescript/widgets/VerticalScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lorg/nativescript/widgets/VerticalScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v5, v0, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 200
    .local v2, "scrollRange":I
    iget-object v5, p0, Lorg/nativescript/widgets/VerticalScrollView;->mSavedState:Lorg/nativescript/widgets/HorizontalScrollView$SavedState;

    if-eqz v5, :cond_2

    .line 201
    iget v4, v5, Lorg/nativescript/widgets/HorizontalScrollView$SavedState;->scrollPosition:I

    .line 202
    iput-object v1, p0, Lorg/nativescript/widgets/VerticalScrollView;->mSavedState:Lorg/nativescript/widgets/HorizontalScrollView$SavedState;

    .line 206
    :cond_2
    if-le v4, v2, :cond_3

    .line 207
    move v4, v2

    goto :goto_0

    .line 208
    :cond_3
    if-gez v4, :cond_4

    .line 209
    const/4 v4, 0x0

    .line 214
    .end local v2    # "scrollRange":I
    :cond_4
    :goto_0
    invoke-virtual {p0, v3, v4}, Lorg/nativescript/widgets/VerticalScrollView;->scrollTo(II)V

    .line 216
    invoke-static {p0}, Lorg/nativescript/widgets/CommonLayoutParams;->restoreOriginalParams(Landroid/view/ViewGroup;)V

    .line 217
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 135
    invoke-static {p0, p1, p2}, Lorg/nativescript/widgets/CommonLayoutParams;->adjustChildrenLayoutParams(Landroid/view/ViewGroup;II)V

    .line 139
    invoke-virtual {p0}, Lorg/nativescript/widgets/VerticalScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/nativescript/widgets/VerticalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    .line 141
    iput v1, p0, Lorg/nativescript/widgets/VerticalScrollView;->scrollableLength:I

    .line 142
    iput v1, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredWidth:I

    .line 143
    iput v1, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredHeight:I

    .line 144
    invoke-virtual {p0, v1, v1, v1, v1}, Lorg/nativescript/widgets/VerticalScrollView;->setPadding(IIII)V

    goto :goto_1

    .line 147
    :cond_1
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, p1, v2}, Lorg/nativescript/widgets/CommonLayoutParams;->measureChild(Landroid/view/View;II)V

    .line 148
    invoke-static {v0}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredWidth:I

    .line 149
    invoke-static {v0}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredHeight:I

    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 153
    .local v2, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    iget v3, v2, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    iget v4, v2, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    iget v5, v2, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    iget v6, v2, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/nativescript/widgets/VerticalScrollView;->setPadding(IIII)V

    .line 162
    .end local v2    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :goto_1
    iget v2, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredWidth:I

    invoke-virtual {p0}, Lorg/nativescript/widgets/VerticalScrollView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredWidth:I

    .line 163
    iget v2, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredHeight:I

    invoke-virtual {p0}, Lorg/nativescript/widgets/VerticalScrollView;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredHeight:I

    .line 165
    iget v2, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredWidth:I

    invoke-static {v2, p1, v1}, Lorg/nativescript/widgets/VerticalScrollView;->resolveSizeAndState(III)I

    move-result v2

    .line 166
    .local v2, "widthSizeAndState":I
    iget v3, p0, Lorg/nativescript/widgets/VerticalScrollView;->contentMeasuredHeight:I

    invoke-static {v3, p2, v1}, Lorg/nativescript/widgets/VerticalScrollView;->resolveSizeAndState(III)I

    move-result v1

    .line 168
    .local v1, "heightSizeAndState":I
    invoke-virtual {p0, v2, v1}, Lorg/nativescript/widgets/VerticalScrollView;->setMeasuredDimension(II)V

    .line 169
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 233
    move-object v0, p1

    check-cast v0, Lorg/nativescript/widgets/HorizontalScrollView$SavedState;

    .line 234
    .local v0, "ss":Lorg/nativescript/widgets/HorizontalScrollView$SavedState;
    invoke-virtual {v0}, Lorg/nativescript/widgets/HorizontalScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 235
    iput-object v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->mSavedState:Lorg/nativescript/widgets/HorizontalScrollView$SavedState;

    .line 236
    invoke-virtual {p0}, Lorg/nativescript/widgets/VerticalScrollView;->requestLayout()V

    .line 237
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 241
    invoke-super {p0}, Landroid/widget/ScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 242
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lorg/nativescript/widgets/HorizontalScrollView$SavedState;

    invoke-direct {v1, v0}, Lorg/nativescript/widgets/HorizontalScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 243
    .local v1, "ss":Lorg/nativescript/widgets/HorizontalScrollView$SavedState;
    invoke-virtual {p0}, Lorg/nativescript/widgets/VerticalScrollView;->getScrollY()I

    move-result v2

    iput v2, v1, Lorg/nativescript/widgets/HorizontalScrollView$SavedState;->scrollPosition:I

    .line 244
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 73
    iget-boolean v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->scrollEnabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 77
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 123
    iget-boolean v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0, p2}, Lorg/nativescript/widgets/VerticalScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    .line 128
    :cond_0
    iput-object p2, p0, Lorg/nativescript/widgets/VerticalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 130
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 131
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nativescript/widgets/VerticalScrollView;->mIsLayoutDirty:Z

    .line 83
    invoke-super {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 84
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 58
    iput-boolean p1, p0, Lorg/nativescript/widgets/VerticalScrollView;->scrollEnabled:Z

    .line 59
    return-void
.end method
