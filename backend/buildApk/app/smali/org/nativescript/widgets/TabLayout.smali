.class public Lorg/nativescript/widgets/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/TabLayout$TabClickListener;,
        Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;,
        Lorg/nativescript/widgets/TabLayout$TabColorizer;
    }
.end annotation


# static fields
.field private static final LARGE_MIN_HEIGHT:I = 0x48

.field private static final SMALL_MIN_HEIGHT:I = 0x30

.field private static final TAB_VIEW_PADDING_DIPS:I = 0x10

.field private static final TAB_VIEW_TEXT_SIZE_SP:I = 0xc

.field private static final TEXT_MAX_WIDTH:I = 0xb4

.field private static final TITLE_OFFSET_DIPS:I = 0x18


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

.field private mDistributeEvenly:Z

.field private mSelectedIndicatorColors:[I

.field private mTabItems:[Lorg/nativescript/widgets/TabItemSpec;

.field private final mTabStrip:Lorg/nativescript/widgets/TabStrip;

.field private mTitleOffset:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/nativescript/widgets/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/nativescript/widgets/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nativescript/widgets/TabLayout;->mDistributeEvenly:Z

    .line 79
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/nativescript/widgets/TabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    .line 95
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/nativescript/widgets/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 97
    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/TabLayout;->setFillViewport(Z)V

    .line 99
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/nativescript/widgets/TabLayout;->mTitleOffset:I

    .line 101
    new-instance v0, Lorg/nativescript/widgets/TabStrip;

    invoke-direct {v0, p1}, Lorg/nativescript/widgets/TabStrip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    .line 102
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lorg/nativescript/widgets/TabLayout;->addView(Landroid/view/View;II)V

    .line 103
    return-void
.end method

.method static synthetic access$200(Lorg/nativescript/widgets/TabLayout;)Lorg/nativescript/widgets/TabStrip;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/TabLayout;

    .line 51
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    return-object v0
.end method

.method static synthetic access$300(Lorg/nativescript/widgets/TabLayout;II)V
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/TabLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/nativescript/widgets/TabLayout;->scrollToTab(II)V

    return-void
.end method

.method static synthetic access$400(Lorg/nativescript/widgets/TabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/TabLayout;

    .line 51
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lorg/nativescript/widgets/TabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/TabLayout;

    .line 51
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method private populateTabStrip()V
    .locals 8

    .line 314
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 315
    .local v0, "adapter":Landroidx/viewpager/widget/PagerAdapter;
    new-instance v1, Lorg/nativescript/widgets/TabLayout$TabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/nativescript/widgets/TabLayout$TabClickListener;-><init>(Lorg/nativescript/widgets/TabLayout;Lorg/nativescript/widgets/TabLayout$1;)V

    .line 317
    .local v1, "tabClickListener":Landroid/view/View$OnClickListener;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 318
    const/4 v4, 0x0

    .line 321
    .local v4, "tabView":Landroid/view/View;
    iget-object v5, p0, Lorg/nativescript/widgets/TabLayout;->mTabItems:[Lorg/nativescript/widgets/TabItemSpec;

    if-eqz v5, :cond_0

    array-length v6, v5

    if-le v6, v3, :cond_0

    .line 322
    aget-object v5, v5, v3

    .local v5, "tabItem":Lorg/nativescript/widgets/TabItemSpec;
    goto :goto_1

    .line 324
    .end local v5    # "tabItem":Lorg/nativescript/widgets/TabItemSpec;
    :cond_0
    new-instance v5, Lorg/nativescript/widgets/TabItemSpec;

    invoke-direct {v5}, Lorg/nativescript/widgets/TabItemSpec;-><init>()V

    .line 325
    .restart local v5    # "tabItem":Lorg/nativescript/widgets/TabItemSpec;
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/nativescript/widgets/TabItemSpec;->title:Ljava/lang/String;

    .line 328
    :goto_1
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lorg/nativescript/widgets/TabLayout;->createDefaultTabView(Landroid/content/Context;Lorg/nativescript/widgets/TabItemSpec;)Landroid/view/View;

    move-result-object v4

    .line 330
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v6, p0, Lorg/nativescript/widgets/TabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 332
    .local v6, "desc":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 333
    invoke-virtual {v4, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 336
    :cond_1
    iget-object v7, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v7, v4}, Lorg/nativescript/widgets/TabStrip;->addView(Landroid/view/View;)V

    .line 337
    iget-object v7, p0, Lorg/nativescript/widgets/TabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v7

    if-ne v3, v7, :cond_2

    .line 338
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 317
    .end local v4    # "tabView":Landroid/view/View;
    .end local v5    # "tabItem":Lorg/nativescript/widgets/TabItemSpec;
    .end local v6    # "desc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private scrollToTab(II)V
    .locals 4
    .param p1, "tabIndex"    # I
    .param p2, "positionOffset"    # I

    .line 357
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v0

    .line 358
    .local v0, "tabStripChildCount":I
    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iget-object v1, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v1, p1}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 363
    .local v1, "selectedChild":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 364
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, p2

    .line 366
    .local v2, "targetScrollX":I
    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 369
    :cond_1
    iget v3, p0, Lorg/nativescript/widgets/TabLayout;->mTitleOffset:I

    sub-int/2addr v2, v3

    .line 372
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/nativescript/widgets/TabLayout;->scrollTo(II)V

    .line 374
    .end local v2    # "targetScrollX":I
    :cond_3
    return-void

    .line 359
    .end local v1    # "selectedChild":Landroid/view/View;
    :cond_4
    :goto_0
    return-void
.end method

.method private setupItem(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lorg/nativescript/widgets/TabItemSpec;)V
    .locals 4
    .param p1, "ll"    # Landroid/widget/LinearLayout;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "imgView"    # Landroid/widget/ImageView;
    .param p4, "tabItem"    # Lorg/nativescript/widgets/TabItemSpec;

    .line 268
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 270
    .local v0, "density":F
    iget v1, p4, Lorg/nativescript/widgets/TabItemSpec;->iconId:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 271
    iget v1, p4, Lorg/nativescript/widgets/TabItemSpec;->iconId:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v1, p4, Lorg/nativescript/widgets/TabItemSpec;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p4, Lorg/nativescript/widgets/TabItemSpec;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    :goto_0
    iget-object v1, p4, Lorg/nativescript/widgets/TabItemSpec;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p4, Lorg/nativescript/widgets/TabItemSpec;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 281
    iget-object v1, p4, Lorg/nativescript/widgets/TabItemSpec;->title:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 284
    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    :goto_1
    iget v1, p4, Lorg/nativescript/widgets/TabItemSpec;->backgroundColor:I

    if-eqz v1, :cond_3

    .line 288
    iget v1, p4, Lorg/nativescript/widgets/TabItemSpec;->backgroundColor:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 291
    :cond_3
    invoke-virtual {p3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 292
    const/high16 v1, 0x42900000    # 72.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto :goto_2

    .line 294
    :cond_4
    const/high16 v1, 0x42400000    # 48.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 297
    :goto_2
    iget-boolean v1, p0, Lorg/nativescript/widgets/TabLayout;->mDistributeEvenly:Z

    if-eqz v1, :cond_5

    .line 298
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 299
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 300
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 302
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    return-void
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;Lorg/nativescript/widgets/TabItemSpec;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tabItem"    # Lorg/nativescript/widgets/TabItemSpec;

    .line 232
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 233
    .local v0, "density":F
    const/high16 v1, 0x41800000    # 16.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 235
    .local v1, "padding":I
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 236
    .local v2, "ll":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 238
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 239
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 240
    .local v6, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lorg/nativescript/widgets/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x101030e

    invoke-virtual {v7, v8, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 241
    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 243
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 244
    .local v7, "imgView":Landroid/widget/ImageView;
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 245
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v8, "imgLP":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 247
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 250
    .local v9, "textView":Landroid/widget/TextView;
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 251
    const/high16 v3, 0x43340000    # 180.0f

    mul-float v3, v3, v0

    float-to-int v3, v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 252
    const/4 v3, 0x2

    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {v9, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 253
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 255
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 256
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 257
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 260
    invoke-direct {p0, v2, v9, v7, p2}, Lorg/nativescript/widgets/TabLayout;->setupItem(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lorg/nativescript/widgets/TabItemSpec;)V

    .line 262
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    return-object v2
.end method

.method public getItemCount()I
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getSelectedIndicatorColors()[I
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mSelectedIndicatorColors:[I

    return-object v0
.end method

.method public getSelectedTabTextColor()I
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->getSelectedTabTextColor()I

    move-result v0

    return v0
.end method

.method public getTabTextColor()I
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->getTabTextColor()I

    move-result v0

    return v0
.end method

.method public getTabTextFontSize()F
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->getTabTextFontSize()F

    move-result v0

    return v0
.end method

.method public getTextViewForItemAt(I)Landroid/widget/TextView;
    .locals 2
    .param p1, "index"    # I

    .line 204
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/TabLayout;->getViewForItemAt(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 205
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

    .line 212
    const/4 v0, 0x0

    .line 214
    .local v0, "result":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v1}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 215
    iget-object v1, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v1, p1}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 218
    :cond_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 349
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 351
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/nativescript/widgets/TabLayout;->scrollToTab(II)V

    .line 354
    :cond_0
    return-void
.end method

.method public onSelectedPositionChange(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "prevPosition"    # I

    .line 311
    return-void
.end method

.method public onTap(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    return-void
.end method

.method public setCustomTabColorizer(Lorg/nativescript/widgets/TabLayout$TabColorizer;)V
    .locals 1
    .param p1, "tabColorizer"    # Lorg/nativescript/widgets/TabLayout$TabColorizer;

    .line 112
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0, p1}, Lorg/nativescript/widgets/TabStrip;->setCustomTabColorizer(Lorg/nativescript/widgets/TabLayout$TabColorizer;)V

    .line 113
    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0
    .param p1, "distributeEvenly"    # Z

    .line 116
    iput-boolean p1, p0, Lorg/nativescript/widgets/TabLayout;->mDistributeEvenly:Z

    .line 117
    return-void
.end method

.method public setItems([Lorg/nativescript/widgets/TabItemSpec;Landroidx/viewpager/widget/ViewPager;)V
    .locals 2
    .param p1, "items"    # [Lorg/nativescript/widgets/TabItemSpec;
    .param p2, "viewPager"    # Landroidx/viewpager/widget/ViewPager;

    .line 180
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->removeAllViews()V

    .line 182
    iput-object p2, p0, Lorg/nativescript/widgets/TabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 183
    iput-object p1, p0, Lorg/nativescript/widgets/TabLayout;->mTabItems:[Lorg/nativescript/widgets/TabItemSpec;

    .line 184
    if-eqz p2, :cond_0

    .line 185
    new-instance v0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;-><init>(Lorg/nativescript/widgets/TabLayout;Lorg/nativescript/widgets/TabLayout$1;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 186
    invoke-direct {p0}, Lorg/nativescript/widgets/TabLayout;->populateTabStrip()V

    .line 188
    :cond_0
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 167
    iput-object p1, p0, Lorg/nativescript/widgets/TabLayout;->mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 168
    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .line 125
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0, p1}, Lorg/nativescript/widgets/TabStrip;->setSelectedIndicatorColors([I)V

    .line 126
    iput-object p1, p0, Lorg/nativescript/widgets/TabLayout;->mSelectedIndicatorColors:[I

    .line 127
    return-void
.end method

.method public setSelectedTabTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 143
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0, p1}, Lorg/nativescript/widgets/TabStrip;->setSelectedTabTextColor(I)V

    .line 144
    return-void
.end method

.method public setTabTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 135
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0, p1}, Lorg/nativescript/widgets/TabStrip;->setTabTextColor(I)V

    .line 136
    return-void
.end method

.method public setTabTextFontSize(F)V
    .locals 1
    .param p1, "fontSize"    # F

    .line 151
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0, p1}, Lorg/nativescript/widgets/TabStrip;->setTabTextFontSize(F)V

    .line 152
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/nativescript/widgets/TabLayout;->setItems([Lorg/nativescript/widgets/TabItemSpec;Landroidx/viewpager/widget/ViewPager;)V

    .line 177
    return-void
.end method

.method public updateItemAt(ILorg/nativescript/widgets/TabItemSpec;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "tabItem"    # Lorg/nativescript/widgets/TabItemSpec;

    .line 194
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout;->mTabStrip:Lorg/nativescript/widgets/TabStrip;

    invoke-virtual {v0, p1}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 195
    .local v0, "ll":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 196
    .local v1, "imgView":Landroid/widget/ImageView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 197
    .local v2, "textView":Landroid/widget/TextView;
    invoke-direct {p0, v0, v2, v1, p2}, Lorg/nativescript/widgets/TabLayout;->setupItem(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lorg/nativescript/widgets/TabItemSpec;)V

    .line 198
    return-void
.end method
