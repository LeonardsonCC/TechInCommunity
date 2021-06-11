.class Lorg/nativescript/widgets/TabsBar$TabClickListener;
.super Ljava/lang/Object;
.source "TabsBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/TabsBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/TabsBar;


# direct methods
.method private constructor <init>(Lorg/nativescript/widgets/TabsBar;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lorg/nativescript/widgets/TabsBar$TabClickListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/TabsBar;Lorg/nativescript/widgets/TabsBar$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/TabsBar;
    .param p2, "x1"    # Lorg/nativescript/widgets/TabsBar$1;

    .line 429
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/TabsBar$TabClickListener;-><init>(Lorg/nativescript/widgets/TabsBar;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/nativescript/widgets/TabsBar$TabClickListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v1}, Lorg/nativescript/widgets/TabsBar;->access$200(Lorg/nativescript/widgets/TabsBar;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 433
    iget-object v1, p0, Lorg/nativescript/widgets/TabsBar$TabClickListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v1}, Lorg/nativescript/widgets/TabsBar;->access$200(Lorg/nativescript/widgets/TabsBar;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 434
    iget-object v1, p0, Lorg/nativescript/widgets/TabsBar$TabClickListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-virtual {v1, v0}, Lorg/nativescript/widgets/TabsBar;->onTap(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lorg/nativescript/widgets/TabsBar$TabClickListener;->this$0:Lorg/nativescript/widgets/TabsBar;

    invoke-static {v1}, Lorg/nativescript/widgets/TabsBar;->access$500(Lorg/nativescript/widgets/TabsBar;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 437
    :cond_0
    return-void

    .line 432
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
