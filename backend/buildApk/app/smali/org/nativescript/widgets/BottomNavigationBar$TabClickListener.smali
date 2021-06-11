.class Lorg/nativescript/widgets/BottomNavigationBar$TabClickListener;
.super Ljava/lang/Object;
.source "BottomNavigationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/BottomNavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/BottomNavigationBar;


# direct methods
.method private constructor <init>(Lorg/nativescript/widgets/BottomNavigationBar;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lorg/nativescript/widgets/BottomNavigationBar$TabClickListener;->this$0:Lorg/nativescript/widgets/BottomNavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/BottomNavigationBar;Lorg/nativescript/widgets/BottomNavigationBar$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/BottomNavigationBar;
    .param p2, "x1"    # Lorg/nativescript/widgets/BottomNavigationBar$1;

    .line 296
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/BottomNavigationBar$TabClickListener;-><init>(Lorg/nativescript/widgets/BottomNavigationBar;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/nativescript/widgets/BottomNavigationBar$TabClickListener;->this$0:Lorg/nativescript/widgets/BottomNavigationBar;

    invoke-static {v1}, Lorg/nativescript/widgets/BottomNavigationBar;->access$100(Lorg/nativescript/widgets/BottomNavigationBar;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lorg/nativescript/widgets/TabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 300
    iget-object v1, p0, Lorg/nativescript/widgets/BottomNavigationBar$TabClickListener;->this$0:Lorg/nativescript/widgets/BottomNavigationBar;

    invoke-static {v1}, Lorg/nativescript/widgets/BottomNavigationBar;->access$100(Lorg/nativescript/widgets/BottomNavigationBar;)Lorg/nativescript/widgets/TabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/nativescript/widgets/TabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 301
    iget-object v1, p0, Lorg/nativescript/widgets/BottomNavigationBar$TabClickListener;->this$0:Lorg/nativescript/widgets/BottomNavigationBar;

    invoke-virtual {v1, v0}, Lorg/nativescript/widgets/BottomNavigationBar;->onTap(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lorg/nativescript/widgets/BottomNavigationBar$TabClickListener;->this$0:Lorg/nativescript/widgets/BottomNavigationBar;

    invoke-virtual {v1, v0}, Lorg/nativescript/widgets/BottomNavigationBar;->setSelectedPosition(I)V

    .line 304
    :cond_0
    return-void

    .line 299
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
