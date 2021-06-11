.class public Lcom/telerik/widget/list/RadListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RadListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;,
        Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;,
        Lcom/telerik/widget/list/RadListView$ItemClickListener;
    }
.end annotation


# static fields
.field static final SCROLL_DIRECTION_DOWN:I = 0x4

.field static final SCROLL_DIRECTION_LEFT:I = 0x1

.field static final SCROLL_DIRECTION_NONE:I = 0x0

.field static final SCROLL_DIRECTION_RIGHT:I = 0x3

.field static final SCROLL_DIRECTION_UP:I = 0x2


# instance fields
.field private actionOnPressed:Ljava/lang/Runnable;

.field private behaviors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/ListViewBehavior;",
            ">;"
        }
    .end annotation
.end field

.field currentHeightMode:I

.field currentWidthMode:I

.field private emptyContent:Landroid/view/View;

.field private footerView:Landroid/view/View;

.field private gestureListener:Lcom/telerik/widget/list/ListViewGestureListener;

.field private headerView:Landroid/view/View;

.field private isEmptyChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private isEmptyContentEnabled:Z

.field private itemClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/RadListView$ItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private pressedView:Landroid/view/View;

.field private stateToSave:I

.field private wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/RadListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/telerik/widget/list/RadListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/RadListView;->itemClickListeners:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/RadListView;->isEmptyChangedListeners:Ljava/util/List;

    .line 91
    new-instance v0, Lcom/telerik/widget/list/ListViewGestureListener;

    invoke-direct {v0, p1, p0}, Lcom/telerik/widget/list/ListViewGestureListener;-><init>(Landroid/content/Context;Lcom/telerik/widget/list/RadListView;)V

    iput-object v0, p0, Lcom/telerik/widget/list/RadListView;->gestureListener:Lcom/telerik/widget/list/ListViewGestureListener;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    .line 95
    new-instance v0, Lcom/telerik/widget/list/RadListView$1;

    invoke-direct {v0, p0}, Lcom/telerik/widget/list/RadListView$1;-><init>(Lcom/telerik/widget/list/RadListView;)V

    iput-object v0, p0, Lcom/telerik/widget/list/RadListView;->actionOnPressed:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/RadListView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 107
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/RadListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/telerik/widget/list/RadListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/widget/list/RadListView;

    .line 33
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->pressedView:Landroid/view/View;

    return-object v0
.end method

.method private addListenersForBehavior(Lcom/telerik/widget/list/ListViewBehavior;)V
    .locals 4
    .param p1, "behavior"    # Lcom/telerik/widget/list/ListViewBehavior;

    .line 242
    instance-of v0, p1, Lcom/telerik/widget/list/SelectionBehavior;

    if-eqz v0, :cond_3

    .line 243
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/list/SelectionBehavior;

    .line 244
    .local v0, "selectionBehavior":Lcom/telerik/widget/list/SelectionBehavior;
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 245
    .local v2, "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    instance-of v3, v2, Lcom/telerik/widget/list/ItemReorderBehavior;

    if-eqz v3, :cond_0

    .line 246
    move-object v3, v2

    check-cast v3, Lcom/telerik/widget/list/ItemReorderBehavior;

    invoke-virtual {v3, v0}, Lcom/telerik/widget/list/ItemReorderBehavior;->addListener(Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;)V

    .line 248
    :cond_0
    instance-of v3, v2, Lcom/telerik/widget/list/SwipeExecuteBehavior;

    if-eqz v3, :cond_1

    .line 249
    move-object v3, v2

    check-cast v3, Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-virtual {v3, v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->addListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;)V

    .line 252
    :cond_1
    instance-of v3, v2, Lcom/telerik/widget/list/SwipeActionsBehavior;

    if-eqz v3, :cond_2

    .line 253
    move-object v3, v2

    check-cast v3, Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-virtual {v3, v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->addListener(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;)V

    .line 255
    .end local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_2
    goto :goto_0

    .line 258
    .end local v0    # "selectionBehavior":Lcom/telerik/widget/list/SelectionBehavior;
    :cond_3
    instance-of v0, p1, Lcom/telerik/widget/list/ItemReorderBehavior;

    if-eqz v0, :cond_5

    .line 259
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/list/ItemReorderBehavior;

    .line 260
    .local v0, "itemReorderBehavior":Lcom/telerik/widget/list/ItemReorderBehavior;
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 261
    .restart local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    instance-of v3, v2, Lcom/telerik/widget/list/SelectionBehavior;

    if-eqz v3, :cond_4

    .line 262
    move-object v3, v2

    check-cast v3, Lcom/telerik/widget/list/SelectionBehavior;

    invoke-virtual {v0, v3}, Lcom/telerik/widget/list/ItemReorderBehavior;->addListener(Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;)V

    .line 264
    .end local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_4
    goto :goto_1

    .line 266
    .end local v0    # "itemReorderBehavior":Lcom/telerik/widget/list/ItemReorderBehavior;
    :cond_5
    instance-of v0, p1, Lcom/telerik/widget/list/SwipeExecuteBehavior;

    if-eqz v0, :cond_7

    .line 267
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 268
    .local v0, "swipeExecuteBehavior":Lcom/telerik/widget/list/SwipeExecuteBehavior;
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 269
    .restart local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    instance-of v3, v2, Lcom/telerik/widget/list/SelectionBehavior;

    if-eqz v3, :cond_6

    .line 270
    move-object v3, v2

    check-cast v3, Lcom/telerik/widget/list/SelectionBehavior;

    invoke-virtual {v0, v3}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->addListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;)V

    .line 272
    .end local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_6
    goto :goto_2

    .line 275
    .end local v0    # "swipeExecuteBehavior":Lcom/telerik/widget/list/SwipeExecuteBehavior;
    :cond_7
    instance-of v0, p1, Lcom/telerik/widget/list/SwipeActionsBehavior;

    if-eqz v0, :cond_9

    .line 276
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/list/SwipeActionsBehavior;

    .line 277
    .local v0, "swipeExecuteBehavior":Lcom/telerik/widget/list/SwipeActionsBehavior;
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 278
    .restart local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    instance-of v3, v2, Lcom/telerik/widget/list/SelectionBehavior;

    if-eqz v3, :cond_8

    .line 279
    move-object v3, v2

    check-cast v3, Lcom/telerik/widget/list/SelectionBehavior;

    invoke-virtual {v0, v3}, Lcom/telerik/widget/list/SwipeActionsBehavior;->addListener(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;)V

    .line 281
    .end local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_8
    goto :goto_3

    .line 283
    .end local v0    # "swipeExecuteBehavior":Lcom/telerik/widget/list/SwipeActionsBehavior;
    :cond_9
    return-void
.end method

.method private canScrollDown()Z
    .locals 6

    .line 808
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->computeVerticalScrollExtent()I

    move-result v0

    .line 809
    .local v0, "verticalScrollExtent":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->computeVerticalScrollOffset()I

    move-result v1

    .line 810
    .local v1, "verticalScrollOffset":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->computeVerticalScrollRange()I

    move-result v2

    .line 811
    .local v2, "verticalScrollRange":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    instance-of v3, v3, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 812
    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 814
    :cond_1
    add-int v3, v1, v0

    if-ge v3, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method private canScrollLeft()Z
    .locals 2

    .line 786
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 787
    .local v0, "horizontalScrollOffset":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private canScrollRight()Z
    .locals 4

    .line 801
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->computeHorizontalScrollExtent()I

    move-result v0

    .line 802
    .local v0, "horizontalScrollExtent":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 803
    .local v1, "horizontalScrollOffset":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->computeHorizontalScrollRange()I

    move-result v2

    .line 804
    .local v2, "horizontalScrollRange":I
    add-int v3, v1, v0

    if-ge v3, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private canScrollUp()Z
    .locals 6

    .line 791
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->computeVerticalScrollOffset()I

    move-result v0

    .line 792
    .local v0, "verticalScrollOffset":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->computeVerticalScrollExtent()I

    move-result v1

    .line 794
    .local v1, "verticalScrollExtent":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->computeVerticalScrollRange()I

    move-result v4

    .line 795
    .local v4, "verticalScrollRange":I
    add-int v5, v0, v1

    if-ge v5, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 797
    .end local v1    # "verticalScrollExtent":I
    .end local v4    # "verticalScrollRange":I
    :cond_1
    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private createDefaultEmptyContentView()Landroid/view/View;
    .locals 3

    .line 402
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 403
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/telerik/widget/list/R$layout;->simple_empty_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 404
    .local v1, "emptyContent":Landroid/view/View;
    return-object v1
.end method

.method private ensureCompatible(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/telerik/widget/list/ListViewBehavior;)V
    .locals 2
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "behavior"    # Lcom/telerik/widget/list/ListViewBehavior;

    .line 224
    instance-of v0, p1, Lcom/telerik/widget/list/SlideLayoutManager;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/telerik/widget/list/ItemReorderBehavior;

    if-nez v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SlideLayoutManager currently doesn\'t support ItemReorderBehavior."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/telerik/widget/list/ItemReorderBehavior;

    if-nez v0, :cond_2

    goto :goto_1

    .line 228
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DeckOfCardsLayoutManager currently doesn\'t support ItemReorderBehavior."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_3
    :goto_1
    instance-of v0, p1, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/telerik/widget/list/SwipeRefreshBehavior;

    if-nez v0, :cond_4

    goto :goto_2

    .line 231
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DeckOfCardsLayoutManager currently doesn\'t support SwipeRefreshBehavior."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_5
    :goto_2
    instance-of v0, p1, Lcom/telerik/widget/list/WrapLayoutManager;

    if-eqz v0, :cond_7

    instance-of v0, p2, Lcom/telerik/widget/list/ItemReorderBehavior;

    if-nez v0, :cond_6

    goto :goto_3

    .line 234
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WrapLayoutManager currently doesn\'t support ItemReorderBehavior."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_7
    :goto_3
    instance-of v0, p1, Lcom/telerik/widget/list/WrapLayoutManager;

    if-eqz v0, :cond_9

    instance-of v0, p2, Lcom/telerik/widget/list/SwipeExecuteBehavior;

    if-nez v0, :cond_8

    goto :goto_4

    .line 237
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WrapLayoutManager currently doesn\'t support SwipeExecuteBehavior."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_9
    :goto_4
    return-void
.end method

.method private removeListenersForBehavior(Lcom/telerik/widget/list/ListViewBehavior;)V
    .locals 4
    .param p1, "behavior"    # Lcom/telerik/widget/list/ListViewBehavior;

    .line 286
    instance-of v0, p1, Lcom/telerik/widget/list/SelectionBehavior;

    if-eqz v0, :cond_2

    .line 287
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/list/SelectionBehavior;

    .line 288
    .local v0, "selectionBehavior":Lcom/telerik/widget/list/SelectionBehavior;
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 289
    .local v2, "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    instance-of v3, v2, Lcom/telerik/widget/list/ItemReorderBehavior;

    if-eqz v3, :cond_0

    .line 290
    move-object v3, v2

    check-cast v3, Lcom/telerik/widget/list/ItemReorderBehavior;

    invoke-virtual {v3, v0}, Lcom/telerik/widget/list/ItemReorderBehavior;->removeListener(Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;)V

    .line 292
    :cond_0
    instance-of v3, v2, Lcom/telerik/widget/list/SwipeExecuteBehavior;

    if-eqz v3, :cond_1

    .line 293
    move-object v3, v2

    check-cast v3, Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-virtual {v3, v0}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->removeListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;)V

    .line 295
    .end local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_1
    goto :goto_0

    .line 297
    .end local v0    # "selectionBehavior":Lcom/telerik/widget/list/SelectionBehavior;
    :cond_2
    instance-of v0, p1, Lcom/telerik/widget/list/ItemReorderBehavior;

    if-eqz v0, :cond_4

    .line 298
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/list/ItemReorderBehavior;

    .line 299
    .local v0, "itemReorderBehavior":Lcom/telerik/widget/list/ItemReorderBehavior;
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 300
    .restart local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    instance-of v3, v2, Lcom/telerik/widget/list/SelectionBehavior;

    if-eqz v3, :cond_3

    .line 301
    move-object v3, v2

    check-cast v3, Lcom/telerik/widget/list/SelectionBehavior;

    invoke-virtual {v0, v3}, Lcom/telerik/widget/list/ItemReorderBehavior;->removeListener(Lcom/telerik/widget/list/ItemReorderBehavior$ItemReorderListener;)V

    .line 303
    .end local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_3
    goto :goto_1

    .line 305
    .end local v0    # "itemReorderBehavior":Lcom/telerik/widget/list/ItemReorderBehavior;
    :cond_4
    instance-of v0, p1, Lcom/telerik/widget/list/SwipeExecuteBehavior;

    if-eqz v0, :cond_6

    .line 306
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 307
    .local v0, "swipeExecuteBehavior":Lcom/telerik/widget/list/SwipeExecuteBehavior;
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 308
    .restart local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    instance-of v3, v2, Lcom/telerik/widget/list/SelectionBehavior;

    if-eqz v3, :cond_5

    .line 309
    move-object v3, v2

    check-cast v3, Lcom/telerik/widget/list/SelectionBehavior;

    invoke-virtual {v0, v3}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->removeListener(Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeExecuteListener;)V

    .line 311
    .end local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_5
    goto :goto_2

    .line 313
    .end local v0    # "swipeExecuteBehavior":Lcom/telerik/widget/list/SwipeExecuteBehavior;
    :cond_6
    instance-of v0, p1, Lcom/telerik/widget/list/SwipeActionsBehavior;

    if-eqz v0, :cond_8

    .line 314
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/list/SwipeActionsBehavior;

    .line 315
    .local v0, "swipeActionsBehavior":Lcom/telerik/widget/list/SwipeActionsBehavior;
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 316
    .restart local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    instance-of v3, v2, Lcom/telerik/widget/list/SelectionBehavior;

    if-eqz v3, :cond_7

    .line 317
    move-object v3, v2

    check-cast v3, Lcom/telerik/widget/list/SelectionBehavior;

    invoke-virtual {v0, v3}, Lcom/telerik/widget/list/SwipeActionsBehavior;->removeListener(Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsListener;)V

    .line 319
    .end local v2    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_7
    goto :goto_3

    .line 322
    .end local v0    # "swipeActionsBehavior":Lcom/telerik/widget/list/SwipeActionsBehavior;
    :cond_8
    return-void
.end method

.method private scrollToActualPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .line 850
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 851
    .local v0, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 852
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 854
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_1

    .line 855
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 857
    :cond_1
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 858
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 860
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 861
    return-void
.end method

.method private setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 3
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 818
    if-nez p1, :cond_0

    .line 819
    new-instance v0, Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-direct {v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    goto :goto_0

    .line 821
    :cond_0
    instance-of v0, p1, Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_7

    .line 824
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 826
    .local v0, "listViewAdapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    new-instance v1, Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-direct {v1, p0, v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;-><init>(Lcom/telerik/widget/list/RadListView;Lcom/telerik/widget/list/ListViewAdapterBase;)V

    iput-object v1, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 828
    .end local v0    # "listViewAdapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setOrientationHorizontal(Z)V

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->headerView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 833
    iget-object v1, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setHeader(Landroid/view/View;)V

    .line 835
    :cond_2
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->footerView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 836
    iget-object v1, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setFooter(Landroid/view/View;)V

    .line 838
    :cond_3
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->emptyContent:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 839
    iget-object v1, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setEmptyView(Landroid/view/View;)V

    .line 841
    :cond_4
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->isEmptyChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;

    .line 842
    .local v1, "listener":Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;
    iget-object v2, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v2, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->addIsEmptyChangedListener(Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;)V

    .line 843
    .end local v1    # "listener":Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;
    goto :goto_1

    .line 844
    :cond_5
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewBehavior;

    .line 845
    .local v1, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    iget-object v2, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v1, v2}, Lcom/telerik/widget/list/ListViewBehavior;->onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V

    .line 846
    .end local v1    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_2

    .line 847
    :cond_6
    return-void

    .line 822
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter should extend ListViewAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private sortBehaviors()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    new-instance v1, Lcom/telerik/widget/list/RadListView$2;

    invoke-direct {v1, p0}, Lcom/telerik/widget/list/RadListView$2;-><init>(Lcom/telerik/widget/list/RadListView;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 221
    return-void
.end method


# virtual methods
.method public addBehavior(Lcom/telerik/widget/list/ListViewBehavior;)V
    .locals 4
    .param p1, "behavior"    # Lcom/telerik/widget/list/ListViewBehavior;

    .line 184
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/telerik/widget/list/RadListView;->ensureCompatible(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/telerik/widget/list/ListViewBehavior;)V

    .line 186
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewBehavior;

    .line 187
    .local v1, "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 190
    .end local v1    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_0

    .line 188
    .restart local v1    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RadListView already contains a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    .end local v1    # "listViewBehavior":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_1
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/RadListView;->addListenersForBehavior(Lcom/telerik/widget/list/ListViewBehavior;)V

    .line 192
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-direct {p0}, Lcom/telerik/widget/list/RadListView;->sortBehaviors()V

    .line 194
    invoke-virtual {p1, p0}, Lcom/telerik/widget/list/ListViewBehavior;->onAttached(Lcom/telerik/widget/list/RadListView;)V

    .line 195
    return-void
.end method

.method public addIsEmptyChangedListener(Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;

    .line 134
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->isEmptyChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->addIsEmptyChangedListener(Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;)V

    .line 136
    return-void
.end method

.method public addItemClickListener(Lcom/telerik/widget/list/RadListView$ItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/RadListView$ItemClickListener;

    .line 116
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->itemClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method behaviors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/ListViewBehavior;",
            ">;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    return-object v0
.end method

.method canScroll(I)Z
    .locals 1
    .param p1, "direction"    # I

    .line 687
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 697
    const/4 v0, 0x0

    return v0

    .line 691
    :cond_0
    invoke-direct {p0}, Lcom/telerik/widget/list/RadListView;->canScrollDown()Z

    move-result v0

    return v0

    .line 695
    :cond_1
    invoke-direct {p0}, Lcom/telerik/widget/list/RadListView;->canScrollRight()Z

    move-result v0

    return v0

    .line 689
    :cond_2
    invoke-direct {p0}, Lcom/telerik/widget/list/RadListView;->canScrollUp()Z

    move-result v0

    return v0

    .line 693
    :cond_3
    invoke-direct {p0}, Lcom/telerik/widget/list/RadListView;->canScrollLeft()Z

    move-result v0

    return v0
.end method

.method public clearBehaviors()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewBehavior;

    .line 345
    .local v1, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-direct {p0, v1}, Lcom/telerik/widget/list/RadListView;->removeListenersForBehavior(Lcom/telerik/widget/list/ListViewBehavior;)V

    .line 346
    invoke-virtual {v1, p0}, Lcom/telerik/widget/list/ListViewBehavior;->onDetached(Lcom/telerik/widget/list/RadListView;)V

    .line 347
    .end local v1    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 633
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 635
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewBehavior;

    .line 636
    .local v1, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v1, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onDispatchDraw(Landroid/graphics/Canvas;)V

    .line 637
    .end local v1    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_0

    .line 638
    :cond_0
    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    if-nez v0, :cond_0

    .line 572
    const/4 v0, 0x0

    return-object v0

    .line 574
    :cond_0
    iget-object v0, v0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    return-object v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 546
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 547
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getPositionInOriginalAdapter(I)I

    move-result v0

    .line 550
    :cond_0
    return v0
.end method

.method public getEmptyContent()Landroid/view/View;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->emptyContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/telerik/widget/list/RadListView;->createDefaultEmptyContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/list/RadListView;->emptyContent:Landroid/view/View;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->emptyContent:Landroid/view/View;

    return-object v0
.end method

.method public getFooterView()Landroid/view/View;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->footerView:Landroid/view/View;

    return-object v0
.end method

.method public getGestureListener()Lcom/telerik/widget/list/ListViewGestureListener;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->gestureListener:Lcom/telerik/widget/list/ListViewGestureListener;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->headerView:Landroid/view/View;

    return-object v0
.end method

.method public isEmptyContentEnabled()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Lcom/telerik/widget/list/RadListView;->isEmptyContentEnabled:Z

    return v0
.end method

.method public makeBackgroundColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "selectedColor"    # I

    .line 670
    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a1

    const/4 v5, 0x0

    aput v4, v3, v5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    const v4, -0x10100a1

    aput v4, v3, v5

    aput-object v3, v1, v2

    .line 674
    .local v1, "states":[[I
    new-array v0, v0, [I

    aput p1, v0, v5

    aput v5, v0, v2

    .line 679
    .local v0, "backgroundColors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method notifyMove()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->pressedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 726
    iget-object v1, p0, Lcom/telerik/widget/list/RadListView;->actionOnPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 727
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->pressedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/RadListView;->pressedView:Landroid/view/View;

    .line 730
    :cond_0
    return-void
.end method

.method notifyOnClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 759
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/telerik/widget/list/RadListView;->notifyOnTapUp(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 760
    return-void
.end method

.method notifyOnDown(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/telerik/widget/list/RadListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 702
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 703
    iput-object v0, p0, Lcom/telerik/widget/list/RadListView;->pressedView:Landroid/view/View;

    .line 704
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 705
    iget-object v1, p0, Lcom/telerik/widget/list/RadListView;->pressedView:Landroid/view/View;

    invoke-virtual {p0, v1, p1}, Lcom/telerik/widget/list/RadListView;->trySetHotspot(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/telerik/widget/list/RadListView;->pressedView:Landroid/view/View;

    iget-object v2, p0, Lcom/telerik/widget/list/RadListView;->actionOnPressed:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2d

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 709
    :cond_1
    return-void
.end method

.method notifyOnLongClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/telerik/widget/list/RadListView;->notifyOnLongPress(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 779
    return-void
.end method

.method notifyOnLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/telerik/widget/list/RadListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 774
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1, v0}, Lcom/telerik/widget/list/RadListView;->notifyOnLongPress(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 775
    return-void
.end method

.method notifyOnLongPress(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .line 763
    invoke-virtual {p0, p2}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 764
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/telerik/widget/list/RadListView;->itemClickListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/RadListView$ItemClickListener;

    .line 768
    .local v2, "listener":Lcom/telerik/widget/list/RadListView$ItemClickListener;
    invoke-interface {v2, v0, p1}, Lcom/telerik/widget/list/RadListView$ItemClickListener;->onItemLongClick(ILandroid/view/MotionEvent;)V

    .line 769
    .end local v2    # "listener":Lcom/telerik/widget/list/RadListView$ItemClickListener;
    goto :goto_0

    .line 770
    :cond_1
    return-void

    .line 765
    :cond_2
    :goto_1
    return-void
.end method

.method notifyOnTapUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/telerik/widget/list/RadListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 755
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1, v0}, Lcom/telerik/widget/list/RadListView;->notifyOnTapUp(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 756
    return-void
.end method

.method notifyOnTapUp(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .line 741
    invoke-virtual {p0, p2}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 742
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_3

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/telerik/widget/list/RadListView;->itemClickListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/RadListView$ItemClickListener;

    .line 746
    .local v2, "listener":Lcom/telerik/widget/list/RadListView$ItemClickListener;
    invoke-interface {v2, v0, p1}, Lcom/telerik/widget/list/RadListView$ItemClickListener;->onItemClick(ILandroid/view/MotionEvent;)V

    .line 747
    .end local v2    # "listener":Lcom/telerik/widget/list/RadListView$ItemClickListener;
    goto :goto_0

    .line 748
    :cond_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Lcom/telerik/widget/list/SlideLayoutManager;

    if-eqz v1, :cond_2

    .line 749
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/SlideLayoutManager;

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/SlideLayoutManager;->onTap(I)V

    .line 751
    :cond_2
    return-void

    .line 743
    :cond_3
    :goto_1
    return-void
.end method

.method notifyOnUpOrCancel(Z)V
    .locals 2
    .param p1, "isCanceled"    # Z

    .line 733
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->pressedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 734
    iget-object v1, p0, Lcom/telerik/widget/list/RadListView;->actionOnPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 735
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->pressedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/RadListView;->pressedView:Landroid/view/View;

    .line 738
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 560
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->gestureListener:Lcom/telerik/widget/list/ListViewGestureListener;

    invoke-virtual {v0, p0, p1}, Lcom/telerik/widget/list/ListViewGestureListener;->onInterceptTouchEvent(Lcom/telerik/widget/list/RadListView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 600
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    .line 602
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewBehavior;

    .line 603
    .local v1, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/telerik/widget/list/ListViewBehavior;->onLayout(ZIIII)V

    .line 604
    .end local v1    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_0

    .line 605
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 609
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 610
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/telerik/widget/list/RadListView;->currentWidthMode:I

    .line 611
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/telerik/widget/list/RadListView;->currentHeightMode:I

    .line 612
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 613
    .local v0, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 614
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->onMeasure(II)V

    .line 616
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    .line 617
    .local v2, "itemAnimator":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/telerik/widget/list/ListViewItemAnimator;

    if-eqz v3, :cond_0

    .line 618
    move-object v3, v2

    check-cast v3, Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-virtual {v3}, Lcom/telerik/widget/list/ListViewItemAnimator;->onMeasure()V

    .line 620
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 655
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 656
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 657
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "stateToSave"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/telerik/widget/list/RadListView;->stateToSave:I

    .line 659
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 660
    .local v2, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v2, v0}, Lcom/telerik/widget/list/ListViewBehavior;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 661
    .end local v2    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_0

    .line 663
    :cond_0
    const-string v1, "instanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 666
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 667
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 642
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 643
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 644
    iget v1, p0, Lcom/telerik/widget/list/RadListView;->stateToSave:I

    const-string v2, "stateToSave"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 646
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 647
    .local v2, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v2, v0}, Lcom/telerik/widget/list/ListViewBehavior;->onSaveInstanceState(Landroid/os/Parcelable;)V

    .line 648
    .end local v2    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_0

    .line 650
    :cond_0
    return-object v0
.end method

.method public onScrolled(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 624
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 626
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewBehavior;

    .line 627
    .local v1, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v1, p1, p2}, Lcom/telerik/widget/list/ListViewBehavior;->onScrolled(II)V

    .line 628
    .end local v1    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_0

    .line 629
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 555
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->gestureListener:Lcom/telerik/widget/list/ListViewGestureListener;

    invoke-virtual {v0, p0, p1}, Lcom/telerik/widget/list/ListViewGestureListener;->onTouchEvent(Lcom/telerik/widget/list/RadListView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public removeBehavior(Lcom/telerik/widget/list/ListViewBehavior;)V
    .locals 1
    .param p1, "behavior"    # Lcom/telerik/widget/list/ListViewBehavior;

    .line 332
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 333
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/RadListView;->removeListenersForBehavior(Lcom/telerik/widget/list/ListViewBehavior;)V

    .line 334
    invoke-virtual {p1, p0}, Lcom/telerik/widget/list/ListViewBehavior;->onDetached(Lcom/telerik/widget/list/RadListView;)V

    .line 335
    return-void
.end method

.method public removeIsEmptyChangedListener(Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;

    .line 144
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->isEmptyChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->removeIsEmptyChangedListener(Lcom/telerik/widget/list/RadListView$IsEmptyChangedListener;)V

    .line 146
    return-void
.end method

.method public removeItemClickListener(Lcom/telerik/widget/list/RadListView$ItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/RadListView$ItemClickListener;

    .line 125
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->itemClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public scrollToEnd()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 169
    .local v0, "lastPosition":I
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/RadListView;->scrollToActualPosition(I)V

    .line 170
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .line 501
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 502
    return-void

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 505
    .local v0, "maxValue":I
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 509
    iget-object v1, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v1, p1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getPositionInWrapperAdapter(I)I

    move-result v1

    .line 510
    .local v1, "actualPosition":I
    invoke-direct {p0, v1}, Lcom/telerik/widget/list/RadListView;->scrollToActualPosition(I)V

    .line 511
    return-void

    .line 506
    .end local v1    # "actualPosition":I
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position should be in the interval [0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public scrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "snapMode"    # I

    .line 525
    new-instance v0, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;

    invoke-direct {v0, p0, p2, p1}, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;-><init>(Lcom/telerik/widget/list/RadListView;II)V

    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/RadListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 526
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/RadListView;->scrollToPosition(I)V

    .line 527
    return-void
.end method

.method public scrollToStart()V
    .locals 1

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/telerik/widget/list/RadListView;->scrollToActualPosition(I)V

    .line 156
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 565
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/RadListView;->setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 566
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 567
    return-void
.end method

.method public setEmptyContent(Landroid/view/View;)V
    .locals 2
    .param p1, "emptyContent"    # Landroid/view/View;

    .line 372
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->emptyContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 376
    iput-object p1, p0, Lcom/telerik/widget/list/RadListView;->emptyContent:Landroid/view/View;

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/RadListView;->isEmptyContentEnabled:Z

    .line 378
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setEmptyView(Landroid/view/View;)V

    .line 379
    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RadListView already has an empty content."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmptyContentEnabled(Z)V
    .locals 2
    .param p1, "emptyContentEnabled"    # Z

    .line 389
    iput-boolean p1, p0, Lcom/telerik/widget/list/RadListView;->isEmptyContentEnabled:Z

    .line 390
    if-eqz p1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getEmptyContent()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setEmptyView(Landroid/view/View;)V

    .line 395
    :goto_0
    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "footerView"    # Landroid/view/View;

    .line 448
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->footerView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RadListView already has a footerView. Use setFooterView(null) to remove the old footer first."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/telerik/widget/list/RadListView;->footerView:Landroid/view/View;

    .line 454
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    if-eqz v0, :cond_2

    .line 455
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setFooter(Landroid/view/View;)V

    .line 457
    :cond_2
    return-void
.end method

.method public setGestureListener(Lcom/telerik/widget/list/ListViewGestureListener;)V
    .locals 0
    .param p1, "gestureListener"    # Lcom/telerik/widget/list/ListViewGestureListener;

    .line 358
    iput-object p1, p0, Lcom/telerik/widget/list/RadListView;->gestureListener:Lcom/telerik/widget/list/ListViewGestureListener;

    .line 359
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "headerView"    # Landroid/view/View;

    .line 417
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->headerView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RadListView already has a headerView. Use setHeaderView(null) to remove the old header first."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/telerik/widget/list/RadListView;->headerView:Landroid/view/View;

    .line 423
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setHeader(Landroid/view/View;)V

    .line 426
    :cond_2
    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 586
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 587
    .local v0, "oldAnimator":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    instance-of v1, v0, Lcom/telerik/widget/list/ListViewItemAnimator;

    if-eqz v1, :cond_0

    .line 588
    move-object v1, v0

    check-cast v1, Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-virtual {v1, p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->onDetached(Lcom/telerik/widget/list/RadListView;)V

    .line 591
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 593
    instance-of v1, p1, Lcom/telerik/widget/list/ListViewItemAnimator;

    if-eqz v1, :cond_1

    .line 594
    move-object v1, p1

    check-cast v1, Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-virtual {v1, p0}, Lcom/telerik/widget/list/ListViewItemAnimator;->onAttached(Lcom/telerik/widget/list/RadListView;)V

    .line 596
    :cond_1
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2
    .param p1, "layout"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 472
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewBehavior;

    .line 473
    .local v1, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-direct {p0, p1, v1}, Lcom/telerik/widget/list/RadListView;->ensureCompatible(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/telerik/widget/list/ListViewBehavior;)V

    .line 474
    .end local v1    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_0

    .line 476
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 477
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 478
    .local v0, "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    if-eqz v1, :cond_1

    .line 479
    new-instance v1, Lcom/telerik/widget/list/RadListView$3;

    invoke-direct {v1, p0, v0}, Lcom/telerik/widget/list/RadListView$3;-><init>(Lcom/telerik/widget/list/RadListView;Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 485
    .local v1, "lookup":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 488
    .end local v0    # "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    .end local v1    # "lookup":Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 489
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setOrientationHorizontal(Z)V

    .line 491
    :cond_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 492
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->behaviors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewBehavior;

    .line 493
    .local v1, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v1, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onLayoutChanged(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 494
    .end local v1    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_1

    .line 496
    :cond_3
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 497
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "snapMode"    # I

    .line 538
    new-instance v0, Lcom/telerik/widget/list/SnappingSmoothScroller;

    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/telerik/widget/list/SnappingSmoothScroller;-><init>(Lcom/telerik/widget/list/RadListView;Landroid/content/Context;)V

    .line 539
    .local v0, "scroller":Lcom/telerik/widget/list/SnappingSmoothScroller;
    invoke-virtual {v0, p2}, Lcom/telerik/widget/list/SnappingSmoothScroller;->setSnapMode(I)V

    .line 540
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/SnappingSmoothScroller;->setTargetPosition(I)V

    .line 541
    invoke-virtual {p0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 542
    return-void
.end method

.method public swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .line 579
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/RadListView;->setAdapterInternal(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 580
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-super {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 582
    return-void
.end method

.method trySetHotspot(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 713
    sget v0, Lcom/telerik/widget/list/R$id;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 714
    .local v0, "defaultTextView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 715
    return-void

    .line 718
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 719
    .local v1, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 721
    .local v2, "y":F
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 722
    return-void
.end method

.method wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView;->wrapperAdapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    return-object v0
.end method
