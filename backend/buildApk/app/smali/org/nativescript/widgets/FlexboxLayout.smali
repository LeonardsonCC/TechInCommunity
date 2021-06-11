.class public Lorg/nativescript/widgets/FlexboxLayout;
.super Lorg/nativescript/widgets/LayoutBase;
.source "FlexboxLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/FlexboxLayout$Order;,
        Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;,
        Lorg/nativescript/widgets/FlexboxLayout$DividerMode;,
        Lorg/nativescript/widgets/FlexboxLayout$AlignContent;,
        Lorg/nativescript/widgets/FlexboxLayout$AlignItems;,
        Lorg/nativescript/widgets/FlexboxLayout$JustifyContent;,
        Lorg/nativescript/widgets/FlexboxLayout$FlexWrap;,
        Lorg/nativescript/widgets/FlexboxLayout$FlexDirection;
    }
.end annotation


# static fields
.field public static final ALIGN_CONTENT_CENTER:I = 0x2

.field public static final ALIGN_CONTENT_FLEX_END:I = 0x1

.field public static final ALIGN_CONTENT_FLEX_START:I = 0x0

.field public static final ALIGN_CONTENT_SPACE_AROUND:I = 0x4

.field public static final ALIGN_CONTENT_SPACE_BETWEEN:I = 0x3

.field public static final ALIGN_CONTENT_STRETCH:I = 0x5

.field public static final ALIGN_ITEMS_BASELINE:I = 0x3

.field public static final ALIGN_ITEMS_CENTER:I = 0x2

.field public static final ALIGN_ITEMS_FLEX_END:I = 0x1

.field public static final ALIGN_ITEMS_FLEX_START:I = 0x0

.field public static final ALIGN_ITEMS_STRETCH:I = 0x4

.field public static final FLEX_DIRECTION_COLUMN:I = 0x2

.field public static final FLEX_DIRECTION_COLUMN_REVERSE:I = 0x3

.field public static final FLEX_DIRECTION_ROW:I = 0x0

.field public static final FLEX_DIRECTION_ROW_REVERSE:I = 0x1

.field public static final FLEX_WRAP_NOWRAP:I = 0x0

.field public static final FLEX_WRAP_WRAP:I = 0x1

.field public static final FLEX_WRAP_WRAP_REVERSE:I = 0x2

.field public static final JUSTIFY_CONTENT_CENTER:I = 0x2

.field public static final JUSTIFY_CONTENT_FLEX_END:I = 0x1

.field public static final JUSTIFY_CONTENT_FLEX_START:I = 0x0

.field public static final JUSTIFY_CONTENT_SPACE_AROUND:I = 0x4

.field public static final JUSTIFY_CONTENT_SPACE_BETWEEN:I = 0x3

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I


# instance fields
.field private mAlignContent:I

.field private mAlignItems:I

.field private mChildrenFrozen:[Z

.field private mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

.field private mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

.field private mDividerHorizontalHeight:I

.field private mDividerVerticalWidth:I

.field private mFlexDirection:I

.field private mFlexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/nativescript/widgets/FlexLine;",
            ">;"
        }
    .end annotation
.end field

.field private mFlexWrap:I

.field private mJustifyContent:I

.field private mOrderCache:Landroid/util/SparseIntArray;

.field private mReorderedIndices:[I

.field private mShowDividerHorizontal:I

.field private mShowDividerVertical:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/nativescript/widgets/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/nativescript/widgets/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lorg/nativescript/widgets/LayoutBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    .line 147
    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    .line 171
    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mJustifyContent:I

    .line 195
    const/4 v0, 0x4

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    .line 221
    const/4 v0, 0x5

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mAlignContent:I

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 352
    return-void
.end method

.method private addFlexLine(Lorg/nativescript/widgets/FlexLine;)V
    .locals 2
    .param p1, "flexLine"    # Lorg/nativescript/widgets/FlexLine;

    .line 859
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {p0, v0}, Lorg/nativescript/widgets/FlexboxLayout;->isMainAxisDirectionHorizontal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 861
    iget v0, p1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 862
    iget v0, p1, Lorg/nativescript/widgets/FlexLine;->mDividerLengthInMainSize:I

    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Lorg/nativescript/widgets/FlexLine;->mDividerLengthInMainSize:I

    goto :goto_0

    .line 865
    :cond_0
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 866
    iget v0, p1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 867
    iget v0, p1, Lorg/nativescript/widgets/FlexLine;->mDividerLengthInMainSize:I

    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Lorg/nativescript/widgets/FlexLine;->mDividerLengthInMainSize:I

    .line 870
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    return-void
.end method

.method private addFlexLineIfLastFlexItem(IILorg/nativescript/widgets/FlexLine;)V
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "childCount"    # I
    .param p3, "flexLine"    # Lorg/nativescript/widgets/FlexLine;

    .line 850
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p3, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-eqz v0, :cond_0

    .line 852
    invoke-direct {p0, p3}, Lorg/nativescript/widgets/FlexboxLayout;->addFlexLine(Lorg/nativescript/widgets/FlexLine;)V

    .line 854
    :cond_0
    return-void
.end method

.method private allFlexLinesAreDummyBefore(I)Z
    .locals 2
    .param p1, "flexLineIndex"    # I

    .line 2528
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 2529
    iget-object v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/nativescript/widgets/FlexLine;

    iget v1, v1, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-lez v1, :cond_0

    .line 2530
    const/4 v1, 0x0

    return v1

    .line 2528
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2533
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private allViewsAreGoneBefore(II)Z
    .locals 4
    .param p1, "childAbsoluteIndex"    # I
    .param p2, "childRelativeIndexInFlexLine"    # I

    .line 2493
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 2494
    sub-int v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/nativescript/widgets/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2495
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 2496
    const/4 v2, 0x0

    return v2

    .line 2493
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2499
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkSizeConstraints(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, "needsMeasure":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 825
    .local v1, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 826
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 828
    .local v3, "childHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->minWidth:I

    if-ge v4, v5, :cond_0

    .line 829
    const/4 v0, 0x1

    .line 830
    iget v2, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->minWidth:I

    goto :goto_0

    .line 831
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxWidth:I

    if-le v4, v5, :cond_1

    .line 832
    const/4 v0, 0x1

    .line 833
    iget v2, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 836
    :cond_1
    :goto_0
    iget v4, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->minHeight:I

    if-ge v3, v4, :cond_2

    .line 837
    const/4 v0, 0x1

    .line 838
    iget v3, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->minHeight:I

    goto :goto_1

    .line 839
    :cond_2
    iget v4, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxHeight:I

    if-le v3, v4, :cond_3

    .line 840
    const/4 v0, 0x1

    .line 841
    iget v3, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 843
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 844
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 845
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 844
    invoke-virtual {p1, v5, v4}, Landroid/view/View;->measure(II)V

    .line 847
    :cond_4
    return-void
.end method

.method private createOrders(I)Ljava/util/List;
    .locals 6
    .param p1, "childCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/nativescript/widgets/FlexboxLayout$Order;",
            ">;"
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v0, "orders":Ljava/util/List;, "Ljava/util/List<Lorg/nativescript/widgets/FlexboxLayout$Order;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 485
    invoke-virtual {p0, v1}, Lorg/nativescript/widgets/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 486
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 487
    .local v3, "params":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    new-instance v4, Lorg/nativescript/widgets/FlexboxLayout$Order;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/nativescript/widgets/FlexboxLayout$Order;-><init>(Lorg/nativescript/widgets/FlexboxLayout$1;)V

    .line 488
    .local v4, "order":Lorg/nativescript/widgets/FlexboxLayout$Order;
    iget v5, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->order:I

    iput v5, v4, Lorg/nativescript/widgets/FlexboxLayout$Order;->order:I

    .line 489
    iput v1, v4, Lorg/nativescript/widgets/FlexboxLayout$Order;->index:I

    .line 490
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "params":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .end local v4    # "order":Lorg/nativescript/widgets/FlexboxLayout$Order;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private createReorderedIndices()[I
    .locals 3

    .line 460
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getChildCount()I

    move-result v0

    .line 461
    .local v0, "childCount":I
    invoke-direct {p0, v0}, Lorg/nativescript/widgets/FlexboxLayout;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 462
    .local v1, "orders":Ljava/util/List;, "Ljava/util/List<Lorg/nativescript/widgets/FlexboxLayout$Order;>;"
    invoke-direct {p0, v0, v1}, Lorg/nativescript/widgets/FlexboxLayout;->sortOrdersIntoReorderedIndices(ILjava/util/List;)[I

    move-result-object v2

    return-object v2
.end method

.method private createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)[I
    .locals 7
    .param p1, "viewBeforeAdded"    # Landroid/view/View;
    .param p2, "indexForViewBeforeAdded"    # I
    .param p3, "paramsForViewBeforeAdded"    # Landroid/view/ViewGroup$LayoutParams;

    .line 426
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getChildCount()I

    move-result v0

    .line 427
    .local v0, "childCount":I
    invoke-direct {p0, v0}, Lorg/nativescript/widgets/FlexboxLayout;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 428
    .local v1, "orders":Ljava/util/List;, "Ljava/util/List<Lorg/nativescript/widgets/FlexboxLayout$Order;>;"
    new-instance v2, Lorg/nativescript/widgets/FlexboxLayout$Order;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/nativescript/widgets/FlexboxLayout$Order;-><init>(Lorg/nativescript/widgets/FlexboxLayout$1;)V

    .line 429
    .local v2, "orderForViewToBeAdded":Lorg/nativescript/widgets/FlexboxLayout$Order;
    const/4 v3, 0x1

    if-eqz p1, :cond_0

    instance-of v4, p3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    if-eqz v4, :cond_0

    .line 431
    move-object v4, p3

    check-cast v4, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    iget v4, v4, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->order:I

    iput v4, v2, Lorg/nativescript/widgets/FlexboxLayout$Order;->order:I

    goto :goto_0

    .line 433
    :cond_0
    iput v3, v2, Lorg/nativescript/widgets/FlexboxLayout$Order;->order:I

    .line 436
    :goto_0
    const/4 v4, -0x1

    if-eq p2, v4, :cond_4

    if-ne p2, v0, :cond_1

    goto :goto_2

    .line 438
    :cond_1
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getChildCount()I

    move-result v4

    if-ge p2, v4, :cond_3

    .line 439
    iput p2, v2, Lorg/nativescript/widgets/FlexboxLayout$Order;->index:I

    .line 440
    move v4, p2

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 441
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/nativescript/widgets/FlexboxLayout$Order;

    iget v6, v5, Lorg/nativescript/widgets/FlexboxLayout$Order;->index:I

    add-int/2addr v6, v3

    iput v6, v5, Lorg/nativescript/widgets/FlexboxLayout$Order;->index:I

    .line 440
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "i":I
    :cond_2
    goto :goto_3

    .line 446
    :cond_3
    iput v0, v2, Lorg/nativescript/widgets/FlexboxLayout$Order;->index:I

    goto :goto_3

    .line 437
    :cond_4
    :goto_2
    iput v0, v2, Lorg/nativescript/widgets/FlexboxLayout$Order;->index:I

    .line 448
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3, v1}, Lorg/nativescript/widgets/FlexboxLayout;->sortOrdersIntoReorderedIndices(ILjava/util/List;)[I

    move-result-object v3

    return-object v3
.end method

.method private determineCrossSize(IIII)V
    .locals 18
    .param p1, "flexDirection"    # I
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "paddingAlongCrossAxis"    # I

    .line 1144
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1156
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid flex direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1152
    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1153
    .local v5, "mode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1154
    .local v6, "size":I
    goto :goto_1

    .line 1147
    .end local v5    # "mode":I
    .end local v6    # "size":I
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1148
    .restart local v5    # "mode":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1149
    .restart local v6    # "size":I
    nop

    .line 1158
    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v7, :cond_16

    .line 1159
    invoke-direct/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getSumOfCrossSize()I

    move-result v7

    add-int v7, v7, p4

    .line 1160
    .local v7, "totalCrossSize":I
    iget-object v8, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    if-ne v8, v4, :cond_3

    .line 1161
    iget-object v2, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/FlexLine;

    sub-int v3, v6, p4

    iput v3, v2, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    goto/16 :goto_9

    .line 1163
    :cond_3
    iget-object v8, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v3, :cond_16

    if-ge v7, v6, :cond_16

    .line 1164
    iget v8, v0, Lorg/nativescript/widgets/FlexboxLayout;->mAlignContent:I

    if-eq v8, v4, :cond_15

    if-eq v8, v3, :cond_11

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eq v8, v2, :cond_b

    const/4 v2, 0x4

    if-eq v8, v2, :cond_9

    const/4 v2, 0x5

    if-eq v8, v2, :cond_4

    goto/16 :goto_9

    .line 1166
    :cond_4
    sub-int v2, v6, v7

    int-to-float v2, v2

    iget-object v3, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1167
    .local v2, "freeSpaceUnit":F
    const/4 v3, 0x0

    .line 1168
    .local v3, "accumulatedError":F
    const/4 v8, 0x0

    .local v8, "i":I
    iget-object v11, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "flexLinesSize":I
    :goto_2
    if-ge v8, v11, :cond_8

    .line 1169
    iget-object v12, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/nativescript/widgets/FlexLine;

    .line 1170
    .local v12, "flexLine":Lorg/nativescript/widgets/FlexLine;
    iget v13, v12, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    int-to-float v13, v13

    add-float/2addr v13, v2

    .line 1171
    .local v13, "newCrossSizeAsFloat":F
    iget-object v14, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v4

    if-ne v8, v14, :cond_5

    .line 1172
    add-float/2addr v13, v3

    .line 1173
    const/4 v3, 0x0

    .line 1175
    :cond_5
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 1176
    .local v14, "newCrossSize":I
    int-to-float v15, v14

    sub-float v15, v13, v15

    add-float/2addr v3, v15

    .line 1177
    cmpl-float v15, v3, v10

    if-lez v15, :cond_6

    .line 1178
    add-int/lit8 v14, v14, 0x1

    .line 1179
    sub-float/2addr v3, v10

    goto :goto_3

    .line 1180
    :cond_6
    cmpg-float v15, v3, v9

    if-gez v15, :cond_7

    .line 1181
    add-int/lit8 v14, v14, -0x1

    .line 1182
    add-float/2addr v3, v10

    .line 1184
    :cond_7
    :goto_3
    iput v14, v12, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 1168
    .end local v12    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v13    # "newCrossSizeAsFloat":F
    .end local v14    # "newCrossSize":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1186
    .end local v8    # "i":I
    .end local v11    # "flexLinesSize":I
    :cond_8
    goto/16 :goto_9

    .line 1191
    .end local v2    # "freeSpaceUnit":F
    .end local v3    # "accumulatedError":F
    :cond_9
    sub-int v2, v6, v7

    .line 1193
    .local v2, "spaceTopAndBottom":I
    iget-object v4, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    .line 1194
    .local v4, "numberOfSpaces":I
    div-int/2addr v2, v4

    .line 1195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v3, "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lorg/nativescript/widgets/FlexLine;>;"
    new-instance v8, Lorg/nativescript/widgets/FlexLine;

    invoke-direct {v8}, Lorg/nativescript/widgets/FlexLine;-><init>()V

    .line 1197
    .local v8, "dummySpaceFlexLine":Lorg/nativescript/widgets/FlexLine;
    iput v2, v8, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 1198
    iget-object v9, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/nativescript/widgets/FlexLine;

    .line 1199
    .local v10, "flexLine":Lorg/nativescript/widgets/FlexLine;
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    .end local v10    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    goto :goto_4

    .line 1203
    :cond_a
    iput-object v3, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 1204
    goto/16 :goto_9

    .line 1208
    .end local v2    # "spaceTopAndBottom":I
    .end local v3    # "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lorg/nativescript/widgets/FlexLine;>;"
    .end local v4    # "numberOfSpaces":I
    .end local v8    # "dummySpaceFlexLine":Lorg/nativescript/widgets/FlexLine;
    :cond_b
    sub-int v2, v6, v7

    int-to-float v2, v2

    .line 1209
    .local v2, "spaceBetweenFlexLine":F
    iget-object v8, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    .line 1210
    .local v8, "numberOfSpaces":I
    int-to-float v11, v8

    div-float/2addr v2, v11

    .line 1211
    const/4 v11, 0x0

    .line 1212
    .local v11, "accumulatedError":F
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    .local v12, "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lorg/nativescript/widgets/FlexLine;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    iget-object v14, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "flexLineSize":I
    :goto_5
    if-ge v13, v14, :cond_10

    .line 1214
    iget-object v15, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/nativescript/widgets/FlexLine;

    .line 1215
    .local v15, "flexLine":Lorg/nativescript/widgets/FlexLine;
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    iget-object v9, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v4

    if-eq v13, v9, :cond_f

    .line 1218
    new-instance v9, Lorg/nativescript/widgets/FlexLine;

    invoke-direct {v9}, Lorg/nativescript/widgets/FlexLine;-><init>()V

    .line 1219
    .local v9, "dummySpaceFlexLine":Lorg/nativescript/widgets/FlexLine;
    iget-object v4, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v13, v4, :cond_c

    .line 1222
    add-float v4, v2, v11

    .line 1223
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v9, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 1224
    const/4 v11, 0x0

    goto :goto_6

    .line 1226
    :cond_c
    nop

    .line 1227
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v9, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 1229
    :goto_6
    iget v4, v9, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    add-float/2addr v11, v4

    .line 1231
    cmpl-float v4, v11, v10

    if-lez v4, :cond_d

    .line 1232
    iget v4, v9, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v9, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 1233
    sub-float/2addr v11, v10

    goto :goto_7

    .line 1234
    :cond_d
    const/16 v17, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v16, v11, v4

    if-gez v16, :cond_e

    .line 1235
    iget v4, v9, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v9, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 1236
    add-float/2addr v11, v10

    .line 1238
    :cond_e
    :goto_7
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1213
    .end local v9    # "dummySpaceFlexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v15    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    :cond_f
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    const/high16 v9, -0x40800000    # -1.0f

    goto :goto_5

    .line 1241
    .end local v13    # "i":I
    .end local v14    # "flexLineSize":I
    :cond_10
    iput-object v12, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 1242
    goto :goto_9

    .line 1245
    .end local v2    # "spaceBetweenFlexLine":F
    .end local v8    # "numberOfSpaces":I
    .end local v11    # "accumulatedError":F
    .end local v12    # "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lorg/nativescript/widgets/FlexLine;>;"
    :cond_11
    sub-int v2, v6, v7

    .line 1246
    .local v2, "spaceAboveAndBottom":I
    div-int/2addr v2, v3

    .line 1247
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    .restart local v3    # "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lorg/nativescript/widgets/FlexLine;>;"
    new-instance v4, Lorg/nativescript/widgets/FlexLine;

    invoke-direct {v4}, Lorg/nativescript/widgets/FlexLine;-><init>()V

    .line 1249
    .local v4, "dummySpaceFlexLine":Lorg/nativescript/widgets/FlexLine;
    iput v2, v4, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 1250
    const/4 v8, 0x0

    .local v8, "i":I
    iget-object v9, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "flexLineSize":I
    :goto_8
    if-ge v8, v9, :cond_14

    .line 1251
    if-nez v8, :cond_12

    .line 1252
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1254
    :cond_12
    iget-object v10, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/nativescript/widgets/FlexLine;

    .line 1255
    .restart local v10    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    iget-object v11, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne v8, v11, :cond_13

    .line 1257
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    .end local v10    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1260
    .end local v8    # "i":I
    .end local v9    # "flexLineSize":I
    :cond_14
    iput-object v3, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 1261
    goto :goto_9

    .line 1264
    .end local v2    # "spaceAboveAndBottom":I
    .end local v3    # "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lorg/nativescript/widgets/FlexLine;>;"
    .end local v4    # "dummySpaceFlexLine":Lorg/nativescript/widgets/FlexLine;
    :cond_15
    sub-int v2, v6, v7

    .line 1265
    .local v2, "spaceTop":I
    new-instance v3, Lorg/nativescript/widgets/FlexLine;

    invoke-direct {v3}, Lorg/nativescript/widgets/FlexLine;-><init>()V

    .line 1266
    .local v3, "dummySpaceFlexLine":Lorg/nativescript/widgets/FlexLine;
    iput v2, v3, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 1267
    iget-object v4, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v4, v9, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1273
    .end local v2    # "spaceTop":I
    .end local v3    # "dummySpaceFlexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v7    # "totalCrossSize":I
    :cond_16
    :goto_9
    return-void
.end method

.method private determineMainSize(III)V
    .locals 11
    .param p1, "flexDirection"    # I
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 888
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 912
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_1
    :goto_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 903
    .local v1, "heightMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 904
    .local v2, "heightSize":I
    if-ne v1, v0, :cond_2

    .line 905
    move v0, v2

    .local v0, "mainSize":I
    goto :goto_1

    .line 907
    .end local v0    # "mainSize":I
    :cond_2
    invoke-direct {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getLargestMainSize()I

    move-result v0

    .line 909
    .restart local v0    # "mainSize":I
    :goto_1
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 910
    .local v3, "paddingAlongMainAxis":I
    goto :goto_3

    .line 891
    .end local v0    # "mainSize":I
    .end local v1    # "heightMode":I
    .end local v2    # "heightSize":I
    .end local v3    # "paddingAlongMainAxis":I
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 892
    .local v1, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 893
    .local v2, "widthSize":I
    if-ne v1, v0, :cond_4

    .line 894
    move v0, v2

    .restart local v0    # "mainSize":I
    goto :goto_2

    .line 896
    .end local v0    # "mainSize":I
    :cond_4
    invoke-direct {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getLargestMainSize()I

    move-result v0

    .line 898
    .restart local v0    # "mainSize":I
    :goto_2
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 899
    .restart local v3    # "paddingAlongMainAxis":I
    nop

    .line 915
    .end local v1    # "widthMode":I
    .end local v2    # "widthSize":I
    :goto_3
    const/4 v1, 0x0

    .line 916
    .local v1, "childIndex":I
    iget-object v2, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lorg/nativescript/widgets/FlexLine;

    .line 917
    .local v10, "flexLine":Lorg/nativescript/widgets/FlexLine;
    iget v4, v10, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    if-ge v4, v0, :cond_5

    .line 918
    move-object v4, p0

    move-object v5, v10

    move v6, p1

    move v7, v0

    move v8, v3

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lorg/nativescript/widgets/FlexboxLayout;->expandFlexItems(Lorg/nativescript/widgets/FlexLine;IIII)I

    move-result v1

    goto :goto_5

    .line 921
    :cond_5
    move-object v4, p0

    move-object v5, v10

    move v6, p1

    move v7, v0

    move v8, v3

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lorg/nativescript/widgets/FlexboxLayout;->shrinkFlexItems(Lorg/nativescript/widgets/FlexLine;IIII)I

    move-result v1

    .line 924
    .end local v10    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    :goto_5
    goto :goto_4

    .line 925
    :cond_6
    return-void
.end method

.method private drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "isRtl"    # Z
    .param p3, "fromBottomToTop"    # Z

    .line 2067
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2068
    .local v2, "currentViewIndex":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingLeft()I

    move-result v3

    .line 2069
    .local v3, "paddingLeft":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingRight()I

    move-result v4

    .line 2070
    .local v4, "paddingRight":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2071
    .local v5, "horizontalDividerLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v6, v7, :cond_9

    .line 2072
    iget-object v8, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/nativescript/widgets/FlexLine;

    .line 2073
    .local v8, "flexLine":Lorg/nativescript/widgets/FlexLine;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    iget v10, v8, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-ge v9, v10, :cond_4

    .line 2074
    invoke-virtual {p0, v2}, Lorg/nativescript/widgets/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2075
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 2078
    .local v11, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    invoke-direct {p0, v2, v9}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2080
    if-eqz p2, :cond_0

    .line 2081
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, v11, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    .local v12, "dividerLeft":I
    goto :goto_2

    .line 2083
    .end local v12    # "dividerLeft":I
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v12

    iget v13, v11, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v12, v13

    iget v13, v0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v12, v13

    .line 2086
    .restart local v12    # "dividerLeft":I
    :goto_2
    iget v13, v8, Lorg/nativescript/widgets/FlexLine;->mTop:I

    iget v14, v8, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    invoke-direct {p0, v1, v12, v13, v14}, Lorg/nativescript/widgets/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 2090
    .end local v12    # "dividerLeft":I
    :cond_1
    iget v12, v8, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    if-ne v9, v12, :cond_3

    .line 2091
    iget v12, v0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v12, v12, 0x4

    if-lez v12, :cond_3

    .line 2093
    if-eqz p2, :cond_2

    .line 2094
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v12

    iget v13, v11, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v12, v13

    iget v13, v0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v12, v13

    .restart local v12    # "dividerLeft":I
    goto :goto_3

    .line 2096
    .end local v12    # "dividerLeft":I
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, v11, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    .line 2099
    .restart local v12    # "dividerLeft":I
    :goto_3
    iget v13, v8, Lorg/nativescript/widgets/FlexLine;->mTop:I

    iget v14, v8, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    invoke-direct {p0, v1, v12, v13, v14}, Lorg/nativescript/widgets/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 2103
    .end local v12    # "dividerLeft":I
    :cond_3
    nop

    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    add-int/lit8 v2, v2, 0x1

    .line 2073
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2107
    .end local v9    # "j":I
    :cond_4
    invoke-direct {p0, v6}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2109
    if-eqz p3, :cond_5

    .line 2110
    iget v9, v8, Lorg/nativescript/widgets/FlexLine;->mBottom:I

    .local v9, "horizontalDividerTop":I
    goto :goto_4

    .line 2112
    .end local v9    # "horizontalDividerTop":I
    :cond_5
    iget v9, v8, Lorg/nativescript/widgets/FlexLine;->mTop:I

    iget v10, v0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v9, v10

    .line 2114
    .restart local v9    # "horizontalDividerTop":I
    :goto_4
    invoke-direct {p0, v1, v3, v9, v5}, Lorg/nativescript/widgets/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 2118
    .end local v9    # "horizontalDividerTop":I
    :cond_6
    invoke-direct {p0, v6}, Lorg/nativescript/widgets/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2119
    iget v9, v0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_8

    .line 2121
    if-eqz p3, :cond_7

    .line 2122
    iget v9, v8, Lorg/nativescript/widgets/FlexLine;->mTop:I

    iget v10, v0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v9, v10

    .restart local v9    # "horizontalDividerTop":I
    goto :goto_5

    .line 2124
    .end local v9    # "horizontalDividerTop":I
    :cond_7
    iget v9, v8, Lorg/nativescript/widgets/FlexLine;->mBottom:I

    .line 2126
    .restart local v9    # "horizontalDividerTop":I
    :goto_5
    invoke-direct {p0, v1, v3, v9, v5}, Lorg/nativescript/widgets/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 2071
    .end local v8    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v9    # "horizontalDividerTop":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2131
    .end local v6    # "i":I
    .end local v7    # "size":I
    :cond_9
    return-void
.end method

.method private drawDividersVertical(Landroid/graphics/Canvas;ZZ)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "isRtl"    # Z
    .param p3, "fromBottomToTop"    # Z

    .line 2145
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2146
    .local v2, "currentViewIndex":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingTop()I

    move-result v3

    .line 2147
    .local v3, "paddingTop":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingBottom()I

    move-result v4

    .line 2148
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2149
    .local v5, "verticalDividerLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v6, v7, :cond_9

    .line 2150
    iget-object v8, v0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/nativescript/widgets/FlexLine;

    .line 2153
    .local v8, "flexLine":Lorg/nativescript/widgets/FlexLine;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    iget v10, v8, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-ge v9, v10, :cond_4

    .line 2154
    invoke-virtual {p0, v2}, Lorg/nativescript/widgets/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2155
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 2158
    .local v11, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    invoke-direct {p0, v2, v9}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2160
    if-eqz p3, :cond_0

    .line 2161
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, v11, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    .local v12, "dividerTop":I
    goto :goto_2

    .line 2163
    .end local v12    # "dividerTop":I
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v12

    iget v13, v11, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    iget v13, v0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v12, v13

    .line 2166
    .restart local v12    # "dividerTop":I
    :goto_2
    iget v13, v8, Lorg/nativescript/widgets/FlexLine;->mLeft:I

    iget v14, v8, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    invoke-direct {p0, v1, v13, v12, v14}, Lorg/nativescript/widgets/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 2170
    .end local v12    # "dividerTop":I
    :cond_1
    iget v12, v8, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    if-ne v9, v12, :cond_3

    .line 2171
    iget v12, v0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v12, v12, 0x4

    if-lez v12, :cond_3

    .line 2173
    if-eqz p3, :cond_2

    .line 2174
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v12

    iget v13, v11, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    iget v13, v0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v12, v13

    .restart local v12    # "dividerTop":I
    goto :goto_3

    .line 2176
    .end local v12    # "dividerTop":I
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, v11, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    .line 2179
    .restart local v12    # "dividerTop":I
    :goto_3
    iget v13, v8, Lorg/nativescript/widgets/FlexLine;->mLeft:I

    iget v14, v8, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    invoke-direct {p0, v1, v13, v12, v14}, Lorg/nativescript/widgets/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 2183
    .end local v12    # "dividerTop":I
    :cond_3
    nop

    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    add-int/lit8 v2, v2, 0x1

    .line 2153
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2187
    .end local v9    # "j":I
    :cond_4
    invoke-direct {p0, v6}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2189
    if-eqz p2, :cond_5

    .line 2190
    iget v9, v8, Lorg/nativescript/widgets/FlexLine;->mRight:I

    .local v9, "verticalDividerLeft":I
    goto :goto_4

    .line 2192
    .end local v9    # "verticalDividerLeft":I
    :cond_5
    iget v9, v8, Lorg/nativescript/widgets/FlexLine;->mLeft:I

    iget v10, v0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v9, v10

    .line 2194
    .restart local v9    # "verticalDividerLeft":I
    :goto_4
    invoke-direct {p0, v1, v9, v3, v5}, Lorg/nativescript/widgets/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 2197
    .end local v9    # "verticalDividerLeft":I
    :cond_6
    invoke-direct {p0, v6}, Lorg/nativescript/widgets/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2198
    iget v9, v0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_8

    .line 2200
    if-eqz p2, :cond_7

    .line 2201
    iget v9, v8, Lorg/nativescript/widgets/FlexLine;->mLeft:I

    iget v10, v0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v9, v10

    .restart local v9    # "verticalDividerLeft":I
    goto :goto_5

    .line 2203
    .end local v9    # "verticalDividerLeft":I
    :cond_7
    iget v9, v8, Lorg/nativescript/widgets/FlexLine;->mRight:I

    .line 2205
    .restart local v9    # "verticalDividerLeft":I
    :goto_5
    invoke-direct {p0, v1, v9, v3, v5}, Lorg/nativescript/widgets/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 2149
    .end local v8    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v9    # "verticalDividerLeft":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2210
    .end local v6    # "i":I
    .end local v7    # "size":I
    :cond_9
    return-void
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;III)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "length"    # I

    .line 2221
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2222
    return-void

    .line 2224
    :cond_0
    add-int v1, p2, p4

    iget v2, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v2, p3

    .line 2225
    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2226
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2227
    return-void
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;III)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "length"    # I

    .line 2213
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2214
    return-void

    .line 2216
    :cond_0
    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v1, p2

    add-int v2, p3, p4

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2217
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2218
    return-void
.end method

.method private expandFlexItems(Lorg/nativescript/widgets/FlexLine;IIII)I
    .locals 16
    .param p1, "flexLine"    # Lorg/nativescript/widgets/FlexLine;
    .param p2, "flexDirection"    # I
    .param p3, "maxMainSize"    # I
    .param p4, "paddingAlongMainAxis"    # I
    .param p5, "startIndex"    # I

    .line 945
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    .line 946
    .local v3, "childIndex":I
    iget v4, v1, Lorg/nativescript/widgets/FlexLine;->mTotalFlexGrow:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_a

    iget v4, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    if-ge v2, v4, :cond_0

    move/from16 v11, p2

    goto/16 :goto_5

    .line 950
    :cond_0
    iget v4, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 951
    .local v4, "sizeBeforeExpand":I
    const/4 v5, 0x0

    .line 952
    .local v5, "needsReexpand":Z
    iget v6, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int v6, v2, v6

    int-to-float v6, v6

    iget v7, v1, Lorg/nativescript/widgets/FlexLine;->mTotalFlexGrow:F

    div-float/2addr v6, v7

    .line 953
    .local v6, "unitSpace":F
    iget v7, v1, Lorg/nativescript/widgets/FlexLine;->mDividerLengthInMainSize:I

    add-int v7, p4, v7

    iput v7, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 954
    const/4 v7, 0x0

    .line 955
    .local v7, "accumulatedRoundError":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v9, v1, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-ge v8, v9, :cond_8

    .line 956
    invoke-virtual {v0, v3}, Lorg/nativescript/widgets/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 957
    .local v9, "child":Landroid/view/View;
    if-nez v9, :cond_1

    .line 958
    move/from16 v11, p2

    goto/16 :goto_4

    .line 959
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_2

    .line 960
    add-int/lit8 v3, v3, 0x1

    .line 961
    move/from16 v11, p2

    goto/16 :goto_4

    .line 963
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 964
    .local v10, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    move/from16 v11, p2

    invoke-direct {v0, v11}, Lorg/nativescript/widgets/FlexboxLayout;->isMainAxisDirectionHorizontal(I)Z

    move-result v12

    const/4 v14, 0x1

    if-eqz v12, :cond_5

    .line 966
    iget-object v12, v0, Lorg/nativescript/widgets/FlexboxLayout;->mChildrenFrozen:[Z

    aget-boolean v12, v12, v3

    if-nez v12, :cond_4

    .line 967
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    iget v15, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    mul-float v15, v15, v6

    add-float/2addr v12, v15

    add-float/2addr v12, v7

    .line 968
    .local v12, "rawCalculatedWidth":F
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 969
    .local v15, "roundedCalculatedWidth":I
    iget v13, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxWidth:I

    if-le v15, v13, :cond_3

    .line 975
    const/4 v5, 0x1

    .line 976
    iget v15, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 977
    iget-object v13, v0, Lorg/nativescript/widgets/FlexboxLayout;->mChildrenFrozen:[Z

    aput-boolean v14, v13, v3

    .line 978
    iget v13, v1, Lorg/nativescript/widgets/FlexLine;->mTotalFlexGrow:F

    iget v14, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    sub-float/2addr v13, v14

    iput v13, v1, Lorg/nativescript/widgets/FlexLine;->mTotalFlexGrow:F

    goto :goto_1

    .line 980
    :cond_3
    int-to-float v13, v15

    sub-float v7, v12, v13

    .line 982
    :goto_1
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 984
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 982
    invoke-virtual {v9, v14, v2}, Landroid/view/View;->measure(II)V

    .line 987
    .end local v12    # "rawCalculatedWidth":F
    .end local v15    # "roundedCalculatedWidth":I
    :cond_4
    iget v2, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget v13, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    iput v2, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    goto :goto_3

    .line 990
    :cond_5
    iget-object v2, v0, Lorg/nativescript/widgets/FlexboxLayout;->mChildrenFrozen:[Z

    aget-boolean v2, v2, v3

    if-nez v2, :cond_7

    .line 991
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v12, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    mul-float v12, v12, v6

    add-float/2addr v2, v12

    .line 992
    .local v2, "rawCalculatedHeight":F
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 993
    .local v12, "roundedCalculatedHeight":I
    iget v13, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxHeight:I

    if-le v12, v13, :cond_6

    .line 1000
    const/4 v5, 0x1

    .line 1001
    iget v12, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 1002
    iget-object v13, v0, Lorg/nativescript/widgets/FlexboxLayout;->mChildrenFrozen:[Z

    aput-boolean v14, v13, v3

    .line 1003
    iget v13, v1, Lorg/nativescript/widgets/FlexLine;->mTotalFlexGrow:F

    iget v14, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    sub-float/2addr v13, v14

    iput v13, v1, Lorg/nativescript/widgets/FlexLine;->mTotalFlexGrow:F

    goto :goto_2

    .line 1005
    :cond_6
    int-to-float v13, v12

    sub-float v7, v2, v13

    .line 1007
    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1009
    invoke-static {v12, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1007
    invoke-virtual {v9, v13, v14}, Landroid/view/View;->measure(II)V

    .line 1011
    .end local v2    # "rawCalculatedHeight":F
    .end local v12    # "roundedCalculatedHeight":I
    :cond_7
    iget v2, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    iput v2, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 1013
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 955
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p3

    goto/16 :goto_0

    :cond_8
    move/from16 v11, p2

    .line 1016
    .end local v8    # "i":I
    if-eqz v5, :cond_9

    iget v2, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    if-eq v4, v2, :cond_9

    .line 1019
    invoke-direct/range {p0 .. p5}, Lorg/nativescript/widgets/FlexboxLayout;->expandFlexItems(Lorg/nativescript/widgets/FlexLine;IIII)I

    .line 1021
    :cond_9
    return v3

    .line 946
    .end local v4    # "sizeBeforeExpand":I
    .end local v5    # "needsReexpand":Z
    .end local v6    # "unitSpace":F
    .end local v7    # "accumulatedRoundError":F
    :cond_a
    move/from16 v11, p2

    .line 947
    :goto_5
    iget v2, v1, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    add-int/2addr v3, v2

    .line 948
    return v3
.end method

.method private getLargestMainSize()I
    .locals 4

    .line 1513
    const/high16 v0, -0x80000000

    .line 1514
    .local v0, "largestSize":I
    iget-object v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/FlexLine;

    .line 1515
    .local v2, "flexLine":Lorg/nativescript/widgets/FlexLine;
    iget v3, v2, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1516
    .end local v2    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    goto :goto_0

    .line 1517
    :cond_0
    return v0
.end method

.method private getSumOfCrossSize()I
    .locals 5

    .line 1526
    const/4 v0, 0x0

    .line 1527
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 1528
    iget-object v3, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/nativescript/widgets/FlexLine;

    .line 1531
    .local v3, "flexLine":Lorg/nativescript/widgets/FlexLine;
    invoke-direct {p0, v1}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1532
    iget v4, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {p0, v4}, Lorg/nativescript/widgets/FlexboxLayout;->isMainAxisDirectionHorizontal(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1533
    iget v4, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v4

    goto :goto_1

    .line 1535
    :cond_0
    iget v4, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v4

    .line 1540
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lorg/nativescript/widgets/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1541
    iget v4, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {p0, v4}, Lorg/nativescript/widgets/FlexboxLayout;->isMainAxisDirectionHorizontal(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1542
    iget v4, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v4

    goto :goto_2

    .line 1544
    :cond_2
    iget v4, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v4

    .line 1547
    :cond_3
    :goto_2
    iget v4, v3, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    add-int/2addr v0, v4

    .line 1527
    .end local v3    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1549
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_4
    return v0
.end method

.method private hasDividerBeforeChildAtAlongMainAxis(II)Z
    .locals 3
    .param p1, "childAbsoluteIndex"    # I
    .param p2, "childRelativeIndexInFlexLine"    # I

    .line 2476
    invoke-direct {p0, p1, p2}, Lorg/nativescript/widgets/FlexboxLayout;->allViewsAreGoneBefore(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2477
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {p0, v0}, Lorg/nativescript/widgets/FlexboxLayout;->isMainAxisDirectionHorizontal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2478
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2480
    :cond_1
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 2483
    :cond_3
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {p0, v0}, Lorg/nativescript/widgets/FlexboxLayout;->isMainAxisDirectionHorizontal(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2484
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 2486
    :cond_5
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method private hasDividerBeforeFlexLine(I)Z
    .locals 3
    .param p1, "flexLineIndex"    # I

    .line 2509
    const/4 v0, 0x0

    if-ltz p1, :cond_8

    iget-object v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 2512
    :cond_0
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/FlexboxLayout;->allFlexLinesAreDummyBefore(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 2513
    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {p0, v1}, Lorg/nativescript/widgets/FlexboxLayout;->isMainAxisDirectionHorizontal(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2514
    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 2516
    :cond_2
    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 2519
    :cond_4
    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {p0, v1}, Lorg/nativescript/widgets/FlexboxLayout;->isMainAxisDirectionHorizontal(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2520
    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 2522
    :cond_6
    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    .line 2510
    :cond_8
    :goto_0
    return v0
.end method

.method private hasEndDividerAfterFlexLine(I)Z
    .locals 3
    .param p1, "flexLineIndex"    # I

    .line 2543
    const/4 v0, 0x0

    if-ltz p1, :cond_6

    iget-object v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 2547
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2548
    iget-object v2, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/FlexLine;

    iget v2, v2, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-lez v2, :cond_1

    .line 2549
    return v0

    .line 2547
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2552
    .end local v1    # "i":I
    :cond_2
    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {p0, v1}, Lorg/nativescript/widgets/FlexboxLayout;->isMainAxisDirectionHorizontal(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 2553
    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 2555
    :cond_4
    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 2544
    :cond_6
    :goto_1
    return v0
.end method

.method private isMainAxisDirectionHorizontal(I)Z
    .locals 1
    .param p1, "flexDirection"    # I

    .line 1553
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isOrderChangedFromLastMeasurement()Z
    .locals 7

    .line 502
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getChildCount()I

    move-result v0

    .line 503
    .local v0, "childCount":I
    iget-object v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    if-nez v1, :cond_0

    .line 504
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 506
    :cond_0
    iget-object v1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    .line 507
    return v2

    .line 509
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 510
    invoke-virtual {p0, v1}, Lorg/nativescript/widgets/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 511
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_2

    .line 512
    goto :goto_1

    .line 514
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 515
    .local v4, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v5, v4, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->order:I

    iget-object v6, p0, Lorg/nativescript/widgets/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 516
    return v2

    .line 509
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private isWrapRequired(IIIILorg/nativescript/widgets/FlexboxLayout$LayoutParams;II)Z
    .locals 3
    .param p1, "mode"    # I
    .param p2, "maxSize"    # I
    .param p3, "currentLength"    # I
    .param p4, "childLength"    # I
    .param p5, "lp"    # Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .param p6, "childAbsoluteIndex"    # I
    .param p7, "childRelativeIndexInFlexLine"    # I

    .line 1478
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1479
    return v1

    .line 1481
    :cond_0
    iget-boolean v0, p5, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->wrapBefore:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1482
    return v2

    .line 1484
    :cond_1
    if-nez p1, :cond_2

    .line 1485
    return v1

    .line 1487
    :cond_2
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {p0, v0}, Lorg/nativescript/widgets/FlexboxLayout;->isMainAxisDirectionHorizontal(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1488
    invoke-direct {p0, p6, p7}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1490
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr p4, v0

    .line 1492
    :cond_3
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_6

    .line 1493
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr p4, v0

    goto :goto_0

    .line 1496
    :cond_4
    invoke-direct {p0, p6, p7}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1498
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr p4, v0

    .line 1500
    :cond_5
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_6

    .line 1501
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr p4, v0

    .line 1504
    :cond_6
    :goto_0
    add-int v0, p3, p4

    if-ge p2, v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method private layoutHorizontal(ZIIII)V
    .locals 27
    .param p1, "isRtl"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1611
    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingLeft()I

    move-result v10

    .line 1612
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingRight()I

    move-result v11

    .line 1616
    .local v11, "paddingRight":I
    const/4 v0, 0x0

    .line 1618
    .local v0, "currentViewIndex":I
    sub-int v12, p5, p3

    .line 1619
    .local v12, "height":I
    sub-int v13, p4, p2

    .line 1622
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingBottom()I

    move-result v1

    sub-int v1, v12, v1

    .line 1623
    .local v1, "childBottom":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingTop()I

    move-result v2

    .line 1629
    .local v2, "childTop":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, v9, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    move v15, v3

    .end local v3    # "i":I
    .local v14, "size":I
    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_f

    .line 1630
    iget-object v3, v9, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lorg/nativescript/widgets/FlexLine;

    .line 1631
    .local v8, "flexLine":Lorg/nativescript/widgets/FlexLine;
    invoke-direct {v9, v15}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1632
    iget v3, v9, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v1, v3

    .line 1633
    add-int/2addr v2, v3

    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_1

    .line 1631
    :cond_0
    move/from16 v16, v1

    move/from16 v17, v2

    .line 1635
    .end local v1    # "childBottom":I
    .end local v2    # "childTop":I
    .local v16, "childBottom":I
    .local v17, "childTop":I
    :goto_1
    const/4 v1, 0x0

    .line 1636
    .local v1, "spaceBetweenItem":F
    iget v2, v9, Lorg/nativescript/widgets/FlexboxLayout;->mJustifyContent:I

    const/4 v7, 0x2

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v7, :cond_5

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1650
    iget v2, v8, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-eqz v2, :cond_1

    .line 1651
    iget v2, v8, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int v2, v13, v2

    int-to-float v2, v2

    iget v3, v8, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1654
    :cond_1
    int-to-float v2, v10

    div-float v3, v1, v4

    add-float/2addr v2, v3

    .line 1655
    .local v2, "childLeft":F
    sub-int v3, v13, v11

    int-to-float v3, v3

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    .line 1656
    .local v3, "childRight":F
    goto :goto_3

    .line 1664
    .end local v2    # "childLeft":F
    .end local v3    # "childRight":F
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid justifyContent is set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lorg/nativescript/widgets/FlexboxLayout;->mJustifyContent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1658
    :cond_3
    int-to-float v2, v10

    .line 1659
    .restart local v2    # "childLeft":F
    iget v4, v8, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-eq v4, v3, :cond_4

    iget v4, v8, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    goto :goto_2

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1660
    .local v3, "denominator":F
    :goto_2
    iget v4, v8, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    div-float v1, v4, v3

    .line 1661
    sub-int v4, v13, v11

    int-to-float v4, v4

    .line 1662
    .local v4, "childRight":F
    move v3, v4

    goto :goto_3

    .line 1646
    .end local v2    # "childLeft":F
    .end local v3    # "denominator":F
    .end local v4    # "childRight":F
    :cond_5
    int-to-float v2, v10

    iget v3, v8, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int v3, v13, v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1647
    .restart local v2    # "childLeft":F
    sub-int v3, v13, v11

    int-to-float v3, v3

    iget v5, v8, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int v5, v13, v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    .line 1648
    .local v3, "childRight":F
    goto :goto_3

    .line 1642
    .end local v2    # "childLeft":F
    .end local v3    # "childRight":F
    :cond_6
    iget v2, v8, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int v2, v13, v2

    add-int/2addr v2, v11

    int-to-float v2, v2

    .line 1643
    .restart local v2    # "childLeft":F
    iget v3, v8, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int/2addr v3, v10

    int-to-float v3, v3

    .line 1644
    .restart local v3    # "childRight":F
    goto :goto_3

    .line 1638
    .end local v2    # "childLeft":F
    .end local v3    # "childRight":F
    :cond_7
    int-to-float v2, v10

    .line 1639
    .restart local v2    # "childLeft":F
    sub-int v3, v13, v11

    int-to-float v3, v3

    .line 1640
    .restart local v3    # "childRight":F
    nop

    .line 1667
    :goto_3
    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 1669
    .end local v1    # "spaceBetweenItem":F
    .local v18, "spaceBetweenItem":F
    const/4 v1, 0x0

    move v6, v0

    move v5, v1

    .end local v0    # "currentViewIndex":I
    .local v5, "j":I
    .local v6, "currentViewIndex":I
    :goto_4
    iget v0, v8, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-ge v5, v0, :cond_e

    .line 1670
    invoke-virtual {v9, v6}, Lorg/nativescript/widgets/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1671
    .local v19, "child":Landroid/view/View;
    if-nez v19, :cond_8

    .line 1672
    move/from16 v25, v5

    move-object v0, v8

    move/from16 v26, v10

    const/16 v23, 0x2

    goto/16 :goto_7

    .line 1673
    :cond_8
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 1674
    add-int/lit8 v6, v6, 0x1

    .line 1675
    move/from16 v25, v5

    move-object v0, v8

    move/from16 v26, v10

    const/16 v23, 0x2

    goto/16 :goto_7

    .line 1677
    :cond_9
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 1678
    .local v4, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v0, v4, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    add-float/2addr v2, v0

    .line 1679
    iget v0, v4, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    .line 1680
    invoke-direct {v9, v6, v5}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1681
    iget v0, v9, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    int-to-float v1, v0

    add-float/2addr v2, v1

    .line 1682
    int-to-float v0, v0

    sub-float/2addr v3, v0

    move/from16 v20, v2

    move/from16 v21, v3

    goto :goto_5

    .line 1680
    :cond_a
    move/from16 v20, v2

    move/from16 v21, v3

    .line 1685
    .end local v2    # "childLeft":F
    .end local v3    # "childRight":F
    .local v20, "childLeft":F
    .local v21, "childRight":F
    :goto_5
    iget v3, v9, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    if-ne v3, v7, :cond_c

    .line 1686
    if-eqz p1, :cond_b

    .line 1687
    iget v2, v9, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    .line 1688
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v22, v0, v1

    .line 1689
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v23, v16, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 1687
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v25, v2

    move-object v2, v8

    move/from16 v26, v10

    move-object v10, v4

    .end local v4    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .local v10, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .local v26, "paddingLeft":I
    move/from16 v4, v25

    move/from16 v25, v5

    .end local v5    # "j":I
    .local v25, "j":I
    move/from16 v5, v22

    move/from16 v22, v6

    .end local v6    # "currentViewIndex":I
    .local v22, "currentViewIndex":I
    move/from16 v6, v23

    const/16 v23, 0x2

    move/from16 v7, v24

    move-object/from16 v24, v8

    .end local v8    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v24, "flexLine":Lorg/nativescript/widgets/FlexLine;
    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lorg/nativescript/widgets/FlexboxLayout;->layoutSingleChildHorizontal(Landroid/view/View;Lorg/nativescript/widgets/FlexLine;IIIIII)V

    goto/16 :goto_6

    .line 1692
    .end local v22    # "currentViewIndex":I
    .end local v24    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v25    # "j":I
    .end local v26    # "paddingLeft":I
    .restart local v4    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .restart local v5    # "j":I
    .restart local v6    # "currentViewIndex":I
    .restart local v8    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v10, "paddingLeft":I
    :cond_b
    move/from16 v25, v5

    move/from16 v22, v6

    move-object/from16 v24, v8

    move/from16 v26, v10

    const/16 v23, 0x2

    move-object v10, v4

    .end local v4    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .end local v5    # "j":I
    .end local v6    # "currentViewIndex":I
    .end local v8    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v10, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .restart local v22    # "currentViewIndex":I
    .restart local v24    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v25    # "j":I
    .restart local v26    # "paddingLeft":I
    iget v4, v9, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    .line 1693
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v6, v16, v0

    .line 1694
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v7, v0, v1

    .line 1692
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lorg/nativescript/widgets/FlexboxLayout;->layoutSingleChildHorizontal(Landroid/view/View;Lorg/nativescript/widgets/FlexLine;IIIIII)V

    goto :goto_6

    .line 1698
    .end local v22    # "currentViewIndex":I
    .end local v24    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v25    # "j":I
    .end local v26    # "paddingLeft":I
    .restart local v4    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .restart local v5    # "j":I
    .restart local v6    # "currentViewIndex":I
    .restart local v8    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v10, "paddingLeft":I
    :cond_c
    move/from16 v25, v5

    move/from16 v22, v6

    move-object/from16 v24, v8

    move/from16 v26, v10

    const/16 v23, 0x2

    move-object v10, v4

    .end local v4    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .end local v5    # "j":I
    .end local v6    # "currentViewIndex":I
    .end local v8    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v10, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .restart local v22    # "currentViewIndex":I
    .restart local v24    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v25    # "j":I
    .restart local v26    # "paddingLeft":I
    if-eqz p1, :cond_d

    .line 1699
    iget v4, v9, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    .line 1700
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v5, v0, v1

    .line 1701
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v8, v17, v0

    .line 1699
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Lorg/nativescript/widgets/FlexboxLayout;->layoutSingleChildHorizontal(Landroid/view/View;Lorg/nativescript/widgets/FlexLine;IIIIII)V

    goto :goto_6

    .line 1703
    :cond_d
    iget v4, v9, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    .line 1704
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1705
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v7, v0, v1

    .line 1706
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v8, v17, v0

    .line 1703
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move/from16 v6, v17

    invoke-direct/range {v0 .. v8}, Lorg/nativescript/widgets/FlexboxLayout;->layoutSingleChildHorizontal(Landroid/view/View;Lorg/nativescript/widgets/FlexLine;IIIIII)V

    .line 1709
    :goto_6
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v0, v0, v18

    iget v1, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float v20, v20, v0

    .line 1710
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v0, v0, v18

    iget v1, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sub-float v21, v21, v0

    .line 1711
    add-int/lit8 v6, v22, 0x1

    .line 1713
    .end local v22    # "currentViewIndex":I
    .restart local v6    # "currentViewIndex":I
    move-object/from16 v0, v24

    .end local v24    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v0, "flexLine":Lorg/nativescript/widgets/FlexLine;
    iget v1, v0, Lorg/nativescript/widgets/FlexLine;->mLeft:I

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/nativescript/widgets/FlexLine;->mLeft:I

    .line 1714
    iget v1, v0, Lorg/nativescript/widgets/FlexLine;->mTop:I

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/nativescript/widgets/FlexLine;->mTop:I

    .line 1715
    iget v1, v0, Lorg/nativescript/widgets/FlexLine;->mRight:I

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/nativescript/widgets/FlexLine;->mRight:I

    .line 1716
    iget v1, v0, Lorg/nativescript/widgets/FlexLine;->mBottom:I

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/nativescript/widgets/FlexLine;->mBottom:I

    move/from16 v2, v20

    move/from16 v3, v21

    .line 1669
    .end local v10    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .end local v19    # "child":Landroid/view/View;
    .end local v20    # "childLeft":F
    .end local v21    # "childRight":F
    .restart local v2    # "childLeft":F
    .restart local v3    # "childRight":F
    :goto_7
    add-int/lit8 v5, v25, 0x1

    move-object v8, v0

    move/from16 v10, v26

    const/4 v7, 0x2

    .end local v25    # "j":I
    .restart local v5    # "j":I
    goto/16 :goto_4

    .end local v0    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v26    # "paddingLeft":I
    .restart local v8    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v10, "paddingLeft":I
    :cond_e
    move/from16 v25, v5

    move/from16 v22, v6

    move-object v0, v8

    move/from16 v26, v10

    .line 1718
    .end local v5    # "j":I
    .end local v6    # "currentViewIndex":I
    .end local v8    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v10    # "paddingLeft":I
    .restart local v0    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v22    # "currentViewIndex":I
    .restart local v26    # "paddingLeft":I
    iget v1, v0, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    add-int v1, v17, v1

    .line 1719
    .end local v17    # "childTop":I
    .local v1, "childTop":I
    iget v4, v0, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    sub-int v0, v16, v4

    .line 1629
    .end local v16    # "childBottom":I
    .end local v18    # "spaceBetweenItem":F
    .local v0, "childBottom":I
    add-int/lit8 v15, v15, 0x1

    move v2, v1

    move v1, v0

    move/from16 v0, v22

    goto/16 :goto_0

    .line 1721
    .end local v3    # "childRight":F
    .end local v14    # "size":I
    .end local v15    # "i":I
    .end local v22    # "currentViewIndex":I
    .end local v26    # "paddingLeft":I
    .local v0, "currentViewIndex":I
    .local v1, "childBottom":I
    .local v2, "childTop":I
    .restart local v10    # "paddingLeft":I
    :cond_f
    return-void
.end method

.method private layoutSingleChildHorizontal(Landroid/view/View;Lorg/nativescript/widgets/FlexLine;IIIIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flexLine"    # Lorg/nativescript/widgets/FlexLine;
    .param p3, "flexWrap"    # I
    .param p4, "alignItems"    # I
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "right"    # I
    .param p8, "bottom"    # I

    .line 1747
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 1748
    .local v0, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v1, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1751
    iget p4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    .line 1753
    :cond_0
    iget v1, p2, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 1754
    .local v1, "crossSize":I
    const/4 v2, 0x2

    if-eqz p4, :cond_7

    const/4 v3, 0x1

    if-eq p4, v3, :cond_5

    if-eq p4, v2, :cond_3

    const/4 v3, 0x3

    if-eq p4, v3, :cond_1

    const/4 v3, 0x4

    if-eq p4, v3, :cond_7

    goto/16 :goto_0

    .line 1764
    :cond_1
    if-eq p3, v2, :cond_2

    .line 1765
    iget v2, p2, Lorg/nativescript/widgets/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1766
    .local v2, "marginTop":I
    iget v3, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1767
    add-int v3, p6, v2

    add-int v4, p8, v2

    invoke-virtual {p1, p5, v3, p7, v4}, Landroid/view/View;->layout(IIII)V

    .line 1768
    .end local v2    # "marginTop":I
    goto/16 :goto_0

    .line 1769
    :cond_2
    iget v2, p2, Lorg/nativescript/widgets/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1770
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v3

    add-int/2addr v2, v3

    .line 1771
    .local v2, "marginBottom":I
    iget v3, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1772
    sub-int v3, p6, v2

    sub-int v4, p8, v2

    invoke-virtual {p1, p5, v3, p7, v4}, Landroid/view/View;->layout(IIII)V

    .line 1774
    .end local v2    # "marginBottom":I
    goto/16 :goto_0

    .line 1788
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v1, v3

    div-int/2addr v3, v2

    .line 1789
    .local v3, "topFromCrossAxis":I
    if-eq p3, v2, :cond_4

    .line 1790
    add-int v2, p6, v3

    iget v4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    add-int v4, p6, v3

    .line 1791
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 1790
    invoke-virtual {p1, p5, v2, p7, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1794
    :cond_4
    sub-int v2, p6, v3

    iget v4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    sub-int v4, p6, v3

    .line 1795
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 1794
    invoke-virtual {p1, p5, v2, p7, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1776
    .end local v3    # "topFromCrossAxis":I
    :cond_5
    if-eq p3, v2, :cond_6

    .line 1777
    add-int v2, p6, v1

    .line 1778
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    add-int v3, p6, v1

    iget v4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    .line 1777
    invoke-virtual {p1, p5, v2, p7, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1783
    :cond_6
    sub-int v2, p6, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    sub-int v3, p8, v1

    .line 1784
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    .line 1783
    invoke-virtual {p1, p5, v2, p7, v3}, Landroid/view/View;->layout(IIII)V

    .line 1786
    goto :goto_0

    .line 1757
    :cond_7
    if-eq p3, v2, :cond_8

    .line 1758
    iget v2, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p6

    iget v3, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, p8

    invoke-virtual {p1, p5, v2, p7, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1760
    :cond_8
    iget v2, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    sub-int v2, p6, v2

    iget v3, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    sub-int v3, p8, v3

    invoke-virtual {p1, p5, v2, p7, v3}, Landroid/view/View;->layout(IIII)V

    .line 1762
    nop

    .line 1800
    :goto_0
    return-void
.end method

.method private layoutSingleChildVertical(Landroid/view/View;Lorg/nativescript/widgets/FlexLine;ZIIIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flexLine"    # Lorg/nativescript/widgets/FlexLine;
    .param p3, "isRtl"    # Z
    .param p4, "alignItems"    # I
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "right"    # I
    .param p8, "bottom"    # I

    .line 1963
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 1964
    .local v0, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v1, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1967
    iget p4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    .line 1969
    :cond_0
    iget v1, p2, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 1970
    .local v1, "crossSize":I
    if-eqz p4, :cond_5

    const/4 v2, 0x1

    if-eq p4, v2, :cond_3

    const/4 v2, 0x2

    if-eq p4, v2, :cond_1

    const/4 v2, 0x3

    if-eq p4, v2, :cond_5

    const/4 v2, 0x4

    if-eq p4, v2, :cond_5

    goto/16 :goto_0

    .line 1994
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v1, v3

    div-int/2addr v3, v2

    .line 1995
    .local v3, "leftFromCrossAxis":I
    if-nez p3, :cond_2

    .line 1996
    add-int v2, p5, v3

    iget v4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v4

    add-int v4, p7, v3

    iget v5, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v2, p6, v4, p8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 2000
    :cond_2
    sub-int v2, p5, v3

    iget v4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v4

    sub-int v4, p7, v3

    iget v5, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v2, p6, v4, p8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1981
    .end local v3    # "leftFromCrossAxis":I
    :cond_3
    if-nez p3, :cond_4

    .line 1982
    add-int v2, p5, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    add-int v3, p7, v1

    .line 1983
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    .line 1982
    invoke-virtual {p1, v2, p6, v3, p8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1988
    :cond_4
    sub-int v2, p5, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    sub-int v3, p7, v1

    .line 1989
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    .line 1988
    invoke-virtual {p1, v2, p6, v3, p8}, Landroid/view/View;->layout(IIII)V

    .line 1992
    goto :goto_0

    .line 1974
    :cond_5
    if-nez p3, :cond_6

    .line 1975
    iget v2, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p5

    iget v3, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, p7

    invoke-virtual {p1, v2, p6, v3, p8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1977
    :cond_6
    iget v2, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    sub-int v2, p5, v2

    iget v3, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    sub-int v3, p7, v3

    invoke-virtual {p1, v2, p6, v3, p8}, Landroid/view/View;->layout(IIII)V

    .line 1979
    nop

    .line 2006
    :goto_0
    return-void
.end method

.method private layoutVertical(ZZIIII)V
    .locals 28
    .param p1, "isRtl"    # Z
    .param p2, "fromBottomToTop"    # Z
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 1826
    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingTop()I

    move-result v10

    .line 1827
    .local v10, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingBottom()I

    move-result v11

    .line 1829
    .local v11, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingRight()I

    move-result v12

    .line 1830
    .local v12, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingLeft()I

    move-result v0

    .line 1831
    .local v0, "childLeft":I
    const/4 v1, 0x0

    .line 1833
    .local v1, "currentViewIndex":I
    sub-int v13, p5, p3

    .line 1834
    .local v13, "width":I
    sub-int v14, p6, p4

    .line 1837
    .local v14, "height":I
    sub-int v2, v13, v12

    .line 1846
    .local v2, "childRight":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, v9, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    move v8, v3

    .end local v3    # "i":I
    .local v8, "i":I
    .local v15, "size":I
    :goto_0
    if-ge v8, v15, :cond_f

    .line 1847
    iget-object v3, v9, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lorg/nativescript/widgets/FlexLine;

    .line 1848
    .local v7, "flexLine":Lorg/nativescript/widgets/FlexLine;
    invoke-direct {v9, v8}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1849
    iget v3, v9, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v3

    .line 1850
    sub-int/2addr v2, v3

    move/from16 v16, v0

    move/from16 v17, v2

    goto :goto_1

    .line 1848
    :cond_0
    move/from16 v16, v0

    move/from16 v17, v2

    .line 1852
    .end local v0    # "childLeft":I
    .end local v2    # "childRight":I
    .local v16, "childLeft":I
    .local v17, "childRight":I
    :goto_1
    const/4 v0, 0x0

    .line 1853
    .local v0, "spaceBetweenItem":F
    iget v2, v9, Lorg/nativescript/widgets/FlexboxLayout;->mJustifyContent:I

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v4, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1867
    iget v2, v7, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-eqz v2, :cond_1

    .line 1868
    iget v2, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int v2, v14, v2

    int-to-float v2, v2

    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1871
    :cond_1
    int-to-float v2, v10

    div-float v3, v0, v5

    add-float/2addr v2, v3

    .line 1872
    .local v2, "childTop":F
    sub-int v3, v14, v11

    int-to-float v3, v3

    div-float v4, v0, v5

    sub-float/2addr v3, v4

    .line 1873
    .local v3, "childBottom":F
    goto :goto_3

    .line 1881
    .end local v2    # "childTop":F
    .end local v3    # "childBottom":F
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid justifyContent is set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lorg/nativescript/widgets/FlexboxLayout;->mJustifyContent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1875
    :cond_3
    int-to-float v2, v10

    .line 1876
    .restart local v2    # "childTop":F
    iget v4, v7, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-eq v4, v3, :cond_4

    iget v4, v7, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    goto :goto_2

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1877
    .local v3, "denominator":F
    :goto_2
    iget v4, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int v4, v14, v4

    int-to-float v4, v4

    div-float v0, v4, v3

    .line 1878
    sub-int v4, v14, v11

    int-to-float v4, v4

    .line 1879
    .local v4, "childBottom":F
    move v3, v4

    goto :goto_3

    .line 1863
    .end local v2    # "childTop":F
    .end local v3    # "denominator":F
    .end local v4    # "childBottom":F
    :cond_5
    int-to-float v2, v10

    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int v3, v14, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    .line 1864
    .restart local v2    # "childTop":F
    sub-int v3, v14, v11

    int-to-float v3, v3

    iget v4, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int v4, v14, v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 1865
    .local v3, "childBottom":F
    goto :goto_3

    .line 1859
    .end local v2    # "childTop":F
    .end local v3    # "childBottom":F
    :cond_6
    iget v2, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int v2, v14, v2

    add-int/2addr v2, v11

    int-to-float v2, v2

    .line 1860
    .restart local v2    # "childTop":F
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int/2addr v3, v10

    int-to-float v3, v3

    .line 1861
    .restart local v3    # "childBottom":F
    goto :goto_3

    .line 1855
    .end local v2    # "childTop":F
    .end local v3    # "childBottom":F
    :cond_7
    int-to-float v2, v10

    .line 1856
    .restart local v2    # "childTop":F
    sub-int v3, v14, v11

    int-to-float v3, v3

    .line 1857
    .restart local v3    # "childBottom":F
    nop

    .line 1884
    :goto_3
    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 1886
    .end local v0    # "spaceBetweenItem":F
    .local v18, "spaceBetweenItem":F
    const/4 v0, 0x0

    move v6, v0

    move v5, v1

    .end local v1    # "currentViewIndex":I
    .local v5, "currentViewIndex":I
    .local v6, "j":I
    :goto_4
    iget v0, v7, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-ge v6, v0, :cond_e

    .line 1887
    invoke-virtual {v9, v5}, Lorg/nativescript/widgets/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1888
    .local v19, "child":Landroid/view/View;
    if-nez v19, :cond_8

    .line 1889
    move/from16 v22, v6

    move-object v0, v7

    move/from16 v27, v8

    goto/16 :goto_7

    .line 1890
    :cond_8
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 1891
    add-int/lit8 v5, v5, 0x1

    .line 1892
    move/from16 v22, v6

    move-object v0, v7

    move/from16 v27, v8

    goto/16 :goto_7

    .line 1894
    :cond_9
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 1895
    .local v4, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v0, v4, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    add-float/2addr v2, v0

    .line 1896
    iget v0, v4, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    .line 1897
    invoke-direct {v9, v5, v6}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1898
    iget v0, v9, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    int-to-float v1, v0

    add-float/2addr v2, v1

    .line 1899
    int-to-float v0, v0

    sub-float/2addr v3, v0

    move/from16 v20, v2

    move/from16 v21, v3

    goto :goto_5

    .line 1897
    :cond_a
    move/from16 v20, v2

    move/from16 v21, v3

    .line 1901
    .end local v2    # "childTop":F
    .end local v3    # "childBottom":F
    .local v20, "childTop":F
    .local v21, "childBottom":F
    :goto_5
    if-eqz p1, :cond_c

    .line 1902
    if-eqz p2, :cond_b

    .line 1903
    const/4 v3, 0x1

    iget v2, v9, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    .line 1904
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v22, v17, v0

    .line 1905
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v23, v0, v1

    .line 1906
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 1903
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v25, v2

    move-object v2, v7

    move-object/from16 v26, v4

    .end local v4    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .local v26, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    move/from16 v4, v25

    move/from16 v25, v5

    .end local v5    # "currentViewIndex":I
    .local v25, "currentViewIndex":I
    move/from16 v5, v22

    move/from16 v22, v6

    .end local v6    # "j":I
    .local v22, "j":I
    move/from16 v6, v23

    move-object/from16 v23, v7

    .end local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v23, "flexLine":Lorg/nativescript/widgets/FlexLine;
    move/from16 v7, v17

    move/from16 v27, v8

    .end local v8    # "i":I
    .local v27, "i":I
    move/from16 v8, v24

    invoke-direct/range {v0 .. v8}, Lorg/nativescript/widgets/FlexboxLayout;->layoutSingleChildVertical(Landroid/view/View;Lorg/nativescript/widgets/FlexLine;ZIIIII)V

    goto/16 :goto_6

    .line 1908
    .end local v22    # "j":I
    .end local v23    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v25    # "currentViewIndex":I
    .end local v26    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .end local v27    # "i":I
    .restart local v4    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .restart local v5    # "currentViewIndex":I
    .restart local v6    # "j":I
    .restart local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v8    # "i":I
    :cond_b
    move-object/from16 v26, v4

    move/from16 v25, v5

    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v27, v8

    .end local v4    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .end local v5    # "currentViewIndex":I
    .end local v6    # "j":I
    .end local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v8    # "i":I
    .restart local v22    # "j":I
    .restart local v23    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v25    # "currentViewIndex":I
    .restart local v26    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .restart local v27    # "i":I
    const/4 v3, 0x1

    iget v4, v9, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    .line 1909
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v5, v17, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1910
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v8, v0, v1

    .line 1908
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move/from16 v7, v17

    invoke-direct/range {v0 .. v8}, Lorg/nativescript/widgets/FlexboxLayout;->layoutSingleChildVertical(Landroid/view/View;Lorg/nativescript/widgets/FlexLine;ZIIIII)V

    goto :goto_6

    .line 1913
    .end local v22    # "j":I
    .end local v23    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v25    # "currentViewIndex":I
    .end local v26    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .end local v27    # "i":I
    .restart local v4    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .restart local v5    # "currentViewIndex":I
    .restart local v6    # "j":I
    .restart local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v8    # "i":I
    :cond_c
    move-object/from16 v26, v4

    move/from16 v25, v5

    move/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v27, v8

    .end local v4    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .end local v5    # "currentViewIndex":I
    .end local v6    # "j":I
    .end local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v8    # "i":I
    .restart local v22    # "j":I
    .restart local v23    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v25    # "currentViewIndex":I
    .restart local v26    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .restart local v27    # "i":I
    if-eqz p2, :cond_d

    .line 1914
    const/4 v3, 0x0

    iget v4, v9, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    .line 1915
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v6, v0, v1

    .line 1916
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v7, v16, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1914
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move/from16 v5, v16

    invoke-direct/range {v0 .. v8}, Lorg/nativescript/widgets/FlexboxLayout;->layoutSingleChildVertical(Landroid/view/View;Lorg/nativescript/widgets/FlexLine;ZIIIII)V

    goto :goto_6

    .line 1918
    :cond_d
    const/4 v3, 0x0

    iget v4, v9, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    .line 1919
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1920
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v7, v16, v0

    .line 1921
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v8, v0, v1

    .line 1918
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move/from16 v5, v16

    invoke-direct/range {v0 .. v8}, Lorg/nativescript/widgets/FlexboxLayout;->layoutSingleChildVertical(Landroid/view/View;Lorg/nativescript/widgets/FlexLine;ZIIIII)V

    .line 1924
    :goto_6
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v0, v0, v18

    move-object/from16 v1, v26

    .end local v26    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .local v1, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v2, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-float v20, v20, v0

    .line 1925
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v0, v0, v18

    iget v2, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sub-float v21, v21, v0

    .line 1926
    add-int/lit8 v5, v25, 0x1

    .line 1928
    .end local v25    # "currentViewIndex":I
    .restart local v5    # "currentViewIndex":I
    move-object/from16 v0, v23

    .end local v23    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v0, "flexLine":Lorg/nativescript/widgets/FlexLine;
    iget v2, v0, Lorg/nativescript/widgets/FlexLine;->mLeft:I

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lorg/nativescript/widgets/FlexLine;->mLeft:I

    .line 1929
    iget v2, v0, Lorg/nativescript/widgets/FlexLine;->mTop:I

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lorg/nativescript/widgets/FlexLine;->mTop:I

    .line 1930
    iget v2, v0, Lorg/nativescript/widgets/FlexLine;->mRight:I

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/nativescript/widgets/FlexLine;->mRight:I

    .line 1931
    iget v2, v0, Lorg/nativescript/widgets/FlexLine;->mBottom:I

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/nativescript/widgets/FlexLine;->mBottom:I

    move/from16 v2, v20

    move/from16 v3, v21

    .line 1886
    .end local v1    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .end local v19    # "child":Landroid/view/View;
    .end local v20    # "childTop":F
    .end local v21    # "childBottom":F
    .restart local v2    # "childTop":F
    .restart local v3    # "childBottom":F
    :goto_7
    add-int/lit8 v6, v22, 0x1

    move-object v7, v0

    move/from16 v8, v27

    .end local v22    # "j":I
    .restart local v6    # "j":I
    goto/16 :goto_4

    .end local v0    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v27    # "i":I
    .restart local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v8    # "i":I
    :cond_e
    move/from16 v25, v5

    move/from16 v22, v6

    move-object v0, v7

    move/from16 v27, v8

    .line 1933
    .end local v5    # "currentViewIndex":I
    .end local v6    # "j":I
    .end local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v8    # "i":I
    .restart local v0    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v25    # "currentViewIndex":I
    .restart local v27    # "i":I
    iget v1, v0, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    add-int v1, v16, v1

    .line 1934
    .end local v16    # "childLeft":I
    .local v1, "childLeft":I
    iget v4, v0, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    sub-int v0, v17, v4

    .line 1846
    .end local v17    # "childRight":I
    .end local v18    # "spaceBetweenItem":F
    .local v0, "childRight":I
    add-int/lit8 v8, v27, 0x1

    move v2, v0

    move v0, v1

    move/from16 v1, v25

    .end local v27    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1936
    .end local v3    # "childBottom":F
    .end local v8    # "i":I
    .end local v15    # "size":I
    .end local v25    # "currentViewIndex":I
    .local v0, "childLeft":I
    .local v1, "currentViewIndex":I
    .local v2, "childRight":I
    :cond_f
    return-void
.end method

.method private measureHorizontal(II)V
    .locals 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 544
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 545
    .local v11, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 546
    .local v12, "widthSize":I
    const/4 v0, 0x0

    .line 548
    .local v0, "childState":I
    iget-object v1, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 554
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getChildCount()I

    move-result v13

    .line 555
    .local v13, "childCount":I
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v14

    .line 556
    .local v14, "paddingStart":I
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v15

    .line 557
    .local v15, "paddingEnd":I
    const/high16 v1, -0x80000000

    .line 558
    .local v1, "largestHeightInRow":I
    new-instance v2, Lorg/nativescript/widgets/FlexLine;

    invoke-direct {v2}, Lorg/nativescript/widgets/FlexLine;-><init>()V

    .line 561
    .local v2, "flexLine":Lorg/nativescript/widgets/FlexLine;
    const/4 v3, 0x0

    .line 562
    .local v3, "indexInFlexLine":I
    add-int v4, v14, v15

    iput v4, v2, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 563
    const/4 v4, 0x0

    move-object v7, v2

    move/from16 v16, v3

    move v6, v4

    .end local v2    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v3    # "indexInFlexLine":I
    .local v6, "i":I
    .local v7, "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v16, "indexInFlexLine":I
    :goto_0
    if-ge v6, v13, :cond_a

    .line 564
    invoke-virtual {v8, v6}, Lorg/nativescript/widgets/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 565
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_0

    .line 566
    invoke-direct {v8, v6, v13, v7}, Lorg/nativescript/widgets/FlexboxLayout;->addFlexLineIfLastFlexItem(IILorg/nativescript/widgets/FlexLine;)V

    .line 567
    move/from16 v17, v14

    goto :goto_1

    .line 568
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    move/from16 v17, v14

    .end local v14    # "paddingStart":I
    .local v17, "paddingStart":I
    const/4 v14, 0x1

    if-ne v2, v3, :cond_1

    .line 569
    iget v2, v7, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    add-int/2addr v2, v14

    iput v2, v7, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    .line 570
    invoke-direct {v8, v6, v13, v7}, Lorg/nativescript/widgets/FlexboxLayout;->addFlexLineIfLastFlexItem(IILorg/nativescript/widgets/FlexLine;)V

    .line 571
    nop

    .line 563
    .end local v4    # "child":Landroid/view/View;
    .end local v17    # "paddingStart":I
    .restart local v14    # "paddingStart":I
    :goto_1
    move v4, v6

    move/from16 v23, v11

    .end local v14    # "paddingStart":I
    .restart local v17    # "paddingStart":I
    goto/16 :goto_7

    .line 574
    .restart local v4    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 575
    .local v3, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v2, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    .line 576
    iget-object v2, v7, Lorg/nativescript/widgets/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_2
    iget v2, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->width:I

    .line 580
    .local v2, "childWidth":I
    iget v5, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    const/high16 v19, -0x40800000    # -1.0f

    cmpl-float v5, v5, v19

    if-eqz v5, :cond_3

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v11, v5, :cond_3

    .line 582
    int-to-float v5, v12

    iget v14, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    mul-float v5, v5, v14

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v14, v2

    goto :goto_2

    .line 590
    :cond_3
    move v14, v2

    .end local v2    # "childWidth":I
    .local v14, "childWidth":I
    :goto_2
    nop

    .line 591
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v2, v5

    iget v5, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    if-gez v14, :cond_4

    const/4 v5, -0x2

    goto :goto_3

    :cond_4
    move v5, v14

    .line 590
    :goto_3
    invoke-static {v9, v2, v5}, Lorg/nativescript/widgets/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result v5

    .line 593
    .local v5, "childWidthMeasureSpec":I
    nop

    .line 594
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingBottom()I

    move-result v21

    add-int v2, v2, v21

    move/from16 v21, v6

    .end local v6    # "i":I
    .local v21, "i":I
    iget v6, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v6

    iget v6, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v6

    iget v6, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->height:I

    if-gez v6, :cond_5

    const/4 v6, -0x2

    goto :goto_4

    :cond_5
    iget v6, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->height:I

    .line 593
    :goto_4
    invoke-static {v10, v2, v6}, Lorg/nativescript/widgets/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 597
    .local v6, "childHeightMeasureSpec":I
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 605
    invoke-direct {v8, v4}, Lorg/nativescript/widgets/FlexboxLayout;->checkSizeConstraints(Landroid/view/View;)V

    .line 607
    nop

    .line 608
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v20

    .line 609
    .end local v0    # "childState":I
    .local v20, "childState":I
    nop

    .line 610
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v2, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v2

    iget v2, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 609
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 612
    .end local v1    # "largestHeightInRow":I
    .local v22, "largestHeightInRow":I
    iget v2, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 613
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int v23, v0, v1

    .line 612
    move-object/from16 v0, p0

    move v1, v11

    move/from16 v24, v2

    move v2, v12

    move-object/from16 v25, v3

    .end local v3    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .local v25, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    move/from16 v3, v24

    move-object/from16 v24, v4

    .end local v4    # "child":Landroid/view/View;
    .local v24, "child":Landroid/view/View;
    move/from16 v4, v23

    move/from16 v18, v5

    move/from16 v23, v11

    const/4 v11, 0x2

    .end local v5    # "childWidthMeasureSpec":I
    .end local v11    # "widthMode":I
    .local v18, "childWidthMeasureSpec":I
    .local v23, "widthMode":I
    move-object/from16 v5, v25

    move/from16 v26, v21

    move/from16 v21, v6

    .end local v6    # "childHeightMeasureSpec":I
    .local v21, "childHeightMeasureSpec":I
    .local v26, "i":I
    move/from16 v6, v26

    move-object v11, v7

    .end local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v11, "flexLine":Lorg/nativescript/widgets/FlexLine;
    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lorg/nativescript/widgets/FlexboxLayout;->isWrapRequired(IIIILorg/nativescript/widgets/FlexboxLayout$LayoutParams;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 615
    iget v0, v11, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-lez v0, :cond_6

    .line 616
    invoke-direct {v8, v11}, Lorg/nativescript/widgets/FlexboxLayout;->addFlexLine(Lorg/nativescript/widgets/FlexLine;)V

    .line 619
    :cond_6
    new-instance v0, Lorg/nativescript/widgets/FlexLine;

    invoke-direct {v0}, Lorg/nativescript/widgets/FlexLine;-><init>()V

    move-object v7, v0

    .line 620
    .end local v11    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    const/4 v0, 0x1

    iput v0, v7, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    .line 621
    add-int v0, v17, v15

    iput v0, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 622
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v25

    .end local v25    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .local v1, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v2, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v2

    iget v2, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int v22, v0, v2

    .line 623
    const/4 v0, 0x0

    move/from16 v2, v22

    .end local v16    # "indexInFlexLine":I
    .local v0, "indexInFlexLine":I
    goto :goto_5

    .line 625
    .end local v0    # "indexInFlexLine":I
    .end local v1    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .end local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v11    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v16    # "indexInFlexLine":I
    .restart local v25    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    :cond_7
    move-object/from16 v1, v25

    .end local v25    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .restart local v1    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v0, v11, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v11, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    .line 626
    add-int/lit8 v0, v16, 0x1

    move-object v7, v11

    move/from16 v2, v22

    .line 628
    .end local v11    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v16    # "indexInFlexLine":I
    .end local v22    # "largestHeightInRow":I
    .restart local v0    # "indexInFlexLine":I
    .local v2, "largestHeightInRow":I
    .restart local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    :goto_5
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 629
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mTotalFlexGrow:F

    iget v4, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    add-float/2addr v3, v4

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mTotalFlexGrow:F

    .line 630
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mTotalFlexShrink:F

    iget v4, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    add-float/2addr v3, v4

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mTotalFlexShrink:F

    .line 634
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 637
    move/from16 v4, v26

    .end local v26    # "i":I
    .local v4, "i":I
    invoke-direct {v8, v4, v0}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 638
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    iget v5, v8, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v3, v5

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 639
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mDividerLengthInMainSize:I

    iget v5, v8, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v3, v5

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mDividerLengthInMainSize:I

    .line 642
    :cond_8
    iget v3, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_9

    .line 643
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mMaxBaseline:I

    .line 644
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBaseline()I

    move-result v5

    iget v6, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mMaxBaseline:I

    goto :goto_6

    .line 649
    :cond_9
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mMaxBaseline:I

    .line 651
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBaseline()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 650
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mMaxBaseline:I

    .line 654
    :goto_6
    invoke-direct {v8, v4, v13, v7}, Lorg/nativescript/widgets/FlexboxLayout;->addFlexLineIfLastFlexItem(IILorg/nativescript/widgets/FlexLine;)V

    move/from16 v16, v0

    move v1, v2

    move/from16 v0, v20

    .line 563
    .end local v2    # "largestHeightInRow":I
    .end local v14    # "childWidth":I
    .end local v18    # "childWidthMeasureSpec":I
    .end local v20    # "childState":I
    .end local v21    # "childHeightMeasureSpec":I
    .end local v24    # "child":Landroid/view/View;
    .local v0, "childState":I
    .local v1, "largestHeightInRow":I
    .restart local v16    # "indexInFlexLine":I
    :goto_7
    add-int/lit8 v6, v4, 0x1

    move/from16 v14, v17

    move/from16 v11, v23

    .end local v4    # "i":I
    .local v6, "i":I
    goto/16 :goto_0

    .end local v17    # "paddingStart":I
    .end local v23    # "widthMode":I
    .local v11, "widthMode":I
    .local v14, "paddingStart":I
    :cond_a
    move v4, v6

    move/from16 v23, v11

    move/from16 v17, v14

    move-object v11, v7

    .line 658
    .end local v1    # "largestHeightInRow":I
    .end local v6    # "i":I
    .end local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v11    # "widthMode":I
    .end local v13    # "childCount":I
    .end local v14    # "paddingStart":I
    .end local v15    # "paddingEnd":I
    .end local v16    # "indexInFlexLine":I
    .restart local v23    # "widthMode":I
    iget v1, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {v8, v1, v9, v10}, Lorg/nativescript/widgets/FlexboxLayout;->determineMainSize(III)V

    .line 661
    iget v1, v8, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    .line 662
    const/4 v1, 0x0

    .line 663
    .local v1, "viewIndex":I
    iget-object v2, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/nativescript/widgets/FlexLine;

    .line 665
    .local v3, "flexLine":Lorg/nativescript/widgets/FlexLine;
    const/high16 v4, -0x80000000

    .line 666
    .local v4, "largestHeightInLine":I
    move v5, v1

    .local v5, "i":I
    :goto_9
    iget v6, v3, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    add-int/2addr v6, v1

    if-ge v5, v6, :cond_c

    .line 667
    invoke-virtual {v8, v5}, Lorg/nativescript/widgets/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 668
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 669
    .local v7, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v11, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    const/4 v13, 0x2

    if-eq v11, v13, :cond_b

    .line 670
    iget v11, v3, Lorg/nativescript/widgets/FlexLine;->mMaxBaseline:I

    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v14

    sub-int/2addr v11, v14

    .line 671
    .local v11, "marginTop":I
    iget v14, v7, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 672
    nop

    .line 673
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v14, v11

    iget v15, v7, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v15

    .line 672
    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 674
    .end local v11    # "marginTop":I
    goto :goto_a

    .line 675
    :cond_b
    iget v11, v3, Lorg/nativescript/widgets/FlexLine;->mMaxBaseline:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v11, v14

    .line 676
    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v14

    add-int/2addr v11, v14

    .line 677
    .local v11, "marginBottom":I
    iget v14, v7, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 678
    nop

    .line 679
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v14

    iget v15, v7, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    add-int/2addr v14, v11

    .line 678
    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 666
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .end local v11    # "marginBottom":I
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_c
    const/4 v13, 0x2

    .line 682
    .end local v5    # "i":I
    iput v4, v3, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 683
    iget v5, v3, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    add-int/2addr v1, v5

    .line 684
    .end local v3    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v4    # "largestHeightInLine":I
    goto :goto_8

    .line 687
    .end local v1    # "viewIndex":I
    :cond_d
    iget v1, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    .line 688
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 687
    invoke-direct {v8, v1, v9, v10, v2}, Lorg/nativescript/widgets/FlexboxLayout;->determineCrossSize(IIII)V

    .line 691
    iget v1, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    iget v2, v8, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    invoke-direct {v8, v1, v2}, Lorg/nativescript/widgets/FlexboxLayout;->stretchViews(II)V

    .line 692
    iget v1, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {v8, v1, v9, v10, v0}, Lorg/nativescript/widgets/FlexboxLayout;->setMeasuredDimensionForFlex(IIII)V

    .line 694
    return-void
.end method

.method private measureVertical(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 709
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 710
    .local v11, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 711
    .local v12, "heightSize":I
    const/4 v0, 0x0

    .line 713
    .local v0, "childState":I
    iget-object v1, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 718
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getChildCount()I

    move-result v13

    .line 719
    .local v13, "childCount":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingTop()I

    move-result v14

    .line 720
    .local v14, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingBottom()I

    move-result v15

    .line 721
    .local v15, "paddingBottom":I
    const/high16 v1, -0x80000000

    .line 722
    .local v1, "largestWidthInColumn":I
    new-instance v2, Lorg/nativescript/widgets/FlexLine;

    invoke-direct {v2}, Lorg/nativescript/widgets/FlexLine;-><init>()V

    .line 723
    .local v2, "flexLine":Lorg/nativescript/widgets/FlexLine;
    add-int v3, v14, v15

    iput v3, v2, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 725
    const/4 v3, 0x0

    .line 726
    .local v3, "indexInFlexLine":I
    const/4 v4, 0x0

    move-object v7, v2

    move/from16 v16, v3

    move v6, v4

    .end local v2    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v3    # "indexInFlexLine":I
    .local v6, "i":I
    .local v7, "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v16, "indexInFlexLine":I
    :goto_0
    if-ge v6, v13, :cond_9

    .line 727
    invoke-virtual {v8, v6}, Lorg/nativescript/widgets/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 728
    .local v5, "child":Landroid/view/View;
    if-nez v5, :cond_0

    .line 729
    invoke-direct {v8, v6, v13, v7}, Lorg/nativescript/widgets/FlexboxLayout;->addFlexLineIfLastFlexItem(IILorg/nativescript/widgets/FlexLine;)V

    .line 730
    goto :goto_1

    .line 731
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 732
    iget v2, v7, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    add-int/2addr v2, v4

    iput v2, v7, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    .line 733
    invoke-direct {v8, v6, v13, v7}, Lorg/nativescript/widgets/FlexboxLayout;->addFlexLineIfLastFlexItem(IILorg/nativescript/widgets/FlexLine;)V

    .line 734
    nop

    .line 726
    .end local v5    # "child":Landroid/view/View;
    :goto_1
    move v4, v6

    move/from16 v23, v11

    goto/16 :goto_6

    .line 737
    .restart local v5    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 738
    .local v3, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v2, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 739
    iget-object v2, v7, Lorg/nativescript/widgets/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_2
    iget v2, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->height:I

    .line 743
    .local v2, "childHeight":I
    iget v4, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v4, v4, v18

    if-eqz v4, :cond_3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v11, v4, :cond_3

    .line 745
    int-to-float v4, v12

    move/from16 v18, v2

    .end local v2    # "childHeight":I
    .local v18, "childHeight":I
    iget v2, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    move/from16 v18, v2

    .end local v18    # "childHeight":I
    .restart local v2    # "childHeight":I
    goto :goto_2

    .line 743
    :cond_3
    move/from16 v18, v2

    .line 753
    .end local v2    # "childHeight":I
    .restart local v18    # "childHeight":I
    :goto_2
    nop

    .line 754
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    iget v4, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->width:I

    const/16 v19, -0x2

    if-gez v4, :cond_4

    const/4 v4, -0x2

    goto :goto_3

    :cond_4
    iget v4, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->width:I

    .line 753
    :goto_3
    invoke-static {v9, v2, v4}, Lorg/nativescript/widgets/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result v4

    .line 756
    .local v4, "childWidthMeasureSpec":I
    nop

    .line 757
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingBottom()I

    move-result v20

    add-int v2, v2, v20

    move/from16 v20, v6

    .end local v6    # "i":I
    .local v20, "i":I
    iget v6, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v6

    iget v6, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v6

    if-gez v18, :cond_5

    const/4 v6, -0x2

    goto :goto_4

    :cond_5
    move/from16 v6, v18

    .line 756
    :goto_4
    invoke-static {v10, v2, v6}, Lorg/nativescript/widgets/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 760
    .local v6, "childHeightMeasureSpec":I
    invoke-virtual {v5, v4, v6}, Landroid/view/View;->measure(II)V

    .line 768
    invoke-direct {v8, v5}, Lorg/nativescript/widgets/FlexboxLayout;->checkSizeConstraints(Landroid/view/View;)V

    .line 770
    nop

    .line 771
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v19

    .line 772
    .end local v0    # "childState":I
    .local v19, "childState":I
    nop

    .line 773
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    .line 772
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 775
    .end local v1    # "largestWidthInColumn":I
    .local v21, "largestWidthInColumn":I
    iget v2, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 776
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v3, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int v22, v0, v1

    .line 775
    move-object/from16 v0, p0

    move v1, v11

    move/from16 v23, v2

    move v2, v12

    move-object/from16 v24, v3

    .end local v3    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .local v24, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    move/from16 v3, v23

    move/from16 v17, v4

    move/from16 v23, v11

    const/4 v11, 0x1

    .end local v4    # "childWidthMeasureSpec":I
    .end local v11    # "heightMode":I
    .local v17, "childWidthMeasureSpec":I
    .local v23, "heightMode":I
    move/from16 v4, v22

    move-object/from16 v22, v5

    .end local v5    # "child":Landroid/view/View;
    .local v22, "child":Landroid/view/View;
    move-object/from16 v5, v24

    move/from16 v25, v20

    move/from16 v20, v6

    .end local v6    # "childHeightMeasureSpec":I
    .local v20, "childHeightMeasureSpec":I
    .local v25, "i":I
    move/from16 v6, v25

    move-object v11, v7

    .end local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .local v11, "flexLine":Lorg/nativescript/widgets/FlexLine;
    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lorg/nativescript/widgets/FlexboxLayout;->isWrapRequired(IIIILorg/nativescript/widgets/FlexboxLayout$LayoutParams;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 778
    iget v0, v11, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-lez v0, :cond_6

    .line 779
    invoke-direct {v8, v11}, Lorg/nativescript/widgets/FlexboxLayout;->addFlexLine(Lorg/nativescript/widgets/FlexLine;)V

    .line 782
    :cond_6
    new-instance v0, Lorg/nativescript/widgets/FlexLine;

    invoke-direct {v0}, Lorg/nativescript/widgets/FlexLine;-><init>()V

    move-object v7, v0

    .line 783
    .end local v11    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    const/4 v0, 0x1

    iput v0, v7, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    .line 784
    add-int v0, v14, v15

    iput v0, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 785
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    move-object/from16 v1, v24

    .end local v24    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .local v1, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v2, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int v21, v0, v2

    .line 786
    const/4 v0, 0x0

    move/from16 v2, v21

    .end local v16    # "indexInFlexLine":I
    .local v0, "indexInFlexLine":I
    goto :goto_5

    .line 788
    .end local v0    # "indexInFlexLine":I
    .end local v1    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .end local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v11    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .restart local v16    # "indexInFlexLine":I
    .restart local v24    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    :cond_7
    move-object/from16 v1, v24

    .end local v24    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .restart local v1    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v0, v11, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v11, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    .line 789
    add-int/lit8 v0, v16, 0x1

    move-object v7, v11

    move/from16 v2, v21

    .line 791
    .end local v11    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v16    # "indexInFlexLine":I
    .end local v21    # "largestWidthInColumn":I
    .restart local v0    # "indexInFlexLine":I
    .local v2, "largestWidthInColumn":I
    .restart local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    :goto_5
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 792
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mTotalFlexGrow:F

    iget v4, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    add-float/2addr v3, v4

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mTotalFlexGrow:F

    .line 793
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mTotalFlexShrink:F

    iget v4, v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    add-float/2addr v3, v4

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mTotalFlexShrink:F

    .line 797
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 799
    move/from16 v4, v25

    .end local v25    # "i":I
    .local v4, "i":I
    invoke-direct {v8, v4, v0}, Lorg/nativescript/widgets/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 800
    iget v3, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    iget v5, v8, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v3, v5

    iput v3, v7, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 802
    :cond_8
    invoke-direct {v8, v4, v13, v7}, Lorg/nativescript/widgets/FlexboxLayout;->addFlexLineIfLastFlexItem(IILorg/nativescript/widgets/FlexLine;)V

    move/from16 v16, v0

    move v1, v2

    move/from16 v0, v19

    .line 726
    .end local v2    # "largestWidthInColumn":I
    .end local v17    # "childWidthMeasureSpec":I
    .end local v18    # "childHeight":I
    .end local v19    # "childState":I
    .end local v20    # "childHeightMeasureSpec":I
    .end local v22    # "child":Landroid/view/View;
    .local v0, "childState":I
    .local v1, "largestWidthInColumn":I
    .restart local v16    # "indexInFlexLine":I
    :goto_6
    add-int/lit8 v6, v4, 0x1

    move/from16 v11, v23

    .end local v4    # "i":I
    .local v6, "i":I
    goto/16 :goto_0

    .line 805
    .end local v6    # "i":I
    .end local v23    # "heightMode":I
    .local v11, "heightMode":I
    :cond_9
    iget v2, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {v8, v2, v9, v10}, Lorg/nativescript/widgets/FlexboxLayout;->determineMainSize(III)V

    .line 806
    iget v2, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    .line 807
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 806
    invoke-direct {v8, v2, v9, v10, v3}, Lorg/nativescript/widgets/FlexboxLayout;->determineCrossSize(IIII)V

    .line 810
    iget v2, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    iget v3, v8, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    invoke-direct {v8, v2, v3}, Lorg/nativescript/widgets/FlexboxLayout;->stretchViews(II)V

    .line 811
    iget v2, v8, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-direct {v8, v2, v9, v10, v0}, Lorg/nativescript/widgets/FlexboxLayout;->setMeasuredDimensionForFlex(IIII)V

    .line 813
    return-void
.end method

.method private setMeasuredDimensionForFlex(IIII)V
    .locals 10
    .param p1, "flexDirection"    # I
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "childState"    # I

    .line 1378
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1379
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1380
    .local v1, "widthSize":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1381
    .local v2, "heightMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1384
    .local v3, "heightSize":I
    if-eqz p1, :cond_2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 1397
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid flex direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1393
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getLargestMainSize()I

    move-result v4

    .line 1394
    .local v4, "calculatedMaxHeight":I
    invoke-direct {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getSumOfCrossSize()I

    move-result v5

    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 1395
    .local v5, "calculatedMaxWidth":I
    goto :goto_1

    .line 1387
    .end local v4    # "calculatedMaxHeight":I
    .end local v5    # "calculatedMaxWidth":I
    :cond_2
    invoke-direct {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getSumOfCrossSize()I

    move-result v4

    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1388
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 1389
    .restart local v4    # "calculatedMaxHeight":I
    invoke-direct {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getLargestMainSize()I

    move-result v5

    .line 1390
    .restart local v5    # "calculatedMaxWidth":I
    nop

    .line 1401
    :goto_1
    const/high16 v6, 0x1000000

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    if-eq v0, v8, :cond_6

    if-eqz v0, :cond_5

    if-ne v0, v7, :cond_4

    .line 1403
    if-ge v1, v5, :cond_3

    .line 1404
    nop

    .line 1405
    invoke-static {p4, v6}, Landroidx/core/view/ViewCompat;->combineMeasuredStates(II)I

    move-result p4

    .line 1407
    :cond_3
    invoke-static {v1, p2, p4}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v6

    .line 1409
    .local v6, "widthSizeAndState":I
    goto :goto_3

    .line 1427
    .end local v6    # "widthSizeAndState":I
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown width mode is set: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1422
    :cond_5
    nop

    .line 1423
    invoke-static {v5, p2, p4}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v6

    .line 1424
    .restart local v6    # "widthSizeAndState":I
    goto :goto_3

    .line 1411
    .end local v6    # "widthSizeAndState":I
    :cond_6
    if-ge v1, v5, :cond_7

    .line 1412
    nop

    .line 1413
    invoke-static {p4, v6}, Landroidx/core/view/ViewCompat;->combineMeasuredStates(II)I

    move-result p4

    goto :goto_2

    .line 1415
    :cond_7
    move v1, v5

    .line 1417
    :goto_2
    invoke-static {v1, p2, p4}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v6

    .line 1419
    .restart local v6    # "widthSizeAndState":I
    nop

    .line 1430
    :goto_3
    const/16 v9, 0x100

    if-eq v2, v8, :cond_b

    if-eqz v2, :cond_a

    if-ne v2, v7, :cond_9

    .line 1432
    if-ge v3, v4, :cond_8

    .line 1433
    invoke-static {p4, v9}, Landroidx/core/view/ViewCompat;->combineMeasuredStates(II)I

    move-result p4

    .line 1437
    :cond_8
    invoke-static {v3, p3, p4}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v7

    .line 1439
    .local v7, "heightSizeAndState":I
    goto :goto_5

    .line 1458
    .end local v7    # "heightSizeAndState":I
    :cond_9
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown height mode is set: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1453
    :cond_a
    invoke-static {v4, p3, p4}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v7

    .line 1455
    .restart local v7    # "heightSizeAndState":I
    goto :goto_5

    .line 1441
    .end local v7    # "heightSizeAndState":I
    :cond_b
    if-ge v3, v4, :cond_c

    .line 1442
    invoke-static {p4, v9}, Landroidx/core/view/ViewCompat;->combineMeasuredStates(II)I

    move-result p4

    goto :goto_4

    .line 1446
    :cond_c
    move v3, v4

    .line 1448
    :goto_4
    invoke-static {v3, p3, p4}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v7

    .line 1450
    .restart local v7    # "heightSizeAndState":I
    nop

    .line 1460
    :goto_5
    invoke-virtual {p0, v6, v7}, Lorg/nativescript/widgets/FlexboxLayout;->setMeasuredDimension(II)V

    .line 1461
    return-void
.end method

.method private setWillNotDrawFlag()V
    .locals 1

    .line 2459
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/FlexboxLayout;->setWillNotDraw(Z)V

    goto :goto_0

    .line 2462
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/FlexboxLayout;->setWillNotDraw(Z)V

    .line 2464
    :goto_0
    return-void
.end method

.method private shrinkFlexItems(Lorg/nativescript/widgets/FlexLine;IIII)I
    .locals 18
    .param p1, "flexLine"    # Lorg/nativescript/widgets/FlexLine;
    .param p2, "flexDirection"    # I
    .param p3, "maxMainSize"    # I
    .param p4, "paddingAlongMainAxis"    # I
    .param p5, "startIndex"    # I

    .line 1042
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    .line 1043
    .local v3, "childIndex":I
    iget v4, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 1044
    .local v4, "sizeBeforeShrink":I
    iget v5, v1, Lorg/nativescript/widgets/FlexLine;->mTotalFlexShrink:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-lez v5, :cond_b

    iget v5, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    if-le v2, v5, :cond_0

    move/from16 v11, p2

    goto/16 :goto_6

    .line 1048
    :cond_0
    const/4 v5, 0x0

    .line 1049
    .local v5, "needsReshrink":Z
    iget v6, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    sub-int/2addr v6, v2

    int-to-float v6, v6

    iget v7, v1, Lorg/nativescript/widgets/FlexLine;->mTotalFlexShrink:F

    div-float/2addr v6, v7

    .line 1050
    .local v6, "unitShrink":F
    const/4 v7, 0x0

    .line 1051
    .local v7, "accumulatedRoundError":F
    iget v8, v1, Lorg/nativescript/widgets/FlexLine;->mDividerLengthInMainSize:I

    add-int v8, p4, v8

    iput v8, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 1052
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v9, v1, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-ge v8, v9, :cond_9

    .line 1053
    invoke-virtual {v0, v3}, Lorg/nativescript/widgets/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1054
    .local v9, "child":Landroid/view/View;
    if-nez v9, :cond_1

    .line 1055
    move/from16 v11, p2

    goto/16 :goto_5

    .line 1056
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_2

    .line 1057
    add-int/lit8 v3, v3, 0x1

    .line 1058
    move/from16 v11, p2

    goto/16 :goto_5

    .line 1060
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 1061
    .local v10, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    move/from16 v11, p2

    invoke-direct {v0, v11}, Lorg/nativescript/widgets/FlexboxLayout;->isMainAxisDirectionHorizontal(I)Z

    move-result v12

    const/4 v14, 0x1

    if-eqz v12, :cond_6

    .line 1063
    iget-object v12, v0, Lorg/nativescript/widgets/FlexboxLayout;->mChildrenFrozen:[Z

    aget-boolean v12, v12, v3

    if-nez v12, :cond_5

    .line 1064
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    iget v15, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    mul-float v15, v15, v6

    sub-float/2addr v12, v15

    add-float/2addr v12, v7

    .line 1065
    .local v12, "rawCalculatedWidth":F
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 1066
    .local v15, "roundedCalculatedWidth":I
    iget v13, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->minWidth:I

    if-ge v15, v13, :cond_3

    .line 1067
    const/4 v5, 0x1

    .line 1068
    iget v15, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->minWidth:I

    .line 1069
    iget-object v13, v0, Lorg/nativescript/widgets/FlexboxLayout;->mChildrenFrozen:[Z

    aput-boolean v14, v13, v3

    .line 1070
    iget v13, v1, Lorg/nativescript/widgets/FlexLine;->mTotalFlexShrink:F

    iget v14, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    sub-float/2addr v13, v14

    iput v13, v1, Lorg/nativescript/widgets/FlexLine;->mTotalFlexShrink:F

    goto :goto_1

    .line 1072
    :cond_3
    int-to-float v13, v15

    sub-float v7, v12, v13

    .line 1075
    :goto_1
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1081
    .local v13, "childWidthMeasureSpec":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getMeasuredHeightAndState()I

    move-result v14

    .line 1082
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/FlexboxLayout;->getPaddingBottom()I

    move-result v17

    add-int v16, v16, v17

    iget v2, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int v16, v16, v2

    iget v2, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int v2, v16, v2

    move/from16 v16, v5

    .end local v5    # "needsReshrink":Z
    .local v16, "needsReshrink":Z
    iget v5, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->height:I

    if-gez v5, :cond_4

    const/4 v5, -0x2

    goto :goto_2

    :cond_4
    iget v5, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->height:I

    .line 1081
    :goto_2
    invoke-static {v14, v2, v5}, Lorg/nativescript/widgets/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 1085
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {v9, v13, v2}, Landroid/view/View;->measure(II)V

    .line 1088
    iget v5, v1, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    .line 1090
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move/from16 v17, v2

    .end local v2    # "childHeightMeasureSpec":I
    .local v17, "childHeightMeasureSpec":I
    iget v2, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v2

    iget v2, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v2

    .line 1088
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    move/from16 v5, v16

    .line 1093
    .end local v12    # "rawCalculatedWidth":F
    .end local v13    # "childWidthMeasureSpec":I
    .end local v15    # "roundedCalculatedWidth":I
    .end local v16    # "needsReshrink":Z
    .end local v17    # "childHeightMeasureSpec":I
    .restart local v5    # "needsReshrink":Z
    :cond_5
    iget v2, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget v13, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    iput v2, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    goto :goto_4

    .line 1096
    :cond_6
    iget-object v2, v0, Lorg/nativescript/widgets/FlexboxLayout;->mChildrenFrozen:[Z

    aget-boolean v2, v2, v3

    if-nez v2, :cond_8

    .line 1097
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v12, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    mul-float v12, v12, v6

    sub-float/2addr v2, v12

    add-float/2addr v2, v7

    .line 1098
    .local v2, "rawCalculatedHeight":F
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 1099
    .local v12, "roundedCalculatedHeight":I
    iget v13, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->minHeight:I

    if-ge v12, v13, :cond_7

    .line 1100
    const/4 v5, 0x1

    .line 1101
    iget v12, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->minHeight:I

    .line 1102
    iget-object v13, v0, Lorg/nativescript/widgets/FlexboxLayout;->mChildrenFrozen:[Z

    aput-boolean v14, v13, v3

    .line 1103
    iget v13, v1, Lorg/nativescript/widgets/FlexLine;->mTotalFlexShrink:F

    iget v14, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    sub-float/2addr v13, v14

    iput v13, v1, Lorg/nativescript/widgets/FlexLine;->mTotalFlexShrink:F

    goto :goto_3

    .line 1105
    :cond_7
    int-to-float v13, v12

    sub-float v7, v2, v13

    .line 1107
    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1109
    invoke-static {v12, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1107
    invoke-virtual {v9, v13, v14}, Landroid/view/View;->measure(II)V

    .line 1111
    .end local v2    # "rawCalculatedHeight":F
    .end local v12    # "roundedCalculatedHeight":I
    :cond_8
    iget v2, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    iput v2, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    .line 1113
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 1052
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p3

    goto/16 :goto_0

    :cond_9
    move/from16 v11, p2

    .line 1116
    .end local v8    # "i":I
    if-eqz v5, :cond_a

    iget v2, v1, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    if-eq v4, v2, :cond_a

    .line 1119
    invoke-direct/range {p0 .. p5}, Lorg/nativescript/widgets/FlexboxLayout;->shrinkFlexItems(Lorg/nativescript/widgets/FlexLine;IIII)I

    .line 1121
    :cond_a
    return v3

    .line 1044
    .end local v5    # "needsReshrink":Z
    .end local v6    # "unitShrink":F
    .end local v7    # "accumulatedRoundError":F
    :cond_b
    move/from16 v11, p2

    .line 1045
    :goto_6
    iget v2, v1, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    add-int/2addr v3, v2

    .line 1046
    return v3
.end method

.method private sortOrdersIntoReorderedIndices(ILjava/util/List;)[I
    .locals 6
    .param p1, "childCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/nativescript/widgets/FlexboxLayout$Order;",
            ">;)[I"
        }
    .end annotation

    .line 466
    .local p2, "orders":Ljava/util/List;, "Ljava/util/List<Lorg/nativescript/widgets/FlexboxLayout$Order;>;"
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 467
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 470
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 471
    new-array v0, p1, [I

    .line 472
    .local v0, "reorderedIndices":[I
    const/4 v1, 0x0

    .line 473
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/nativescript/widgets/FlexboxLayout$Order;

    .line 474
    .local v3, "order":Lorg/nativescript/widgets/FlexboxLayout$Order;
    iget v4, v3, Lorg/nativescript/widgets/FlexboxLayout$Order;->index:I

    aput v4, v0, v1

    .line 475
    iget-object v4, p0, Lorg/nativescript/widgets/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    iget v5, v3, Lorg/nativescript/widgets/FlexboxLayout$Order;->order:I

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 476
    nop

    .end local v3    # "order":Lorg/nativescript/widgets/FlexboxLayout$Order;
    add-int/lit8 v1, v1, 0x1

    .line 477
    goto :goto_0

    .line 478
    :cond_1
    return-object v0
.end method

.method private stretchViewHorizontally(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "crossSize"    # I

    .line 1357
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 1358
    .local v0, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v1, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int v1, p2, v1

    iget v2, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 1359
    .local v1, "newWidth":I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1360
    nop

    .line 1361
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1362
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1360
    invoke-virtual {p1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1363
    return-void
.end method

.method private stretchViewVertically(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "crossSize"    # I

    .line 1342
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 1343
    .local v0, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v1, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->topMargin:I

    sub-int v1, p2, v1

    iget v2, v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v2

    .line 1344
    .local v1, "newHeight":I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1345
    nop

    .line 1346
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1347
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1345
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1348
    return-void
.end method

.method private stretchViews(II)V
    .locals 13
    .param p1, "flexDirection"    # I
    .param p2, "alignItems"    # I

    .line 1288
    const-string v0, "Invalid flex direction: "

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne p2, v3, :cond_6

    .line 1289
    const/4 v5, 0x0

    .line 1290
    .local v5, "viewIndex":I
    iget-object v6, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/nativescript/widgets/FlexLine;

    .line 1291
    .local v7, "flexLine":Lorg/nativescript/widgets/FlexLine;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget v9, v7, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    if-ge v8, v9, :cond_4

    .line 1292
    invoke-virtual {p0, v5}, Lorg/nativescript/widgets/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1293
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 1294
    .local v10, "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    iget v11, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    iget v11, v10, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    if-eq v11, v3, :cond_0

    .line 1296
    goto :goto_3

    .line 1298
    :cond_0
    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_2

    .line 1308
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1305
    :cond_2
    :goto_2
    iget v11, v7, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    invoke-direct {p0, v9, v11}, Lorg/nativescript/widgets/FlexboxLayout;->stretchViewHorizontally(Landroid/view/View;I)V

    .line 1306
    goto :goto_3

    .line 1301
    :cond_3
    iget v11, v7, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    invoke-direct {p0, v9, v11}, Lorg/nativescript/widgets/FlexboxLayout;->stretchViewVertically(Landroid/view/View;I)V

    .line 1302
    nop

    .line 1291
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "lp":Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1312
    .end local v7    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    .end local v8    # "i":I
    :cond_4
    goto :goto_0

    .line 1313
    .end local v5    # "viewIndex":I
    :cond_5
    goto :goto_8

    .line 1314
    :cond_6
    iget-object v3, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/nativescript/widgets/FlexLine;

    .line 1315
    .local v5, "flexLine":Lorg/nativescript/widgets/FlexLine;
    iget-object v6, v5, Lorg/nativescript/widgets/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1316
    .local v7, "index":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/nativescript/widgets/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1317
    .local v8, "view":Landroid/view/View;
    if-eqz p1, :cond_9

    if-eq p1, v4, :cond_9

    if-eq p1, v2, :cond_8

    if-ne p1, v1, :cond_7

    goto :goto_6

    .line 1327
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1324
    :cond_8
    :goto_6
    iget v9, v5, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    invoke-direct {p0, v8, v9}, Lorg/nativescript/widgets/FlexboxLayout;->stretchViewHorizontally(Landroid/view/View;I)V

    .line 1325
    goto :goto_7

    .line 1320
    :cond_9
    iget v9, v5, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    invoke-direct {p0, v8, v9}, Lorg/nativescript/widgets/FlexboxLayout;->stretchViewVertically(Landroid/view/View;I)V

    .line 1321
    nop

    .line 1330
    .end local v7    # "index":Ljava/lang/Integer;
    .end local v8    # "view":Landroid/view/View;
    :goto_7
    goto :goto_5

    .line 1331
    .end local v5    # "flexLine":Lorg/nativescript/widgets/FlexLine;
    :cond_a
    goto :goto_4

    .line 1333
    :cond_b
    :goto_8
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 407
    invoke-direct {p0, p1, p2, p3}, Lorg/nativescript/widgets/FlexboxLayout;->createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mReorderedIndices:[I

    .line 408
    invoke-super {p0, p1, p2, p3}, Lorg/nativescript/widgets/LayoutBase;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 409
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2236
    instance-of v0, p1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->generateDefaultLayoutParams()Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .locals 1

    .line 2231
    new-instance v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    invoke-direct {v0}, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/FlexboxLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "from"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2246
    instance-of v0, p1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 2247
    new-instance v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;-><init>(Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;)V

    return-object v0

    .line 2249
    :cond_0
    instance-of v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v0, :cond_1

    .line 2250
    new-instance v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Lorg/nativescript/widgets/CommonLayoutParams;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;-><init>(Lorg/nativescript/widgets/CommonLayoutParams;)V

    return-object v0

    .line 2252
    :cond_1
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 2253
    new-instance v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0

    .line 2255
    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_3

    .line 2256
    new-instance v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2258
    :cond_3
    new-instance v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    invoke-direct {v0, p1}, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2241
    new-instance v0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    invoke-direct {v0}, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public getAlignContent()I
    .locals 1

    .line 2311
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mAlignContent:I

    return v0
.end method

.method public getAlignItems()I
    .locals 1

    .line 2299
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    return v0
.end method

.method public getDividerDrawableHorizontal()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2335
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerDrawableVertical()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2344
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFlexDirection()I
    .locals 1

    .line 2263
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    return v0
.end method

.method public getFlexLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/nativescript/widgets/FlexLine;",
            ">;"
        }
    .end annotation

    .line 2326
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFlexWrap()I
    .locals 1

    .line 2275
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    return v0
.end method

.method public getJustifyContent()I
    .locals 1

    .line 2287
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mJustifyContent:I

    return v0
.end method

.method public getReorderedChildAt(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .line 395
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mReorderedIndices:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 396
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowDividerHorizontal()I
    .locals 1

    .line 2410
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    return v0
.end method

.method public getShowDividerVertical()I
    .locals 1

    .line 2405
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    return v0
.end method

.method public invalidateOrdersCache()V
    .locals 1

    .line 526
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 529
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2010
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2011
    return-void

    .line 2013
    :cond_0
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    if-nez v0, :cond_1

    .line 2015
    return-void

    .line 2018
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 2020
    .local v0, "layoutDirection":I
    const/4 v1, 0x0

    .line 2021
    .local v1, "fromBottomToTop":Z
    iget v2, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_d

    if-eq v2, v5, :cond_a

    if-eq v2, v3, :cond_6

    const/4 v6, 0x3

    if-eq v2, v6, :cond_2

    goto :goto_2

    .line 2045
    :cond_2
    if-ne v0, v5, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 2046
    .local v2, "isRtl":Z
    :goto_0
    iget v6, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    if-ne v6, v3, :cond_5

    .line 2047
    if-nez v2, :cond_4

    const/4 v4, 0x1

    :cond_4
    move v2, v4

    .line 2049
    :cond_5
    const/4 v1, 0x1

    .line 2050
    invoke-direct {p0, p1, v2, v1}, Lorg/nativescript/widgets/FlexboxLayout;->drawDividersVertical(Landroid/graphics/Canvas;ZZ)V

    goto :goto_2

    .line 2037
    .end local v2    # "isRtl":Z
    :cond_6
    if-ne v0, v5, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 2038
    .restart local v2    # "isRtl":Z
    :goto_1
    iget v6, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    if-ne v6, v3, :cond_9

    .line 2039
    if-nez v2, :cond_8

    const/4 v4, 0x1

    :cond_8
    move v2, v4

    .line 2041
    :cond_9
    const/4 v1, 0x0

    .line 2042
    invoke-direct {p0, p1, v2, v1}, Lorg/nativescript/widgets/FlexboxLayout;->drawDividersVertical(Landroid/graphics/Canvas;ZZ)V

    .line 2043
    goto :goto_2

    .line 2030
    .end local v2    # "isRtl":Z
    :cond_a
    if-eq v0, v5, :cond_b

    const/4 v4, 0x1

    :cond_b
    move v2, v4

    .line 2031
    .restart local v2    # "isRtl":Z
    iget v4, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    if-ne v4, v3, :cond_c

    .line 2032
    const/4 v1, 0x1

    .line 2034
    :cond_c
    invoke-direct {p0, p1, v2, v1}, Lorg/nativescript/widgets/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V

    .line 2035
    goto :goto_2

    .line 2023
    .end local v2    # "isRtl":Z
    :cond_d
    if-ne v0, v5, :cond_e

    const/4 v4, 0x1

    :cond_e
    move v2, v4

    .line 2024
    .restart local v2    # "isRtl":Z
    iget v4, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    if-ne v4, v3, :cond_f

    .line 2025
    const/4 v1, 0x1

    .line 2027
    :cond_f
    invoke-direct {p0, p1, v2, v1}, Lorg/nativescript/widgets/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V

    .line 2028
    nop

    .line 2053
    .end local v2    # "isRtl":Z
    :goto_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1559
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 1561
    .local v7, "layoutDirection":I
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 1578
    if-ne v7, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1579
    .local v0, "isRtl":Z
    :goto_0
    iget v4, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    if-ne v4, v3, :cond_2

    .line 1580
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    move v8, v0

    goto :goto_1

    .line 1579
    :cond_2
    move v8, v0

    .line 1582
    .end local v0    # "isRtl":Z
    .local v8, "isRtl":Z
    :goto_1
    const/4 v2, 0x1

    move-object v0, p0

    move v1, v8

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/nativescript/widgets/FlexboxLayout;->layoutVertical(ZZIIII)V

    .line 1583
    goto/16 :goto_4

    .line 1585
    .end local v8    # "isRtl":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1571
    :cond_4
    if-ne v7, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 1572
    .restart local v0    # "isRtl":Z
    :goto_2
    iget v4, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    if-ne v4, v3, :cond_7

    .line 1573
    if-nez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    move v0, v1

    move v8, v0

    goto :goto_3

    .line 1572
    :cond_7
    move v8, v0

    .line 1575
    .end local v0    # "isRtl":Z
    .restart local v8    # "isRtl":Z
    :goto_3
    const/4 v2, 0x0

    move-object v0, p0

    move v1, v8

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/nativescript/widgets/FlexboxLayout;->layoutVertical(ZZIIII)V

    .line 1576
    goto :goto_4

    .line 1567
    .end local v8    # "isRtl":Z
    :cond_8
    if-eq v7, v2, :cond_9

    const/4 v1, 0x1

    .line 1568
    .local v1, "isRtl":Z
    :cond_9
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/nativescript/widgets/FlexboxLayout;->layoutHorizontal(ZIIII)V

    .line 1569
    move v8, v1

    goto :goto_4

    .line 1563
    .end local v1    # "isRtl":Z
    :cond_a
    if-ne v7, v2, :cond_b

    const/4 v1, 0x1

    .line 1564
    .restart local v1    # "isRtl":Z
    :cond_b
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/nativescript/widgets/FlexboxLayout;->layoutHorizontal(ZIIII)V

    .line 1565
    move v8, v1

    .line 1588
    .end local v1    # "isRtl":Z
    .restart local v8    # "isRtl":Z
    :goto_4
    invoke-static {p0}, Lorg/nativescript/widgets/CommonLayoutParams;->restoreOriginalParams(Landroid/view/ViewGroup;)V

    .line 1589
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 356
    invoke-static {p0, p1, p2}, Lorg/nativescript/widgets/CommonLayoutParams;->adjustChildrenLayoutParams(Landroid/view/ViewGroup;II)V

    .line 358
    invoke-super {p0, p1, p2}, Lorg/nativescript/widgets/LayoutBase;->onMeasure(II)V

    .line 359
    invoke-direct {p0}, Lorg/nativescript/widgets/FlexboxLayout;->isOrderChangedFromLastMeasurement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0}, Lorg/nativescript/widgets/FlexboxLayout;->createReorderedIndices()[I

    move-result-object v0

    iput-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mReorderedIndices:[I

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mChildrenFrozen:[Z

    if-eqz v0, :cond_1

    array-length v0, v0

    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 363
    :cond_1
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mChildrenFrozen:[Z

    .line 368
    :cond_2
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 378
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for the flex direction is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/nativescript/widgets/FlexboxLayout;->measureVertical(II)V

    .line 376
    goto :goto_1

    .line 371
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/nativescript/widgets/FlexboxLayout;->measureHorizontal(II)V

    .line 372
    nop

    .line 382
    :goto_1
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mChildrenFrozen:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 383
    return-void
.end method

.method public setAlignContent(I)V
    .locals 1
    .param p1, "alignContent"    # I

    .line 2315
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mAlignContent:I

    if-eq v0, p1, :cond_0

    .line 2316
    iput p1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mAlignContent:I

    .line 2317
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->requestLayout()V

    .line 2319
    :cond_0
    return-void
.end method

.method public setAlignItems(I)V
    .locals 1
    .param p1, "alignItems"    # I

    .line 2303
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    if-eq v0, p1, :cond_0

    .line 2304
    iput p1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mAlignItems:I

    .line 2305
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->requestLayout()V

    .line 2307
    :cond_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 2355
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 2356
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 2357
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 2368
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 2369
    return-void

    .line 2371
    :cond_0
    iput-object p1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 2372
    if-eqz p1, :cond_1

    .line 2373
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    goto :goto_0

    .line 2375
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 2377
    :goto_0
    invoke-direct {p0}, Lorg/nativescript/widgets/FlexboxLayout;->setWillNotDrawFlag()V

    .line 2378
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->requestLayout()V

    .line 2379
    return-void
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 2390
    iget-object v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 2391
    return-void

    .line 2393
    :cond_0
    iput-object p1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 2394
    if-eqz p1, :cond_1

    .line 2395
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    goto :goto_0

    .line 2397
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mDividerVerticalWidth:I

    .line 2399
    :goto_0
    invoke-direct {p0}, Lorg/nativescript/widgets/FlexboxLayout;->setWillNotDrawFlag()V

    .line 2400
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->requestLayout()V

    .line 2401
    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1
    .param p1, "flexDirection"    # I

    .line 2267
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    if-eq v0, p1, :cond_0

    .line 2268
    iput p1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexDirection:I

    .line 2269
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->requestLayout()V

    .line 2271
    :cond_0
    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1
    .param p1, "flexWrap"    # I

    .line 2279
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    if-eq v0, p1, :cond_0

    .line 2280
    iput p1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mFlexWrap:I

    .line 2281
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->requestLayout()V

    .line 2283
    :cond_0
    return-void
.end method

.method public setJustifyContent(I)V
    .locals 1
    .param p1, "justifyContent"    # I

    .line 2291
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mJustifyContent:I

    if-eq v0, p1, :cond_0

    .line 2292
    iput p1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mJustifyContent:I

    .line 2293
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->requestLayout()V

    .line 2295
    :cond_0
    return-void
.end method

.method public setShowDivider(I)V
    .locals 0
    .param p1, "dividerMode"    # I

    .line 2424
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/FlexboxLayout;->setShowDividerVertical(I)V

    .line 2425
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/FlexboxLayout;->setShowDividerHorizontal(I)V

    .line 2426
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1
    .param p1, "dividerMode"    # I

    .line 2452
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    if-eq p1, v0, :cond_0

    .line 2453
    iput p1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerHorizontal:I

    .line 2454
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->requestLayout()V

    .line 2456
    :cond_0
    return-void
.end method

.method public setShowDividerVertical(I)V
    .locals 1
    .param p1, "dividerMode"    # I

    .line 2437
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    if-eq p1, v0, :cond_0

    .line 2438
    iput p1, p0, Lorg/nativescript/widgets/FlexboxLayout;->mShowDividerVertical:I

    .line 2439
    invoke-virtual {p0}, Lorg/nativescript/widgets/FlexboxLayout;->requestLayout()V

    .line 2441
    :cond_0
    return-void
.end method
