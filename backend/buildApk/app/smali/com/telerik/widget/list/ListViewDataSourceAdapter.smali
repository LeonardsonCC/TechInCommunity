.class public Lcom/telerik/widget/list/ListViewDataSourceAdapter;
.super Lcom/telerik/widget/list/ListViewAdapter;
.source "ListViewDataSourceAdapter.java"

# interfaces
.implements Lcom/telerik/android/data/DataChangedListener;


# static fields
.field protected static ITEM_VIEW_TYPE_GROUP:I


# instance fields
.field private dataSource:Lcom/telerik/android/data/RadDataSource;

.field private flatView:Ljava/util/List;

.field private skipNextDataChangedEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/16 v0, -0x7b

    sput v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->ITEM_VIEW_TYPE_GROUP:I

    return-void
.end method

.method public constructor <init>(Lcom/telerik/android/data/RadDataSource;)V
    .locals 1
    .param p1, "dataSource"    # Lcom/telerik/android/data/RadDataSource;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/telerik/widget/list/ListViewAdapter;-><init>(Ljava/util/List;Lcom/telerik/android/data/SelectionAdapter;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->skipNextDataChangedEvent:Z

    .line 64
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Lcom/telerik/android/data/RadDataSource;

    invoke-direct {v0}, Lcom/telerik/android/data/RadDataSource;-><init>()V

    move-object p1, v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource:Lcom/telerik/android/data/RadDataSource;

    .line 70
    invoke-virtual {p1, p0}, Lcom/telerik/android/data/RadDataSource;->addDataChangeListener(Lcom/telerik/android/data/DataChangedListener;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "items"    # Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;-><init>(Ljava/util/List;Lcom/telerik/android/data/RadDataSource;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/telerik/android/data/RadDataSource;)V
    .locals 1
    .param p1, "items"    # Ljava/util/List;
    .param p2, "dataSource"    # Lcom/telerik/android/data/RadDataSource;

    .line 50
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ListViewAdapter;-><init>(Ljava/util/List;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->skipNextDataChangedEvent:Z

    .line 52
    if-nez p2, :cond_0

    .line 53
    new-instance v0, Lcom/telerik/android/data/RadDataSource;

    invoke-direct {v0}, Lcom/telerik/android/data/RadDataSource;-><init>()V

    move-object p2, v0

    .line 56
    :cond_0
    iput-object p2, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource:Lcom/telerik/android/data/RadDataSource;

    .line 57
    invoke-virtual {p2, p0}, Lcom/telerik/android/data/RadDataSource;->addDataChangeListener(Lcom/telerik/android/data/DataChangedListener;)V

    .line 58
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource:Lcom/telerik/android/data/RadDataSource;

    invoke-virtual {v0, p1}, Lcom/telerik/android/data/RadDataSource;->setSource(Ljava/lang/Iterable;)V

    .line 59
    return-void
.end method

.method private dataSource()Lcom/telerik/android/data/RadDataSource;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource:Lcom/telerik/android/data/RadDataSource;

    return-object v0
.end method

.method private isGroupHeader(Lcom/telerik/android/data/DataItem;)Z
    .locals 1
    .param p1, "dataItem"    # Lcom/telerik/android/data/DataItem;

    .line 650
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 653
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 651
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateFlatView()V
    .locals 1

    .line 657
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->flatView()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    .line 658
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->notifyDataSetChanged()V

    .line 659
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->add(ILjava/lang/Object;Z)V

    .line 206
    return-void
.end method

.method public add(ILjava/lang/Object;Z)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "invalidateDescriptors"    # Z

    .line 219
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 220
    if-nez p3, :cond_0

    .line 221
    new-instance v0, Lcom/telerik/android/data/DataItem;

    invoke-direct {v0, p2}, Lcom/telerik/android/data/DataItem;-><init>(Ljava/lang/Object;)V

    .line 222
    .local v0, "dataItem":Lcom/telerik/android/data/DataItem;
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->notifyItemInserted(I)V

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->skipNextDataChangedEvent:Z

    .line 226
    .end local v0    # "dataItem":Lcom/telerik/android/data/DataItem;
    :cond_0
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telerik/android/data/RadDataSource;->setSource(Ljava/lang/Iterable;)V

    .line 227
    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->add(Ljava/lang/Object;Z)V

    .line 189
    return-void
.end method

.method public add(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "invalidateDescriptors"    # Z

    .line 200
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->add(ILjava/lang/Object;Z)V

    .line 201
    return-void
.end method

.method public addFilterDescriptor(Lcom/telerik/android/data/ListViewFilterFunction;)V
    .locals 1
    .param p1, "filterDescriptor"    # Lcom/telerik/android/data/ListViewFilterFunction;

    .line 160
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->filterDescriptors()Lcom/telerik/android/common/ObservableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telerik/android/common/ObservableCollection;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public addGroupDescriptor(Lcom/telerik/android/data/ListViewGroupFunction;)V
    .locals 1
    .param p1, "groupDescriptor"    # Lcom/telerik/android/data/ListViewGroupFunction;

    .line 89
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->groupDescriptors()Lcom/telerik/android/common/ObservableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telerik/android/common/ObservableCollection;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public addSortDescriptor(Lcom/telerik/android/data/ListViewSortFunction;)V
    .locals 1
    .param p1, "sortDescriptor"    # Lcom/telerik/android/data/ListViewSortFunction;

    .line 125
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->sortDescriptors()Lcom/telerik/android/common/ObservableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telerik/android/common/ObservableCollection;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public canReorder(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 386
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    const/4 v0, 0x0

    return v0

    .line 389
    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canSelect(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 359
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    return v0

    .line 362
    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canSwipe(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 351
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    return v0

    .line 354
    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public clearFilterDescriptors()V
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->filterDescriptors()Lcom/telerik/android/common/ObservableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/common/ObservableCollection;->clear()V

    .line 177
    return-void
.end method

.method public clearGroupDescriptors()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->groupDescriptors()Lcom/telerik/android/common/ObservableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/common/ObservableCollection;->clear()V

    .line 106
    return-void
.end method

.method public clearSortDescriptors()V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->sortDescriptors()Lcom/telerik/android/common/ObservableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/common/ObservableCollection;->clear()V

    .line 142
    return-void
.end method

.method public dataChanged(Lcom/telerik/android/data/DataChangeInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/telerik/android/data/DataChangeInfo;

    .line 330
    iget-boolean v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->skipNextDataChangedEvent:Z

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->skipNextDataChangedEvent:Z

    .line 332
    return-void

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->updateFlatView()V

    .line 335
    return-void
.end method

.method public getBaseItemCount()I
    .locals 1

    .line 543
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataItem(I)Lcom/telerik/android/data/DataItem;
    .locals 1
    .param p1, "position"    # I

    .line 310
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    return-object v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/data/DataItem;

    return-object v0
.end method

.method public getGroupViewType(Ljava/lang/Object;)I
    .locals 1
    .param p1, "group"    # Ljava/lang/Object;

    .line 516
    sget v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->ITEM_VIEW_TYPE_GROUP:I

    return v0
.end method

.method public getHeaderPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .line 637
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 638
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    return v0

    .line 637
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 642
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .line 339
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getDataItem(I)Lcom/telerik/android/data/DataItem;

    move-result-object v0

    .line 340
    .local v0, "dataItem":Lcom/telerik/android/data/DataItem;
    if-nez v0, :cond_0

    .line 341
    const/4 v1, 0x0

    return-object v1

    .line 343
    :cond_0
    invoke-virtual {v0}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {v0}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 346
    :cond_1
    invoke-virtual {v0}, Lcom/telerik/android/data/DataItem;->groupKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .line 403
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const-wide/16 v0, -0x1

    return-wide v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/data/DataItem;

    .line 407
    .local v0, "dataItem":Lcom/telerik/android/data/DataItem;
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(Lcom/telerik/android/data/DataItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/telerik/android/data/DataItem;->groupKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v1

    .line 408
    .local v1, "item":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItemId(Ljava/lang/Object;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .line 476
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 477
    .local v0, "o":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lcom/telerik/android/data/DataItem;

    .line 478
    .local v1, "dataItem":Lcom/telerik/android/data/DataItem;
    invoke-direct {p0, v1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(Lcom/telerik/android/data/DataItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->groupKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getGroupViewType(Ljava/lang/Object;)I

    move-result v2

    return v2

    .line 481
    :cond_0
    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItemViewType(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public getItemViewType(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public getPosition(J)I
    .locals 4
    .param p1, "id"    # J

    .line 367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 368
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItemId(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 369
    return v0

    .line 367
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1, "searchItem"    # Ljava/lang/Object;

    .line 377
    if-nez p1, :cond_0

    .line 378
    const/4 v0, -0x1

    return v0

    .line 380
    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItemId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 381
    .local v0, "id":J
    invoke-virtual {p0, v0, v1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getPosition(J)I

    move-result v2

    return v2
.end method

.method public invalidateDescriptors()V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->invalidateDescriptors()V

    .line 184
    return-void
.end method

.method public isGroupHeader(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 318
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getDataItem(I)Lcom/telerik/android/data/DataItem;

    move-result-object v0

    .line 319
    .local v0, "dataItem":Lcom/telerik/android/data/DataItem;
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(Lcom/telerik/android/data/DataItem;)Z

    move-result v1

    return v1
.end method

.method public onBindGroupViewHolder(Lcom/telerik/widget/list/ListViewHolder;Ljava/lang/Object;)V
    .locals 2
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "groupKey"    # Ljava/lang/Object;

    .line 582
    instance-of v0, p1, Lcom/telerik/widget/list/ListViewTextHolder;

    if-eqz v0, :cond_0

    .line 583
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/list/ListViewTextHolder;

    iget-object v0, v0, Lcom/telerik/widget/list/ListViewTextHolder;->textView:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    :cond_0
    return-void
.end method

.method public onBindItemViewHolder(Lcom/telerik/widget/list/ListViewHolder;Ljava/lang/Object;)V
    .locals 3
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "entity"    # Ljava/lang/Object;

    .line 626
    instance-of v0, p1, Lcom/telerik/widget/list/ListViewTextHolder;

    if-nez v0, :cond_0

    .line 627
    return-void

    .line 629
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/list/ListViewTextHolder;

    .line 630
    .local v0, "textHolder":Lcom/telerik/widget/list/ListViewTextHolder;
    iget-object v1, v0, Lcom/telerik/widget/list/ListViewTextHolder;->textView:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    return-void
.end method

.method public final onBindSwipeContentHolder(Lcom/telerik/widget/list/ListViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "position"    # I

    .line 465
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 466
    .local v0, "o":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lcom/telerik/android/data/DataItem;

    .line 467
    .local v1, "dataItem":Lcom/telerik/android/data/DataItem;
    invoke-direct {p0, v1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(Lcom/telerik/android/data/DataItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->groupKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->onBindSwipeGroupViewHolder(Lcom/telerik/widget/list/ListViewHolder;Ljava/lang/Object;)V

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->onBindSwipeItemViewHolder(Lcom/telerik/widget/list/ListViewHolder;Ljava/lang/Object;)V

    .line 472
    :goto_0
    return-void
.end method

.method public onBindSwipeGroupViewHolder(Lcom/telerik/widget/list/ListViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "groupKey"    # Ljava/lang/Object;

    .line 588
    return-void
.end method

.method public onBindSwipeItemViewHolder(Lcom/telerik/widget/list/ListViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "entity"    # Ljava/lang/Object;

    .line 634
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/telerik/widget/list/ListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->onBindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "position"    # I

    .line 455
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 456
    .local v0, "o":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lcom/telerik/android/data/DataItem;

    .line 457
    .local v1, "dataItem":Lcom/telerik/android/data/DataItem;
    invoke-direct {p0, v1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(Lcom/telerik/android/data/DataItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->groupKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->onBindGroupViewHolder(Lcom/telerik/widget/list/ListViewHolder;Ljava/lang/Object;)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->onBindItemViewHolder(Lcom/telerik/widget/list/ListViewHolder;Ljava/lang/Object;)V

    .line 462
    :goto_0
    return-void
.end method

.method public onCreateGroupViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 565
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 566
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/telerik/widget/list/R$layout;->simple_group_header_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 567
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/telerik/widget/list/ListViewTextHolder;

    invoke-direct {v2, v1}, Lcom/telerik/widget/list/ListViewTextHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 609
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 610
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/telerik/widget/list/R$layout;->simple_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 611
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/telerik/widget/list/ListViewTextHolder;

    sget v3, Lcom/telerik/widget/list/R$id;->text1:I

    invoke-direct {v2, v1, v3}, Lcom/telerik/widget/list/ListViewTextHolder;-><init>(Landroid/view/View;I)V

    return-object v2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 433
    if-gez p2, :cond_0

    .line 434
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->onCreateGroupViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object v0

    return-object v0

    .line 436
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->remove(IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(IZ)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .param p2, "invalidateDescriptors"    # Z

    .line 291
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 292
    .local v0, "itemToRemove":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 293
    return-object v1

    .line 295
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->remove(Ljava/lang/Object;Z)Z

    move-result v2

    .line 296
    .local v2, "result":Z
    if-eqz v2, :cond_1

    .line 297
    return-object v0

    .line 299
    :cond_1
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->remove(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;Z)Z
    .locals 6
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "invalidateDescriptors"    # Z

    .line 243
    const/4 v0, -0x1

    .line 244
    .local v0, "itemIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/android/data/DataItem;

    .line 246
    .local v2, "dataItem":Lcom/telerik/android/data/DataItem;
    invoke-virtual {v2}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    move v0, v1

    .line 248
    goto :goto_1

    .line 244
    .end local v2    # "dataItem":Lcom/telerik/android/data/DataItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 254
    :cond_2
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getHeaderPosition(I)I

    move-result v2

    .line 255
    .local v2, "headerPosition":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 256
    .local v3, "result":Z
    if-nez v3, :cond_3

    .line 257
    return v3

    .line 259
    :cond_3
    iget-object v4, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 260
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->notifyItemRemoved(I)V

    .line 261
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->skipNextDataChangedEvent:Z

    .line 262
    if-eqz p2, :cond_5

    .line 263
    if-eq v2, v1, :cond_5

    .line 266
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItemCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    add-int/lit8 v1, v2, 0x1

    .line 267
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getHeaderPosition(I)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 268
    :cond_4
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 269
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->notifyItemRemoved(I)V

    .line 273
    :cond_5
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v1

    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/telerik/android/data/RadDataSource;->setSource(Ljava/lang/Iterable;)V

    .line 274
    return v4
.end method

.method public removeFilterDescriptor(Lcom/telerik/android/data/ListViewFilterFunction;)V
    .locals 1
    .param p1, "filterDescriptor"    # Lcom/telerik/android/data/ListViewFilterFunction;

    .line 169
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->filterDescriptors()Lcom/telerik/android/common/ObservableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telerik/android/common/ObservableCollection;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public removeGroupDescriptor(Lcom/telerik/android/data/ListViewGroupFunction;)V
    .locals 1
    .param p1, "groupDescriptor"    # Lcom/telerik/android/data/ListViewGroupFunction;

    .line 98
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->groupDescriptors()Lcom/telerik/android/common/ObservableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telerik/android/common/ObservableCollection;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public removeSortDescriptor(Lcom/telerik/android/data/ListViewSortFunction;)V
    .locals 1
    .param p1, "sortDescriptor"    # Lcom/telerik/android/data/ListViewSortFunction;

    .line 134
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->sortDescriptors()Lcom/telerik/android/common/ObservableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telerik/android/common/ObservableCollection;->remove(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public reorderItem(II)Z
    .locals 3
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 394
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->flatView:Ljava/util/List;

    .line 395
    .local v0, "items":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 396
    .local v1, "removedItem":Ljava/lang/Object;
    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->notifyItemMoved(II)V

    .line 398
    const/4 v2, 0x1

    return v2
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .param p1, "items"    # Ljava/util/List;

    .line 324
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewAdapter;->setItems(Ljava/util/List;)V

    .line 325
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->dataSource()Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telerik/android/data/RadDataSource;->setSource(Ljava/lang/Iterable;)V

    .line 326
    return-void
.end method
