.class Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lorg/nativescript/widgets/TabLayout;


# direct methods
.method private constructor <init>(Lorg/nativescript/widgets/TabLayout;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/TabLayout;Lorg/nativescript/widgets/TabLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/TabLayout;
    .param p2, "x1"    # Lorg/nativescript/widgets/TabLayout$1;

    .line 376
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;-><init>(Lorg/nativescript/widgets/TabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 405
    iput p1, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->mScrollState:I

    .line 407
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v0}, Lorg/nativescript/widgets/TabLayout;->access$400(Lorg/nativescript/widgets/TabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v0}, Lorg/nativescript/widgets/TabLayout;->access$400(Lorg/nativescript/widgets/TabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 410
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 381
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v0}, Lorg/nativescript/widgets/TabLayout;->access$200(Lorg/nativescript/widgets/TabLayout;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v0

    .line 382
    .local v0, "tabStripChildCount":I
    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    iget-object v1, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v1}, Lorg/nativescript/widgets/TabLayout;->access$200(Lorg/nativescript/widgets/TabLayout;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lorg/nativescript/widgets/TabStrip;->getSelectedPosition()I

    move-result v1

    .line 388
    .local v1, "prevPosition":I
    if-eq v1, p1, :cond_1

    .line 389
    iget-object v2, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-virtual {v2, p1, v1}, Lorg/nativescript/widgets/TabLayout;->onSelectedPositionChange(II)V

    .line 392
    :cond_1
    iget-object v2, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v2}, Lorg/nativescript/widgets/TabLayout;->access$200(Lorg/nativescript/widgets/TabLayout;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/nativescript/widgets/TabStrip;->onViewPagerPageChanged(IF)V

    .line 394
    iget-object v2, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v2}, Lorg/nativescript/widgets/TabLayout;->access$200(Lorg/nativescript/widgets/TabLayout;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 395
    .local v2, "selectedTitle":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    float-to-int v3, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 396
    .local v3, "extraOffset":I
    :goto_0
    iget-object v4, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v4, p1, v3}, Lorg/nativescript/widgets/TabLayout;->access$300(Lorg/nativescript/widgets/TabLayout;II)V

    .line 398
    iget-object v4, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v4}, Lorg/nativescript/widgets/TabLayout;->access$400(Lorg/nativescript/widgets/TabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 399
    iget-object v4, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v4}, Lorg/nativescript/widgets/TabLayout;->access$400(Lorg/nativescript/widgets/TabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 401
    :cond_3
    return-void

    .line 383
    .end local v1    # "prevPosition":I
    .end local v2    # "selectedTitle":Landroid/view/View;
    .end local v3    # "extraOffset":I
    :cond_4
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 414
    iget v0, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->mScrollState:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v0}, Lorg/nativescript/widgets/TabLayout;->access$200(Lorg/nativescript/widgets/TabLayout;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/nativescript/widgets/TabStrip;->onViewPagerPageChanged(IF)V

    .line 416
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v0, p1, v1}, Lorg/nativescript/widgets/TabLayout;->access$300(Lorg/nativescript/widgets/TabLayout;II)V

    .line 418
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v2}, Lorg/nativescript/widgets/TabLayout;->access$200(Lorg/nativescript/widgets/TabLayout;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v2

    invoke-virtual {v2}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 419
    iget-object v2, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v2}, Lorg/nativescript/widgets/TabLayout;->access$200(Lorg/nativescript/widgets/TabLayout;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v0}, Lorg/nativescript/widgets/TabLayout;->access$400(Lorg/nativescript/widgets/TabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lorg/nativescript/widgets/TabLayout$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v0}, Lorg/nativescript/widgets/TabLayout;->access$400(Lorg/nativescript/widgets/TabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 424
    :cond_3
    return-void
.end method
