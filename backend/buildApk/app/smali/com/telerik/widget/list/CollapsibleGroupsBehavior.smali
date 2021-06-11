.class public Lcom/telerik/widget/list/CollapsibleGroupsBehavior;
.super Lcom/telerik/widget/list/ListViewBehavior;
.source "CollapsibleGroupsBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

.field private collapseImageId:I

.field private collapseImageResource:I

.field private expandImageResource:I

.field private groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    sget v0, Lcom/telerik/widget/list/R$id;->groupHeaderCollapseImage:I

    new-instance v1, Lcom/telerik/widget/list/DefaultCollapsedGroupState;

    invoke-direct {v1}, Lcom/telerik/widget/list/DefaultCollapsedGroupState;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;-><init>(ILcom/telerik/widget/list/CollapsedGroupState;)V

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .line 23
    new-instance v0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;

    invoke-direct {v0}, Lcom/telerik/widget/list/DefaultCollapsedGroupState;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;-><init>(ILcom/telerik/widget/list/CollapsedGroupState;)V

    .line 24
    return-void
.end method

.method public constructor <init>(ILcom/telerik/widget/list/CollapsedGroupState;)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "groupsState"    # Lcom/telerik/widget/list/CollapsedGroupState;

    .line 26
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewBehavior;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->expandImageResource:I

    .line 15
    sget v0, Lcom/telerik/widget/list/R$drawable;->ic_collapse:I

    iput v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageResource:I

    .line 27
    iput p1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageId:I

    .line 28
    iput-object p2, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    .line 30
    return-void
.end method

.method private changeIsGroupCollapsed(I)V
    .locals 3
    .param p1, "position"    # I

    .line 219
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    if-nez v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    .line 223
    .local v0, "dataSourceAdapter":Lcom/telerik/widget/list/ListViewDataSourceAdapter;
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->viewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 225
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->isGroupCollapsed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-direct {p0, p1, v1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->expandGroup(ILandroid/view/View;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseGroup(ILandroid/view/View;)V

    .line 231
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    :goto_0
    return-void
.end method

.method private collapseGroup(ILandroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 243
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->isGroupCollapsed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    return-void

    .line 246
    :cond_0
    if-eqz p2, :cond_2

    .line 247
    iget v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 248
    .local v0, "collapseImage":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 249
    iget v1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->expandImageResource:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 250
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 252
    :cond_1
    iget v1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageResource:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotation(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 258
    .end local v0    # "collapseImage":Landroid/widget/ImageView;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    .line 260
    .local v0, "dataSourceAdapter":Lcom/telerik/widget/list/ListViewDataSourceAdapter;
    iget-object v1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    invoke-interface {v1, p1}, Lcom/telerik/widget/list/CollapsedGroupState;->collapseGroupAtPosition(I)V

    .line 261
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->notifyItemChanged(I)V

    .line 262
    add-int/lit8 v1, p1, 0x1

    .line 263
    .local v1, "updatePosition":I
    :goto_1
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 264
    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->notifyItemChanged(I)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    :cond_3
    return-void
.end method

.method private expandGroup(ILandroid/view/View;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 270
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->isGroupCollapsed(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    if-eqz p2, :cond_2

    .line 274
    iget v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 275
    .local v0, "collapseImage":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 276
    iget v1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageResource:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget v1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->expandImageResource:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 278
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotation(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 285
    .end local v0    # "collapseImage":Landroid/widget/ImageView;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    invoke-interface {v0, p1}, Lcom/telerik/widget/list/CollapsedGroupState;->expandGroupAtPosition(I)V

    .line 287
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 288
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 289
    instance-of v1, v0, Lcom/telerik/widget/list/GroupAdapter;

    if-eqz v1, :cond_3

    .line 290
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/GroupAdapter;

    .line 292
    .local v1, "groupAdapter":Lcom/telerik/widget/list/GroupAdapter;
    add-int/lit8 v2, p1, 0x1

    .line 293
    .local v2, "updatePosition":I
    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Lcom/telerik/widget/list/GroupAdapter;->isGroupHeader(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 294
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 298
    .end local v1    # "groupAdapter":Lcom/telerik/widget/list/GroupAdapter;
    .end local v2    # "updatePosition":I
    :cond_3
    return-void
.end method

.method private hideIsCollapsed(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 80
    iget v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .local v0, "collapseImage":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 82
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :cond_0
    return-void
.end method

.method private refreshCollapseImage()V
    .locals 8

    .line 180
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 184
    .local v0, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 185
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 186
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_1

    .line 187
    goto :goto_2

    .line 189
    :cond_1
    iget v3, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 190
    .local v3, "collapseImage":Landroid/widget/ImageView;
    if-nez v3, :cond_2

    .line 191
    goto :goto_2

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    .line 194
    .local v4, "position":I
    invoke-virtual {p0, v4}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->isGroupCollapsed(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 195
    iget v5, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageResource:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 197
    :cond_3
    iget v5, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->expandImageResource:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    const/16 v5, 0xb4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 198
    .local v5, "rotation":I
    :goto_1
    iget v7, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->expandImageResource:I

    if-ne v7, v6, :cond_5

    iget v7, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageResource:I

    :cond_5
    move v6, v7

    .line 199
    .local v6, "imageResource":I
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    int-to-float v7, v5

    invoke-static {v3, v7}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 184
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "collapseImage":Landroid/widget/ImageView;
    .end local v4    # "position":I
    .end local v5    # "rotation":I
    .end local v6    # "imageResource":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method private showIsCollapsed(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 73
    iget v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    .local v0, "collapseImage":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    :cond_0
    return-void
.end method

.method private viewForPosition(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .line 301
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 302
    .local v0, "itemsInLayout":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 304
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 305
    return-object v2

    .line 302
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public addListener(Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;

    .line 320
    iget-object v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    invoke-interface {v0, p1}, Lcom/telerik/widget/list/CollapsedGroupState;->addListener(Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;)V

    .line 321
    return-void
.end method

.method public changeIsGroupCollapsed(Ljava/lang/Object;)V
    .locals 2
    .param p1, "groupHeader"    # Ljava/lang/Object;

    .line 234
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    .line 238
    .local v0, "dataSourceAdapter":Lcom/telerik/widget/list/ListViewDataSourceAdapter;
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    .line 239
    .local v1, "position":I
    invoke-direct {p0, v1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->changeIsGroupCollapsed(I)V

    .line 240
    return-void
.end method

.method public collapseAll()V
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    if-nez v0, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    .line 210
    .local v0, "dataSourceAdapter":Lcom/telerik/widget/list/ListViewDataSourceAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 211
    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-direct {p0, v1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->viewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 213
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v1, v2}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseGroup(ILandroid/view/View;)V

    .line 210
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public expandAll()V
    .locals 6

    .line 166
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    if-nez v0, :cond_0

    .line 167
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    .line 170
    .local v0, "dataSourceAdapter":Lcom/telerik/widget/list/ListViewDataSourceAdapter;
    iget-object v1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    invoke-interface {v1}, Lcom/telerik/widget/list/CollapsedGroupState;->getCollapsedGroupPositions()[I

    move-result-object v1

    .line 171
    .local v1, "collapsedGroupIndices":[I
    array-length v2, v1

    .line 172
    .local v2, "collapsedGroupsSize":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 173
    aget v4, v1, v3

    .line 174
    .local v4, "position":I
    invoke-direct {p0, v4}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->viewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 175
    .local v5, "view":Landroid/view/View;
    invoke-direct {p0, v4, v5}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->expandGroup(ILandroid/view/View;)V

    .line 172
    .end local v4    # "position":I
    .end local v5    # "view":Landroid/view/View;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 177
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public getCollapseImageResource()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageResource:I

    return v0
.end method

.method public getExpandImageResource()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->expandImageResource:I

    return v0
.end method

.method handleIsCollapsed(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 57
    iget v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .local v0, "collapseImage":Landroid/widget/ImageView;
    if-eqz v0, :cond_3

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget v1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->expandImageResource:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 61
    invoke-virtual {p0, p2}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->isGroupCollapsed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->expandImageResource:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageResource:I

    .line 62
    .local v1, "newResource":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 64
    .end local v1    # "newResource":I
    goto :goto_1

    .line 65
    :cond_1
    iget v1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageResource:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->isGroupCollapsed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v3, 0x43340000    # 180.0f

    :cond_2
    move v1, v3

    .line 67
    .local v1, "newRotation":F
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 70
    .end local v1    # "newRotation":F
    :cond_3
    :goto_1
    return-void
.end method

.method isGroupCollapsed(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 316
    iget-object v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    invoke-interface {v0, p1}, Lcom/telerik/widget/list/CollapsedGroupState;->isGroupCollapsed(I)Z

    move-result v0

    return v0
.end method

.method public isGroupCollapsed(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "group"    # Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    invoke-interface {v0, p1}, Lcom/telerik/widget/list/CollapsedGroupState;->isGroupCollapsed(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 115
    iget-object v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setCollapsibleBehavior(Lcom/telerik/widget/list/CollapsibleGroupsBehavior;)V

    .line 116
    iget-object v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    invoke-interface {v0}, Lcom/telerik/widget/list/CollapsedGroupState;->clearCollapsedGroups()V

    .line 117
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V

    .line 118
    iput-object p1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 119
    invoke-virtual {p1, p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setCollapsibleBehavior(Lcom/telerik/widget/list/CollapsibleGroupsBehavior;)V

    .line 120
    return-void
.end method

.method public onAttached(Lcom/telerik/widget/list/RadListView;)V
    .locals 3
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 124
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAttached(Lcom/telerik/widget/list/RadListView;)V

    .line 125
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 127
    invoke-virtual {v0, p0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setCollapsibleBehavior(Lcom/telerik/widget/list/CollapsibleGroupsBehavior;)V

    .line 128
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 130
    .local v0, "viewsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 132
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->showIsCollapsed(Landroid/view/View;)V

    .line 130
    .end local v2    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "viewsCount":I
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    invoke-interface {v0, p1}, Lcom/telerik/widget/list/CollapsedGroupState;->setOwner(Lcom/telerik/widget/list/RadListView;)V

    .line 138
    return-void
.end method

.method public onDetached(Lcom/telerik/widget/list/RadListView;)V
    .locals 4
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 143
    iget-object v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->setCollapsibleBehavior(Lcom/telerik/widget/list/CollapsibleGroupsBehavior;)V

    .line 144
    iget-object v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    invoke-interface {v0}, Lcom/telerik/widget/list/CollapsedGroupState;->clearCollapsedGroups()V

    .line 145
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 147
    .local v0, "viewsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 149
    .local v3, "v":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->hideIsCollapsed(Landroid/view/View;)V

    .line 147
    .end local v3    # "v":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "viewsCount":I
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 153
    iget-object v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    invoke-interface {v0, v1}, Lcom/telerik/widget/list/CollapsedGroupState;->setOwner(Lcom/telerik/widget/list/RadListView;)V

    .line 154
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onDetached(Lcom/telerik/widget/list/RadListView;)V

    .line 155
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 102
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 103
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 104
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "collapsedGroups"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 105
    .local v1, "positions":[I
    if-eqz v1, :cond_0

    .line 106
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 107
    .local v4, "position":I
    invoke-direct {p0, v4}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->changeIsGroupCollapsed(I)V

    .line 106
    .end local v4    # "position":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "positions":[I
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 88
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 89
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 91
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    invoke-interface {v1}, Lcom/telerik/widget/list/CollapsedGroupState;->getCollapsedGroupPositions()[I

    move-result-object v1

    .line 92
    .local v1, "positions":[I
    array-length v2, v1

    if-lez v2, :cond_0

    .line 94
    const-string v2, "collapsedGroups"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 98
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "positions":[I
    :cond_0
    return-void
.end method

.method public onTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 159
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/telerik/widget/list/RadListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "pressedView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/telerik/widget/list/RadListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 161
    .local v1, "position":I
    invoke-direct {p0, v1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->changeIsGroupCollapsed(I)V

    .line 162
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onTapUp(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public removeListener(Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;

    .line 324
    iget-object v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->groupsAdapter:Lcom/telerik/widget/list/CollapsedGroupState;

    invoke-interface {v0, p1}, Lcom/telerik/widget/list/CollapsedGroupState;->removeListener(Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;)V

    .line 325
    return-void
.end method

.method public setCollapseImageResource(I)V
    .locals 1
    .param p1, "collapseImageResource"    # I

    .line 37
    iget v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageResource:I

    if-ne v0, p1, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    iput p1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->collapseImageResource:I

    .line 41
    invoke-direct {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->refreshCollapseImage()V

    .line 42
    return-void
.end method

.method public setExpandImageResource(I)V
    .locals 1
    .param p1, "expandImageResource"    # I

    .line 49
    iget v0, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->expandImageResource:I

    if-ne v0, p1, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    iput p1, p0, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->expandImageResource:I

    .line 53
    invoke-direct {p0}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior;->refreshCollapseImage()V

    .line 54
    return-void
.end method
