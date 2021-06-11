.class public abstract Lcom/telerik/widget/list/ListViewItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "ListViewItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;,
        Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;,
        Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field public static final ADD:I = 0x1

.field private static final DEBUG:Z = false

.field public static final REMOVE:I = 0x2


# instance fields
.field protected alreadyAppearedViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected owner:Lcom/telerik/widget/list/RadListView;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->type:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/telerik/widget/list/ListViewItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 18
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/telerik/widget/list/ListViewItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 18
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/telerik/widget/list/ListViewItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/ListViewItemAnimator;
    .param p1, "x1"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->hasViewAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/telerik/widget/list/ListViewItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 18
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/telerik/widget/list/ListViewItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 18
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/telerik/widget/list/ListViewItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 18
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p2, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 564
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 565
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

    .line 566
    .local v1, "changeInfo":Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;
    invoke-direct {p0, v1, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->endChangeAnimationIfNecessary(Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, v1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 568
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 564
    .end local v1    # "changeInfo":Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 572
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;)V
    .locals 1
    .param p1, "changeInfo"    # Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

    .line 575
    iget-object v0, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/ListViewItemAnimator;->endChangeAnimationIfNecessary(Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 578
    :cond_0
    iget-object v0, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/ListViewItemAnimator;->endChangeAnimationIfNecessary(Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 581
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "changeInfo"    # Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;
    .param p2, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "oldItem":Z
    iget-object v1, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-ne v1, p2, :cond_0

    .line 586
    iput-object v2, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 587
    :cond_0
    iget-object v1, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_1

    .line 588
    iput-object v2, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 589
    const/4 v0, 0x1

    .line 593
    :goto_0
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 594
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 595
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 596
    invoke-virtual {p0, p2, v0}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 597
    const/4 v1, 0x1

    return v1

    .line 591
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private hasViewAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 93
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->alreadyAppearedViews:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->initAppearedViewsList()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->alreadyAppearedViews:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private initAppearedViewsList()V
    .locals 5

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->alreadyAppearedViews:Ljava/util/HashSet;

    .line 114
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 118
    .local v0, "itemsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 119
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->alreadyAppearedViews:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private isViewDisappearing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 8
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 100
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    return v1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 104
    .local v0, "itemsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 105
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v5}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 106
    const/4 v1, 0x1

    return v1

    .line 104
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "i":I
    :cond_2
    return v1
.end method


# virtual methods
.method protected addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 5
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 413
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 414
    .local v0, "animatedView":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 415
    .local v1, "animation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    nop

    .line 416
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 417
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 418
    .local v2, "addAnimation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v2
.end method

.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 346
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->hasViewAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 348
    .local v0, "viewHasAppeared":Z
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    return v1

    .line 352
    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewAdded(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    return v1
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 17
    .param p1, "oldHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .line 490
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v11

    .line 491
    .local v11, "prevTranslationX":F
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v12

    .line 492
    .local v12, "prevTranslationY":F
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v13

    .line 493
    .local v13, "prevAlpha":F
    invoke-virtual/range {p0 .. p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 494
    sub-int v1, p5, p3

    int-to-float v1, v1

    sub-float/2addr v1, v11

    float-to-int v14, v1

    .line 495
    .local v14, "deltaX":I
    sub-int v1, p6, p4

    int-to-float v1, v1

    sub-float/2addr v1, v12

    float-to-int v15, v1

    .line 497
    .local v15, "deltaY":I
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v11}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 498
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v12}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 499
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v13}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 500
    if-eqz v10, :cond_0

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {v0, v10}, Lcom/telerik/widget/list/ListViewItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 503
    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v14

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 504
    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v15

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 505
    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 507
    :cond_0
    iget-object v8, v0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v7, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

    const/16 v16, 0x0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v0, v7

    move/from16 v7, p6

    move-object v9, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIIILcom/telerik/widget/list/ListViewItemAnimator$1;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method protected animateChangeImpl(Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;)V
    .locals 8
    .param p1, "changeInfo"    # Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

    .line 512
    iget-object v0, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 513
    .local v0, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 514
    .local v2, "view":Landroid/view/View;
    :goto_0
    iget-object v3, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 515
    .local v3, "newHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    iget-object v1, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 516
    .local v1, "newView":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 517
    iget-object v5, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 519
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 518
    invoke-virtual {v5, v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 520
    .local v5, "oldViewAnim":Landroidx/core/view/ViewPropertyAnimatorCompat;
    iget v6, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 521
    iget v6, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 522
    invoke-virtual {v5, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    new-instance v7, Lcom/telerik/widget/list/ListViewItemAnimator$7;

    invoke-direct {v7, p0, p1, v5}, Lcom/telerik/widget/list/ListViewItemAnimator$7;-><init>(Lcom/telerik/widget/list/ListViewItemAnimator;Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 538
    invoke-virtual {v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 540
    .end local v5    # "oldViewAnim":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_2
    if-eqz v1, :cond_3

    .line 541
    iget-object v5, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 543
    .local v5, "newViewAnimation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v5, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->getChangeDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    .line 544
    invoke-virtual {v4, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    new-instance v6, Lcom/telerik/widget/list/ListViewItemAnimator$8;

    invoke-direct {v6, p0, p1, v5, v1}, Lcom/telerik/widget/list/ListViewItemAnimator$8;-><init>(Lcom/telerik/widget/list/ListViewItemAnimator;Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 559
    invoke-virtual {v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 561
    .end local v5    # "newViewAnimation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_3
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 15
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 428
    move-object/from16 v6, p1

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 429
    .local v7, "view":Landroid/view/View;
    move/from16 v0, p2

    int-to-float v1, v0

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v8, v1

    .line 430
    .end local p2    # "fromX":I
    .local v8, "fromX":I
    move/from16 v0, p3

    int-to-float v1, v0

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v9, v1

    .line 431
    .end local p3    # "fromY":I
    .local v9, "fromY":I
    invoke-virtual/range {p0 .. p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 432
    sub-int v10, p4, v8

    .line 433
    .local v10, "deltaX":I
    sub-int v11, p5, v9

    .line 434
    .local v11, "deltaY":I
    if-nez v10, :cond_0

    if-nez v11, :cond_0

    .line 435
    invoke-virtual/range {p0 .. p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 436
    const/4 v0, 0x0

    return v0

    .line 438
    :cond_0
    if-eqz v10, :cond_1

    .line 439
    neg-int v0, v10

    int-to-float v0, v0

    invoke-static {v7, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 441
    :cond_1
    if-eqz v11, :cond_2

    .line 442
    neg-int v0, v11

    int-to-float v0, v0

    invoke-static {v7, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 444
    :cond_2
    move-object v12, p0

    iget-object v13, v12, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v14, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;

    move-object v0, v14

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method protected animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 14
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 449
    move-object v6, p1

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 450
    .local v7, "view":Landroid/view/View;
    sub-int v8, p4, p2

    .line 451
    .local v8, "deltaX":I
    sub-int v9, p5, p3

    .line 452
    .local v9, "deltaY":I
    const/4 v0, 0x0

    if-eqz v8, :cond_0

    .line 453
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 455
    :cond_0
    if-eqz v9, :cond_1

    .line 456
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 461
    :cond_1
    move-object v10, p0

    iget-object v0, v10, Lcom/telerik/widget/list/ListViewItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v11

    .line 463
    .local v11, "animation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    new-instance v13, Lcom/telerik/widget/list/ListViewItemAnimator$6;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move v3, v8

    move v4, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/telerik/widget/list/ListViewItemAnimator$6;-><init>(Lcom/telerik/widget/list/ListViewItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IILandroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v12, v13}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 485
    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 269
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->isViewDisappearing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 271
    .local v0, "isViewDisappearing":Z
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewDisappeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    return v1

    .line 275
    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewRemoved(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    return v1
.end method

.method protected animateViewAdded(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 356
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 358
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewAddedPrepare(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 360
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method protected animateViewAddedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 373
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 375
    .local v0, "addAnimation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    new-instance v1, Lcom/telerik/widget/list/ListViewItemAnimator$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/telerik/widget/list/ListViewItemAnimator$5;-><init>(Lcom/telerik/widget/list/ListViewItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    .line 392
    .local v1, "listenerAdapter":Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 393
    return-void
.end method

.method protected animateViewAddedPrepare(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 365
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 366
    return-void
.end method

.method protected animateViewAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 7
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 369
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0
.end method

.method protected animateViewAppearedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 422
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    .line 423
    return-void
.end method

.method protected animateViewDisappeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 7
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 285
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 286
    .local v0, "itemHeight":I
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 287
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v1

    return v1
.end method

.method protected animateViewDisappearedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 340
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    .line 341
    return-void
.end method

.method protected animateViewRemoved(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 279
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 280
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method protected animateViewRemovedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 291
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->removeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 292
    .local v0, "animation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    new-instance v1, Lcom/telerik/widget/list/ListViewItemAnimator$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/telerik/widget/list/ListViewItemAnimator$4;-><init>(Lcom/telerik/widget/list/ListViewItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    .line 309
    .local v1, "listenerAdapter":Lcom/telerik/widget/list/ListViewItemAnimator$VpaListenerAdapter;
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 310
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 798
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 799
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 798
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 801
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected dispatchFinishedWhenDone()V
    .locals 1

    .line 706
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchAnimationsFinished()V

    .line 709
    :cond_0
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 8
    .param p1, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 605
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 607
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 609
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 610
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;

    .line 611
    .local v3, "moveInfo":Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;
    iget-object v4, v3, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v4, p1, :cond_0

    .line 612
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 613
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 614
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 615
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 609
    .end local v3    # "moveInfo":Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 618
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 619
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 620
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 621
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 623
    :cond_2
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 624
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 625
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 628
    :cond_3
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 629
    iget-object v4, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 630
    .local v4, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v4, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 631
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 632
    iget-object v5, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 628
    .end local v4    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;>;"
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 635
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_8

    .line 636
    iget-object v4, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 637
    .local v4, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_3
    if-ltz v5, :cond_7

    .line 638
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;

    .line 639
    .local v6, "moveInfo":Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;
    iget-object v7, v6, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_6

    .line 640
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 641
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 642
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 643
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 644
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 645
    iget-object v7, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 637
    .end local v6    # "moveInfo":Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 635
    .end local v4    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;>;"
    .end local v5    # "j":I
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 651
    .end local v1    # "i":I
    :cond_8
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_5
    if-ltz v1, :cond_a

    .line 652
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 653
    .local v2, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 654
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 655
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 656
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 657
    iget-object v4, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 651
    .end local v2    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 663
    .end local v1    # "i":I
    :cond_a
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 668
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 673
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 678
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchFinishedWhenDone()V

    .line 683
    return-void
.end method

.method public endAnimations()V
    .locals 11

    .line 713
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 714
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 715
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;

    .line 716
    .local v3, "item":Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;
    iget-object v4, v3, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 717
    .local v4, "view":Landroid/view/View;
    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 718
    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 719
    iget-object v2, v3, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 720
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 714
    .end local v3    # "item":Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 722
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 723
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 724
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 725
    .local v3, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 726
    iget-object v4, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 723
    .end local v3    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 728
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 729
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_2

    .line 730
    iget-object v4, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 731
    .local v4, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 732
    .local v5, "view":Landroid/view/View;
    invoke-static {v5, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 733
    invoke-virtual {p0, v4}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 734
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 729
    .end local v4    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v5    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 736
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 737
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_3

    .line 738
    iget-object v4, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

    invoke-direct {p0, v4}, Lcom/telerik/widget/list/ListViewItemAnimator;->endChangeAnimationIfNecessary(Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;)V

    .line 737
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 740
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 741
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 742
    return-void

    .line 745
    :cond_4
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 746
    .local v1, "listCount":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_4
    if-ltz v4, :cond_7

    .line 747
    iget-object v5, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 748
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 749
    add-int/lit8 v6, v0, -0x1

    .local v6, "j":I
    :goto_5
    if-ltz v6, :cond_6

    .line 750
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;

    .line 751
    .local v7, "moveInfo":Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;
    iget-object v8, v7, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 752
    .local v8, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 753
    .local v9, "view":Landroid/view/View;
    invoke-static {v9, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 754
    invoke-static {v9, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 755
    iget-object v10, v7, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v10}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 756
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 757
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 758
    iget-object v10, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 749
    .end local v7    # "moveInfo":Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;
    .end local v8    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v9    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 746
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;>;"
    .end local v6    # "j":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 762
    .end local v4    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 763
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_a

    .line 764
    iget-object v4, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 765
    .local v4, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 766
    add-int/lit8 v5, v0, -0x1

    .local v5, "j":I
    :goto_7
    if-ltz v5, :cond_9

    .line 767
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 768
    .local v6, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 769
    .local v7, "view":Landroid/view/View;
    invoke-static {v7, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 770
    invoke-virtual {p0, v6}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 771
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 772
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 773
    iget-object v8, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 766
    .end local v6    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v7    # "view":Landroid/view/View;
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 763
    .end local v4    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    .end local v5    # "j":I
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 777
    .end local v2    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 778
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_8
    if-ltz v2, :cond_d

    .line 779
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 780
    .local v3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 781
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_9
    if-ltz v4, :cond_c

    .line 782
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

    invoke-direct {p0, v5}, Lcom/telerik/widget/list/ListViewItemAnimator;->endChangeAnimationIfNecessary(Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;)V

    .line 783
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 784
    iget-object v5, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 781
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 778
    .end local v3    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;>;"
    .end local v4    # "j":I
    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 789
    .end local v2    # "i":I
    :cond_d
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/ListViewItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 790
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/ListViewItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 791
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/ListViewItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 792
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/ListViewItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 794
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchAnimationsFinished()V

    .line 795
    return-void
.end method

.method public getType()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->type:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 688
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 689
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 690
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 691
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 692
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 693
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 694
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 695
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 696
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 697
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 687
    :goto_1
    return v0
.end method

.method protected onAnimationAddCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 400
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 401
    return-void
.end method

.method protected onAnimationAddEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "animation"    # Landroidx/core/view/ViewPropertyAnimatorCompat;
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 404
    if-eqz p1, :cond_0

    .line 405
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 407
    :cond_0
    invoke-virtual {p0, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 408
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchFinishedWhenDone()V

    .line 410
    return-void
.end method

.method protected onAnimationAddStarted(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 396
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 397
    return-void
.end method

.method protected onAnimationRemoveCancelled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 318
    return-void
.end method

.method protected onAnimationRemoveEnded(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "animation"    # Landroidx/core/view/ViewPropertyAnimatorCompat;
    .param p2, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 321
    if-eqz p1, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 324
    :cond_0
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 325
    invoke-virtual {p0, p2}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 326
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchFinishedWhenDone()V

    .line 328
    return-void
.end method

.method protected onAnimationRemoveStarted(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 314
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 315
    return-void
.end method

.method public onAttached(Lcom/telerik/widget/list/RadListView;)V
    .locals 0
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 58
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->owner:Lcom/telerik/widget/list/RadListView;

    .line 59
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->initAppearedViewsList()V

    .line 60
    return-void
.end method

.method public onDetached(Lcom/telerik/widget/list/RadListView;)V
    .locals 1
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->owner:Lcom/telerik/widget/list/RadListView;

    .line 80
    iput-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->alreadyAppearedViews:Ljava/util/HashSet;

    .line 81
    return-void
.end method

.method protected onEndAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 601
    return-void
.end method

.method public onMeasure()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->alreadyAppearedViews:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->initAppearedViewsList()V

    .line 90
    :cond_0
    return-void
.end method

.method protected removeAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 4
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 331
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 332
    .local v0, "animatedView":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 333
    .local v1, "animation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    nop

    .line 334
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 335
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 336
    .local v2, "removeAnimation":Landroidx/core/view/ViewPropertyAnimatorCompat;
    return-object v2
.end method

.method public runPendingAnimations()V
    .locals 15

    .line 168
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 169
    .local v0, "removalsPending":Z
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 170
    .local v1, "movesPending":Z
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 171
    .local v2, "changesPending":Z
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 172
    .local v3, "additionsPending":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 174
    return-void

    .line 177
    :cond_0
    iget-object v4, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 178
    .local v5, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, v5}, Lcom/telerik/widget/list/ListViewItemAnimator;->isViewDisappearing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 179
    invoke-virtual {p0, v5}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewDisappearedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {p0, v5}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateViewRemovedImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 182
    iget-object v6, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->alreadyAppearedViews:Ljava/util/HashSet;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 184
    .end local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_1
    goto :goto_0

    .line 185
    :cond_2
    iget-object v4, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 187
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 188
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;>;"
    iget-object v6, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    iget-object v6, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v6, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 192
    new-instance v6, Lcom/telerik/widget/list/ListViewItemAnimator$1;

    invoke-direct {v6, p0, v5}, Lcom/telerik/widget/list/ListViewItemAnimator$1;-><init>(Lcom/telerik/widget/list/ListViewItemAnimator;Ljava/util/ArrayList;)V

    .line 203
    .local v6, "mover":Ljava/lang/Runnable;
    if-eqz v0, :cond_3

    .line 204
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;

    iget-object v7, v7, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 205
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    invoke-static {v7, v6, v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 206
    .end local v7    # "view":Landroid/view/View;
    goto :goto_2

    .line 207
    :cond_3
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 211
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;>;"
    .end local v6    # "mover":Ljava/lang/Runnable;
    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    .line 212
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v5, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;>;"
    iget-object v6, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v6, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v6, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 216
    new-instance v6, Lcom/telerik/widget/list/ListViewItemAnimator$2;

    invoke-direct {v6, p0, v5}, Lcom/telerik/widget/list/ListViewItemAnimator$2;-><init>(Lcom/telerik/widget/list/ListViewItemAnimator;Ljava/util/ArrayList;)V

    .line 226
    .local v6, "changer":Ljava/lang/Runnable;
    if-eqz v0, :cond_5

    .line 227
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

    iget-object v7, v7, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 228
    .local v7, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    invoke-static {v8, v6, v9, v10}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 229
    .end local v7    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    goto :goto_3

    .line 230
    :cond_5
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 234
    .end local v5    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;>;"
    .end local v6    # "changer":Ljava/lang/Runnable;
    :cond_6
    :goto_3
    if-eqz v3, :cond_c

    .line 235
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    iget-object v6, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v6, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v6, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 239
    new-instance v6, Lcom/telerik/widget/list/ListViewItemAnimator$3;

    invoke-direct {v6, p0, v5}, Lcom/telerik/widget/list/ListViewItemAnimator$3;-><init>(Lcom/telerik/widget/list/ListViewItemAnimator;Ljava/util/ArrayList;)V

    .line 253
    .local v6, "adder":Ljava/lang/Runnable;
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    if-eqz v2, :cond_7

    goto :goto_4

    .line 261
    :cond_7
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    .line 254
    :cond_8
    :goto_4
    const-wide/16 v7, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    goto :goto_5

    :cond_9
    move-wide v9, v7

    .line 255
    .local v9, "removeDuration":J
    :goto_5
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->getMoveDuration()J

    move-result-wide v11

    goto :goto_6

    :cond_a
    move-wide v11, v7

    .line 256
    .local v11, "moveDuration":J
    :goto_6
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->getChangeDuration()J

    move-result-wide v7

    .line 257
    .local v7, "changeDuration":J
    :cond_b
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    add-long/2addr v13, v9

    .line 258
    .local v13, "totalDelay":J
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 259
    .local v4, "view":Landroid/view/View;
    invoke-static {v4, v6, v13, v14}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 264
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    .end local v6    # "adder":Ljava/lang/Runnable;
    .end local v7    # "changeDuration":J
    .end local v9    # "removeDuration":J
    .end local v11    # "moveDuration":J
    .end local v13    # "totalDelay":J
    :cond_c
    :goto_7
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 67
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must be one of ADD, REMOVE or ADD | REMOVE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    :goto_0
    iput p1, p0, Lcom/telerik/widget/list/ListViewItemAnimator;->type:I

    .line 71
    return-void
.end method
