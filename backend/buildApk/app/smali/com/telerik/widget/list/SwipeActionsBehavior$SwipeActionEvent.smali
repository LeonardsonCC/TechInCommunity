.class public Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;
.super Ljava/lang/Object;
.source "SwipeActionsBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/SwipeActionsBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwipeActionEvent"
.end annotation


# instance fields
.field private currentOffset:I

.field private mainView:Landroid/view/View;

.field private removeInProgress:Z

.field private swipePositionWhenReleased:I

.field private swipeView:Landroid/view/View;

.field private swipedItemPosition:I

.field final synthetic this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

.field private thresholdPassed:Z


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/SwipeActionsBehavior;ZILandroid/view/View;Landroid/view/View;I)V
    .locals 8
    .param p1, "this$0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;
    .param p2, "thresholdPassed"    # Z
    .param p3, "currentOffset"    # I
    .param p4, "swipeView"    # Landroid/view/View;
    .param p5, "mainView"    # Landroid/view/View;
    .param p6, "swipedItemPosition"    # I

    .line 902
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;-><init>(Lcom/telerik/widget/list/SwipeActionsBehavior;ZILandroid/view/View;Landroid/view/View;IZ)V

    .line 903
    return-void
.end method

.method constructor <init>(Lcom/telerik/widget/list/SwipeActionsBehavior;ZILandroid/view/View;Landroid/view/View;IZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;
    .param p2, "thresholdPassed"    # Z
    .param p3, "currentOffset"    # I
    .param p4, "swipeView"    # Landroid/view/View;
    .param p5, "mainView"    # Landroid/view/View;
    .param p6, "swipedItemPosition"    # I
    .param p7, "removeInProgress"    # Z

    .line 905
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->swipePositionWhenReleased:I

    .line 906
    iput-boolean p2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->thresholdPassed:Z

    .line 907
    iput p3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->currentOffset:I

    .line 908
    iput-object p4, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->swipeView:Landroid/view/View;

    .line 909
    iput-object p5, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->mainView:Landroid/view/View;

    .line 910
    iput p6, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->swipedItemPosition:I

    .line 911
    iput-boolean p7, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->removeInProgress:Z

    .line 912
    return-void
.end method


# virtual methods
.method public currentOffset()I
    .locals 1

    .line 965
    iget v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->currentOffset:I

    return v0
.end method

.method public isRemoveInProgress()Z
    .locals 1

    .line 984
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->removeInProgress:Z

    return v0
.end method

.method public isThresholdPassed()Z
    .locals 1

    .line 975
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->thresholdPassed:Z

    return v0
.end method

.method public mainView()Landroid/view/View;
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->mainView:Landroid/view/View;

    return-object v0
.end method

.method setSwipePositionWhenReleased(I)V
    .locals 0
    .param p1, "position"    # I

    .line 915
    iput p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->swipePositionWhenReleased:I

    .line 916
    return-void
.end method

.method public swipePositionWhenReleased()I
    .locals 1

    .line 926
    iget v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->swipePositionWhenReleased:I

    return v0
.end method

.method public swipeView()Landroid/view/View;
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->swipeView:Landroid/view/View;

    return-object v0
.end method

.method public swipedItemPosition()I
    .locals 1

    .line 935
    iget v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->swipedItemPosition:I

    return v0
.end method
