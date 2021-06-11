.class Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "TabsBar.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/TabsBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lorg/nativescript/widgets/TabsBar;


# direct methods
.method private constructor <init>(Lorg/nativescript/widgets/TabsBar;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/TabsBar;Lorg/nativescript/widgets/TabsBar$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/TabsBar;
    .param p2, "x1"    # Lorg/nativescript/widgets/TabsBar$1;

    .line 383
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;-><init>(Lorg/nativescript/widgets/TabsBar;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 406
    iput p1, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->mScrollState:I

    .line 408
    iget-object v0, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v0}, Lorg/nativescript/widgets/TabsBar;->access$400(Lorg/nativescript/widgets/TabsBar;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v0}, Lorg/nativescript/widgets/TabsBar;->access$400(Lorg/nativescript/widgets/TabsBar;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 411
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 388
    iget-object v0, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v0}, Lorg/nativescript/widgets/TabsBar;->access$200(Lorg/nativescript/widgets/TabsBar;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v0

    .line 389
    .local v0, "tabStripChildCount":I
    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    iget-object v1, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v1}, Lorg/nativescript/widgets/TabsBar;->access$200(Lorg/nativescript/widgets/TabsBar;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/nativescript/widgets/TabStrip;->onTabsViewPagerPageChanged(IF)V

    .line 395
    iget-object v1, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v1}, Lorg/nativescript/widgets/TabsBar;->access$200(Lorg/nativescript/widgets/TabsBar;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 396
    .local v1, "selectedTitle":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int v2, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 397
    .local v2, "extraOffset":I
    :goto_0
    iget-object v3, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v3, p1, v2}, Lorg/nativescript/widgets/TabsBar;->access$300(Lorg/nativescript/widgets/TabsBar;II)V

    .line 399
    iget-object v3, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v3}, Lorg/nativescript/widgets/TabsBar;->access$400(Lorg/nativescript/widgets/TabsBar;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 400
    iget-object v3, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v3}, Lorg/nativescript/widgets/TabsBar;->access$400(Lorg/nativescript/widgets/TabsBar;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 402
    :cond_2
    return-void

    .line 390
    .end local v1    # "selectedTitle":Landroid/view/View;
    .end local v2    # "extraOffset":I
    :cond_3
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 415
    iget v0, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->mScrollState:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v0}, Lorg/nativescript/widgets/TabsBar;->access$200(Lorg/nativescript/widgets/TabsBar;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/nativescript/widgets/TabStrip;->onTabsViewPagerPageChanged(IF)V

    .line 417
    iget-object v0, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v0, p1, v1}, Lorg/nativescript/widgets/TabsBar;->access$300(Lorg/nativescript/widgets/TabsBar;II)V

    .line 419
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v2}, Lorg/nativescript/widgets/TabsBar;->access$200(Lorg/nativescript/widgets/TabsBar;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v2

    invoke-virtual {v2}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 420
    iget-object v2, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v2}, Lorg/nativescript/widgets/TabsBar;->access$200(Lorg/nativescript/widgets/TabsBar;)Lorg/nativescript/widgets/TabStrip;

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

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v0}, Lorg/nativescript/widgets/TabsBar;->access$400(Lorg/nativescript/widgets/TabsBar;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lorg/nativescript/widgets/TabsBar$InternalViewPagerListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v0}, Lorg/nativescript/widgets/TabsBar;->access$400(Lorg/nativescript/widgets/TabsBar;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 425
    :cond_3
    return-void
.end method
