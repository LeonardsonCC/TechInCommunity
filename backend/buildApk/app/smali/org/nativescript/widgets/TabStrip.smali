.class Lorg/nativescript/widgets/TabStrip;
.super Landroid/widget/LinearLayout;
.source "TabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_BORDER_COLOR_ALPHA:B = 0x26t

.field private static final DEFAULT_BOTTOM_BORDER_THICKNESS_DIPS:I = 0x0

.field private static final DEFAULT_SELECTED_INDICATOR_COLOR:I = -0xcc4a1b

.field private static final SELECTED_INDICATOR_THICKNESS_DIPS:I = 0x3


# instance fields
.field private final mBottomBorderPaint:Landroid/graphics/Paint;

.field private final mBottomBorderThickness:I

.field private mCustomTabColorizer:Lorg/nativescript/widgets/TabLayout$TabColorizer;

.field private final mDefaultBottomBorderColor:I

.field private final mDefaultTabColorizer:Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private final mSelectedIndicatorThickness:I

.field private mSelectedPosition:I

.field private mSelectedTabTextColor:I

.field private mSelectionOffset:F

.field private mShouldUpdateTabsTextColor:Z

.field private mTabTextColor:I

.field private mTabTextFontSize:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/nativescript/widgets/TabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/TabStrip;->setWillNotDraw(Z)V

    .line 66
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 68
    .local v1, "density":F
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 69
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    const v5, 0x1010030

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 70
    iget v3, v2, Landroid/util/TypedValue;->data:I

    .line 72
    .local v3, "themeForegroundColor":I
    const/16 v5, 0x26

    invoke-static {v3, v5}, Lorg/nativescript/widgets/TabStrip;->setColorAlpha(IB)I

    move-result v5

    iput v5, p0, Lorg/nativescript/widgets/TabStrip;->mDefaultBottomBorderColor:I

    .line 75
    new-instance v5, Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;-><init>(Lorg/nativescript/widgets/TabStrip$1;)V

    iput-object v5, p0, Lorg/nativescript/widgets/TabStrip;->mDefaultTabColorizer:Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;

    .line 76
    new-array v6, v4, [I

    const v7, -0xcc4a1b

    aput v7, v6, v0

    invoke-virtual {v5, v6}, Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 78
    const/4 v0, 0x0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/nativescript/widgets/TabStrip;->mBottomBorderThickness:I

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/TabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    .line 80
    iget v5, p0, Lorg/nativescript/widgets/TabStrip;->mDefaultBottomBorderColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/nativescript/widgets/TabStrip;->mSelectedIndicatorThickness:I

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/TabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 85
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "defaultTextView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    iput v5, p0, Lorg/nativescript/widgets/TabStrip;->mTabTextColor:I

    .line 87
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    iput v5, p0, Lorg/nativescript/widgets/TabStrip;->mTabTextFontSize:F

    .line 90
    iget v5, p0, Lorg/nativescript/widgets/TabStrip;->mTabTextColor:I

    iput v5, p0, Lorg/nativescript/widgets/TabStrip;->mSelectedTabTextColor:I

    .line 92
    iput-boolean v4, p0, Lorg/nativescript/widgets/TabStrip;->mShouldUpdateTabsTextColor:Z

    .line 94
    invoke-virtual {p0, v4}, Lorg/nativescript/widgets/TabStrip;->setMeasureWithLargestChildEnabled(Z)V

    .line 95
    return-void
.end method

.method private static blendColors(IIF)I
    .locals 7
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .line 245
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 246
    .local v0, "inverseRation":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 247
    .local v1, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 248
    .local v2, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    .line 249
    .local v3, "b":F
    float-to-int v4, v1

    float-to-int v5, v2

    float-to-int v6, v3

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4
.end method

.method private static setColorAlpha(IB)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "alpha"    # B

    .line 235
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private updateTabsTextColor()V
    .locals 5

    .line 132
    iget-boolean v0, p0, Lorg/nativescript/widgets/TabStrip;->mShouldUpdateTabsTextColor:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v0

    .line 134
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 135
    invoke-virtual {p0, v1}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 136
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 137
    .local v3, "textView":Landroid/widget/TextView;
    iget v4, p0, Lorg/nativescript/widgets/TabStrip;->mSelectedPosition:I

    if-ne v1, v4, :cond_0

    .line 138
    iget v4, p0, Lorg/nativescript/widgets/TabStrip;->mSelectedTabTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 141
    :cond_0
    iget v4, p0, Lorg/nativescript/widgets/TabStrip;->mTabTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v3    # "textView":Landroid/widget/TextView;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateTabsTextFontSize()V
    .locals 5

    .line 157
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v0

    .line 158
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 159
    invoke-virtual {p0, v1}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 160
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 161
    .local v3, "textView":Landroid/widget/TextView;
    iget v4, p0, Lorg/nativescript/widgets/TabStrip;->mTabTextFontSize:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 158
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v3    # "textView":Landroid/widget/TextView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 192
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/TabStrip;->getHeight()I

    move-result v1

    .line 195
    .local v1, "height":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v2

    .line 196
    .local v2, "childCount":I
    iget-object v3, v0, Lorg/nativescript/widgets/TabStrip;->mCustomTabColorizer:Lorg/nativescript/widgets/TabLayout$TabColorizer;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lorg/nativescript/widgets/TabStrip;->mDefaultTabColorizer:Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;

    .line 201
    .local v3, "tabColorizer":Lorg/nativescript/widgets/TabLayout$TabColorizer;
    :goto_0
    if-lez v2, :cond_3

    iget v4, v0, Lorg/nativescript/widgets/TabStrip;->mSelectedPosition:I

    if-ge v4, v2, :cond_3

    .line 202
    invoke-virtual {v0, v4}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 203
    .local v4, "selectedTitle":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 204
    .local v5, "left":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    .line 205
    .local v6, "right":I
    iget v7, v0, Lorg/nativescript/widgets/TabStrip;->mSelectedPosition:I

    invoke-interface {v3, v7}, Lorg/nativescript/widgets/TabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v7

    .line 207
    .local v7, "color":I
    iget v8, v0, Lorg/nativescript/widgets/TabStrip;->mSelectionOffset:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    iget v8, v0, Lorg/nativescript/widgets/TabStrip;->mSelectedPosition:I

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_2

    .line 208
    iget v8, v0, Lorg/nativescript/widgets/TabStrip;->mSelectedPosition:I

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v3, v8}, Lorg/nativescript/widgets/TabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v8

    .line 209
    .local v8, "nextColor":I
    if-eq v7, v8, :cond_1

    .line 210
    iget v9, v0, Lorg/nativescript/widgets/TabStrip;->mSelectionOffset:F

    invoke-static {v8, v7, v9}, Lorg/nativescript/widgets/TabStrip;->blendColors(IIF)I

    move-result v7

    .line 214
    :cond_1
    iget v9, v0, Lorg/nativescript/widgets/TabStrip;->mSelectedPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 215
    .local v9, "nextTitle":Landroid/view/View;
    iget v10, v0, Lorg/nativescript/widgets/TabStrip;->mSelectionOffset:F

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    mul-float v10, v10, v11

    iget v11, v0, Lorg/nativescript/widgets/TabStrip;->mSelectionOffset:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v13, v12, v11

    int-to-float v14, v5

    mul-float v13, v13, v14

    add-float/2addr v10, v13

    float-to-int v5, v10

    .line 217
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    int-to-float v10, v10

    mul-float v11, v11, v10

    iget v10, v0, Lorg/nativescript/widgets/TabStrip;->mSelectionOffset:F

    sub-float/2addr v12, v10

    int-to-float v10, v6

    mul-float v12, v12, v10

    add-float/2addr v11, v12

    float-to-int v6, v11

    .line 221
    .end local v8    # "nextColor":I
    .end local v9    # "nextTitle":Landroid/view/View;
    :cond_2
    iget-object v8, v0, Lorg/nativescript/widgets/TabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    int-to-float v10, v5

    iget v8, v0, Lorg/nativescript/widgets/TabStrip;->mSelectedIndicatorThickness:I

    sub-int v8, v1, v8

    int-to-float v11, v8

    int-to-float v12, v6

    int-to-float v13, v1

    iget-object v14, v0, Lorg/nativescript/widgets/TabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 228
    .end local v4    # "selectedTitle":Landroid/view/View;
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "color":I
    :cond_3
    const/16 v16, 0x0

    iget v4, v0, Lorg/nativescript/widgets/TabStrip;->mBottomBorderThickness:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/TabStrip;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    iget-object v7, v0, Lorg/nativescript/widgets/TabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    return-void
.end method

.method getSelectedPosition()I
    .locals 1

    .line 181
    iget v0, p0, Lorg/nativescript/widgets/TabStrip;->mSelectedPosition:I

    return v0
.end method

.method getSelectedTabTextColor()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/nativescript/widgets/TabStrip;->mSelectedTabTextColor:I

    return v0
.end method

.method getTabTextColor()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/nativescript/widgets/TabStrip;->mTabTextColor:I

    return v0
.end method

.method getTabTextFontSize()F
    .locals 1

    .line 153
    iget v0, p0, Lorg/nativescript/widgets/TabStrip;->mTabTextFontSize:F

    return v0
.end method

.method onTabsViewPagerPageChanged(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 175
    iput p1, p0, Lorg/nativescript/widgets/TabStrip;->mSelectedPosition:I

    .line 176
    iput p2, p0, Lorg/nativescript/widgets/TabStrip;->mSelectionOffset:F

    .line 177
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabStrip;->invalidate()V

    .line 178
    return-void
.end method

.method onViewPagerPageChanged(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 167
    iput p1, p0, Lorg/nativescript/widgets/TabStrip;->mSelectedPosition:I

    .line 168
    iput p2, p0, Lorg/nativescript/widgets/TabStrip;->mSelectionOffset:F

    .line 169
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabStrip;->invalidate()V

    .line 170
    invoke-direct {p0}, Lorg/nativescript/widgets/TabStrip;->updateTabsTextColor()V

    .line 171
    return-void
.end method

.method setCustomTabColorizer(Lorg/nativescript/widgets/TabLayout$TabColorizer;)V
    .locals 0
    .param p1, "customTabColorizer"    # Lorg/nativescript/widgets/TabLayout$TabColorizer;

    .line 98
    iput-object p1, p0, Lorg/nativescript/widgets/TabStrip;->mCustomTabColorizer:Lorg/nativescript/widgets/TabLayout$TabColorizer;

    .line 99
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabStrip;->invalidate()V

    .line 100
    return-void
.end method

.method varargs setSelectedIndicatorColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nativescript/widgets/TabStrip;->mCustomTabColorizer:Lorg/nativescript/widgets/TabLayout$TabColorizer;

    .line 105
    iget-object v0, p0, Lorg/nativescript/widgets/TabStrip;->mDefaultTabColorizer:Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 106
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabStrip;->invalidate()V

    .line 107
    return-void
.end method

.method setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 185
    iput p1, p0, Lorg/nativescript/widgets/TabStrip;->mSelectedPosition:I

    .line 186
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabStrip;->invalidate()V

    .line 187
    invoke-direct {p0}, Lorg/nativescript/widgets/TabStrip;->updateTabsTextColor()V

    .line 188
    return-void
.end method

.method setSelectedTabTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 119
    iput p1, p0, Lorg/nativescript/widgets/TabStrip;->mSelectedTabTextColor:I

    .line 120
    invoke-direct {p0}, Lorg/nativescript/widgets/TabStrip;->updateTabsTextColor()V

    .line 121
    return-void
.end method

.method setShouldUpdateTabsTextColor(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 128
    iput-boolean p1, p0, Lorg/nativescript/widgets/TabStrip;->mShouldUpdateTabsTextColor:Z

    .line 129
    return-void
.end method

.method setTabTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 110
    iput p1, p0, Lorg/nativescript/widgets/TabStrip;->mTabTextColor:I

    .line 111
    invoke-direct {p0}, Lorg/nativescript/widgets/TabStrip;->updateTabsTextColor()V

    .line 112
    return-void
.end method

.method setTabTextFontSize(F)V
    .locals 0
    .param p1, "fontSize"    # F

    .line 148
    iput p1, p0, Lorg/nativescript/widgets/TabStrip;->mTabTextFontSize:F

    .line 149
    invoke-direct {p0}, Lorg/nativescript/widgets/TabStrip;->updateTabsTextFontSize()V

    .line 150
    return-void
.end method
