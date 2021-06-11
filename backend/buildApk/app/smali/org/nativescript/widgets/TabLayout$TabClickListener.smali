.class Lorg/nativescript/widgets/TabLayout$TabClickListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/TabLayout;


# direct methods
.method private constructor <init>(Lorg/nativescript/widgets/TabLayout;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lorg/nativescript/widgets/TabLayout$TabClickListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/TabLayout;Lorg/nativescript/widgets/TabLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/TabLayout;
    .param p2, "x1"    # Lorg/nativescript/widgets/TabLayout$1;

    .line 428
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/TabLayout$TabClickListener;-><init>(Lorg/nativescript/widgets/TabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/nativescript/widgets/TabLayout$TabClickListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v1}, Lorg/nativescript/widgets/TabLayout;->access$200(Lorg/nativescript/widgets/TabLayout;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 432
    iget-object v1, p0, Lorg/nativescript/widgets/TabLayout$TabClickListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v1}, Lorg/nativescript/widgets/TabLayout;->access$200(Lorg/nativescript/widgets/TabLayout;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 433
    iget-object v1, p0, Lorg/nativescript/widgets/TabLayout$TabClickListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-virtual {v1, v0}, Lorg/nativescript/widgets/TabLayout;->onTap(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lorg/nativescript/widgets/TabLayout$TabClickListener;->this$0:Lorg/nativescript/widgets/TabLayout;

    invoke-static {v1}, Lorg/nativescript/widgets/TabLayout;->access$500(Lorg/nativescript/widgets/TabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 436
    :cond_0
    return-void

    .line 431
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
