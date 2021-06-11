.class public Lcom/telerik/widget/list/SwipeExecuteBehavior;
.super Lcom/telerik/widget/list/ListViewBehavior;
.source "SwipeExecuteBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;,
        Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;,
        Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;,
        Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;,
        Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field public static final DEFAULT_SWIPE_LIMIT:I = -0x1

.field public static final DEFAULT_SWIPE_OFFSET:I = -0x1


# instance fields
.field private autoDissolve:Z

.field private cachedChangeDuration:J

.field private currentEventInfo:Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;

.field private dataObserver:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;

.field private isAttached:Z

.field private isLayoutVertical:Z

.field private isRecentlyRemoved:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;",
            ">;"
        }
    .end annotation
.end field

.field private overlayDrawables:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private pressedView:Landroid/view/View;

.field registeredAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Lcom/telerik/widget/list/ListViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

.field private swipeExecuteDismissedListener:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;

.field private swipeImage:Landroid/graphics/drawable/Drawable;

.field private swipeImageBoundsCurrent:Landroid/graphics/Rect;

.field private swipeImageBoundsOriginal:Landroid/graphics/Rect;

.field private swipeLimitEnd:I

.field private swipeLimitStart:I

.field private swipeOffset:I

.field private swipeViewIndexInLayout:I

.field private swipedItemPosition:I

.field private touchSlopSquare:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewBehavior;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->listeners:Ljava/util/List;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->autoDissolve:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isAttached:Z

    .line 41
    sget-object v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->IDLE:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    iput-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeViewIndexInLayout:I

    .line 48
    iput v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeOffset:I

    .line 49
    iput v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeLimitStart:I

    .line 50
    iput v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeLimitEnd:I

    .line 53
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->cachedChangeDuration:J

    .line 54
    new-instance v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;

    invoke-direct {v1, p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;-><init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;)V

    iput-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->dataObserver:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;

    .line 55
    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isRecentlyRemoved:Z

    return-void
.end method

.method static synthetic access$000(Lcom/telerik/widget/list/SwipeExecuteBehavior;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 27
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/telerik/widget/list/SwipeExecuteBehavior;II)V
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->animateBack(II)V

    return-void
.end method

.method static synthetic access$1102(Lcom/telerik/widget/list/SwipeExecuteBehavior;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;
    .param p1, "x1"    # Z

    .line 27
    iput-boolean p1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isRecentlyRemoved:Z

    return p1
.end method

.method static synthetic access$200(Lcom/telerik/widget/list/SwipeExecuteBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 27
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isAttached:Z

    return v0
.end method

.method static synthetic access$300(Lcom/telerik/widget/list/SwipeExecuteBehavior;)J
    .locals 2
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 27
    iget-wide v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->cachedChangeDuration:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/telerik/widget/list/SwipeExecuteBehavior;)Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 27
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/telerik/widget/list/SwipeExecuteBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 27
    iget v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeViewIndexInLayout:I

    return v0
.end method

.method static synthetic access$600(Lcom/telerik/widget/list/SwipeExecuteBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 27
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getCurrentBoundsStart()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/telerik/widget/list/SwipeExecuteBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 27
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getOriginalBoundsStart()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/telerik/widget/list/SwipeExecuteBehavior;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 27
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/telerik/widget/list/SwipeExecuteBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 27
    iget v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipedItemPosition:I

    return v0
.end method

.method private animateBack(II)V
    .locals 4
    .param p1, "horizontalPosition"    # I
    .param p2, "verticalPosition"    # I

    .line 241
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isRecentlyRemoved:Z

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 245
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 246
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isRecentlyRemoved:Z

    .line 249
    return-void
.end method

.method private calculateDefaultOffset()I
    .locals 7

    .line 647
    const/4 v0, -0x1

    .line 648
    .local v0, "autoCalculatedOffset":I
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    iget v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeViewIndexInLayout:I

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 652
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 653
    move-object v3, v1

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 654
    move-object v3, v1

    check-cast v3, Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 655
    .local v3, "v1":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 656
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getCurrentBoundsStart()I

    move-result v4

    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getOriginalBoundsStart()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 657
    invoke-direct {p0, v3}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getViewSizeInCurrentOrientation(Landroid/view/View;)I

    move-result v0

    .line 660
    :cond_1
    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 661
    .local v4, "v2":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    .line 662
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getCurrentBoundsStart()I

    move-result v5

    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getOriginalBoundsStart()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 663
    invoke-direct {p0, v4}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getViewSizeInCurrentOrientation(Landroid/view/View;)I

    move-result v5

    neg-int v0, v5

    .line 668
    .end local v3    # "v1":Landroid/view/View;
    .end local v4    # "v2":Landroid/view/View;
    :cond_2
    if-ne v0, v2, :cond_3

    .line 669
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getWidth()I

    move-result v2

    return v2

    .line 671
    :cond_3
    return v0

    .line 649
    .end local v1    # "view":Landroid/view/View;
    :cond_4
    :goto_0
    return v2
.end method

.method private findViewByCoordinates(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 729
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/telerik/widget/list/RadListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentBoundsStart()I
    .locals 1

    .line 705
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isLayoutVertical:Z

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private getOriginalBoundsStart()I
    .locals 1

    .line 713
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isLayoutVertical:Z

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private getViewSizeInCurrentOrientation(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 721
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isLayoutVertical:Z

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    .line 724
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private handleEndExecute(II)V
    .locals 2
    .param p1, "finalOffsetHorizontal"    # I
    .param p2, "finalOffsetVertical"    # I

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/telerik/widget/list/SwipeExecuteBehavior$2;-><init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    return-void
.end method

.method private handleEndExecuteInCustomLayout(II)V
    .locals 7
    .param p1, "finalOffsetHorizontal"    # I
    .param p2, "finalOffsetVertical"    # I

    .line 145
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isRecentlyRemoved:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 147
    .local v0, "originalAdapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/telerik/widget/list/ListViewAdapterBase;->onCreateSwipeContentHolder(Landroid/view/ViewGroup;)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object v2

    .line 148
    .local v2, "testHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 149
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/telerik/widget/list/SwipeExecuteBehavior$1;

    invoke-direct {v4, p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior$1;-><init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .end local v0    # "originalAdapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    .end local v2    # "testHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_0
    goto :goto_1

    .line 159
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->animateBack(II)V

    .line 160
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_1
    iput-boolean v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isRecentlyRemoved:Z

    .line 163
    return-void
.end method

.method private handleLayersVisibility(I)V
    .locals 7
    .param p1, "distance"    # I

    .line 624
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImage:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v1, :cond_0

    .line 625
    return-void

    .line 627
    :cond_0
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 629
    .local v0, "swipeImageDrawable":Landroid/graphics/drawable/LayerDrawable;
    if-gez p1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->overlayDrawables:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;>;"
    goto :goto_0

    .line 632
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;>;"
    :cond_1
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->overlayDrawables:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 635
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;>;"
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 636
    .local v2, "numberOfLayers":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 637
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_4

    .line 638
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-gez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-gez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-ne v4, v5, :cond_4

    .line 639
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4

    .line 641
    :cond_4
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 636
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 644
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method private init()V
    .locals 3

    .line 692
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 693
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 694
    .local v1, "touchSlop":I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->touchSlopSquare:I

    .line 696
    new-instance v2, Lcom/telerik/widget/list/SwipeExecuteBehavior$5;

    invoke-direct {v2, p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior$5;-><init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;)V

    iput-object v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeExecuteDismissedListener:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;

    .line 702
    return-void
.end method

.method private initEventInfo(FFFF)V
    .locals 5
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 675
    new-instance v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;-><init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;Lcom/telerik/widget/list/SwipeExecuteBehavior$1;)V

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->currentEventInfo:Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;

    .line 676
    iput p1, v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;->eventX:F

    .line 677
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->currentEventInfo:Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;

    iput p2, v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;->eventY:F

    .line 679
    sub-float v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 680
    .local v0, "horizontalDistance":F
    sub-float v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 682
    .local v1, "verticalDistance":F
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->initLayoutDirection()V

    .line 683
    iget-boolean v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isLayoutVertical:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 684
    .local v2, "isDirectionCorrect":Z
    iget-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->currentEventInfo:Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;

    iput-boolean v2, v3, Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;->shouldBeHandled:Z

    .line 685
    return-void
.end method

.method private initLayoutDirection()V
    .locals 1

    .line 688
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isLayoutVertical:Z

    .line 689
    return-void
.end method


# virtual methods
.method public addListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;

    .line 64
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public addSwipeDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 252
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->overlayDrawables:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->overlayDrawables:Ljava/util/TreeMap;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->overlayDrawables:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method public clearSwipeDrawables()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->overlayDrawables:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 273
    :cond_0
    return-void
.end method

.method protected createSwipeImage(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 600
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 601
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 602
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 604
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 606
    .local v2, "swipeImage":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->overlayDrawables:Ljava/util/TreeMap;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 610
    :cond_0
    iget-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->overlayDrawables:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 611
    .local v3, "count":I
    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    .line 612
    .local v4, "layers":[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 613
    const/4 v5, 0x1

    .line 614
    .local v5, "index":I
    iget-object v6, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->overlayDrawables:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 615
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    .line 616
    .local v8, "value":Landroid/graphics/drawable/Drawable;
    aput-object v8, v4, v5

    .line 617
    nop

    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;>;"
    .end local v8    # "value":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v5, v5, 0x1

    .line 618
    goto :goto_0

    .line 619
    :cond_1
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 620
    .local v6, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    return-object v6

    .line 607
    .end local v3    # "count":I
    .end local v4    # "layers":[Landroid/graphics/drawable/Drawable;
    .end local v5    # "index":I
    .end local v6    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    :goto_1
    return-object v2
.end method

.method public endExecute()V
    .locals 11

    .line 180
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->STARTED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-ne v0, v1, :cond_0

    .line 181
    sget-object v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->ENDED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    .line 182
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->currentEventInfo:Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;

    if-eqz v0, :cond_0

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;->shouldBeHandled:Z

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->ENDED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 190
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    .line 191
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    .line 193
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 195
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 197
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v3

    .line 198
    .local v3, "wrapperAdapter":Lcom/telerik/widget/list/ListViewWrapperAdapter;
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 200
    .local v4, "originalAdapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    iget v6, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeViewIndexInLayout:I

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 201
    .local v5, "swipeContentView":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 202
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_2
    invoke-virtual {v3}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->handleSwipeEnd()V

    .line 206
    iget-object v6, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeExecuteDismissedListener:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;

    invoke-virtual {v4, v6}, Lcom/telerik/widget/list/ListViewAdapterBase;->removeSwipeExecuteDismissedListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;)V

    .line 208
    iget-object v6, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    .line 209
    .local v6, "finalOffsetHorizontal":I
    iget-object v7, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    .line 211
    .local v7, "finalOffsetVertical":I
    sget-object v8, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->IDLE:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    iput-object v8, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    .line 212
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImage:Landroid/graphics/drawable/Drawable;

    .line 213
    iput-object v8, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    .line 214
    iput-object v8, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    .line 216
    iget-object v8, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->listeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;

    .line 217
    .local v9, "listener":Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;
    iget v10, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipedItemPosition:I

    invoke-interface {v9, v10}, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;->onExecuteFinished(I)V

    .line 218
    .end local v9    # "listener":Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;
    goto :goto_0

    .line 219
    :cond_3
    iget-boolean v8, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isRecentlyRemoved:Z

    if-nez v8, :cond_4

    .line 220
    iget v8, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipedItemPosition:I

    invoke-virtual {v4, v8}, Lcom/telerik/widget/list/ListViewAdapterBase;->notifyItemChanged(I)V

    .line 222
    :cond_4
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v8

    instance-of v8, v8, Lcom/telerik/widget/list/SlideLayoutManagerBase;

    if-eqz v8, :cond_5

    .line 223
    invoke-direct {p0, v6, v7}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->handleEndExecuteInCustomLayout(II)V

    goto :goto_1

    .line 225
    :cond_5
    invoke-direct {p0, v6, v7}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->handleEndExecute(II)V

    .line 227
    :goto_1
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/telerik/widget/list/SwipeExecuteBehavior$3;

    invoke-direct {v9, p0, v5}, Lcom/telerik/widget/list/SwipeExecuteBehavior$3;-><init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;Landroid/view/View;)V

    invoke-virtual {v8, v9, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    return-void

    .line 187
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v3    # "wrapperAdapter":Lcom/telerik/widget/list/ListViewWrapperAdapter;
    .end local v4    # "originalAdapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    .end local v5    # "swipeContentView":Landroid/view/View;
    .end local v6    # "finalOffsetHorizontal":I
    .end local v7    # "finalOffsetVertical":I
    :cond_6
    :goto_2
    return-void
.end method

.method protected endSwipe()V
    .locals 6

    .line 548
    sget-object v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->ENDED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    .line 550
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getCurrentBoundsStart()I

    move-result v0

    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getOriginalBoundsStart()I

    move-result v1

    sub-int/2addr v0, v1

    .line 552
    .local v0, "currentOffset":I
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;

    .line 553
    .local v2, "listener":Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;
    iget v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipedItemPosition:I

    invoke-interface {v2, v3, v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;->onSwipeEnded(II)V

    .line 554
    .end local v2    # "listener":Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;
    goto :goto_0

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v2, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->ENDED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-eq v1, v2, :cond_1

    .line 557
    return-void

    .line 560
    :cond_1
    iget v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeOffset:I

    .line 562
    .local v1, "finalOffset":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 563
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->calculateDefaultOffset()I

    move-result v2

    .line 564
    .local v2, "autoOffset":I
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getCurrentBoundsStart()I

    move-result v3

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    .line 565
    .local v3, "distanceToTarget":F
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getCurrentBoundsStart()I

    move-result v4

    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getOriginalBoundsStart()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    .line 566
    .local v4, "distanceToStart":F
    cmpg-float v5, v4, v3

    if-gez v5, :cond_2

    .line 567
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->endExecute()V

    .line 568
    return-void

    .line 570
    :cond_2
    move v1, v2

    .line 572
    .end local v2    # "autoOffset":I
    .end local v3    # "distanceToTarget":F
    .end local v4    # "distanceToStart":F
    :cond_3
    iget-boolean v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isLayoutVertical:Z

    if-eqz v2, :cond_4

    .line 573
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 575
    :cond_4
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 578
    :goto_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isAutoDissolve()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 579
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getCurrentBoundsStart()I

    move-result v2

    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getOriginalBoundsStart()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    .line 580
    .local v2, "distance":F
    iget-boolean v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isLayoutVertical:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    .line 581
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    .line 582
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    :goto_2
    nop

    .line 583
    .local v3, "relativeOffset":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 584
    .local v4, "alphaValue":I
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 587
    .end local v2    # "distance":F
    .end local v3    # "relativeOffset":F
    .end local v4    # "alphaValue":I
    :cond_6
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getCurrentBoundsStart()I

    move-result v2

    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->getOriginalBoundsStart()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 588
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->endExecute()V

    .line 589
    return-void

    .line 591
    :cond_7
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImage:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 592
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->invalidate()V

    .line 593
    return-void
.end method

.method public ensureWithinSwipeLimits(I)I
    .locals 3
    .param p1, "currentSwipe"    # I

    .line 465
    move v0, p1

    .line 466
    .local v0, "swipeWithinLimits":I
    iget v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeLimitEnd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 467
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 469
    :cond_0
    iget v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeLimitStart:I

    if-eq v1, v2, :cond_1

    .line 470
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 472
    :cond_1
    return v0
.end method

.method public getSwipeLimitEnd()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeLimitEnd:I

    return v0
.end method

.method public getSwipeLimitStart()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeLimitStart:I

    return v0
.end method

.method public getSwipeOffset()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeOffset:I

    return v0
.end method

.method public isAutoDissolve()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->autoDissolve:Z

    return v0
.end method

.method public isInProgress()Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->IDLE:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected moveSwipe(FFFF)V
    .locals 8
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 479
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 480
    .local v0, "swipeImageX":I
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 482
    .local v1, "swipeImageY":I
    float-to-int v2, p3

    float-to-int v3, p1

    sub-int/2addr v2, v3

    .line 483
    .local v2, "distanceX":I
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->ensureWithinSwipeLimits(I)I

    move-result v2

    .line 485
    float-to-int v3, p4

    float-to-int v4, p2

    sub-int/2addr v3, v4

    .line 486
    .local v3, "distanceY":I
    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->ensureWithinSwipeLimits(I)I

    move-result v3

    .line 488
    iget-boolean v4, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isLayoutVertical:Z

    if-eqz v4, :cond_0

    .line 489
    add-int/2addr v0, v2

    goto :goto_0

    .line 491
    :cond_0
    add-int/2addr v1, v3

    .line 493
    :goto_0
    iget-boolean v4, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isLayoutVertical:Z

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 494
    .local v4, "distance":I
    :goto_1
    invoke-direct {p0, v4}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->handleLayersVisibility(I)V

    .line 496
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 497
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImage:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 499
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isAutoDissolve()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 501
    iget-boolean v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isLayoutVertical:Z

    if-eqz v5, :cond_2

    .line 502
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .local v5, "relativeOffset":F
    goto :goto_2

    .line 504
    .end local v5    # "relativeOffset":F
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 506
    .restart local v5    # "relativeOffset":F
    :goto_2
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v6

    if-lez v7, :cond_3

    .line 507
    const/high16 v5, 0x3f800000    # 1.0f

    .line 509
    :cond_3
    const/4 v7, 0x0

    cmpg-float v7, v5, v7

    if-gez v7, :cond_4

    .line 510
    const/4 v5, 0x0

    .line 512
    :cond_4
    sub-float/2addr v6, v5

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 513
    .local v6, "alphaValue":I
    iget-object v7, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 516
    .end local v5    # "relativeOffset":F
    .end local v6    # "alphaValue":I
    :cond_5
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telerik/widget/list/RadListView;->invalidate()V

    .line 518
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/telerik/widget/list/SwipeExecuteBehavior$4;

    invoke-direct {v6, p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior$4;-><init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void
.end method

.method public onActionUpOrCancel(Z)Z
    .locals 2
    .param p1, "isCanceled"    # Z

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->currentEventInfo:Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;

    .line 330
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->STARTED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-ne v0, v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->endSwipe()V

    .line 332
    const/4 v0, 0x1

    return v0

    .line 334
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 303
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->registeredAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->dataObserver:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->registeredAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 307
    :cond_0
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V

    .line 309
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->registeredAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->registeredAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 311
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->dataObserver:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 313
    :cond_1
    return-void
.end method

.method public onAttached(Lcom/telerik/widget/list/RadListView;)V
    .locals 2
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 282
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAttached(Lcom/telerik/widget/list/RadListView;)V

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isAttached:Z

    .line 284
    invoke-direct {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->init()V

    .line 285
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->registeredAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 287
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->dataObserver:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 289
    :cond_0
    return-void
.end method

.method public onDetached(Lcom/telerik/widget/list/RadListView;)V
    .locals 2
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 293
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onDetached(Lcom/telerik/widget/list/RadListView;)V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isAttached:Z

    .line 295
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->registeredAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 296
    iget-object v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->dataObserver:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->registeredAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 299
    :cond_0
    return-void
.end method

.method public onDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 388
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->IDLE:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-eq v0, v1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 391
    :cond_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent2"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v2"    # F

    .line 324
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->IDLE:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 533
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 534
    return v1

    .line 536
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 538
    const/4 v0, 0x1

    return v0

    .line 540
    :cond_1
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 317
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->ENDED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-ne v0, v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->endExecute()V

    .line 320
    :cond_0
    return-void
.end method

.method public onShortPressDrag(FFFF)Z
    .locals 9
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 340
    sub-float v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 341
    .local v0, "distanceX":F
    sub-float v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 343
    .local v1, "distanceY":F
    float-to-int v2, v0

    .line 344
    .local v2, "deltaX":I
    float-to-int v3, v1

    .line 345
    .local v3, "deltaY":I
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    .line 347
    .local v4, "distance":I
    iget v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->touchSlopSquare:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v4, v5, :cond_1

    .line 348
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v8, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->ENDED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-ne v5, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return v6

    .line 351
    :cond_1
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->currentEventInfo:Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;

    if-eqz v5, :cond_2

    iget v5, v5, Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;->eventX:F

    cmpl-float v5, v5, p1

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->currentEventInfo:Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;

    iget v5, v5, Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;->eventY:F

    cmpl-float v5, v5, p2

    if-eqz v5, :cond_3

    .line 352
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->initEventInfo(FFFF)V

    .line 355
    :cond_3
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v8, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->ENDED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-ne v5, v8, :cond_4

    .line 356
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->currentEventInfo:Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;

    iput-boolean v7, v5, Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;->shouldBeHandled:Z

    .line 357
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->endExecute()V

    .line 358
    return v6

    .line 361
    :cond_4
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->currentEventInfo:Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;

    iget-boolean v5, v5, Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;->shouldBeHandled:Z

    if-nez v5, :cond_5

    .line 362
    return v7

    .line 365
    :cond_5
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v7, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->IDLE:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-ne v5, v7, :cond_6

    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->startSwipe(FF)V

    .line 368
    :cond_6
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v7, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->STARTED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-ne v5, v7, :cond_7

    .line 369
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->moveSwipe(FFFF)V

    goto :goto_1

    .line 371
    :cond_7
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->endExecute()V

    .line 374
    :goto_1
    return v6
.end method

.method public onTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 379
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->ENDED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-ne v0, v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->endExecute()V

    .line 383
    :cond_0
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;

    .line 73
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public removeSwipeDrawable(I)Z
    .locals 3
    .param p1, "offset"    # I

    .line 259
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->overlayDrawables:Ljava/util/TreeMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 260
    return v1

    .line 262
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->overlayDrawables:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_1
    return v1
.end method

.method public setAutoDissolve(Z)V
    .locals 0
    .param p1, "autoDissolve"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->autoDissolve:Z

    .line 142
    return-void
.end method

.method public setSwipeLimitEnd(I)V
    .locals 0
    .param p1, "swipeLimitEnd"    # I

    .line 119
    iput p1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeLimitEnd:I

    .line 120
    return-void
.end method

.method public setSwipeLimitStart(I)V
    .locals 0
    .param p1, "swipeLimitStart"    # I

    .line 111
    iput p1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeLimitStart:I

    .line 112
    return-void
.end method

.method public setSwipeOffset(I)V
    .locals 0
    .param p1, "swipeOffset"    # I

    .line 103
    iput p1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeOffset:I

    .line 104
    return-void
.end method

.method protected startSwipe(FF)V
    .locals 9
    .param p1, "startX"    # F
    .param p2, "startY"    # F

    .line 397
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->IDLE:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    if-eq v0, v1, :cond_0

    .line 398
    return-void

    .line 401
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->findViewByCoordinates(FF)Landroid/view/View;

    move-result-object v0

    .line 402
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 403
    return-void

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Lcom/telerik/widget/list/SlideLayoutManagerBase;

    if-eqz v1, :cond_2

    .line 406
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/SlideLayoutManagerBase;

    invoke-virtual {v1}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->getChildAtFront()Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 407
    return-void

    .line 410
    :cond_2
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 411
    .local v1, "position":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v2, v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->canSwipe(I)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_4

    .line 414
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 416
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 417
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->cachedChangeDuration:J

    .line 418
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 421
    :cond_4
    iput-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    .line 423
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    .line 424
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 425
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 426
    .local v4, "childView":Landroid/view/View;
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    if-ne v4, v5, :cond_5

    .line 427
    iput v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeViewIndexInLayout:I

    .line 428
    goto :goto_1

    .line 424
    .end local v4    # "childView":Landroid/view/View;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    .end local v3    # "i":I
    :cond_6
    :goto_1
    sget-object v3, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->STARTED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    iput-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->state:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    .line 434
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    .line 435
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    .line 437
    iget-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    .line 438
    iget-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->createSwipeImage(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImage:Landroid/graphics/drawable/Drawable;

    .line 439
    iget-object v5, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsCurrent:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 441
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v3

    .line 442
    .local v3, "wrapperAdapter":Lcom/telerik/widget/list/ListViewWrapperAdapter;
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 444
    .local v5, "originalAdapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    iget-object v6, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeExecuteDismissedListener:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;

    invoke-virtual {v5, v6}, Lcom/telerik/widget/list/ListViewAdapterBase;->addSwipeExecuteDismissedListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteDismissedListener;)V

    .line 446
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v6

    iget-object v7, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->pressedView:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 448
    .local v6, "swipePosition":I
    iget-object v7, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->listeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;

    .line 449
    .local v8, "listener":Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;
    invoke-interface {v8, v6}, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;->onSwipeStarted(I)V

    .line 450
    .end local v8    # "listener":Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;
    goto :goto_2

    .line 452
    :cond_7
    iput v6, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipedItemPosition:I

    .line 453
    iget-object v7, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipeImageBoundsOriginal:Landroid/graphics/Rect;

    if-eqz v7, :cond_9

    .line 454
    iget-boolean v8, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->isLayoutVertical:Z

    if-eqz v8, :cond_8

    .line 455
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v6, v4, v7}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->handleSwipeStart(III)V

    goto :goto_3

    .line 457
    :cond_8
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3, v6, v7, v4}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->handleSwipeStart(III)V

    .line 461
    :cond_9
    :goto_3
    iget v4, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior;->swipedItemPosition:I

    invoke-virtual {v5, v4}, Lcom/telerik/widget/list/ListViewAdapterBase;->notifyItemChanged(I)V

    .line 462
    return-void

    .line 412
    .end local v2    # "size":I
    .end local v3    # "wrapperAdapter":Lcom/telerik/widget/list/ListViewWrapperAdapter;
    .end local v5    # "originalAdapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    .end local v6    # "swipePosition":I
    :cond_a
    :goto_4
    return-void
.end method
