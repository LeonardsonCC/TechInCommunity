.class public Lorg/nativescript/widgets/StackLayout;
.super Lorg/nativescript/widgets/LayoutBase;
.source "StackLayout.java"


# static fields
.field static final TAG:Ljava/lang/String; = "JS"


# instance fields
.field private _orientation:Lorg/nativescript/widgets/Orientation;

.field private _totalLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/LayoutBase;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/StackLayout;->_totalLength:I

    .line 19
    sget-object v0, Lorg/nativescript/widgets/Orientation;->vertical:Lorg/nativescript/widgets/Orientation;

    iput-object v0, p0, Lorg/nativescript/widgets/StackLayout;->_orientation:Lorg/nativescript/widgets/Orientation;

    .line 23
    return-void
.end method

.method private isUnsizedScrollableView(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 229
    .local v0, "childLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    instance-of v1, p1, Landroid/widget/ListView;

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/nativescript/widgets/VerticalScrollView;

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 233
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private layoutHorizontal(IIII)V
    .locals 15
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 186
    move-object v0, p0

    invoke-virtual {p0}, Lorg/nativescript/widgets/StackLayout;->getPaddingLeft()I

    move-result v1

    .line 187
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/StackLayout;->getPaddingRight()I

    move-result v2

    .line 188
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/StackLayout;->getPaddingTop()I

    move-result v3

    .line 189
    .local v3, "paddingTop":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/StackLayout;->getPaddingBottom()I

    move-result v4

    .line 191
    .local v4, "paddingBottom":I
    move v5, v3

    .line 192
    .local v5, "childTop":I
    const/4 v6, 0x0

    .line 193
    .local v6, "childLeft":I
    sub-int v7, p4, p2

    sub-int/2addr v7, v4

    .line 195
    .local v7, "childBottom":I
    invoke-static {p0}, Lorg/nativescript/widgets/LayoutBase;->getGravity(Landroid/view/View;)I

    move-result v8

    .line 196
    .local v8, "gravity":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/StackLayout;->getLayoutDirection()I

    move-result v9

    invoke-static {v8, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v9

    and-int/lit8 v9, v9, 0x7

    .line 198
    .local v9, "horizontalGravity":I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    .line 210
    move v6, v1

    goto :goto_0

    .line 204
    :cond_0
    sub-int v10, p3, p1

    iget v11, v0, Lorg/nativescript/widgets/StackLayout;->_totalLength:I

    sub-int/2addr v10, v11

    add-int v6, v10, v1

    .line 205
    goto :goto_0

    .line 200
    :cond_1
    sub-int v10, p3, p1

    iget v11, v0, Lorg/nativescript/widgets/StackLayout;->_totalLength:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int v6, v10, v1

    .line 201
    nop

    .line 214
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/StackLayout;->getChildCount()I

    move-result v11

    .local v11, "count":I
    :goto_1
    if-ge v10, v11, :cond_3

    .line 215
    invoke-virtual {p0, v10}, Lorg/nativescript/widgets/StackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 216
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    .line 217
    goto :goto_2

    .line 220
    :cond_2
    invoke-static {v12}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v13

    .line 221
    .local v13, "childWidth":I
    add-int v14, v6, v13

    invoke-static {v12, v6, v5, v14, v7}, Lorg/nativescript/widgets/CommonLayoutParams;->layoutChild(Landroid/view/View;IIII)V

    .line 222
    add-int/2addr v6, v13

    .line 214
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "childWidth":I
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 224
    .end local v10    # "i":I
    .end local v11    # "count":I
    :cond_3
    return-void
.end method

.method private layoutVertical(IIII)V
    .locals 15
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 143
    move-object v0, p0

    invoke-virtual {p0}, Lorg/nativescript/widgets/StackLayout;->getPaddingLeft()I

    move-result v1

    .line 144
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/StackLayout;->getPaddingRight()I

    move-result v2

    .line 145
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/StackLayout;->getPaddingTop()I

    move-result v3

    .line 146
    .local v3, "paddingTop":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/StackLayout;->getPaddingBottom()I

    move-result v4

    .line 148
    .local v4, "paddingBottom":I
    const/4 v5, 0x0

    .line 149
    .local v5, "childTop":I
    move v6, v1

    .line 150
    .local v6, "childLeft":I
    sub-int v7, p3, p1

    sub-int/2addr v7, v2

    .line 152
    .local v7, "childRight":I
    invoke-static {p0}, Lorg/nativescript/widgets/LayoutBase;->getGravity(Landroid/view/View;)I

    move-result v8

    .line 153
    .local v8, "gravity":I
    and-int/lit8 v9, v8, 0x70

    .line 155
    .local v9, "verticalGravity":I
    const/16 v10, 0x10

    if-eq v9, v10, :cond_1

    const/16 v10, 0x50

    if-eq v9, v10, :cond_0

    .line 167
    move v5, v3

    goto :goto_0

    .line 161
    :cond_0
    sub-int v10, p4, p2

    iget v11, v0, Lorg/nativescript/widgets/StackLayout;->_totalLength:I

    sub-int/2addr v10, v11

    add-int v5, v10, v3

    .line 162
    goto :goto_0

    .line 157
    :cond_1
    sub-int v10, p4, p2

    iget v11, v0, Lorg/nativescript/widgets/StackLayout;->_totalLength:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int v5, v10, v3

    .line 158
    nop

    .line 171
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/StackLayout;->getChildCount()I

    move-result v11

    .local v11, "count":I
    :goto_1
    if-ge v10, v11, :cond_3

    .line 172
    invoke-virtual {p0, v10}, Lorg/nativescript/widgets/StackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 173
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    .line 174
    goto :goto_2

    .line 177
    :cond_2
    invoke-static {v12}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v13

    .line 178
    .local v13, "childHeight":I
    add-int v14, v5, v13

    invoke-static {v12, v6, v5, v7, v14}, Lorg/nativescript/widgets/CommonLayoutParams;->layoutChild(Landroid/view/View;IIII)V

    .line 179
    add-int/2addr v5, v13

    .line 171
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "childHeight":I
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 181
    .end local v10    # "i":I
    .end local v11    # "count":I
    :cond_3
    return-void
.end method


# virtual methods
.method public getOrientation()Lorg/nativescript/widgets/Orientation;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/nativescript/widgets/StackLayout;->_orientation:Lorg/nativescript/widgets/Orientation;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 131
    iget-object v0, p0, Lorg/nativescript/widgets/StackLayout;->_orientation:Lorg/nativescript/widgets/Orientation;

    sget-object v1, Lorg/nativescript/widgets/Orientation;->vertical:Lorg/nativescript/widgets/Orientation;

    if-ne v0, v1, :cond_0

    .line 132
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/nativescript/widgets/StackLayout;->layoutVertical(IIII)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/nativescript/widgets/StackLayout;->layoutHorizontal(IIII)V

    .line 138
    :goto_0
    invoke-static {p0}, Lorg/nativescript/widgets/CommonLayoutParams;->restoreOriginalParams(Landroid/view/ViewGroup;)V

    .line 139
    return-void
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 35
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p2}, Lorg/nativescript/widgets/CommonLayoutParams;->adjustChildrenLayoutParams(Landroid/view/ViewGroup;II)V

    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 39
    .local v2, "measureWidth":I
    const/4 v3, 0x0

    .line 41
    .local v3, "measureHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 42
    .local v4, "width":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 44
    .local v5, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 45
    .local v6, "height":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 47
    .local v7, "heightMode":I
    iget-object v8, v0, Lorg/nativescript/widgets/StackLayout;->_orientation:Lorg/nativescript/widgets/Orientation;

    sget-object v9, Lorg/nativescript/widgets/Orientation;->vertical:Lorg/nativescript/widgets/Orientation;

    const/4 v10, 0x0

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 48
    .local v8, "isVertical":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/StackLayout;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/StackLayout;->getPaddingBottom()I

    move-result v11

    add-int/2addr v9, v11

    .line 49
    .local v9, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/StackLayout;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/StackLayout;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    .line 51
    .local v11, "horizontalPadding":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/StackLayout;->getChildCount()I

    move-result v12

    .line 55
    .local v12, "count":I
    if-eqz v8, :cond_1

    move v13, v7

    goto :goto_1

    :cond_1
    move v13, v5

    .line 56
    .local v13, "mode":I
    :goto_1
    if-nez v13, :cond_2

    .line 57
    const/4 v14, 0x0

    .line 58
    .local v14, "measureSpecMode":I
    const/4 v15, 0x0

    .local v15, "remainingLength":I
    goto :goto_2

    .line 61
    .end local v14    # "measureSpecMode":I
    .end local v15    # "remainingLength":I
    :cond_2
    const/high16 v14, -0x80000000

    .line 62
    .restart local v14    # "measureSpecMode":I
    if-eqz v8, :cond_3

    sub-int v15, v6, v9

    goto :goto_2

    :cond_3
    sub-int v15, v4, v11

    .line 66
    .restart local v15    # "remainingLength":I
    :goto_2
    if-eqz v8, :cond_5

    .line 67
    if-nez v5, :cond_4

    const/16 v16, 0x0

    goto :goto_3

    :cond_4
    sub-int v16, v4, v11

    :goto_3
    move/from16 v17, v16

    .line 68
    .local v17, "childWidth":I
    move/from16 v16, v1

    move/from16 v1, v17

    .end local v17    # "childWidth":I
    .local v1, "childWidth":I
    .local v16, "childState":I
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 69
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 70
    .local v1, "childMeasureSpec":I
    goto :goto_5

    .line 72
    .end local v16    # "childState":I
    .local v1, "childState":I
    :cond_5
    move/from16 v16, v1

    .end local v1    # "childState":I
    .restart local v16    # "childState":I
    if-nez v7, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    sub-int v1, v6, v9

    .line 73
    .local v1, "childHeight":I
    :goto_4
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 74
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v1, v17

    .line 77
    .local v1, "childMeasureSpec":I
    :goto_5
    const/16 v17, 0x0

    move v10, v15

    move v15, v3

    move v3, v2

    move/from16 v2, v16

    move/from16 v23, v17

    move/from16 v17, v4

    move/from16 v4, v23

    .end local v16    # "childState":I
    .local v2, "childState":I
    .local v3, "measureWidth":I
    .local v4, "i":I
    .local v10, "remainingLength":I
    .local v15, "measureHeight":I
    .local v17, "width":I
    :goto_6
    if-ge v4, v12, :cond_a

    .line 78
    move/from16 v18, v5

    .end local v5    # "widthMode":I
    .local v18, "widthMode":I
    invoke-virtual {v0, v4}, Lorg/nativescript/widgets/StackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 79
    .local v5, "child":Landroid/view/View;
    move/from16 v19, v6

    .end local v6    # "height":I
    .local v19, "height":I
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v20, v7

    .end local v7    # "heightMode":I
    .local v20, "heightMode":I
    const/16 v7, 0x8

    if-ne v6, v7, :cond_7

    .line 80
    move/from16 v21, v1

    const/4 v6, 0x0

    goto :goto_8

    .line 83
    :cond_7
    if-eqz v8, :cond_9

    .line 87
    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v5, v1, v6}, Lorg/nativescript/widgets/CommonLayoutParams;->measureChild(Landroid/view/View;II)V

    .line 89
    const/high16 v6, -0x80000000

    if-ne v14, v6, :cond_8

    invoke-direct {v0, v5}, Lorg/nativescript/widgets/StackLayout;->isUnsizedScrollableView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 90
    const-string v6, "JS"

    const-string v7, "Avoid using ListView or ScrollView with no explicit height set inside StackLayout. Doing so might results in poor user interface performance and a poor user experience."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_8
    invoke-static {v5}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v6

    .line 94
    .local v6, "childMeasuredWidth":I
    invoke-static {v5}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v7

    .line 96
    .local v7, "childMeasuredHeight":I
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 97
    add-int/2addr v15, v7

    .line 98
    move/from16 v21, v3

    .end local v3    # "measureWidth":I
    .local v21, "measureWidth":I
    sub-int v3, v10, v7

    move/from16 v22, v6

    const/4 v6, 0x0

    .end local v6    # "childMeasuredWidth":I
    .local v22, "childMeasuredWidth":I
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 99
    .end local v7    # "childMeasuredHeight":I
    .end local v10    # "remainingLength":I
    .end local v22    # "childMeasuredWidth":I
    .local v3, "remainingLength":I
    const/4 v6, 0x0

    move/from16 v23, v21

    move/from16 v21, v1

    move v1, v3

    move/from16 v3, v23

    goto :goto_7

    .line 101
    .end local v21    # "measureWidth":I
    .local v3, "measureWidth":I
    .restart local v10    # "remainingLength":I
    :cond_9
    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v5, v6, v1}, Lorg/nativescript/widgets/CommonLayoutParams;->measureChild(Landroid/view/View;II)V

    .line 102
    invoke-static {v5}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v6

    .line 103
    .restart local v6    # "childMeasuredWidth":I
    invoke-static {v5}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v7

    .line 105
    .restart local v7    # "childMeasuredHeight":I
    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 106
    add-int/2addr v3, v6

    .line 107
    move/from16 v21, v1

    .end local v1    # "childMeasureSpec":I
    .local v21, "childMeasureSpec":I
    sub-int v1, v10, v6

    move/from16 v22, v6

    const/4 v6, 0x0

    .end local v6    # "childMeasuredWidth":I
    .restart local v22    # "childMeasuredWidth":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 110
    .end local v7    # "childMeasuredHeight":I
    .end local v10    # "remainingLength":I
    .end local v22    # "childMeasuredWidth":I
    .local v1, "remainingLength":I
    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    invoke-static {v2, v7}, Lorg/nativescript/widgets/StackLayout;->combineMeasuredStates(II)I

    move-result v2

    move v10, v1

    .line 77
    .end local v1    # "remainingLength":I
    .end local v5    # "child":Landroid/view/View;
    .restart local v10    # "remainingLength":I
    :goto_8
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v1, v21

    goto/16 :goto_6

    .end local v18    # "widthMode":I
    .end local v19    # "height":I
    .end local v20    # "heightMode":I
    .end local v21    # "childMeasureSpec":I
    .local v1, "childMeasureSpec":I
    .local v5, "widthMode":I
    .local v6, "height":I
    .local v7, "heightMode":I
    :cond_a
    move/from16 v21, v1

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    const/4 v6, 0x0

    .line 114
    .end local v1    # "childMeasureSpec":I
    .end local v4    # "i":I
    .end local v5    # "widthMode":I
    .end local v6    # "height":I
    .end local v7    # "heightMode":I
    .restart local v18    # "widthMode":I
    .restart local v19    # "height":I
    .restart local v20    # "heightMode":I
    .restart local v21    # "childMeasureSpec":I
    add-int/2addr v3, v11

    .line 115
    add-int/2addr v15, v9

    .line 118
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/StackLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 119
    .end local v3    # "measureWidth":I
    .local v1, "measureWidth":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/StackLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 121
    .end local v15    # "measureHeight":I
    .local v3, "measureHeight":I
    if-eqz v8, :cond_b

    move v4, v3

    goto :goto_9

    :cond_b
    move v4, v1

    :goto_9
    iput v4, v0, Lorg/nativescript/widgets/StackLayout;->_totalLength:I

    .line 123
    if-eqz v8, :cond_c

    move v4, v2

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    :goto_a
    move/from16 v5, p1

    invoke-static {v1, v5, v4}, Lorg/nativescript/widgets/StackLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 124
    .local v4, "widthSizeAndState":I
    if-eqz v8, :cond_d

    goto :goto_b

    :cond_d
    move v6, v2

    :goto_b
    move/from16 v7, p2

    invoke-static {v3, v7, v6}, Lorg/nativescript/widgets/StackLayout;->resolveSizeAndState(III)I

    move-result v6

    .line 126
    .local v6, "heightSizeAndState":I
    invoke-virtual {v0, v4, v6}, Lorg/nativescript/widgets/StackLayout;->setMeasuredDimension(II)V

    .line 127
    return-void
.end method

.method public setOrientation(Lorg/nativescript/widgets/Orientation;)V
    .locals 0
    .param p1, "value"    # Lorg/nativescript/widgets/Orientation;

    .line 29
    iput-object p1, p0, Lorg/nativescript/widgets/StackLayout;->_orientation:Lorg/nativescript/widgets/Orientation;

    .line 30
    invoke-virtual {p0}, Lorg/nativescript/widgets/StackLayout;->requestLayout()V

    .line 31
    return-void
.end method
