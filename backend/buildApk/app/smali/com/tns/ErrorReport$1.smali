.class Lcom/tns/ErrorReport$1;
.super Ljava/lang/Object;
.source "ErrorReport.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/ErrorReport;->buildUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/ErrorReport;


# direct methods
.method constructor <init>(Lcom/tns/ErrorReport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tns/ErrorReport;

    .line 271
    iput-object p1, p0, Lcom/tns/ErrorReport$1;->this$0:Lcom/tns/ErrorReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 286
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 275
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .line 279
    iget-object v0, p0, Lcom/tns/ErrorReport$1;->this$0:Lcom/tns/ErrorReport;

    invoke-static {v0}, Lcom/tns/ErrorReport;->access$000(Lcom/tns/ErrorReport;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 280
    iget-object v0, p0, Lcom/tns/ErrorReport$1;->this$0:Lcom/tns/ErrorReport;

    invoke-static {v0}, Lcom/tns/ErrorReport;->access$100(Lcom/tns/ErrorReport;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 281
    return-void
.end method
