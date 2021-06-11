.class public Lorg/nativescript/widgets/ContentLayout;
.super Lorg/nativescript/widgets/LayoutBase;
.source "ContentLayout.java"


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

    .line 56
    invoke-virtual {p0}, Lorg/nativescript/widgets/ContentLayout;->getPaddingLeft()I

    move-result v0

    .line 57
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/ContentLayout;->getPaddingRight()I

    move-result v1

    .line 58
    .local v1, "paddingRight":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/ContentLayout;->getPaddingTop()I

    move-result v2

    .line 59
    .local v2, "paddingTop":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/ContentLayout;->getPaddingBottom()I

    move-result v3

    .line 61
    .local v3, "paddingBottom":I
    move v4, v0

    .line 62
    .local v4, "childLeft":I
    move v5, v2

    .line 64
    .local v5, "childTop":I
    sub-int v6, p4, p2

    add-int v7, v0, v1

    sub-int/2addr v6, v7

    .line 65
    .local v6, "childRight":I
    sub-int v7, p5, p3

    add-int v8, v1, v3

    sub-int/2addr v7, v8

    .line 67
    .local v7, "childBottom":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/ContentLayout;->getChildCount()I

    move-result v9

    .local v9, "count":I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 68
    move-object v10, p0

    invoke-virtual {p0, v8}, Lorg/nativescript/widgets/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 69
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 70
    goto :goto_1

    .line 73
    :cond_0
    invoke-static {v11, v4, v5, v6, v7}, Lorg/nativescript/widgets/CommonLayoutParams;->layoutChild(Landroid/view/View;IIII)V

    .line 67
    .end local v11    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move-object v10, p0

    .line 76
    .end local v8    # "i":I
    .end local v9    # "count":I
    invoke-static {p0}, Lorg/nativescript/widgets/CommonLayoutParams;->restoreOriginalParams(Landroid/view/ViewGroup;)V

    .line 77
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 21
    invoke-static {p0, p1, p2}, Lorg/nativescript/widgets/CommonLayoutParams;->adjustChildrenLayoutParams(Landroid/view/ViewGroup;II)V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "measureWidth":I
    const/4 v1, 0x0

    .line 26
    .local v1, "measureHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/ContentLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 27
    invoke-virtual {p0, v2}, Lorg/nativescript/widgets/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 28
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 29
    goto :goto_1

    .line 32
    :cond_0
    invoke-static {v4, p1, p2}, Lorg/nativescript/widgets/CommonLayoutParams;->measureChild(Landroid/view/View;II)V

    .line 33
    invoke-static {v4}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v5

    .line 34
    .local v5, "childMeasuredWidth":I
    invoke-static {v4}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v6

    .line 36
    .local v6, "childMeasuredHeight":I
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 37
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 26
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childMeasuredWidth":I
    .end local v6    # "childMeasuredHeight":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    invoke-virtual {p0}, Lorg/nativescript/widgets/ContentLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lorg/nativescript/widgets/ContentLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 42
    invoke-virtual {p0}, Lorg/nativescript/widgets/ContentLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/nativescript/widgets/ContentLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 45
    invoke-virtual {p0}, Lorg/nativescript/widgets/ContentLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 46
    invoke-virtual {p0}, Lorg/nativescript/widgets/ContentLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 48
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lorg/nativescript/widgets/ContentLayout;->resolveSizeAndState(III)I

    move-result v3

    .line 49
    .local v3, "widthSizeAndState":I
    invoke-static {v1, p2, v2}, Lorg/nativescript/widgets/ContentLayout;->resolveSizeAndState(III)I

    move-result v2

    .line 51
    .local v2, "heightSizeAndState":I
    invoke-virtual {p0, v3, v2}, Lorg/nativescript/widgets/ContentLayout;->setMeasuredDimension(II)V

    .line 52
    return-void
.end method
