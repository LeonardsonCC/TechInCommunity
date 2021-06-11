.class public Lcom/telerik/widget/list/SelectionBehavior;
.super Lcom/telerik/widget/list/ListViewBehavior;
.source "SelectionBehavior.java"

# interfaces
.implements Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;
.implements Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;
.implements Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;,
        Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;,
        Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    }
.end annotation


# instance fields
.field private adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

.field private handleGestures:Z

.field private isAttached:Z

.field private isSelectionInProgress:Z

.field private itemPostionOnHold:I

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectionMode:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

.field private selectionOnLongPress:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

.field private selectionOnTouch:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewBehavior;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->listeners:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;->MULTIPLE:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    iput-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionMode:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    .line 19
    sget-object v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->AFTER_START:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    iput-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionOnTouch:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    .line 20
    sget-object v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->ALWAYS:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    iput-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionOnLongPress:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    .line 22
    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isAttached:Z

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->handleGestures:Z

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->itemPostionOnHold:I

    .line 31
    return-void
.end method

.method private findViewByCoordinates(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 439
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/telerik/widget/list/RadListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private handleLongPress(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pressedView"    # Landroid/view/View;

    .line 272
    iget-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->handleGestures:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 273
    return v1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionOnLongPress:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    sget-object v2, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->NEVER:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionOnLongPress:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    sget-object v2, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->AFTER_START:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 280
    :cond_1
    if-nez p2, :cond_2

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/telerik/widget/list/SelectionBehavior;->findViewByCoordinates(FF)Landroid/view/View;

    move-result-object p2

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 284
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SelectionBehavior;->isPositionValid(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SelectionBehavior;->changeIsSelected(I)V

    .line 286
    const/4 v1, 0x1

    return v1

    .line 288
    :cond_3
    return v1

    .line 278
    .end local v0    # "position":I
    :cond_4
    :goto_0
    return v1
.end method

.method private handleShortPress(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pressedView"    # Landroid/view/View;

    .line 304
    iget-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->handleGestures:Z

    if-nez v0, :cond_0

    .line 305
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionOnTouch:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    sget-object v1, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->NEVER:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionOnTouch:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    sget-object v1, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->AFTER_START:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    if-nez p2, :cond_2

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/telerik/widget/list/SelectionBehavior;->findViewByCoordinates(FF)Landroid/view/View;

    move-result-object p2

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 316
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SelectionBehavior;->isPositionValid(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SelectionBehavior;->changeIsSelected(I)V

    .line 319
    :cond_3
    return-void

    .line 310
    .end local v0    # "position":I
    :cond_4
    :goto_0
    return-void
.end method

.method private isIndexSelected(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 453
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/SelectionBehavior;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x0

    return v0

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 457
    .local v0, "adapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/telerik/android/data/SelectionAdapter;->isIndexSelected(I)Z

    move-result v1

    return v1
.end method

.method private isPositionValid(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 443
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 444
    return v1

    .line 446
    :cond_0
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 449
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 447
    :cond_2
    :goto_0
    return v1
.end method

.method private stopSelectionMode(Z)V
    .locals 3
    .param p1, "notifySelectionService"    # Z

    .line 499
    iget-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    if-nez v0, :cond_0

    .line 500
    return-void

    .line 503
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    .line 504
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 505
    return-void

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 509
    .local v0, "adapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    if-eqz p1, :cond_2

    .line 510
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/telerik/android/data/SelectionAdapter;->clearSelection()V

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/telerik/widget/list/SelectionBehavior;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 513
    .local v2, "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    invoke-interface {v2}, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;->onSelectionEnded()V

    .line 514
    .end local v2    # "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    goto :goto_0

    .line 515
    :cond_3
    if-eqz p1, :cond_4

    .line 516
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->notifyDataSetChanged()V

    .line 518
    :cond_4
    return-void
.end method

.method private toggleSelectionCore(ILcom/telerik/widget/list/ListViewAdapterBase;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "adapter"    # Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 491
    invoke-virtual {p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/telerik/android/data/SelectionAdapter;->isIndexSelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/telerik/android/data/SelectionAdapter;->deselectIndex(I)V

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p2}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/telerik/android/data/SelectionAdapter;->selectIndex(I)V

    .line 496
    :goto_0
    return-void
.end method

.method private updateOwnerSelectionMode()V
    .locals 3

    .line 426
    iget-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isAttached:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 431
    .local v0, "adapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    iget-object v1, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionMode:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    sget-object v2, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;->SINGLE:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    if-ne v1, v2, :cond_1

    .line 432
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v1

    sget-object v2, Lcom/telerik/android/data/SelectionMode;->SINGLE:Lcom/telerik/android/data/SelectionMode;

    invoke-interface {v1, v2}, Lcom/telerik/android/data/SelectionAdapter;->setSelectionMode(Lcom/telerik/android/data/SelectionMode;)V

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v1

    sget-object v2, Lcom/telerik/android/data/SelectionMode;->MULTIPLE:Lcom/telerik/android/data/SelectionMode;

    invoke-interface {v1, v2}, Lcom/telerik/android/data/SelectionAdapter;->setSelectionMode(Lcom/telerik/android/data/SelectionMode;)V

    .line 436
    :goto_0
    return-void

    .line 427
    .end local v0    # "adapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 131
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/telerik/android/data/SelectionAdapter;->addListener(Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;)V

    .line 135
    :cond_0
    return-void
.end method

.method public changeIsSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .line 245
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SelectionBehavior;->getIsSelected(I)Z

    move-result v0

    .line 246
    .local v0, "oldValue":Z
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 247
    .local v1, "adapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {v1, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->canSelect(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v1, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->canDeselect(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    if-ltz p1, :cond_2

    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->startSelection()V

    .line 254
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/telerik/widget/list/SelectionBehavior;->changeSelectionState(IZ)V

    .line 255
    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/telerik/android/data/SelectionAdapter;->selectedItemsSize()I

    move-result v2

    if-nez v2, :cond_2

    .line 256
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/telerik/widget/list/SelectionBehavior;->stopSelectionMode(Z)V

    .line 259
    :cond_2
    return-void

    .line 250
    :cond_3
    :goto_0
    return-void
.end method

.method public changeIsSelected(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .line 238
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SelectionBehavior;->getIsSelected(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SelectionBehavior;->changeIsSelected(I)V

    .line 242
    return-void
.end method

.method changeSelectionState(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "skipCheck"    # Z

    .line 461
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 462
    .local v0, "adapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/SelectionBehavior;->isIndexSelected(I)Z

    move-result v1

    .line 463
    .local v1, "oldValue":Z
    if-nez p2, :cond_2

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->canSelect(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 464
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->canDeselect(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 465
    :cond_1
    return-void

    .line 468
    :cond_2
    const/4 v2, -0x1

    .line 469
    .local v2, "oldSelectionPosition":I
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/telerik/android/data/SelectionAdapter;->getSelectionMode()Lcom/telerik/android/data/SelectionMode;

    move-result-object v3

    sget-object v4, Lcom/telerik/android/data/SelectionMode;->SINGLE:Lcom/telerik/android/data/SelectionMode;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    .line 470
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/telerik/android/data/SelectionAdapter;->selectedItemsSize()I

    move-result v3

    if-lez v3, :cond_3

    .line 471
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/telerik/android/data/SelectionAdapter;->getSelectedIndices()[I

    move-result-object v3

    aget v2, v3, v5

    .line 474
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/SelectionBehavior;->toggleSelectionCore(ILcom/telerik/widget/list/ListViewAdapterBase;)V

    .line 476
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    .line 477
    .local v3, "itemsInLayout":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_6

    .line 478
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 479
    .local v6, "view":Landroid/view/View;
    const/4 v7, -0x1

    if-eq v2, v7, :cond_4

    .line 480
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v7

    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getPositionInOriginalAdapter(I)I

    move-result v7

    if-ne v7, v2, :cond_4

    .line 481
    invoke-virtual {v6, v5}, Landroid/view/View;->setSelected(Z)V

    .line 484
    :cond_4
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v7

    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getPositionInOriginalAdapter(I)I

    move-result v7

    if-ne v7, p1, :cond_5

    .line 485
    xor-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 477
    .end local v6    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 488
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method public endSelection()V
    .locals 1

    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SelectionBehavior;->stopSelectionMode(Z)V

    .line 154
    return-void
.end method

.method public getIsSelected(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 230
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 231
    .local v0, "adapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/SelectionBehavior;->isIndexSelected(I)Z

    move-result v1

    return v1

    .line 234
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getSelectedItemsSize()I
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/telerik/android/data/SelectionAdapter;->selectedItemsSize()I

    move-result v0

    return v0
.end method

.method public getSelectionMode()Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionMode:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    return-object v0
.end method

.method public getSelectionOnLongPress()Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionOnLongPress:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    return-object v0
.end method

.method public getSelectionOnTouch()Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionOnTouch:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    return-object v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    return v0
.end method

.method onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 323
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 325
    .local v1, "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    iget-object v2, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v2}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/telerik/android/data/SelectionAdapter;->removeListener(Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;)V

    .line 326
    .end local v1    # "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    goto :goto_0

    .line 327
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 329
    :cond_1
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V

    .line 330
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 331
    iput-object p1, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 332
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 333
    .restart local v1    # "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    iget-object v2, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v2}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/telerik/android/data/SelectionAdapter;->addListener(Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;)V

    .line 334
    .end local v1    # "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    goto :goto_1

    .line 336
    :cond_2
    iget-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    if-eqz v0, :cond_3

    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/SelectionBehavior;->stopSelectionMode(Z)V

    .line 339
    :cond_3
    invoke-direct {p0}, Lcom/telerik/widget/list/SelectionBehavior;->updateOwnerSelectionMode()V

    .line 340
    iget-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->getSelectedItemsSize()I

    move-result v0

    if-lez v0, :cond_4

    .line 341
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->startSelection()V

    .line 343
    :cond_4
    return-void
.end method

.method public onAttached(Lcom/telerik/widget/list/RadListView;)V
    .locals 3
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 347
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 349
    .local v1, "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    iget-object v2, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v2}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/telerik/android/data/SelectionAdapter;->removeListener(Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;)V

    .line 350
    .end local v1    # "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    goto :goto_0

    .line 351
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 353
    :cond_1
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAttached(Lcom/telerik/widget/list/RadListView;)V

    .line 354
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 355
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    iput-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 356
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 357
    .restart local v1    # "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    iget-object v2, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v2}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/telerik/android/data/SelectionAdapter;->addListener(Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;)V

    .line 358
    .end local v1    # "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    goto :goto_1

    .line 360
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isAttached:Z

    .line 361
    invoke-direct {p0}, Lcom/telerik/widget/list/SelectionBehavior;->updateOwnerSelectionMode()V

    .line 362
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "pressedView"    # Landroid/view/View;

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/telerik/widget/list/SelectionBehavior;->handleShortPress(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 294
    return-void
.end method

.method public onDetached(Lcom/telerik/widget/list/RadListView;)V
    .locals 3
    .param p1, "owner"    # Lcom/telerik/widget/list/RadListView;

    .line 366
    iget-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->endSelection()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v0

    sget-object v1, Lcom/telerik/android/data/SelectionMode;->NONE:Lcom/telerik/android/data/SelectionMode;

    invoke-interface {v0, v1}, Lcom/telerik/android/data/SelectionAdapter;->setSelectionMode(Lcom/telerik/android/data/SelectionMode;)V

    .line 371
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 372
    .local v1, "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    iget-object v2, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v2}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/telerik/android/data/SelectionAdapter;->removeListener(Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;)V

    .line 373
    .end local v1    # "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    goto :goto_0

    .line 374
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 376
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isAttached:Z

    .line 377
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onDetached(Lcom/telerik/widget/list/RadListView;)V

    .line 378
    return-void
.end method

.method public onExecuteFinished(I)V
    .locals 1
    .param p1, "position"    # I

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->handleGestures:Z

    .line 222
    return-void
.end method

.method public onExecuteFinished(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;)V
    .locals 1
    .param p1, "eventInfo"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->handleGestures:Z

    .line 204
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "pressedView"    # Landroid/view/View;

    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/telerik/widget/list/SelectionBehavior;->handleLongPress(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/SelectionBehavior;->handleLongPress(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 269
    return-void
.end method

.method public onReorderFinished()V
    .locals 2

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->handleGestures:Z

    .line 174
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionOnLongPress:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    sget-object v1, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->NEVER:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionOnLongPress:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    sget-object v1, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->AFTER_START:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->itemPostionOnHold:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 179
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/SelectionBehavior;->changeIsSelected(I)V

    .line 181
    :cond_1
    return-void

    .line 176
    :cond_2
    :goto_0
    return-void
.end method

.method public onReorderItem(II)V
    .locals 1
    .param p1, "positionFrom"    # I
    .param p2, "positionTo"    # I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->itemPostionOnHold:I

    .line 169
    return-void
.end method

.method public onReorderStarted(I)V
    .locals 1
    .param p1, "position"    # I

    .line 162
    iput p1, p0, Lcom/telerik/widget/list/SelectionBehavior;->itemPostionOnHold:I

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->handleGestures:Z

    .line 164
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 396
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 397
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 398
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "selectionInProgress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 399
    .local v1, "isInProgress":Z
    if-nez v1, :cond_0

    .line 400
    return-void

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->startSelection()V

    .line 403
    const-string v2, "selection"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 404
    .local v2, "positions":[I
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, v2, v5

    .line 405
    .local v6, "position":I
    invoke-virtual {p0, v6, v4}, Lcom/telerik/widget/list/SelectionBehavior;->changeSelectionState(IZ)V

    .line 404
    .end local v6    # "position":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "isInProgress":Z
    .end local v2    # "positions":[I
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 382
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 383
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 384
    .local v0, "bundle":Landroid/os/Bundle;
    iget-boolean v1, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    const-string v2, "selectionInProgress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    iget-boolean v1, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    if-nez v1, :cond_0

    .line 386
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/telerik/android/data/SelectionAdapter;->getSelectedIndices()[I

    move-result-object v1

    .line 389
    .local v1, "positions":[I
    const-string v2, "selection"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 390
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/telerik/widget/list/SelectionBehavior;->stopSelectionMode(Z)V

    .line 392
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "positions":[I
    :cond_1
    return-void
.end method

.method public onSwipeEnded(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "finalOffset"    # I

    .line 217
    return-void
.end method

.method public onSwipeEnded(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;)V
    .locals 0
    .param p1, "eventInfo"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;

    .line 194
    return-void
.end method

.method public onSwipeProgressChanged(IILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "currentOffset"    # I
    .param p3, "swipeContent"    # Landroid/view/View;

    .line 213
    return-void
.end method

.method public onSwipeProgressChanged(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;)V
    .locals 0
    .param p1, "eventInfo"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;

    .line 190
    return-void
.end method

.method public onSwipeStarted(I)V
    .locals 1
    .param p1, "position"    # I

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->handleGestures:Z

    .line 209
    return-void
.end method

.method public onSwipeStarted(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;)V
    .locals 1
    .param p1, "eventInfo"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionEvent;

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->handleGestures:Z

    .line 186
    return-void
.end method

.method public onSwipeStateChanged(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;)V
    .locals 0
    .param p1, "oldState"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;
    .param p2, "newState"    # Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    .line 199
    return-void
.end method

.method public onTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 298
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 299
    .local v0, "result":Z
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/telerik/widget/list/SelectionBehavior;->handleShortPress(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 300
    return v0
.end method

.method public removeListener(Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 143
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->adapterBase:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/telerik/android/data/SelectionAdapter;->removeListener(Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;)V

    .line 147
    :cond_0
    return-void
.end method

.method public selectedItems()Ljava/util/List;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/telerik/android/data/SelectionAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setSelectionMode(Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;)V
    .locals 1
    .param p1, "selectionMode"    # Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    .line 115
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionMode:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    if-ne v0, p1, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/telerik/widget/list/SelectionBehavior;->endSelection()V

    .line 121
    :cond_1
    iput-object p1, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionMode:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    .line 122
    invoke-direct {p0}, Lcom/telerik/widget/list/SelectionBehavior;->updateOwnerSelectionMode()V

    .line 123
    return-void
.end method

.method public setSelectionOnLongPress(Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;)V
    .locals 0
    .param p1, "selectionOnLongPress"    # Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    .line 95
    iput-object p1, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionOnLongPress:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    .line 96
    return-void
.end method

.method public setSelectionOnTouch(Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;)V
    .locals 0
    .param p1, "selectionOnTouch"    # Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    .line 73
    iput-object p1, p0, Lcom/telerik/widget/list/SelectionBehavior;->selectionOnTouch:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    .line 74
    return-void
.end method

.method protected startSelection()V
    .locals 2

    .line 415
    iget-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    if-eqz v0, :cond_0

    .line 416
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->isSelectionInProgress:Z

    .line 420
    iget-object v0, p0, Lcom/telerik/widget/list/SelectionBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;

    .line 421
    .local v1, "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    invoke-interface {v1}, Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;->onSelectionStarted()V

    .line 422
    .end local v1    # "listener":Lcom/telerik/widget/list/SelectionBehavior$SelectionChangedListener;
    goto :goto_0

    .line 423
    :cond_1
    return-void
.end method
