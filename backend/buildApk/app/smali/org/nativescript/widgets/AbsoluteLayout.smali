.class public Lorg/nativescript/widgets/AbsoluteLayout;
.super Lorg/nativescript/widgets/LayoutBase;
.source "AbsoluteLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/LayoutBase;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 58
    invoke-virtual {p0}, Lorg/nativescript/widgets/AbsoluteLayout;->getPaddingLeft()I

    move-result v0

    .line 59
    .local v0, "leftPadding":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/AbsoluteLayout;->getPaddingTop()I

    move-result v1

    .line 61
    .local v1, "topPadding":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/AbsoluteLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 62
    move-object v4, p0

    invoke-virtual {p0, v2}, Lorg/nativescript/widgets/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 63
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 64
    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 68
    .local v6, "childLayoutParams":Lorg/nativescript/widgets/CommonLayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 69
    .local v7, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 71
    .local v8, "childHeight":I
    iget v9, v6, Lorg/nativescript/widgets/CommonLayoutParams;->left:I

    add-int/2addr v9, v0

    .line 72
    .local v9, "childLeft":I
    iget v10, v6, Lorg/nativescript/widgets/CommonLayoutParams;->top:I

    add-int/2addr v10, v1

    .line 73
    .local v10, "childTop":I
    add-int v11, v9, v7

    iget v12, v6, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    iget v12, v6, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    .line 74
    .local v11, "childRight":I
    add-int v12, v10, v8

    iget v13, v6, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v6, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    .line 76
    .local v12, "childBottom":I
    invoke-static {v5, v9, v10, v11, v12}, Lorg/nativescript/widgets/CommonLayoutParams;->layoutChild(Landroid/view/View;IIII)V

    .line 61
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLayoutParams":Lorg/nativescript/widgets/CommonLayoutParams;
    .end local v7    # "childWidth":I
    .end local v8    # "childHeight":I
    .end local v9    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v11    # "childRight":I
    .end local v12    # "childBottom":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, p0

    .line 79
    .end local v2    # "i":I
    .end local v3    # "count":I
    invoke-static {p0}, Lorg/nativescript/widgets/CommonLayoutParams;->restoreOriginalParams(Landroid/view/ViewGroup;)V

    .line 80
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 21
    invoke-static {p0, p1, p2}, Lorg/nativescript/widgets/CommonLayoutParams;->adjustChildrenLayoutParams(Landroid/view/ViewGroup;II)V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "measureWidth":I
    const/4 v1, 0x0

    .line 25
    .local v1, "measureHeight":I
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 27
    .local v3, "childMeasureSpec":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/AbsoluteLayout;->getChildCount()I

    move-result v5

    .local v5, "count":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 28
    invoke-virtual {p0, v4}, Lorg/nativescript/widgets/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 29
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 30
    goto :goto_1

    .line 33
    :cond_0
    invoke-static {v6, v3, v3}, Lorg/nativescript/widgets/CommonLayoutParams;->measureChild(Landroid/view/View;II)V

    .line 34
    invoke-static {v6}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v7

    .line 35
    .local v7, "childMeasuredWidth":I
    invoke-static {v6}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v8

    .line 37
    .local v8, "childMeasuredHeight":I
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 38
    .local v9, "childLayoutParams":Lorg/nativescript/widgets/CommonLayoutParams;
    iget v10, v9, Lorg/nativescript/widgets/CommonLayoutParams;->left:I

    add-int/2addr v10, v7

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 39
    iget v10, v9, Lorg/nativescript/widgets/CommonLayoutParams;->top:I

    add-int/2addr v10, v8

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 27
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childMeasuredWidth":I
    .end local v8    # "childMeasuredHeight":I
    .end local v9    # "childLayoutParams":Lorg/nativescript/widgets/CommonLayoutParams;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_1
    invoke-virtual {p0}, Lorg/nativescript/widgets/AbsoluteLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lorg/nativescript/widgets/AbsoluteLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 44
    invoke-virtual {p0}, Lorg/nativescript/widgets/AbsoluteLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lorg/nativescript/widgets/AbsoluteLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 47
    invoke-virtual {p0}, Lorg/nativescript/widgets/AbsoluteLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 48
    invoke-virtual {p0}, Lorg/nativescript/widgets/AbsoluteLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 50
    invoke-static {v0, p1, v2}, Lorg/nativescript/widgets/AbsoluteLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 51
    .local v4, "widthSizeAndState":I
    invoke-static {v1, p2, v2}, Lorg/nativescript/widgets/AbsoluteLayout;->resolveSizeAndState(III)I

    move-result v2

    .line 53
    .local v2, "heightSizeAndState":I
    invoke-virtual {p0, v4, v2}, Lorg/nativescript/widgets/AbsoluteLayout;->setMeasuredDimension(II)V

    .line 54
    return-void
.end method
