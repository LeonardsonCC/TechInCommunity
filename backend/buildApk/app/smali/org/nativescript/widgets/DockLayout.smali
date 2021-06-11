.class public Lorg/nativescript/widgets/DockLayout;
.super Lorg/nativescript/widgets/LayoutBase;
.source "DockLayout.java"


# instance fields
.field private _stretchLastChild:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/LayoutBase;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nativescript/widgets/DockLayout;->_stretchLastChild:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getStretchLastChild()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lorg/nativescript/widgets/DockLayout;->_stretchLastChild:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 110
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getPaddingLeft()I

    move-result v1

    .line 111
    .local v1, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getPaddingTop()I

    move-result v2

    .line 113
    .local v2, "childTop":I
    move v3, v1

    .line 114
    .local v3, "x":I
    move v4, v2

    .line 116
    .local v4, "y":I
    sub-int v5, p4, p2

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 117
    .local v5, "remainingWidth":I
    sub-int v7, p5, p3

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 119
    .local v7, "remainingHeight":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getChildCount()I

    move-result v8

    .line 120
    .local v8, "count":I
    const/4 v9, 0x0

    .line 121
    .local v9, "childToStretch":Landroid/view/View;
    if-lez v8, :cond_0

    iget-boolean v10, v0, Lorg/nativescript/widgets/DockLayout;->_stretchLastChild:Z

    if-eqz v10, :cond_0

    .line 122
    add-int/lit8 v8, v8, -0x1

    .line 123
    invoke-virtual {v0, v8}, Lorg/nativescript/widgets/DockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 126
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_5

    .line 127
    invoke-virtual {v0, v10}, Lorg/nativescript/widgets/DockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 128
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    .line 129
    goto :goto_2

    .line 132
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 133
    .local v12, "childLayoutParams":Lorg/nativescript/widgets/CommonLayoutParams;
    invoke-static {v11}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v13

    .line 134
    .local v13, "childWidth":I
    invoke-static {v11}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v14

    .line 136
    .local v14, "childHeight":I
    sget-object v15, Lorg/nativescript/widgets/DockLayout$1;->$SwitchMap$org$nativescript$widgets$Dock:[I

    iget-object v6, v12, Lorg/nativescript/widgets/CommonLayoutParams;->dock:Lorg/nativescript/widgets/Dock;

    invoke-virtual {v6}, Lorg/nativescript/widgets/Dock;->ordinal()I

    move-result v6

    aget v6, v15, v6

    const/4 v15, 0x1

    if-eq v6, v15, :cond_4

    const/4 v15, 0x2

    if-eq v6, v15, :cond_3

    const/4 v15, 0x4

    if-eq v6, v15, :cond_2

    .line 161
    move v1, v3

    .line 162
    move v2, v4

    .line 163
    move v14, v7

    .line 164
    add-int/2addr v3, v13

    .line 165
    sub-int v6, v5, v13

    const/4 v15, 0x0

    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 153
    :cond_2
    const/4 v15, 0x0

    add-int v6, v3, v5

    sub-int v1, v6, v13

    .line 154
    move v2, v4

    .line 155
    move v14, v7

    .line 156
    sub-int v6, v5, v13

    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 157
    const/4 v15, 0x0

    goto :goto_1

    .line 146
    :cond_3
    move v1, v3

    .line 147
    add-int v6, v4, v7

    sub-int v2, v6, v14

    .line 148
    move v13, v5

    .line 149
    sub-int v6, v7, v14

    const/4 v15, 0x0

    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 150
    const/4 v15, 0x0

    goto :goto_1

    .line 138
    :cond_4
    move v1, v3

    .line 139
    move v2, v4

    .line 140
    move v13, v5

    .line 141
    add-int/2addr v4, v14

    .line 142
    sub-int v6, v7, v14

    const/4 v15, 0x0

    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 143
    nop

    .line 169
    :goto_1
    add-int v6, v1, v13

    add-int v15, v2, v14

    invoke-static {v11, v1, v2, v6, v15}, Lorg/nativescript/widgets/CommonLayoutParams;->layoutChild(Landroid/view/View;IIII)V

    .line 126
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "childLayoutParams":Lorg/nativescript/widgets/CommonLayoutParams;
    .end local v13    # "childWidth":I
    .end local v14    # "childHeight":I
    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 172
    .end local v10    # "i":I
    :cond_5
    if-eqz v9, :cond_6

    .line 173
    add-int v6, v3, v5

    add-int v10, v4, v7

    invoke-static {v9, v3, v4, v6, v10}, Lorg/nativescript/widgets/CommonLayoutParams;->layoutChild(Landroid/view/View;IIII)V

    .line 176
    :cond_6
    invoke-static/range {p0 .. p0}, Lorg/nativescript/widgets/CommonLayoutParams;->restoreOriginalParams(Landroid/view/ViewGroup;)V

    .line 177
    return-void
.end method

.method protected onMeasure(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 30
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p2}, Lorg/nativescript/widgets/CommonLayoutParams;->adjustChildrenLayoutParams(Landroid/view/ViewGroup;II)V

    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "measureWidth":I
    const/4 v2, 0x0

    .line 35
    .local v2, "measureHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 36
    .local v3, "width":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 38
    .local v4, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 39
    .local v5, "height":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 41
    .local v6, "heightMode":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 42
    .local v7, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    .line 44
    .local v8, "horizontalPadding":I
    if-nez v4, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    sub-int v10, v3, v8

    .line 45
    .local v10, "remainingWidth":I
    :goto_0
    if-nez v6, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    sub-int v11, v5, v7

    .line 47
    .local v11, "remainingHeight":I
    :goto_1
    const/4 v12, 0x0

    .line 48
    .local v12, "tempHeight":I
    const/4 v13, 0x0

    .line 49
    .local v13, "tempWidth":I
    const/4 v14, 0x0

    .line 50
    .local v14, "childWidthMeasureSpec":I
    const/4 v15, 0x0

    .line 51
    .local v15, "childHeightMeasureSpec":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getChildCount()I

    move-result v9

    .line 52
    .local v9, "count":I
    const/16 v16, 0x0

    move/from16 v25, v16

    move/from16 v16, v3

    move/from16 v3, v25

    .local v3, "i":I
    .local v16, "width":I
    :goto_2
    if-ge v3, v9, :cond_7

    .line 53
    move/from16 v17, v5

    .end local v5    # "height":I
    .local v17, "height":I
    invoke-virtual {v0, v3}, Lorg/nativescript/widgets/DockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 54
    .local v5, "child":Landroid/view/View;
    move/from16 v18, v14

    .end local v14    # "childWidthMeasureSpec":I
    .local v18, "childWidthMeasureSpec":I
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v14

    move/from16 v19, v15

    .end local v15    # "childHeightMeasureSpec":I
    .local v19, "childHeightMeasureSpec":I
    const/16 v15, 0x8

    if-ne v14, v15, :cond_2

    .line 55
    move/from16 v21, v4

    move/from16 v14, v18

    move/from16 v15, v19

    goto/16 :goto_6

    .line 58
    :cond_2
    iget-boolean v14, v0, Lorg/nativescript/widgets/DockLayout;->_stretchLastChild:Z

    if-eqz v14, :cond_3

    add-int/lit8 v14, v9, -0x1

    if-ne v3, v14, :cond_3

    .line 59
    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 60
    .end local v18    # "childWidthMeasureSpec":I
    .restart local v14    # "childWidthMeasureSpec":I
    invoke-static {v11, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .end local v19    # "childHeightMeasureSpec":I
    .restart local v15    # "childHeightMeasureSpec":I
    goto :goto_5

    .line 64
    .end local v14    # "childWidthMeasureSpec":I
    .end local v15    # "childHeightMeasureSpec":I
    .restart local v18    # "childWidthMeasureSpec":I
    .restart local v19    # "childHeightMeasureSpec":I
    :cond_3
    const/high16 v15, 0x40000000    # 2.0f

    if-ne v4, v15, :cond_4

    const/high16 v14, -0x80000000

    goto :goto_3

    :cond_4
    move v14, v4

    :goto_3
    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 65
    .end local v18    # "childWidthMeasureSpec":I
    .restart local v14    # "childWidthMeasureSpec":I
    if-ne v6, v15, :cond_5

    const/high16 v15, -0x80000000

    goto :goto_4

    :cond_5
    move v15, v6

    :goto_4
    invoke-static {v11, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 68
    .end local v19    # "childHeightMeasureSpec":I
    .restart local v15    # "childHeightMeasureSpec":I
    :goto_5
    invoke-static {v5, v14, v15}, Lorg/nativescript/widgets/CommonLayoutParams;->measureChild(Landroid/view/View;II)V

    .line 69
    invoke-static {v5}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v18

    .line 70
    .local v18, "childMeasuredWidth":I
    invoke-static {v5}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v19

    .line 72
    .local v19, "childMeasuredHeight":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move/from16 v21, v4

    .end local v4    # "widthMode":I
    .local v21, "widthMode":I
    move-object/from16 v4, v20

    check-cast v4, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 73
    .local v4, "childLayoutParams":Lorg/nativescript/widgets/CommonLayoutParams;
    move-object/from16 v20, v5

    .end local v5    # "child":Landroid/view/View;
    .local v20, "child":Landroid/view/View;
    iget-object v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->dock:Lorg/nativescript/widgets/Dock;

    .line 74
    .local v5, "dock":Lorg/nativescript/widgets/Dock;
    sget-object v22, Lorg/nativescript/widgets/DockLayout$1;->$SwitchMap$org$nativescript$widgets$Dock:[I

    invoke-virtual {v5}, Lorg/nativescript/widgets/Dock;->ordinal()I

    move-result v23

    move-object/from16 v24, v4

    .end local v4    # "childLayoutParams":Lorg/nativescript/widgets/CommonLayoutParams;
    .local v24, "childLayoutParams":Lorg/nativescript/widgets/CommonLayoutParams;
    aget v4, v22, v23

    move-object/from16 v22, v5

    .end local v5    # "dock":Lorg/nativescript/widgets/Dock;
    .local v22, "dock":Lorg/nativescript/widgets/Dock;
    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 86
    sub-int v4, v10, v18

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 87
    .end local v10    # "remainingWidth":I
    .local v4, "remainingWidth":I
    add-int v13, v13, v18

    .line 88
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 89
    add-int v5, v12, v19

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v10, v4

    goto :goto_6

    .line 77
    .end local v4    # "remainingWidth":I
    .restart local v10    # "remainingWidth":I
    :cond_6
    sub-int v4, v11, v19

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 78
    .end local v11    # "remainingHeight":I
    .local v4, "remainingHeight":I
    add-int v12, v12, v19

    .line 79
    add-int v5, v13, v18

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 80
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 81
    move v11, v4

    .line 52
    .end local v4    # "remainingHeight":I
    .end local v18    # "childMeasuredWidth":I
    .end local v19    # "childMeasuredHeight":I
    .end local v20    # "child":Landroid/view/View;
    .end local v22    # "dock":Lorg/nativescript/widgets/Dock;
    .end local v24    # "childLayoutParams":Lorg/nativescript/widgets/CommonLayoutParams;
    .restart local v11    # "remainingHeight":I
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v17

    move/from16 v4, v21

    goto/16 :goto_2

    .end local v17    # "height":I
    .end local v21    # "widthMode":I
    .local v4, "widthMode":I
    .local v5, "height":I
    :cond_7
    move/from16 v21, v4

    move/from16 v17, v5

    move/from16 v18, v14

    .line 95
    .end local v3    # "i":I
    .end local v4    # "widthMode":I
    .end local v5    # "height":I
    .end local v14    # "childWidthMeasureSpec":I
    .restart local v17    # "height":I
    .local v18, "childWidthMeasureSpec":I
    .restart local v21    # "widthMode":I
    add-int/2addr v1, v8

    .line 96
    add-int/2addr v2, v7

    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 100
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/DockLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 102
    move/from16 v3, p1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lorg/nativescript/widgets/DockLayout;->resolveSizeAndState(III)I

    move-result v5

    .line 103
    .local v5, "widthSizeAndState":I
    move/from16 v14, p2

    invoke-static {v2, v14, v4}, Lorg/nativescript/widgets/DockLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 105
    .local v4, "heightSizeAndState":I
    invoke-virtual {v0, v5, v4}, Lorg/nativescript/widgets/DockLayout;->setMeasuredDimension(II)V

    .line 106
    return-void
.end method

.method public setStretchLastChild(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 25
    iput-boolean p1, p0, Lorg/nativescript/widgets/DockLayout;->_stretchLastChild:Z

    .line 26
    invoke-virtual {p0}, Lorg/nativescript/widgets/DockLayout;->requestLayout()V

    .line 27
    return-void
.end method
