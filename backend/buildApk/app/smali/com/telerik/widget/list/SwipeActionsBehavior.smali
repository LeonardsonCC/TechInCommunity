.class public Lcom/telerik/widget/list/SwipeActionsBehavior;
.super Lcom/telerik/widget/list/ListViewBehavior;
.source "SwipeActionsBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;,
        Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;,
        Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;,
        Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;,
        Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;,
        Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_LIMIT:I = -0x1

.field public static final DEFAULT_SWIPE_OFFSET:I = -0x1


# instance fields
.field private dataObserver:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;

.field private dockMode:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

.field private handlesCurrentTouchSession:Z

.field private interceptingEventOriginalX:F

.field private interceptingEventOriginalY:F

.field private interceptingTap:Z

.field private isLayoutVertical:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mainView:Landroid/view/View;

.field private normalViewHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/telerik/widget/list/ListViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private originalViewBounds:Landroid/graphics/Rect;

.field private pressedView:Landroid/view/ViewGroup;

.field registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

.field private removeInProgress:Z

.field private resetAnimation:Landroid/view/animation/Animation;

.field private state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

.field private swipeLimitEnd:I

.field private swipeLimitStart:I

.field private swipeThresholdEnd:I

.field private swipeThresholdStart:I

.field private swipeView:Landroid/view/View;

.field private swipeViewBounds:Landroid/graphics/Rect;

.field private swipeViewHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/telerik/widget/list/ListViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private swipedItemPosition:I

.field private touchSlopSquare:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewBehavior;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->listeners:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeLimitStart:I

    .line 41
    iput v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeLimitEnd:I

    .line 42
    iput v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeThresholdStart:I

    .line 43
    iput v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeThresholdEnd:I

    .line 49
    new-instance v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;

    invoke-direct {v0, p0}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;-><init>(Lcom/telerik/widget/list/SwipeActionsBehavior;)V

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dataObserver:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->handlesCurrentTouchSession:Z

    .line 54
    sget-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->DockAtThreshold:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockMode:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->normalViewHolders:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeViewHolders:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/telerik/widget/list/SwipeActionsBehavior;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;

    .line 23
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeViewBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/telerik/widget/list/SwipeActionsBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;

    .line 23
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    return v0
.end method

.method static synthetic access$200(Lcom/telerik/widget/list/SwipeActionsBehavior;Landroid/view/View;II)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/telerik/widget/list/SwipeActionsBehavior;->moveViewCore(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/telerik/widget/list/SwipeActionsBehavior;Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;
    .param p1, "x1"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    .line 23
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/SwipeActionsBehavior;->switchSwipeState(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/telerik/widget/list/SwipeActionsBehavior;)Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;

    .line 23
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/telerik/widget/list/SwipeActionsBehavior;Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;
    .param p1, "x1"    # Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    .line 23
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/SwipeActionsBehavior;->updateSwipeStateOnDockFinished(Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;)V

    return-void
.end method

.method static synthetic access$600(Lcom/telerik/widget/list/SwipeActionsBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;

    .line 23
    iget v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipedItemPosition:I

    return v0
.end method

.method static synthetic access$702(Lcom/telerik/widget/list/SwipeActionsBehavior;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->removeInProgress:Z

    return p1
.end method

.method static synthetic access$800(Lcom/telerik/widget/list/SwipeActionsBehavior;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockItem(ZZ)V

    return-void
.end method

.method private calculateDockOffset()Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;
    .locals 6

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "dockOffset":F
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getSwipePosition()I

    move-result v1

    int-to-float v1, v1

    .line 578
    .local v1, "currentStart":F
    iget v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeThresholdStart:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_3

    .line 579
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockMode:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    sget-object v5, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->DockAtThreshold:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    if-ne v2, v5, :cond_0

    .line 580
    iget v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeThresholdStart:I

    neg-int v2, v2

    int-to-float v0, v2

    goto :goto_4

    .line 581
    :cond_0
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockMode:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    sget-object v5, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->DockAtLimit:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    if-ne v2, v5, :cond_6

    .line 582
    iget v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeLimitStart:I

    if-eq v2, v4, :cond_1

    :goto_0
    neg-int v2, v2

    int-to-float v2, v2

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getHeight()I

    move-result v2

    goto :goto_0

    :goto_1
    move v0, v2

    goto :goto_4

    .line 584
    :cond_3
    iget v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeThresholdStart:I

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockMode:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    sget-object v5, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->DockAtLimit:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    if-ne v2, v5, :cond_6

    cmpl-float v2, v1, v3

    if-lez v2, :cond_6

    .line 585
    iget v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeLimitStart:I

    if-eq v2, v4, :cond_4

    :goto_2
    neg-int v2, v2

    int-to-float v2, v2

    goto :goto_3

    :cond_4
    iget-boolean v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getWidth()I

    move-result v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getHeight()I

    move-result v2

    goto :goto_2

    :goto_3
    move v0, v2

    .line 588
    :cond_6
    :goto_4
    iget v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeThresholdEnd:I

    if-eq v2, v4, :cond_a

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_a

    .line 589
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockMode:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    sget-object v3, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->DockAtThreshold:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    if-ne v2, v3, :cond_7

    .line 590
    iget v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeThresholdEnd:I

    int-to-float v0, v2

    goto :goto_9

    .line 591
    :cond_7
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockMode:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    sget-object v3, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->DockAtLimit:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    if-ne v2, v3, :cond_d

    .line 592
    iget v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeLimitEnd:I

    if-eq v2, v4, :cond_8

    :goto_5
    int-to-float v2, v2

    goto :goto_6

    :cond_8
    iget-boolean v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getWidth()I

    move-result v2

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getHeight()I

    move-result v2

    goto :goto_5

    :goto_6
    move v0, v2

    goto :goto_9

    .line 594
    :cond_a
    iget v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeThresholdEnd:I

    if-ne v2, v4, :cond_d

    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockMode:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    sget-object v5, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->DockAtLimit:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    if-ne v2, v5, :cond_d

    cmpg-float v2, v1, v3

    if-gez v2, :cond_d

    .line 595
    iget v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeLimitEnd:I

    if-eq v2, v4, :cond_b

    :goto_7
    int-to-float v2, v2

    goto :goto_8

    :cond_b
    iget-boolean v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getWidth()I

    move-result v2

    goto :goto_7

    :cond_c
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getHeight()I

    move-result v2

    goto :goto_7

    :goto_8
    move v0, v2

    .line 598
    :cond_d
    :goto_9
    new-instance v2, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;-><init>(Lcom/telerik/widget/list/SwipeActionsBehavior;Landroid/view/View;FF)V

    return-object v2
.end method

.method private checkForInputAtLocation(Landroid/view/View;FF)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 528
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 529
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 530
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 531
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 532
    .local v4, "childView":Landroid/view/View;
    invoke-direct {p0, v4, p2, p3}, Lcom/telerik/widget/list/SwipeActionsBehavior;->checkForInputAtLocation(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 533
    return v2

    .line 530
    .end local v4    # "childView":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 536
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_1
    nop

    .line 543
    return v1

    .line 537
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 538
    .local v0, "locOnScreen":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 539
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v0, v1

    aget v5, v0, v2

    aget v6, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 540
    .local v3, "childRect":Landroid/graphics/Rect;
    instance-of v4, p1, Landroid/widget/Button;

    if-eqz v4, :cond_3

    float-to-int v4, p2

    float-to-int v5, p3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private dockItem(ZZ)V
    .locals 4
    .param p1, "reset"    # Z
    .param p2, "animate"    # Z

    .line 603
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->resetAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 605
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 608
    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->calculateDockOffset()Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getSwipePosition()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;-><init>(Lcom/telerik/widget/list/SwipeActionsBehavior;Landroid/view/View;FF)V

    .line 610
    .local v0, "context":Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;
    :goto_0
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getBoundsPosition()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->dockPosition:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 611
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->updateSwipeStateOnDockFinished(Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;)V

    .line 612
    return-void

    .line 615
    :cond_2
    if-nez p2, :cond_4

    .line 616
    iget-boolean v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v1, :cond_3

    .line 617
    iget-object v1, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    iget v2, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->dockPosition:F

    float-to-int v2, v2

    iget-object v3, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/telerik/widget/list/SwipeActionsBehavior;->moveViewCore(Landroid/view/View;II)V

    goto :goto_1

    .line 619
    :cond_3
    iget-object v1, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    iget-object v2, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iget v3, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->dockPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/telerik/widget/list/SwipeActionsBehavior;->moveViewCore(Landroid/view/View;II)V

    .line 621
    :goto_1
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->updateSwipeStateOnDockFinished(Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;)V

    .line 622
    return-void

    .line 626
    :cond_4
    new-instance v1, Lcom/telerik/widget/list/SwipeActionsBehavior$3;

    invoke-direct {v1, p0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior$3;-><init>(Lcom/telerik/widget/list/SwipeActionsBehavior;Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;)V

    iput-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->resetAnimation:Landroid/view/animation/Animation;

    .line 642
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 643
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->resetAnimation:Landroid/view/animation/Animation;

    new-instance v2, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 644
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->resetAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/telerik/widget/list/SwipeActionsBehavior$4;

    invoke-direct {v2, p0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior$4;-><init>(Lcom/telerik/widget/list/SwipeActionsBehavior;Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 676
    iget-object v1, v0, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->viewToAnimate:Landroid/view/View;

    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->resetAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 677
    return-void
.end method

.method private ensureWithinSwipeLimits(I)I
    .locals 4
    .param p1, "currentPosition"    # I

    .line 739
    move v0, p1

    .line 740
    .local v0, "swipeWithinLimits":I
    iget v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeLimitEnd:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-gez v0, :cond_0

    .line 741
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 743
    :cond_0
    iget v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeLimitStart:I

    if-eq v1, v3, :cond_1

    if-lez v0, :cond_1

    .line 744
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 746
    :cond_1
    return v0
.end method

.method private findViewByCoordinates(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 771
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/telerik/widget/list/RadListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fireSwipeEvents(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;)V
    .locals 3
    .param p1, "oldState"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;
    .param p2, "newState"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    .line 295
    if-ne p1, p2, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->generateCurrentEventArgs()Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;

    move-result-object v0

    .line 299
    .local v0, "eventArgs":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;
    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->SWIPING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne p2, v1, :cond_2

    .line 300
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;

    .line 301
    .local v2, "listener":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;
    invoke-interface {v2, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;->onSwipeStarted(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;)V

    .line 302
    .end local v2    # "listener":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;
    goto :goto_0

    :cond_1
    goto :goto_3

    .line 303
    :cond_2
    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne p2, v1, :cond_4

    .line 304
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;

    .line 305
    .restart local v2    # "listener":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;
    invoke-interface {v2, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;->onExecuteFinished(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;)V

    .line 306
    .end local v2    # "listener":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;
    goto :goto_1

    :cond_3
    goto :goto_3

    .line 307
    :cond_4
    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->ACTIVE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-eq p2, v1, :cond_5

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->RESETTING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne p2, v1, :cond_6

    .line 308
    :cond_5
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getBoundsPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;->setSwipePositionWhenReleased(I)V

    .line 309
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;

    .line 310
    .restart local v2    # "listener":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;
    invoke-interface {v2, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;->onSwipeEnded(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;)V

    .line 311
    .end local v2    # "listener":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;
    goto :goto_2

    .line 314
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;

    .line 315
    .restart local v2    # "listener":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;
    invoke-interface {v2, p1, p2}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;->onSwipeStateChanged(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;)V

    .line 316
    .end local v2    # "listener":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;
    goto :goto_4

    .line 317
    :cond_7
    return-void
.end method

.method private generateCurrentEventArgs()Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;
    .locals 9

    .line 730
    new-instance v8, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;

    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->isThresholdPassed()Z

    move-result v2

    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getBoundsPosition()I

    move-result v3

    iget-object v4, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeView:Landroid/view/View;

    iget-object v5, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    iget v6, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipedItemPosition:I

    iget-boolean v7, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->removeInProgress:Z

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;-><init>(Lcom/telerik/widget/list/SwipeActionsBehavior;ZILandroid/view/View;Landroid/view/View;IZ)V

    return-object v8
.end method

.method private getBoundsPosition()I
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeViewBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    return v0
.end method

.method private getMainView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .line 547
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getMainViewBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;

    .line 555
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 557
    .local v0, "mainView":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    iget-boolean v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v2, :cond_0

    .line 558
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    :goto_0
    float-to-int v2, v2

    iget-boolean v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v3, :cond_1

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    :goto_1
    float-to-int v3, v3

    iget-boolean v4, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v4, :cond_2

    .line 560
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v4, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    :goto_2
    float-to-int v4, v4

    iget-boolean v5, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v5, :cond_3

    .line 561
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v5, v6

    :goto_3
    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 557
    return-object v1
.end method

.method private getSwipePosition()I
    .locals 1

    .line 763
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    return v0
.end method

.method private getSwipeView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getSwipeViewBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;

    .line 565
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 567
    .local v0, "swipeView":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 570
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 571
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 567
    return-object v1
.end method

.method private init()V
    .locals 3

    .line 755
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->initLayoutDirection()V

    .line 756
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 757
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 758
    .local v1, "touchSlop":I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->touchSlopSquare:I

    .line 759
    return-void
.end method

.method private initLayoutDirection()V
    .locals 1

    .line 751
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    .line 752
    return-void
.end method

.method private isFunctional()Z
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 271
    :cond_1
    return v1
.end method

.method private isRegularViewType(I)Z
    .locals 1
    .param p1, "suggestedViewType"    # I

    .line 221
    const/16 v0, -0x6a

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6d

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6c

    if-eq p1, v0, :cond_0

    const/16 v0, -0x68

    if-eq p1, v0, :cond_0

    const/16 v0, -0x67

    if-eq p1, v0, :cond_0

    const/16 v0, -0x69

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6b

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isThresholdPassed()Z
    .locals 4

    .line 734
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getSwipePosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getSwipePosition()I

    move-result v0

    iget v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeThresholdStart:I

    if-le v0, v3, :cond_1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getSwipePosition()I

    move-result v0

    iget v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeThresholdEnd:I

    if-ge v0, v3, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private moveView(Landroid/view/View;FFFF)V
    .locals 2
    .param p1, "viewToMove"    # Landroid/view/View;
    .param p2, "xStart"    # F
    .param p3, "currentX"    # F
    .param p4, "yStart"    # F
    .param p5, "currentY"    # F

    .line 701
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->originalViewBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    sub-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/telerik/widget/list/SwipeActionsBehavior;->moveViewCore(Landroid/view/View;II)V

    goto :goto_0

    .line 704
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->originalViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, p5

    sub-float/2addr v1, p4

    float-to-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/telerik/widget/list/SwipeActionsBehavior;->moveViewCore(Landroid/view/View;II)V

    .line 706
    :goto_0
    return-void
.end method

.method private moveViewCore(Landroid/view/View;II)V
    .locals 3
    .param p1, "viewToMove"    # Landroid/view/View;
    .param p2, "xCoord"    # I
    .param p3, "yCoord"    # I

    .line 709
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->SWIPING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne v0, v1, :cond_1

    .line 711
    invoke-direct {p0, p2}, Lcom/telerik/widget/list/SwipeActionsBehavior;->ensureWithinSwipeLimits(I)I

    move-result p2

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->SWIPING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne v0, v1, :cond_1

    .line 716
    invoke-direct {p0, p3}, Lcom/telerik/widget/list/SwipeActionsBehavior;->ensureWithinSwipeLimits(I)I

    move-result p3

    .line 720
    :cond_1
    :goto_0
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 721
    int-to-float v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 722
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 723
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->generateCurrentEventArgs()Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;

    move-result-object v0

    .line 724
    .local v0, "eventArgs":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;

    .line 725
    .local v2, "listener":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;
    invoke-interface {v2, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;->onSwipeProgressChanged(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;)V

    .line 726
    .end local v2    # "listener":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;
    goto :goto_1

    .line 727
    :cond_2
    return-void
.end method

.method private shouldHandleEvent(FFFF)Z
    .locals 4
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 689
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->handlesCurrentTouchSession:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 690
    return v1

    .line 693
    :cond_0
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 694
    sub-float v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v3, p3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->handlesCurrentTouchSession:Z

    return v1

    .line 697
    :cond_2
    sub-float v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v3, p3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->handlesCurrentTouchSession:Z

    return v1
.end method

.method private switchSwipeState(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;)V
    .locals 4
    .param p1, "newState"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    .line 275
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    .line 276
    .local v0, "oldState":Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    .line 278
    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->ACTIVE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 279
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeViewBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->originalViewBounds:Landroid/graphics/Rect;

    .line 280
    iput-boolean v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->handlesCurrentTouchSession:Z

    goto :goto_0

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v3, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne v1, v3, :cond_1

    .line 282
    iput-boolean v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->handlesCurrentTouchSession:Z

    .line 283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeViewBounds:Landroid/graphics/Rect;

    .line 284
    iput-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->originalViewBounds:Landroid/graphics/Rect;

    .line 287
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/telerik/widget/list/SwipeActionsBehavior;->fireSwipeEvents(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;)V

    .line 289
    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne p1, v1, :cond_2

    .line 290
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->removeInProgress:Z

    .line 292
    :cond_2
    return-void
.end method

.method private updateMainView(Lcom/telerik/widget/list/SwipeLayout;Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Lcom/telerik/widget/list/SwipeLayout;
    .param p2, "mainView"    # Landroid/view/View;

    .line 181
    invoke-virtual {p1, p2}, Lcom/telerik/widget/list/SwipeLayout;->setMainView(Landroid/view/View;)V

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 189
    new-instance v0, Lcom/telerik/widget/list/SwipeActionsBehavior$1;

    invoke-direct {v0, p0, p1}, Lcom/telerik/widget/list/SwipeActionsBehavior$1;-><init>(Lcom/telerik/widget/list/SwipeActionsBehavior;Lcom/telerik/widget/list/SwipeLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v0, Lcom/telerik/widget/list/SwipeActionsBehavior$2;

    invoke-direct {v0, p0, p1}, Lcom/telerik/widget/list/SwipeActionsBehavior$2;-><init>(Lcom/telerik/widget/list/SwipeActionsBehavior;Lcom/telerik/widget/list/SwipeLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    return-void
.end method

.method private updateSwipeStateOnDockFinished(Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;)V
    .locals 2
    .param p1, "context"    # Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;

    .line 680
    iget v0, p1, Lcom/telerik/widget/list/SwipeActionsBehavior$DockContext;->dockPosition:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 681
    sget-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->ACTIVE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->switchSwipeState(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;)V

    goto :goto_0

    .line 684
    :cond_0
    sget-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->switchSwipeState(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;)V

    .line 686
    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;

    .line 65
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public bindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "i"    # I

    .line 205
    invoke-virtual {p1}, Lcom/telerik/widget/list/ListViewHolder;->getItemViewType()I

    move-result v0

    .line 206
    .local v0, "suggestedViewType":I
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->isRegularViewType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->normalViewHolders:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewHolder;

    .line 208
    .local v1, "normalHolder":Lcom/telerik/widget/list/ListViewHolder;
    if-eqz v1, :cond_0

    .line 209
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v2, v1, p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->onBindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeViewHolders:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewHolder;

    .line 212
    .local v2, "swipeHolder":Lcom/telerik/widget/list/ListViewHolder;
    if-eqz v2, :cond_1

    .line 213
    iget-object v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v3, v2, p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->onBindSwipeContentHolder(Lcom/telerik/widget/list/ListViewHolder;I)V

    .line 215
    .end local v1    # "normalHolder":Lcom/telerik/widget/list/ListViewHolder;
    .end local v2    # "swipeHolder":Lcom/telerik/widget/list/ListViewHolder;
    :cond_1
    goto :goto_0

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v1, p1, p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 218
    :goto_0
    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;
    .locals 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "suggestedViewType"    # I

    .line 152
    invoke-direct {p0, p2}, Lcom/telerik/widget/list/SwipeActionsBehavior;->isRegularViewType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    new-instance v0, Lcom/telerik/widget/list/SwipeLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/telerik/widget/list/SwipeLayout;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "viewsParent":Lcom/telerik/widget/list/SwipeLayout;
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    iget v1, v1, Lcom/telerik/widget/list/RadListView;->currentWidthMode:I

    .line 155
    .local v1, "widthMode":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    iget v2, v2, Lcom/telerik/widget/list/RadListView;->currentHeightMode:I

    .line 156
    .local v2, "heightMode":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v3

    .line 157
    .local v3, "currentParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->isLayoutVertical:Z

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v4, :cond_1

    .line 158
    if-ne v1, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, -0x2

    :goto_0
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 160
    :cond_1
    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, -0x2

    :goto_1
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 162
    :goto_2
    invoke-virtual {v0, v3}, Lcom/telerik/widget/list/SwipeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v4, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v4, v0, p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object v4

    .line 164
    .local v4, "currentNormalHolder":Lcom/telerik/widget/list/ListViewHolder;
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v5, v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->onCreateSwipeContentHolder(Landroid/view/ViewGroup;)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object v5

    .line 165
    .local v5, "currentSwipeHolder":Lcom/telerik/widget/list/ListViewHolder;
    if-eqz v5, :cond_3

    .line 166
    iget-object v6, v5, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v6}, Lcom/telerik/widget/list/SwipeLayout;->setSwipeView(Landroid/view/View;)V

    .line 168
    :cond_3
    if-eqz v4, :cond_4

    .line 169
    iget-object v6, v4, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0, v6}, Lcom/telerik/widget/list/SwipeActionsBehavior;->updateMainView(Lcom/telerik/widget/list/SwipeLayout;Landroid/view/View;)V

    .line 171
    :cond_4
    new-instance v6, Lcom/telerik/widget/list/ListViewHolder;

    invoke-direct {v6, v0}, Lcom/telerik/widget/list/ListViewHolder;-><init>(Landroid/view/View;)V

    .line 172
    .local v6, "finalHolder":Lcom/telerik/widget/list/ListViewHolder;
    iget-object v7, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->normalViewHolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v7, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeViewHolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-object v6

    .line 177
    .end local v0    # "viewsParent":Lcom/telerik/widget/list/SwipeLayout;
    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v3    # "currentParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "currentNormalHolder":Lcom/telerik/widget/list/ListViewHolder;
    .end local v5    # "currentSwipeHolder":Lcom/telerik/widget/list/ListViewHolder;
    .end local v6    # "finalHolder":Lcom/telerik/widget/list/ListViewHolder;
    :cond_5
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0, p1, p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewHolder;

    return-object v0
.end method

.method public endExecute()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->RESETTING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-eq v0, v1, :cond_0

    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockItem(ZZ)V

    .line 238
    :cond_0
    return-void
.end method

.method public endExecute(Z)V
    .locals 2
    .param p1, "forceReset"    # Z

    .line 250
    if-nez p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->endExecute()V

    goto :goto_0

    .line 253
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockItem(ZZ)V

    .line 255
    :goto_0
    return-void
.end method

.method public getDockMode()Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockMode:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    return-object v0
.end method

.method public getSwipeLimitEnd()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeLimitEnd:I

    return v0
.end method

.method public getSwipeLimitStart()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeLimitStart:I

    return v0
.end method

.method public getSwipeState()Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    return-object v0
.end method

.method public isInProgress()Z
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public managesViewHolders()Z
    .locals 1

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public onActionUpOrCancel(Z)Z
    .locals 4
    .param p1, "isCanceled"    # Z

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->handlesCurrentTouchSession:Z

    .line 377
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v2, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->SWIPING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 378
    invoke-direct {p0, v3, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockItem(ZZ)V

    .line 379
    return v0

    .line 382
    :cond_0
    return v3
.end method

.method onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 347
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dataObserver:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 351
    :cond_0
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V

    .line 353
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 355
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dataObserver:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 357
    :cond_1
    return-void
.end method

.method public onAttached(Lcom/telerik/widget/list/RadListView;)V
    .locals 2
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 326
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAttached(Lcom/telerik/widget/list/RadListView;)V

    .line 327
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->init()V

    .line 328
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 330
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dataObserver:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 331
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->notifyDataSetChanged()V

    .line 333
    :cond_0
    return-void
.end method

.method public onDetached(Lcom/telerik/widget/list/RadListView;)V
    .locals 2
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 338
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dataObserver:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeExecuteDataObserver;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->registeredAdapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 342
    :cond_0
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onDetached(Lcom/telerik/widget/list/RadListView;)V

    .line 343
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 478
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->isFunctional()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 479
    return v1

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    return v1

    .line 487
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/telerik/widget/list/SwipeActionsBehavior;->findViewByCoordinates(FF)Landroid/view/View;

    move-result-object v0

    .line 488
    .local v0, "itemView":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 489
    return v1

    .line 492
    :cond_2
    instance-of v2, v0, Lcom/telerik/widget/list/SwipeLayout;

    if-nez v2, :cond_3

    .line 493
    return v1

    .line 496
    :cond_3
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getMainView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/telerik/widget/list/SwipeActionsBehavior;->checkForInputAtLocation(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 497
    return v1

    .line 501
    :cond_4
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getMainViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 502
    .local v2, "rectangleOnScreen":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    .line 504
    iput-boolean v4, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->interceptingTap:Z

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->interceptingEventOriginalX:F

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->interceptingEventOriginalY:F

    goto :goto_0

    .line 507
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    .line 508
    iput-boolean v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->interceptingTap:Z

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->interceptingEventOriginalX:F

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 510
    .local v3, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->interceptingEventOriginalY:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 511
    .local v5, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v5, v5

    add-int/2addr v6, v7

    .line 512
    .local v6, "distance":I
    iget v7, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->touchSlopSquare:I

    if-le v6, v7, :cond_6

    .line 513
    return v4

    .line 512
    .end local v3    # "deltaX":I
    .end local v5    # "deltaY":I
    .end local v6    # "distance":I
    :cond_6
    goto :goto_0

    .line 515
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v4, :cond_8

    .line 516
    iget-boolean v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->interceptingTap:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v4, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->ACTIVE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne v3, v4, :cond_8

    .line 519
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SwipeActionsBehavior;->onTapUp(Landroid/view/MotionEvent;)Z

    .line 520
    return v1

    .line 524
    :cond_8
    :goto_0
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 368
    invoke-super/range {p0 .. p5}, Lcom/telerik/widget/list/ListViewBehavior;->onLayout(ZIIII)V

    .line 369
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->RESETTING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-eq v0, v1, :cond_0

    .line 370
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockItem(ZZ)V

    .line 372
    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 361
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-eq v0, v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->endExecute()V

    .line 364
    :cond_0
    return-void
.end method

.method public onShortPressDrag(FFFF)Z
    .locals 15
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 388
    move-object v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    sub-float v0, p3, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 389
    .local v9, "distanceX":F
    sub-float v0, p4, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 391
    .local v10, "distanceY":F
    float-to-int v11, v9

    .line 392
    .local v11, "deltaX":I
    float-to-int v12, v10

    .line 393
    .local v12, "deltaY":I
    mul-int v0, v11, v11

    mul-int v1, v12, v12

    add-int v13, v0, v1

    .line 395
    .local v13, "distance":I
    iget v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->touchSlopSquare:I

    const/4 v1, 0x0

    if-ge v13, v0, :cond_0

    .line 396
    return v1

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->initLayoutDirection()V

    .line 401
    iget-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v2, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->ACTIVE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    const/4 v14, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->pressedView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getMainViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v2, v7

    float-to-int v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    invoke-direct {p0, v14, v14}, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockItem(ZZ)V

    .line 403
    return v14

    .line 406
    :cond_1
    iget-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v2, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->RESETTING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne v0, v2, :cond_2

    iget-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->pressedView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getMainViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v2, v7

    float-to-int v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    return v14

    .line 411
    :cond_2
    iget-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v2, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->SWIPING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-eq v0, v2, :cond_3

    invoke-direct/range {p0 .. p4}, Lcom/telerik/widget/list/SwipeActionsBehavior;->shouldHandleEvent(FFFF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 412
    return v1

    .line 415
    :cond_3
    iget-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v2, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne v0, v2, :cond_8

    .line 416
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_4

    .line 418
    return v1

    .line 421
    :cond_4
    invoke-direct/range {p0 .. p2}, Lcom/telerik/widget/list/SwipeActionsBehavior;->findViewByCoordinates(FF)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->pressedView:Landroid/view/ViewGroup;

    .line 423
    if-nez v0, :cond_5

    .line 424
    return v1

    .line 426
    :cond_5
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    iget-object v2, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->pressedView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iput v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipedItemPosition:I

    .line 427
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    iget v2, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipedItemPosition:I

    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/ListViewAdapterBase;->canSwipe(I)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 431
    :cond_6
    iget-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->pressedView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeView:Landroid/view/View;

    .line 432
    iget-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->pressedView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    .line 433
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    .line 434
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    .line 435
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    .line 436
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    .line 437
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeViewBounds:Landroid/graphics/Rect;

    .line 438
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeViewBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->originalViewBounds:Landroid/graphics/Rect;

    .line 439
    sget-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->SWIPING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->switchSwipeState(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;)V

    .line 440
    iget-object v1, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/telerik/widget/list/SwipeActionsBehavior;->moveView(Landroid/view/View;FFFF)V

    .line 441
    return v14

    .line 428
    :cond_7
    :goto_0
    return v1

    .line 442
    :cond_8
    iget-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v2, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->SWIPING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne v0, v2, :cond_9

    .line 443
    iget-object v1, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/telerik/widget/list/SwipeActionsBehavior;->moveView(Landroid/view/View;FFFF)V

    .line 444
    return v14

    .line 445
    :cond_9
    iget-object v0, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v2, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->ACTIVE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne v0, v2, :cond_a

    .line 446
    sget-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->SWIPING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->switchSwipeState(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;)V

    .line 447
    iget-object v1, v6, Lcom/telerik/widget/list/SwipeActionsBehavior;->mainView:Landroid/view/View;

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/telerik/widget/list/SwipeActionsBehavior;->moveView(Landroid/view/View;FFFF)V

    .line 448
    return v14

    .line 450
    :cond_a
    return v1
.end method

.method public onTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 455
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->state:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->ACTIVE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    if-ne v0, v1, :cond_2

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 457
    .local v0, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 458
    .local v1, "eventY":I
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->pressedView:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getSwipeViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 459
    .local v2, "swipeRectOnScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->pressedView:Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/telerik/widget/list/SwipeActionsBehavior;->getMainViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 461
    .local v3, "mainViewRectOnScreen":Landroid/graphics/Rect;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 462
    invoke-direct {p0, v5, v5}, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockItem(ZZ)V

    .line 465
    :cond_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 466
    invoke-direct {p0, v5, v5}, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockItem(ZZ)V

    .line 469
    :cond_1
    return v5

    .line 472
    .end local v0    # "eventX":I
    .end local v1    # "eventY":I
    .end local v2    # "swipeRectOnScreen":Landroid/graphics/Rect;
    .end local v3    # "mainViewRectOnScreen":Landroid/graphics/Rect;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public removeListener(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;

    .line 74
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public setDockMode(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;)V
    .locals 0
    .param p1, "dockMode"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    .line 142
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->dockMode:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    .line 143
    return-void
.end method

.method public setSwipeLimitEnd(I)V
    .locals 0
    .param p1, "swipeLimitEnd"    # I

    .line 124
    iput p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeLimitEnd:I

    .line 125
    return-void
.end method

.method public setSwipeLimitStart(I)V
    .locals 0
    .param p1, "swipeLimitStart"    # I

    .line 108
    iput p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeLimitStart:I

    .line 109
    return-void
.end method

.method public setSwipeThresholdEnd(I)V
    .locals 0
    .param p1, "swipeThreshold"    # I

    .line 92
    iput p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeThresholdEnd:I

    .line 93
    return-void
.end method

.method public setSwipeThresholdStart(I)V
    .locals 0
    .param p1, "swipeThreshold"    # I

    .line 83
    iput p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior;->swipeThresholdStart:I

    .line 84
    return-void
.end method
