.class public Lorg/nativescript/widgets/WrapLayout;
.super Lorg/nativescript/widgets/LayoutBase;
.source "WrapLayout.java"


# instance fields
.field private _itemHeight:I

.field private _itemWidth:I

.field private _lengths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _orientation:Lorg/nativescript/widgets/Orientation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/LayoutBase;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lorg/nativescript/widgets/WrapLayout;->_itemWidth:I

    .line 17
    iput v0, p0, Lorg/nativescript/widgets/WrapLayout;->_itemHeight:I

    .line 18
    sget-object v0, Lorg/nativescript/widgets/Orientation;->horizontal:Lorg/nativescript/widgets/Orientation;

    iput-object v0, p0, Lorg/nativescript/widgets/WrapLayout;->_orientation:Lorg/nativescript/widgets/Orientation;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method private getDesiredHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 71
    iget v0, p0, Lorg/nativescript/widgets/WrapLayout;->_itemHeight:I

    if-lez v0, :cond_0

    .line 72
    return v0

    .line 76
    :cond_0
    invoke-static {p1}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getDesiredWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 62
    iget v0, p0, Lorg/nativescript/widgets/WrapLayout;->_itemWidth:I

    if-lez v0, :cond_0

    .line 63
    return v0

    .line 67
    :cond_0
    invoke-static {p1}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private static getViewMeasureSpec(III)I
    .locals 1
    .param p0, "parentMode"    # I
    .param p1, "parentLength"    # I
    .param p2, "itemLength"    # I

    .line 50
    if-lez p2, :cond_0

    .line 51
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 53
    :cond_0
    if-nez p0, :cond_1

    .line 54
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 57
    :cond_1
    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getItemHeight()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/nativescript/widgets/WrapLayout;->_itemHeight:I

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/nativescript/widgets/WrapLayout;->_itemWidth:I

    return v0
.end method

.method public getOrientation()Lorg/nativescript/widgets/Orientation;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/nativescript/widgets/WrapLayout;->_orientation:Lorg/nativescript/widgets/Orientation;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/nativescript/widgets/WrapLayout;->_orientation:Lorg/nativescript/widgets/Orientation;

    sget-object v2, Lorg/nativescript/widgets/Orientation;->vertical:Lorg/nativescript/widgets/Orientation;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 182
    .local v1, "isVertical":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/WrapLayout;->getPaddingLeft()I

    move-result v2

    .line 183
    .local v2, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/WrapLayout;->getPaddingRight()I

    move-result v5

    .line 184
    .local v5, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/WrapLayout;->getPaddingTop()I

    move-result v6

    .line 185
    .local v6, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/WrapLayout;->getPaddingBottom()I

    move-result v7

    .line 187
    .local v7, "paddingBottom":I
    move v8, v2

    .line 188
    .local v8, "childLeft":I
    move v9, v6

    .line 189
    .local v9, "childTop":I
    if-eqz v1, :cond_1

    sub-int v10, p5, p3

    sub-int/2addr v10, v7

    goto :goto_1

    :cond_1
    sub-int v10, p4, p2

    sub-int/2addr v10, v5

    .line 191
    .local v10, "childrenLength":I
    :goto_1
    const/4 v11, 0x0

    .line 192
    .local v11, "rowOrColumn":I
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/WrapLayout;->getChildCount()I

    move-result v13

    .local v13, "count":I
    :goto_2
    if-ge v12, v13, :cond_d

    .line 193
    invoke-virtual {v0, v12}, Lorg/nativescript/widgets/WrapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 194
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v3, 0x8

    if-ne v15, v3, :cond_2

    .line 195
    move/from16 v17, v5

    goto/16 :goto_9

    .line 198
    :cond_2
    invoke-direct {v0, v14}, Lorg/nativescript/widgets/WrapLayout;->getDesiredWidth(Landroid/view/View;)I

    move-result v3

    .line 199
    .local v3, "childWidth":I
    invoke-direct {v0, v14}, Lorg/nativescript/widgets/WrapLayout;->getDesiredHeight(Landroid/view/View;)I

    move-result v15

    .line 201
    .local v15, "childHeight":I
    iget-object v4, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 202
    .local v4, "length":I
    if-eqz v1, :cond_7

    .line 203
    move v3, v4

    .line 204
    if-ne v9, v6, :cond_3

    const/16 v16, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    .line 205
    .local v16, "isFirst":Z
    :goto_3
    move/from16 v17, v3

    .end local v3    # "childWidth":I
    .local v17, "childWidth":I
    add-int v3, v9, v15

    if-le v3, v10, :cond_6

    .line 207
    move v3, v6

    .line 209
    .end local v9    # "childTop":I
    .local v3, "childTop":I
    if-nez v16, :cond_4

    .line 211
    add-int/2addr v8, v4

    .line 215
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 218
    iget-object v9, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    if-eqz v16, :cond_5

    add-int/lit8 v18, v11, -0x1

    move/from16 v19, v18

    move/from16 v18, v3

    move/from16 v3, v19

    goto :goto_4

    :cond_5
    move/from16 v18, v3

    move v3, v11

    .end local v3    # "childTop":I
    .local v18, "childTop":I
    :goto_4
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v9, v18

    .end local v17    # "childWidth":I
    .local v3, "childWidth":I
    goto :goto_5

    .line 205
    .end local v3    # "childWidth":I
    .end local v18    # "childTop":I
    .restart local v9    # "childTop":I
    .restart local v17    # "childWidth":I
    :cond_6
    move/from16 v3, v17

    .line 220
    .end local v16    # "isFirst":Z
    .end local v17    # "childWidth":I
    .restart local v3    # "childWidth":I
    :goto_5
    move/from16 v17, v5

    goto :goto_8

    .line 222
    :cond_7
    move v15, v4

    .line 223
    if-ne v8, v2, :cond_8

    const/16 v16, 0x1

    goto :goto_6

    :cond_8
    const/16 v16, 0x0

    .line 224
    .restart local v16    # "isFirst":Z
    :goto_6
    move/from16 v17, v5

    .end local v5    # "paddingRight":I
    .local v17, "paddingRight":I
    add-int v5, v8, v3

    if-le v5, v10, :cond_b

    .line 226
    move v8, v2

    .line 228
    if-nez v16, :cond_9

    .line 230
    add-int/2addr v9, v4

    .line 234
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 237
    iget-object v5, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    if-eqz v16, :cond_a

    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    goto :goto_7

    :cond_a
    move v0, v11

    :goto_7
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 241
    .end local v16    # "isFirst":Z
    :cond_b
    :goto_8
    add-int v0, v8, v3

    add-int v5, v9, v15

    invoke-static {v14, v8, v9, v0, v5}, Lorg/nativescript/widgets/CommonLayoutParams;->layoutChild(Landroid/view/View;IIII)V

    .line 243
    if-eqz v1, :cond_c

    .line 245
    add-int/2addr v9, v15

    goto :goto_9

    .line 249
    :cond_c
    add-int/2addr v8, v3

    .line 192
    .end local v3    # "childWidth":I
    .end local v4    # "length":I
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "childHeight":I
    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v17

    goto/16 :goto_2

    .line 253
    .end local v12    # "i":I
    .end local v13    # "count":I
    .end local v17    # "paddingRight":I
    .restart local v5    # "paddingRight":I
    :cond_d
    invoke-static/range {p0 .. p0}, Lorg/nativescript/widgets/CommonLayoutParams;->restoreOriginalParams(Landroid/view/ViewGroup;)V

    .line 254
    return-void
.end method

.method protected onMeasure(II)V
    .locals 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 81
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p2}, Lorg/nativescript/widgets/CommonLayoutParams;->adjustChildrenLayoutParams(Landroid/view/ViewGroup;II)V

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "measureWidth":I
    const/4 v2, 0x0

    .line 86
    .local v2, "measureHeight":I
    iget-object v3, v0, Lorg/nativescript/widgets/WrapLayout;->_orientation:Lorg/nativescript/widgets/Orientation;

    sget-object v4, Lorg/nativescript/widgets/Orientation;->vertical:Lorg/nativescript/widgets/Orientation;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 87
    .local v3, "isVertical":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/WrapLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/WrapLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    .line 88
    .local v4, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/WrapLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/WrapLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    .line 90
    .local v7, "horizontalPadding":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 91
    .local v8, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 93
    .local v9, "heightMode":I
    const v10, 0x7fffffff

    if-nez v8, :cond_1

    const v11, 0x7fffffff

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int/2addr v11, v7

    .line 94
    .local v11, "availableWidth":I
    :goto_1
    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    sub-int/2addr v10, v4

    .line 96
    .local v10, "availableHeight":I
    :goto_2
    iget v12, v0, Lorg/nativescript/widgets/WrapLayout;->_itemWidth:I

    invoke-static {v8, v11, v12}, Lorg/nativescript/widgets/WrapLayout;->getViewMeasureSpec(III)I

    move-result v12

    .line 97
    .local v12, "childWidthMeasureSpec":I
    iget v13, v0, Lorg/nativescript/widgets/WrapLayout;->_itemHeight:I

    invoke-static {v9, v10, v13}, Lorg/nativescript/widgets/WrapLayout;->getViewMeasureSpec(III)I

    move-result v13

    .line 99
    .local v13, "childHeightMeasureSpec":I
    move v14, v11

    .line 100
    .local v14, "remainingWidth":I
    move v15, v10

    .line 102
    .local v15, "remainingHeight":I
    iget-object v6, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 103
    const/4 v6, 0x0

    .line 104
    .local v6, "rowOrColumn":I
    const/16 v16, 0x0

    .line 106
    .local v16, "maxLength":I
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/WrapLayout;->getChildCount()I

    move-result v5

    move/from16 v25, v16

    move/from16 v16, v8

    move/from16 v8, v25

    move/from16 v26, v17

    move/from16 v17, v9

    move/from16 v9, v26

    .local v5, "count":I
    .local v8, "maxLength":I
    .local v9, "i":I
    .local v16, "widthMode":I
    .local v17, "heightMode":I
    :goto_3
    if-ge v9, v5, :cond_d

    .line 107
    move/from16 v18, v5

    .end local v5    # "count":I
    .local v18, "count":I
    invoke-virtual {v0, v9}, Lorg/nativescript/widgets/WrapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 108
    .local v5, "child":Landroid/view/View;
    move/from16 v19, v4

    .end local v4    # "verticalPadding":I
    .local v19, "verticalPadding":I
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v20, v7

    .end local v7    # "horizontalPadding":I
    .local v20, "horizontalPadding":I
    const/16 v7, 0x8

    if-ne v4, v7, :cond_3

    .line 109
    goto/16 :goto_b

    .line 112
    :cond_3
    invoke-static {v5, v12, v13}, Lorg/nativescript/widgets/CommonLayoutParams;->measureChild(Landroid/view/View;II)V

    .line 113
    invoke-direct {v0, v5}, Lorg/nativescript/widgets/WrapLayout;->getDesiredWidth(Landroid/view/View;)I

    move-result v4

    .line 114
    .local v4, "childMeasuredWidth":I
    invoke-direct {v0, v5}, Lorg/nativescript/widgets/WrapLayout;->getDesiredHeight(Landroid/view/View;)I

    move-result v7

    .line 115
    .local v7, "childMeasuredHeight":I
    move-object/from16 v21, v5

    .end local v5    # "child":Landroid/view/View;
    .local v21, "child":Landroid/view/View;
    iget-object v5, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 117
    .local v5, "isFirst":Z
    :goto_4
    if-eqz v3, :cond_7

    .line 118
    if-le v7, v15, :cond_6

    .line 119
    add-int/lit8 v6, v6, 0x1

    .line 120
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 121
    move v2, v7

    .line 122
    sub-int v15, v10, v7

    .line 123
    move/from16 v22, v2

    .end local v2    # "measureHeight":I
    .local v22, "measureHeight":I
    iget-object v2, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    add-int/lit8 v23, v6, -0x1

    move/from16 v25, v23

    move/from16 v23, v6

    move/from16 v6, v25

    goto :goto_5

    :cond_5
    move/from16 v23, v6

    .end local v6    # "rowOrColumn":I
    .local v23, "rowOrColumn":I
    :goto_5
    move/from16 v24, v8

    .end local v8    # "maxLength":I
    .local v24, "maxLength":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move/from16 v2, v22

    move/from16 v6, v23

    move/from16 v8, v24

    goto :goto_7

    .line 126
    .end local v22    # "measureHeight":I
    .end local v23    # "rowOrColumn":I
    .end local v24    # "maxLength":I
    .restart local v2    # "measureHeight":I
    .restart local v6    # "rowOrColumn":I
    .restart local v8    # "maxLength":I
    :cond_6
    sub-int/2addr v15, v7

    .line 127
    add-int/2addr v2, v7

    goto :goto_7

    .line 131
    :cond_7
    if-le v4, v14, :cond_9

    .line 132
    add-int/lit8 v6, v6, 0x1

    .line 133
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 134
    move v1, v4

    .line 135
    sub-int v14, v11, v4

    .line 136
    move/from16 v22, v1

    .end local v1    # "measureWidth":I
    .local v22, "measureWidth":I
    iget-object v1, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    add-int/lit8 v23, v6, -0x1

    move/from16 v25, v23

    move/from16 v23, v6

    move/from16 v6, v25

    goto :goto_6

    :cond_8
    move/from16 v23, v6

    .end local v6    # "rowOrColumn":I
    .restart local v23    # "rowOrColumn":I
    :goto_6
    move/from16 v24, v8

    .end local v8    # "maxLength":I
    .restart local v24    # "maxLength":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move/from16 v1, v22

    move/from16 v6, v23

    move/from16 v8, v24

    goto :goto_7

    .line 139
    .end local v22    # "measureWidth":I
    .end local v23    # "rowOrColumn":I
    .end local v24    # "maxLength":I
    .restart local v1    # "measureWidth":I
    .restart local v6    # "rowOrColumn":I
    .restart local v8    # "maxLength":I
    :cond_9
    sub-int/2addr v14, v4

    .line 140
    add-int/2addr v1, v4

    .line 144
    :goto_7
    if-eqz v5, :cond_b

    .line 145
    move/from16 v22, v1

    .end local v1    # "measureWidth":I
    .restart local v22    # "measureWidth":I
    iget-object v1, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    move/from16 v23, v4

    goto :goto_8

    :cond_a
    move/from16 v23, v7

    :goto_8
    move/from16 v24, v2

    .end local v2    # "measureHeight":I
    .local v24, "measureHeight":I
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_a

    .line 148
    .end local v22    # "measureWidth":I
    .end local v24    # "measureHeight":I
    .restart local v1    # "measureWidth":I
    .restart local v2    # "measureHeight":I
    :cond_b
    move/from16 v22, v1

    move/from16 v24, v2

    .end local v1    # "measureWidth":I
    .end local v2    # "measureHeight":I
    .restart local v22    # "measureWidth":I
    .restart local v24    # "measureHeight":I
    iget-object v1, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v23, v4

    if-eqz v3, :cond_c

    goto :goto_9

    :cond_c
    move v4, v7

    .end local v4    # "childMeasuredWidth":I
    .local v23, "childMeasuredWidth":I
    :goto_9
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    .end local v5    # "isFirst":Z
    .end local v7    # "childMeasuredHeight":I
    .end local v21    # "child":Landroid/view/View;
    .end local v23    # "childMeasuredWidth":I
    :goto_a
    move/from16 v1, v22

    move/from16 v2, v24

    .end local v22    # "measureWidth":I
    .end local v24    # "measureHeight":I
    .restart local v1    # "measureWidth":I
    .restart local v2    # "measureHeight":I
    :goto_b
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v18

    move/from16 v4, v19

    move/from16 v7, v20

    goto/16 :goto_3

    .end local v18    # "count":I
    .end local v19    # "verticalPadding":I
    .end local v20    # "horizontalPadding":I
    .local v4, "verticalPadding":I
    .local v5, "count":I
    .local v7, "horizontalPadding":I
    :cond_d
    move/from16 v19, v4

    move/from16 v18, v5

    move/from16 v20, v7

    .line 152
    .end local v4    # "verticalPadding":I
    .end local v5    # "count":I
    .end local v7    # "horizontalPadding":I
    .end local v9    # "i":I
    .restart local v19    # "verticalPadding":I
    .restart local v20    # "horizontalPadding":I
    if-eqz v3, :cond_f

    .line 153
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 154
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .restart local v5    # "count":I
    :goto_c
    if-ge v4, v5, :cond_e

    .line 155
    iget-object v7, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v1, v7

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_e
    goto :goto_e

    .line 159
    :cond_f
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 160
    const/4 v4, 0x0

    .restart local v4    # "i":I
    iget-object v5, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .restart local v5    # "count":I
    :goto_d
    if-ge v4, v5, :cond_10

    .line 161
    iget-object v7, v0, Lorg/nativescript/widgets/WrapLayout;->_lengths:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v2, v7

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 166
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_10
    :goto_e
    add-int v1, v1, v20

    .line 167
    add-int v2, v2, v19

    .line 170
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/WrapLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 171
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/WrapLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 173
    move/from16 v4, p1

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lorg/nativescript/widgets/WrapLayout;->resolveSizeAndState(III)I

    move-result v7

    .line 174
    .local v7, "widthSizeAndState":I
    move/from16 v9, p2

    invoke-static {v2, v9, v5}, Lorg/nativescript/widgets/WrapLayout;->resolveSizeAndState(III)I

    move-result v5

    .line 176
    .local v5, "heightSizeAndState":I
    invoke-virtual {v0, v7, v5}, Lorg/nativescript/widgets/WrapLayout;->setMeasuredDimension(II)V

    .line 177
    return-void
.end method

.method public setItemHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .line 45
    iput p1, p0, Lorg/nativescript/widgets/WrapLayout;->_itemHeight:I

    .line 46
    invoke-virtual {p0}, Lorg/nativescript/widgets/WrapLayout;->requestLayout()V

    .line 47
    return-void
.end method

.method public setItemWidth(I)V
    .locals 0
    .param p1, "value"    # I

    .line 37
    iput p1, p0, Lorg/nativescript/widgets/WrapLayout;->_itemWidth:I

    .line 38
    invoke-virtual {p0}, Lorg/nativescript/widgets/WrapLayout;->requestLayout()V

    .line 39
    return-void
.end method

.method public setOrientation(Lorg/nativescript/widgets/Orientation;)V
    .locals 0
    .param p1, "value"    # Lorg/nativescript/widgets/Orientation;

    .line 29
    iput-object p1, p0, Lorg/nativescript/widgets/WrapLayout;->_orientation:Lorg/nativescript/widgets/Orientation;

    .line 30
    invoke-virtual {p0}, Lorg/nativescript/widgets/WrapLayout;->requestLayout()V

    .line 31
    return-void
.end method
