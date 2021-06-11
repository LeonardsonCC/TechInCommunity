.class Lcom/telerik/widget/list/SwipeLayout;
.super Landroid/view/ViewGroup;
.source "SwipeLayout.java"


# instance fields
.field private mainView:Landroid/view/View;

.field private swipeView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private static getLayoutDirectionInternal(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method protected static layoutChild(Landroid/view/View;IIII)V
    .locals 11
    .param p0, "child"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 40
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    .local v0, "childTop":I
    const/4 v1, 0x0

    .line 47
    .local v1, "childLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 48
    .local v2, "childWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 50
    .local v3, "childHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 52
    .local v5, "gravity":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 53
    const/16 v5, 0x77

    .line 56
    :cond_1
    and-int/lit8 v6, v5, 0x70

    .line 59
    .local v6, "verticalGravity":I
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ltz v7, :cond_2

    const/16 v7, 0x70

    if-ne v6, v7, :cond_2

    .line 60
    const/16 v6, 0x10

    .line 63
    :cond_2
    const/16 v7, 0x10

    if-eq v6, v7, :cond_5

    const/16 v7, 0x30

    if-eq v6, v7, :cond_4

    const/16 v7, 0x50

    if-eq v6, v7, :cond_3

    .line 78
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, p2

    .line 79
    .end local v0    # "childTop":I
    .local v7, "childTop":I
    sub-int v0, p4, p2

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    sub-int v3, v0, v8

    goto :goto_0

    .line 73
    .end local v7    # "childTop":I
    .restart local v0    # "childTop":I
    :cond_3
    sub-int v7, p4, v3

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, v8

    .line 74
    .end local v0    # "childTop":I
    .restart local v7    # "childTop":I
    goto :goto_0

    .line 65
    .end local v7    # "childTop":I
    .restart local v0    # "childTop":I
    :cond_4
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, p2

    .line 66
    .end local v0    # "childTop":I
    .restart local v7    # "childTop":I
    goto :goto_0

    .line 69
    .end local v7    # "childTop":I
    .restart local v0    # "childTop":I
    :cond_5
    sub-int v7, p4, p2

    sub-int/2addr v7, v3

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, p2

    .line 70
    .end local v0    # "childTop":I
    .restart local v7    # "childTop":I
    nop

    .line 83
    :goto_0
    invoke-static {p0}, Lcom/telerik/widget/list/SwipeLayout;->getLayoutDirectionInternal(Landroid/view/View;)I

    move-result v0

    invoke-static {v5, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v8, 0x7

    and-int/2addr v0, v8

    .line 86
    .local v0, "horizontalGravity":I
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ltz v9, :cond_6

    if-ne v0, v8, :cond_6

    .line 87
    const/4 v0, 0x1

    .line 90
    :cond_6
    const/4 v8, 0x1

    if-eq v0, v8, :cond_9

    const/4 v8, 0x3

    if-eq v0, v8, :cond_8

    const/4 v8, 0x5

    if-eq v0, v8, :cond_7

    .line 105
    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, p1

    .line 106
    .end local v1    # "childLeft":I
    .local v8, "childLeft":I
    sub-int v1, p3, p1

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    sub-int v2, v1, v9

    goto :goto_1

    .line 100
    .end local v8    # "childLeft":I
    .restart local v1    # "childLeft":I
    :cond_7
    sub-int v8, p3, v2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    .line 101
    .end local v1    # "childLeft":I
    .restart local v8    # "childLeft":I
    goto :goto_1

    .line 92
    .end local v8    # "childLeft":I
    .restart local v1    # "childLeft":I
    :cond_8
    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, p1

    .line 93
    .end local v1    # "childLeft":I
    .restart local v8    # "childLeft":I
    goto :goto_1

    .line 96
    .end local v8    # "childLeft":I
    .restart local v1    # "childLeft":I
    :cond_9
    sub-int v8, p3, p1

    sub-int/2addr v8, v2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, p1

    .line 97
    .end local v1    # "childLeft":I
    .restart local v8    # "childLeft":I
    nop

    .line 110
    :goto_1
    add-int v1, v8, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 111
    .local v1, "childRight":I
    add-int v9, v7, v3

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 112
    .local v9, "childBottom":I
    int-to-float v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 113
    int-to-float v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 115
    invoke-virtual {p0, v8, v7, v1, v9}, Landroid/view/View;->layout(IIII)V

    .line 116
    return-void

    .line 41
    .end local v0    # "horizontalGravity":I
    .end local v1    # "childRight":I
    .end local v2    # "childWidth":I
    .end local v3    # "childHeight":I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "gravity":I
    .end local v6    # "verticalGravity":I
    .end local v7    # "childTop":I
    .end local v8    # "childLeft":I
    .end local v9    # "childBottom":I
    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 193
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 180
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 198
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 29
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeLayout;->getPaddingLeft()I

    move-result v0

    .line 30
    .local v0, "parentLeft":I
    sub-int v1, p4, p2

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 32
    .local v1, "parentRight":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeLayout;->getPaddingTop()I

    move-result v2

    .line 33
    .local v2, "parentTop":I
    sub-int v3, p5, p3

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 35
    .local v3, "parentBottom":I
    iget-object v4, p0, Lcom/telerik/widget/list/SwipeLayout;->mainView:Landroid/view/View;

    invoke-static {v4, v0, v2, v1, v3}, Lcom/telerik/widget/list/SwipeLayout;->layoutChild(Landroid/view/View;IIII)V

    .line 36
    iget-object v4, p0, Lcom/telerik/widget/list/SwipeLayout;->swipeView:Landroid/view/View;

    invoke-static {v4, v0, v2, v1, v3}, Lcom/telerik/widget/list/SwipeLayout;->layoutChild(Landroid/view/View;IIII)V

    .line 37
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 129
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeLayout;->mainView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 130
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/telerik/widget/list/SwipeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 131
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeLayout;->mainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 132
    .local v0, "maxWidth":I
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeLayout;->mainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 133
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 136
    .local v2, "childState":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 137
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 140
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 141
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 143
    iget-object v3, p0, Lcom/telerik/widget/list/SwipeLayout;->mainView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v2, v3}, Lcom/telerik/widget/list/SwipeLayout;->combineMeasuredStates(II)I

    move-result v2

    .line 147
    invoke-static {v0, p1, v2}, Lcom/telerik/widget/list/SwipeLayout;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v2, 0x10

    .line 148
    invoke-static {v1, p2, v4}, Lcom/telerik/widget/list/SwipeLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 147
    invoke-virtual {p0, v3, v4}, Lcom/telerik/widget/list/SwipeLayout;->setMeasuredDimension(II)V

    .line 151
    iget-object v6, p0, Lcom/telerik/widget/list/SwipeLayout;->swipeView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 152
    iget-object v3, p0, Lcom/telerik/widget/list/SwipeLayout;->mainView:Landroid/view/View;

    .line 154
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeLayout;->mainView:Landroid/view/View;

    .line 156
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x0

    .line 152
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/telerik/widget/list/SwipeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 159
    .end local v0    # "maxWidth":I
    .end local v1    # "maxHeight":I
    .end local v2    # "childState":I
    :cond_0
    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/telerik/widget/list/SwipeLayout;->setMeasuredDimension(II)V

    .line 163
    :goto_0
    return-void
.end method

.method public setMainView(Landroid/view/View;)V
    .locals 0
    .param p1, "mainView"    # Landroid/view/View;

    .line 171
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeLayout;->mainView:Landroid/view/View;

    .line 172
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SwipeLayout;->addView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public setSwipeView(Landroid/view/View;)V
    .locals 1
    .param p1, "swipeView"    # Landroid/view/View;

    .line 166
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeLayout;->swipeView:Landroid/view/View;

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/telerik/widget/list/SwipeLayout;->addView(Landroid/view/View;I)V

    .line 168
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method
