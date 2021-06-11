.class public Lorg/nativescript/widgets/BottomNavigationBar;
.super Landroid/widget/LinearLayout;
.source "BottomNavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/BottomNavigationBar$TabClickListener;,
        Lorg/nativescript/widgets/BottomNavigationBar$TabColorizer;
    }
.end annotation


# static fields
.field private static final BOTTOM_NAV_HEIGHT:I = 0x38

.field private static final ITEM_TEXT_MAX_WIDTH:I = 0x90

.field private static final ITEM_TEXT_SIZE_SP:I = 0xc


# instance fields
.field private mContentDescriptions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxImageHeight:I

.field private mTabItems:[Lorg/nativescript/widgets/TabItemSpec;

.field private final mTabStrip:Lorg/nativescript/widgets/TabStrip;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/nativescript/widgets/BottomNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/nativescript/widgets/BottomNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mContentDescriptions:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Lorg/nativescript/widgets/TabStrip;

    invoke-direct {v0, p1}, Lorg/nativescript/widgets/TabStrip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    .line 72
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0xffffff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/TabStrip;->setSelectedIndicatorColors([I)V

    .line 73
    invoke-virtual {p0}, Lorg/nativescript/widgets/BottomNavigationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 74
    .local v0, "bottomNavHeight":I
    iget-object v1, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Lorg/nativescript/widgets/BottomNavigationBar;->addView(Landroid/view/View;II)V

    .line 75
    return-void
.end method

.method static synthetic access$100(Lorg/nativescript/widgets/BottomNavigationBar;)Lorg/nativescript/widgets/TabStrip;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/BottomNavigationBar;

    .line 35
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    return-object v0
.end method

.method private populateTabStrip()V
    .locals 8

    .line 259
    new-instance v0, Lorg/nativescript/widgets/BottomNavigationBar$TabClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/nativescript/widgets/BottomNavigationBar$TabClickListener;-><init>(Lorg/nativescript/widgets/BottomNavigationBar;Lorg/nativescript/widgets/BottomNavigationBar$1;)V

    .line 261
    .local v0, "tabClickListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabItems:[Lorg/nativescript/widgets/TabItemSpec;

    if-eqz v2, :cond_3

    .line 262
    array-length v3, v2

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    array-length v4, v2

    :cond_0
    move v2, v4

    .line 263
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 265
    iget-object v4, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabItems:[Lorg/nativescript/widgets/TabItemSpec;

    aget-object v4, v4, v3

    .line 266
    .local v4, "tabItem":Lorg/nativescript/widgets/TabItemSpec;
    invoke-virtual {p0}, Lorg/nativescript/widgets/BottomNavigationBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lorg/nativescript/widgets/BottomNavigationBar;->createDefaultTabView(Landroid/content/Context;Lorg/nativescript/widgets/TabItemSpec;)Landroid/view/View;

    move-result-object v5

    .line 267
    .local v5, "tabView":Landroid/view/View;
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v6, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 270
    .local v6, "desc":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 271
    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    :cond_1
    iget-object v7, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v7, v5}, Lorg/nativescript/widgets/TabStrip;->addView(Landroid/view/View;)V

    .line 263
    .end local v4    # "tabItem":Lorg/nativescript/widgets/TabItemSpec;
    .end local v5    # "tabView":Landroid/view/View;
    .end local v6    # "desc":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    .end local v3    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v1}, Lorg/nativescript/widgets/TabStrip;->getTabTextColor()I

    move-result v1

    .line 277
    .local v1, "tabTextColor":I
    iget-object v3, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    const/16 v4, 0x64

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/nativescript/widgets/TabStrip;->setTabTextColor(I)V

    .line 278
    iget-object v3, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    const/16 v4, 0xff

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/nativescript/widgets/TabStrip;->setSelectedTabTextColor(I)V

    .line 280
    .end local v1    # "tabTextColor":I
    .end local v2    # "count":I
    :cond_3
    return-void
.end method

.method private setImageHeights()V
    .locals 6

    .line 245
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabItems:[Lorg/nativescript/widgets/TabItemSpec;

    if-eqz v0, :cond_2

    .line 246
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 247
    .local v3, "tabItem":Lorg/nativescript/widgets/TabItemSpec;
    iget v4, v3, Lorg/nativescript/widgets/TabItemSpec;->imageHeight:I

    if-nez v4, :cond_0

    iget v4, v3, Lorg/nativescript/widgets/TabItemSpec;->iconId:I

    if-eqz v4, :cond_0

    .line 248
    invoke-virtual {p0}, Lorg/nativescript/widgets/BottomNavigationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Lorg/nativescript/widgets/TabItemSpec;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 249
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, v3, Lorg/nativescript/widgets/TabItemSpec;->imageHeight:I

    .line 251
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v4, v3, Lorg/nativescript/widgets/TabItemSpec;->imageHeight:I

    iget v5, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mMaxImageHeight:I

    if-le v4, v5, :cond_1

    .line 252
    iget v4, v3, Lorg/nativescript/widgets/TabItemSpec;->imageHeight:I

    iput v4, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mMaxImageHeight:I

    .line 246
    .end local v3    # "tabItem":Lorg/nativescript/widgets/TabItemSpec;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_2
    return-void
.end method

.method private setupItem(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lorg/nativescript/widgets/TabItemSpec;)V
    .locals 4
    .param p1, "ll"    # Landroid/widget/LinearLayout;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "imgView"    # Landroid/widget/ImageView;
    .param p4, "tabItem"    # Lorg/nativescript/widgets/TabItemSpec;

    .line 193
    invoke-virtual {p0}, Lorg/nativescript/widgets/BottomNavigationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 194
    .local v0, "density":F
    iget v1, p4, Lorg/nativescript/widgets/TabItemSpec;->iconId:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 195
    iget v1, p4, Lorg/nativescript/widgets/TabItemSpec;->iconId:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v1, p4, Lorg/nativescript/widgets/TabItemSpec;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p4, Lorg/nativescript/widgets/TabItemSpec;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :goto_0
    iget-object v1, p4, Lorg/nativescript/widgets/TabItemSpec;->title:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p4, Lorg/nativescript/widgets/TabItemSpec;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 205
    iget-object v1, p4, Lorg/nativescript/widgets/TabItemSpec;->title:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v1, p4, Lorg/nativescript/widgets/TabItemSpec;->typeFace:Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p4, Lorg/nativescript/widgets/TabItemSpec;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 212
    :cond_2
    iget v1, p4, Lorg/nativescript/widgets/TabItemSpec;->fontSize:I

    if-eqz v1, :cond_3

    .line 213
    iget v1, p4, Lorg/nativescript/widgets/TabItemSpec;->fontSize:I

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 216
    :cond_3
    iget v1, p4, Lorg/nativescript/widgets/TabItemSpec;->color:I

    if-eqz v1, :cond_5

    .line 217
    iget v1, p4, Lorg/nativescript/widgets/TabItemSpec;->color:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v1, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v1, v3}, Lorg/nativescript/widgets/TabStrip;->setShouldUpdateTabsTextColor(Z)V

    goto :goto_1

    .line 221
    :cond_4
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :cond_5
    :goto_1
    iget v1, p4, Lorg/nativescript/widgets/TabItemSpec;->backgroundColor:I

    if-eqz v1, :cond_6

    .line 225
    iget v1, p4, Lorg/nativescript/widgets/TabItemSpec;->backgroundColor:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 228
    :cond_6
    const/high16 v1, 0x42600000    # 56.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 230
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 232
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 233
    return-void
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;Lorg/nativescript/widgets/TabItemSpec;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tabItem"    # Lorg/nativescript/widgets/TabItemSpec;

    .line 159
    invoke-virtual {p0}, Lorg/nativescript/widgets/BottomNavigationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 161
    .local v0, "density":F
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 162
    .local v1, "tabItemLayout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 164
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 165
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 166
    .local v5, "backgroundOutValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lorg/nativescript/widgets/BottomNavigationBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101030e

    invoke-virtual {v6, v7, v5, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 167
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 169
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 170
    .local v6, "iconImageView":Landroid/widget/ImageView;
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 171
    iget v7, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mMaxImageHeight:I

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, -0x2

    .line 172
    .local v7, "iconImageHeight":I
    :goto_0
    const/4 v8, -0x2

    .line 173
    .local v8, "iconImageWidth":I
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    .local v9, "iconImageLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 175
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 178
    .local v10, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 179
    const/high16 v2, 0x43100000    # 144.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 180
    const/4 v2, 0x2

    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v10, v2, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 181
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 182
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 183
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-direct {p0, v1, v10, v6, p2}, Lorg/nativescript/widgets/BottomNavigationBar;->setupItem(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lorg/nativescript/widgets/TabItemSpec;)V

    .line 187
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getSelectedTabTextColor()I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->getSelectedTabTextColor()I

    move-result v0

    return v0
.end method

.method public getTabTextColor()I
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->getTabTextColor()I

    move-result v0

    return v0
.end method

.method public getTabTextFontSize()F
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->getTabTextFontSize()F

    move-result v0

    return v0
.end method

.method public getTextViewForItemAt(I)Landroid/widget/TextView;
    .locals 2
    .param p1, "index"    # I

    .line 131
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/BottomNavigationBar;->getViewForItemAt(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 132
    .local v0, "ll":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getViewForItemAt(I)Landroid/widget/LinearLayout;
    .locals 2
    .param p1, "index"    # I

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "result":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v1}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v1, p1}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 145
    :cond_0
    return-object v0
.end method

.method public onSelectedPositionChange(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "prevPosition"    # I

    .line 242
    return-void
.end method

.method public onTap(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    return-void
.end method

.method public setCustomTabColorizer(Lorg/nativescript/widgets/BottomNavigationBar$TabColorizer;)V
    .locals 0
    .param p1, "tabColorizer"    # Lorg/nativescript/widgets/BottomNavigationBar$TabColorizer;

    .line 84
    return-void
.end method

.method public setItems([Lorg/nativescript/widgets/TabItemSpec;)V
    .locals 1
    .param p1, "items"    # [Lorg/nativescript/widgets/TabItemSpec;

    .line 111
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->removeAllViews()V

    .line 112
    iput-object p1, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabItems:[Lorg/nativescript/widgets/TabItemSpec;

    .line 113
    invoke-direct {p0}, Lorg/nativescript/widgets/BottomNavigationBar;->setImageHeights()V

    .line 114
    invoke-direct {p0}, Lorg/nativescript/widgets/BottomNavigationBar;->populateTabStrip()V

    .line 115
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 283
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->getSelectedPosition()I

    move-result v0

    .line 284
    .local v0, "prevPosition":I
    if-ne v0, p1, :cond_0

    .line 285
    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v1, p1}, Lorg/nativescript/widgets/TabStrip;->setSelectedPosition(I)V

    .line 289
    invoke-virtual {p0, p1, v0}, Lorg/nativescript/widgets/BottomNavigationBar;->onSelectedPositionChange(II)V

    .line 290
    return-void
.end method

.method public setSelectedTabTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 95
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0, p1}, Lorg/nativescript/widgets/TabStrip;->setSelectedTabTextColor(I)V

    .line 96
    return-void
.end method

.method public setTabTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 87
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0, p1}, Lorg/nativescript/widgets/TabStrip;->setTabTextColor(I)V

    .line 88
    return-void
.end method

.method public setTabTextFontSize(F)V
    .locals 1
    .param p1, "fontSize"    # F

    .line 103
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0, p1}, Lorg/nativescript/widgets/TabStrip;->setTabTextFontSize(F)V

    .line 104
    return-void
.end method

.method public updateItemAt(ILorg/nativescript/widgets/TabItemSpec;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "tabItem"    # Lorg/nativescript/widgets/TabItemSpec;

    .line 121
    iget-object v0, p0, Lorg/nativescript/widgets/BottomNavigationBar;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0, p1}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 122
    .local v0, "ll":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 123
    .local v1, "imgView":Landroid/widget/ImageView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 124
    .local v2, "textView":Landroid/widget/TextView;
    invoke-direct {p0, v0, v2, v1, p2}, Lorg/nativescript/widgets/BottomNavigationBar;->setupItem(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lorg/nativescript/widgets/TabItemSpec;)V

    .line 125
    return-void
.end method
