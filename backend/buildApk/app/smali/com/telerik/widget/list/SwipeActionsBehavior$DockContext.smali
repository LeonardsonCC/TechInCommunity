.class Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;
.super Ljava/lang/Object;
.source "SwipeActionsBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/SwipeActionsBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DockContext"
.end annotation


# instance fields
.field final dockPosition:F

.field final startPosition:F

.field final synthetic this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

.field final viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/SwipeActionsBehavior;Landroid/view/View;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;
    .param p2, "viewToAnimate"    # Landroid/view/View;
    .param p3, "startPosition"    # F
    .param p4, "dockPosition"    # F

    .line 993
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    iput-object p2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    .line 995
    iput p3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->startPosition:F

    .line 996
    iput p4, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->dockPosition:F

    .line 997
    return-void
.end method
