.class public Lcom/telerik/android/data/RadDataSource;
.super Ljava/lang/Object;
.source "RadDataSource.java"

# interfaces
.implements Lcom/telerik/android/common/CollectionChangeListener;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/telerik/android/common/CollectionChangeListener<",
        "TE;>;",
        "Ljava/lang/Iterable<",
        "Lcom/telerik/android/data/DataItem<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field changedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telerik/android/data/DataChangedListener<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field filterDescriptors:Lcom/telerik/android/common/ObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/telerik/android/common/ObservableCollection<",
            "Lcom/telerik/android/data/ListViewFilterFunction;",
            ">;"
        }
    .end annotation
.end field

.field groupDescriptors:Lcom/telerik/android/common/ObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/telerik/android/common/ObservableCollection<",
            "Lcom/telerik/android/data/ListViewGroupFunction;",
            ">;"
        }
    .end annotation
.end field

.field itemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field rawSource:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation
.end field

.field sortDescriptors:Lcom/telerik/android/common/ObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/telerik/android/common/ObservableCollection<",
            "Lcom/telerik/android/data/ListViewSortFunction;",
            ">;"
        }
    .end annotation
.end field

.field sourceCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field suspend:Z

.field view:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/RadDataSource;->sourceCollection:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/telerik/android/common/ObservableCollection;

    invoke-direct {v0}, Lcom/telerik/android/common/ObservableCollection;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/RadDataSource;->filterDescriptors:Lcom/telerik/android/common/ObservableCollection;

    .line 32
    new-instance v0, Lcom/telerik/android/common/ObservableCollection;

    invoke-direct {v0}, Lcom/telerik/android/common/ObservableCollection;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/RadDataSource;->groupDescriptors:Lcom/telerik/android/common/ObservableCollection;

    .line 33
    new-instance v0, Lcom/telerik/android/common/ObservableCollection;

    invoke-direct {v0}, Lcom/telerik/android/common/ObservableCollection;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/RadDataSource;->sortDescriptors:Lcom/telerik/android/common/ObservableCollection;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/RadDataSource;->changedListeners:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/telerik/android/data/RadDataSource$1;

    invoke-direct {v0, p0}, Lcom/telerik/android/data/RadDataSource$1;-><init>(Lcom/telerik/android/data/RadDataSource;)V

    iput-object v0, p0, Lcom/telerik/android/data/RadDataSource;->itemComparator:Ljava/util/Comparator;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/android/data/RadDataSource;->suspend:Z

    .line 67
    invoke-virtual {p0}, Lcom/telerik/android/data/RadDataSource;->initializeDescriptorCollectionObservers()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-direct {p0}, Lcom/telerik/android/data/RadDataSource;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Lcom/telerik/android/data/RadDataSource;->setSource(Ljava/lang/Iterable;)V

    .line 80
    return-void
.end method

.method static binarySearch(Ljava/util/List;IILcom/telerik/android/data/DataItem;Ljava/util/Comparator;)I
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;II",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;",
            "Ljava/util/Comparator<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;)I"
        }
    .end annotation

    .line 514
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    .local p3, "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/telerik/android/data/DataItem<TE;>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x0

    return v0

    .line 518
    :cond_0
    if-lt p1, p2, :cond_3

    .line 519
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 520
    return p1

    .line 523
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/data/DataItem;

    .line 524
    .local v0, "existingItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-interface {p4, p3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 525
    .local v1, "comparison":I
    if-gtz v1, :cond_2

    .line 526
    return p1

    .line 528
    :cond_2
    add-int/lit8 v2, p1, 0x1

    return v2

    .line 532
    .end local v0    # "existingItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .end local v1    # "comparison":I
    :cond_3
    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    .line 533
    .local v0, "middleIndex":I
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/data/DataItem;

    .line 535
    .local v1, "middleItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-interface {p4, p3, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 536
    .local v2, "comparison":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 537
    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, p1, v3, p3, p4}, Lcom/telerik/android/data/RadDataSource;->binarySearch(Ljava/util/List;IILcom/telerik/android/data/DataItem;Ljava/util/Comparator;)I

    move-result v3

    return v3

    .line 538
    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 539
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3, p2, p3, p4}, Lcom/telerik/android/data/RadDataSource;->binarySearch(Ljava/util/List;IILcom/telerik/android/data/DataItem;Ljava/util/Comparator;)I

    move-result v3

    return v3

    .line 542
    :cond_5
    return v0
.end method

.method public static createFromJson(Ljava/lang/String;)Lcom/telerik/android/data/RadDataSource;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/telerik/android/data/RadDataSource<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 87
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/telerik/android/data/RadDataSource;

    invoke-direct {v2, v1}, Lcom/telerik/android/data/RadDataSource;-><init>(Ljava/lang/Iterable;)V

    return-object v2
.end method

.method public static createFromJsonUrl(Ljava/net/URL;Lcom/telerik/android/data/OnJSONDataSourceCreated;)V
    .locals 3
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "result"    # Lcom/telerik/android/data/OnJSONDataSourceCreated;

    .line 94
    new-instance v0, Lcom/telerik/android/data/LoadJSONTask;

    invoke-direct {v0}, Lcom/telerik/android/data/LoadJSONTask;-><init>()V

    .line 95
    .local v0, "task":Lcom/telerik/android/data/LoadJSONTask;
    new-instance v1, Lcom/telerik/android/data/RadDataSource$2;

    invoke-direct {v1, p1}, Lcom/telerik/android/data/RadDataSource$2;-><init>(Lcom/telerik/android/data/OnJSONDataSourceCreated;)V

    invoke-virtual {v0, v1}, Lcom/telerik/android/data/LoadJSONTask;->setFinishedListener(Lcom/telerik/android/common/Procedure;)V

    .line 106
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/telerik/android/data/LoadJSONTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    return-void
.end method

.method private flattenView(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    .local p2, "view":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    if-nez p2, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/data/DataItem;

    .line 186
    .local v1, "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/telerik/android/data/RadDataSource;->flattenView(Ljava/util/List;Ljava/util/List;)V

    .line 188
    .end local v1    # "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    goto :goto_0

    .line 189
    :cond_1
    return-void
.end method


# virtual methods
.method public addDataChangeListener(Lcom/telerik/android/data/DataChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/DataChangedListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "listener":Lcom/telerik/android/data/DataChangedListener;, "Lcom/telerik/android/data/DataChangedListener<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->changedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public collectionChanged(Lcom/telerik/android/common/CollectionChangedEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/common/CollectionChangedEvent<",
            "TE;>;)V"
        }
    .end annotation

    .line 221
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "info":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p1}, Lcom/telerik/android/common/CollectionChangedEvent;->action()Lcom/telerik/android/common/CollectionChangeAction;

    move-result-object v0

    .line 223
    .local v0, "collectionChangeAction":Lcom/telerik/android/common/CollectionChangeAction;
    sget-object v1, Lcom/telerik/android/common/CollectionChangeAction;->ADD:Lcom/telerik/android/common/CollectionChangeAction;

    invoke-virtual {v0, v1}, Lcom/telerik/android/common/CollectionChangeAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lcom/telerik/android/data/RadDataSource;->insertNewItem(Lcom/telerik/android/common/CollectionChangedEvent;)V

    goto :goto_0

    .line 226
    :cond_0
    sget-object v1, Lcom/telerik/android/common/CollectionChangeAction;->MOVE:Lcom/telerik/android/common/CollectionChangeAction;

    invoke-virtual {v0, v1}, Lcom/telerik/android/common/CollectionChangeAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {p0, p1}, Lcom/telerik/android/data/RadDataSource;->moveItem(Lcom/telerik/android/common/CollectionChangedEvent;)V

    goto :goto_0

    .line 229
    :cond_1
    sget-object v1, Lcom/telerik/android/common/CollectionChangeAction;->REPLACE:Lcom/telerik/android/common/CollectionChangeAction;

    invoke-virtual {v0, v1}, Lcom/telerik/android/common/CollectionChangeAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    invoke-virtual {p0, p1}, Lcom/telerik/android/data/RadDataSource;->replaceItem(Lcom/telerik/android/common/CollectionChangedEvent;)V

    goto :goto_0

    .line 232
    :cond_2
    sget-object v1, Lcom/telerik/android/common/CollectionChangeAction;->REMOVE:Lcom/telerik/android/common/CollectionChangeAction;

    invoke-virtual {v0, v1}, Lcom/telerik/android/common/CollectionChangeAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    invoke-virtual {p0, p1}, Lcom/telerik/android/data/RadDataSource;->removeItem(Lcom/telerik/android/common/CollectionChangedEvent;)V

    goto :goto_0

    .line 235
    :cond_3
    sget-object v1, Lcom/telerik/android/common/CollectionChangeAction;->RESET:Lcom/telerik/android/common/CollectionChangeAction;

    invoke-virtual {v0, v1}, Lcom/telerik/android/common/CollectionChangeAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    iget-object v1, p0, Lcom/telerik/android/data/RadDataSource;->rawSource:Ljava/lang/Iterable;

    invoke-virtual {p0, v1}, Lcom/telerik/android/data/RadDataSource;->refresh(Ljava/lang/Iterable;)V

    .line 238
    :cond_4
    :goto_0
    return-void
.end method

.method public filterDescriptors()Lcom/telerik/android/common/ObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/telerik/android/common/ObservableCollection<",
            "Lcom/telerik/android/data/ListViewFilterFunction;",
            ">;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->filterDescriptors:Lcom/telerik/android/common/ObservableCollection;

    return-object v0
.end method

.method filterItems(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;)",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "view":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/telerik/android/data/DataItem<TE;>;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 317
    .local v0, "result":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/telerik/android/data/DataItem<TE;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/android/data/DataItem;

    .line 318
    .local v2, "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    const/4 v3, 0x1

    .line 320
    .local v3, "passesFilters":Z
    iget-object v4, p0, Lcom/telerik/android/data/RadDataSource;->filterDescriptors:Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v4}, Lcom/telerik/android/common/ObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/telerik/android/data/ListViewFilterFunction;

    .line 321
    .local v5, "filter":Lcom/telerik/android/data/ListViewFilterFunction;
    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/telerik/android/data/ListViewFilterFunction;->shouldIncludeItem(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    move v3, v6

    .line 322
    .end local v5    # "filter":Lcom/telerik/android/data/ListViewFilterFunction;
    goto :goto_1

    .line 324
    :cond_1
    if-eqz v3, :cond_2

    .line 325
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v2    # "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .end local v3    # "passesFilters":Z
    :cond_2
    goto :goto_0

    .line 329
    :cond_3
    return-object v0
.end method

.method findDataItem(Ljava/lang/Iterable;Ljava/lang/Object;)Lcom/telerik/android/data/DataItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;TE;)",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;"
        }
    .end annotation

    .line 439
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/telerik/android/data/DataItem<TE;>;>;"
    .local p2, "item":Ljava/lang/Object;, "TE;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/data/DataItem;

    .line 440
    .local v1, "dataItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    return-object v1

    .line 443
    .end local v1    # "dataItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    :cond_0
    goto :goto_0

    .line 445
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method varargs findGroup(Ljava/lang/Iterable;[Ljava/lang/Object;)Lcom/telerik/android/data/DataItem;
    .locals 7
    .param p2, "keys"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;"
        }
    .end annotation

    .line 546
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "groups":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/telerik/android/data/DataItem<TE;>;>;"
    const/4 v0, 0x0

    .line 547
    .local v0, "result":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 548
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/telerik/android/data/DataItem;

    .line 549
    .local v5, "group":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-virtual {v5}, Lcom/telerik/android/data/DataItem;->groupKey()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/telerik/android/data/DataItem;->groupKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 550
    invoke-virtual {v5}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object p1

    .line 551
    move-object v0, v5

    .line 553
    .end local v5    # "group":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    :cond_0
    goto :goto_1

    .line 547
    .end local v3    # "key":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    :cond_2
    return-object v0
.end method

.method findSortIndex(Lcom/telerik/android/data/DataItem;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;)I"
        }
    .end annotation

    .line 490
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "dataItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .local p2, "collection":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->sortDescriptors:Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v0}, Lcom/telerik/android/common/ObservableCollection;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 491
    return v1

    .line 494
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/telerik/android/data/RadDataSource;->itemComparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, p1, v2}, Lcom/telerik/android/data/RadDataSource;->binarySearch(Ljava/util/List;IILcom/telerik/android/data/DataItem;Ljava/util/Comparator;)I

    move-result v0

    .line 495
    .local v0, "sortIndex":I
    if-ne v0, v1, :cond_1

    .line 496
    return v3

    .line 499
    :cond_1
    return v0
.end method

.method public flatView()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/telerik/android/data/DataItem<TE;>;>;"
    iget-object v1, p0, Lcom/telerik/android/data/RadDataSource;->view:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/telerik/android/data/RadDataSource;->flattenView(Ljava/util/List;Ljava/util/List;)V

    .line 178
    return-object v0
.end method

.method public getSource()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->rawSource:Ljava/lang/Iterable;

    return-object v0
.end method

.method groupBy(Ljava/util/List;Lcom/telerik/android/data/ListViewGroupFunction;)Ljava/util/List;
    .locals 6
    .param p2, "groupDescriptor"    # Lcom/telerik/android/data/ListViewGroupFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;",
            "Lcom/telerik/android/data/ListViewGroupFunction;",
            ")",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "view":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 354
    .local v0, "groupsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Object;Lcom/telerik/android/data/DataItem<TE;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/android/data/DataItem;

    .line 355
    .local v2, "sourceItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-virtual {v2}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/telerik/android/data/ListViewGroupFunction;->groupForItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 356
    .local v3, "groupKey":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 357
    new-instance v4, Lcom/telerik/android/data/DataItem;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Lcom/telerik/android/data/DataItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    .local v4, "newGroup":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-virtual {v4}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .end local v4    # "newGroup":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    goto :goto_1

    .line 361
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/telerik/android/data/DataItem;

    .line 362
    .local v4, "existingGroup":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-virtual {v4}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    .end local v2    # "sourceItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .end local v3    # "groupKey":Ljava/lang/Object;
    .end local v4    # "existingGroup":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    :goto_1
    goto :goto_0

    .line 367
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    new-instance v2, Lcom/telerik/android/data/RadDataSource$6;

    invoke-direct {v2, p0}, Lcom/telerik/android/data/RadDataSource$6;-><init>(Lcom/telerik/android/data/RadDataSource;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 374
    return-object v1
.end method

.method public groupDescriptors()Lcom/telerik/android/common/ObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/telerik/android/common/ObservableCollection<",
            "Lcom/telerik/android/data/ListViewGroupFunction;",
            ">;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->groupDescriptors:Lcom/telerik/android/common/ObservableCollection;

    return-object v0
.end method

.method groupItem(Lcom/telerik/android/data/DataItem;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;)V"
        }
    .end annotation

    .line 560
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "dataItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->view:Ljava/util/List;

    .line 561
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    const/4 v1, 0x0

    .line 562
    .local v1, "group":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    iget-object v2, p0, Lcom/telerik/android/data/RadDataSource;->groupDescriptors:Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v2}, Lcom/telerik/android/common/ObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/android/data/ListViewGroupFunction;

    .line 563
    .local v3, "groupDescriptor":Lcom/telerik/android/data/ListViewGroupFunction;
    invoke-virtual {p1}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/telerik/android/data/ListViewGroupFunction;->groupForItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 564
    .local v4, "key":Ljava/lang/Object;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {p0, v0, v5}, Lcom/telerik/android/data/RadDataSource;->findGroup(Ljava/lang/Iterable;[Ljava/lang/Object;)Lcom/telerik/android/data/DataItem;

    move-result-object v1

    .line 565
    if-nez v1, :cond_0

    .line 566
    new-instance v5, Lcom/telerik/android/data/DataItem;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4}, Lcom/telerik/android/data/DataItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v5

    .line 567
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v1, v5, v0}, Lcom/telerik/android/data/RadDataSource;->insertInCollection(Lcom/telerik/android/data/DataItem;ILjava/util/List;)V

    .line 569
    :cond_0
    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v0

    .line 570
    .end local v3    # "groupDescriptor":Lcom/telerik/android/data/ListViewGroupFunction;
    .end local v4    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/telerik/android/data/RadDataSource;->insertInCollection(Lcom/telerik/android/data/DataItem;ILjava/util/List;)V

    .line 573
    return-void
.end method

.method groupItems(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p2, "descriptorIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;I)",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "view":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->groupDescriptors:Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v0}, Lcom/telerik/android/common/ObservableCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    return-object p1

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->groupDescriptors:Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v0}, Lcom/telerik/android/common/ObservableCollection;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 338
    return-object p1

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->groupDescriptors:Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v0, p2}, Lcom/telerik/android/common/ObservableCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/data/ListViewGroupFunction;

    .line 342
    .local v0, "groupDescriptor":Lcom/telerik/android/data/ListViewGroupFunction;
    invoke-virtual {p0, p1, v0}, Lcom/telerik/android/data/RadDataSource;->groupBy(Ljava/util/List;Lcom/telerik/android/data/ListViewGroupFunction;)Ljava/util/List;

    move-result-object p1

    .line 345
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/android/data/DataItem;

    .line 346
    .local v2, "group":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-virtual {v2}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/telerik/android/data/RadDataSource;->groupItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/telerik/android/data/DataItem;->setItems(Ljava/lang/Iterable;)V

    .line 347
    .end local v2    # "group":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    goto :goto_0

    .line 349
    :cond_2
    return-object p1
.end method

.method initializeDescriptorCollectionObservers()V
    .locals 2

    .line 278
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->filterDescriptors:Lcom/telerik/android/common/ObservableCollection;

    new-instance v1, Lcom/telerik/android/data/RadDataSource$3;

    invoke-direct {v1, p0}, Lcom/telerik/android/data/RadDataSource$3;-><init>(Lcom/telerik/android/data/RadDataSource;)V

    invoke-virtual {v0, v1}, Lcom/telerik/android/common/ObservableCollection;->addCollectionChangeListener(Lcom/telerik/android/common/CollectionChangeListener;)V

    .line 285
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->groupDescriptors:Lcom/telerik/android/common/ObservableCollection;

    new-instance v1, Lcom/telerik/android/data/RadDataSource$4;

    invoke-direct {v1, p0}, Lcom/telerik/android/data/RadDataSource$4;-><init>(Lcom/telerik/android/data/RadDataSource;)V

    invoke-virtual {v0, v1}, Lcom/telerik/android/common/ObservableCollection;->addCollectionChangeListener(Lcom/telerik/android/common/CollectionChangeListener;)V

    .line 292
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->sortDescriptors:Lcom/telerik/android/common/ObservableCollection;

    new-instance v1, Lcom/telerik/android/data/RadDataSource$5;

    invoke-direct {v1, p0}, Lcom/telerik/android/data/RadDataSource$5;-><init>(Lcom/telerik/android/data/RadDataSource;)V

    invoke-virtual {v0, v1}, Lcom/telerik/android/common/ObservableCollection;->addCollectionChangeListener(Lcom/telerik/android/common/CollectionChangeListener;)V

    .line 298
    return-void
.end method

.method insertInCollection(Lcom/telerik/android/data/DataItem;ILjava/util/List;)V
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;I",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 481
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "dataItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .local p3, "collection":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    invoke-virtual {p0, p1, p3}, Lcom/telerik/android/data/RadDataSource;->findSortIndex(Lcom/telerik/android/data/DataItem;Ljava/util/List;)I

    move-result v0

    .line 482
    .local v0, "sortIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 483
    move p2, v0

    .line 486
    :cond_0
    invoke-interface {p3, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 487
    return-void
.end method

.method insertNewItem(Lcom/telerik/android/common/CollectionChangedEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/common/CollectionChangedEvent<",
            "TE;>;)V"
        }
    .end annotation

    .line 460
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "info":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p1}, Lcom/telerik/android/common/CollectionChangedEvent;->getNewItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 461
    .local v1, "item":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/telerik/android/data/RadDataSource;->filterDescriptors:Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v2}, Lcom/telerik/android/common/ObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/android/data/ListViewFilterFunction;

    .line 462
    .local v3, "filter":Lcom/telerik/android/data/ListViewFilterFunction;
    invoke-interface {v3, v1}, Lcom/telerik/android/data/ListViewFilterFunction;->shouldIncludeItem(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 463
    return-void

    .line 465
    .end local v3    # "filter":Lcom/telerik/android/data/ListViewFilterFunction;
    :cond_0
    goto :goto_1

    .line 467
    :cond_1
    new-instance v2, Lcom/telerik/android/data/DataItem;

    invoke-direct {v2, v1}, Lcom/telerik/android/data/DataItem;-><init>(Ljava/lang/Object;)V

    .line 469
    .local v2, "dataItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-virtual {p1}, Lcom/telerik/android/common/CollectionChangedEvent;->getNewIndex()I

    move-result v3

    .line 470
    .local v3, "newIndex":I
    iget-object v4, p0, Lcom/telerik/android/data/RadDataSource;->groupDescriptors:Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v4}, Lcom/telerik/android/common/ObservableCollection;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 471
    invoke-virtual {p0, v2}, Lcom/telerik/android/data/RadDataSource;->groupItem(Lcom/telerik/android/data/DataItem;)V

    goto :goto_2

    .line 473
    :cond_2
    iget-object v4, p0, Lcom/telerik/android/data/RadDataSource;->view:Ljava/util/List;

    invoke-virtual {p0, v2, v3, v4}, Lcom/telerik/android/data/RadDataSource;->insertInCollection(Lcom/telerik/android/data/DataItem;ILjava/util/List;)V

    .line 476
    :goto_2
    iget-object v4, p0, Lcom/telerik/android/data/RadDataSource;->sourceCollection:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 477
    .end local v1    # "item":Ljava/lang/Object;, "TE;"
    .end local v2    # "dataItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .end local v3    # "newIndex":I
    goto :goto_0

    .line 478
    :cond_3
    return-void
.end method

.method public invalidateDescriptors()V
    .locals 2

    .line 301
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    iget-boolean v0, p0, Lcom/telerik/android/data/RadDataSource;->suspend:Z

    if-eqz v0, :cond_0

    .line 302
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->sourceCollection:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/telerik/android/data/RadDataSource;->filterItems(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 306
    .local v0, "view":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    invoke-virtual {p0, v0}, Lcom/telerik/android/data/RadDataSource;->sortItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 307
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/telerik/android/data/RadDataSource;->groupItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 309
    iput-object v0, p0, Lcom/telerik/android/data/RadDataSource;->view:Ljava/util/List;

    .line 311
    invoke-virtual {p0}, Lcom/telerik/android/data/RadDataSource;->onDataChanged()V

    .line 312
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->view:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method moveItem(Lcom/telerik/android/common/CollectionChangedEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/common/CollectionChangedEvent<",
            "TE;>;)V"
        }
    .end annotation

    .line 449
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "info":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->sourceCollection:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/telerik/android/common/CollectionChangedEvent;->getOldIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/data/DataItem;

    .line 450
    .local v0, "itemToMove":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    iget-object v1, p0, Lcom/telerik/android/data/RadDataSource;->sourceCollection:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/telerik/android/common/CollectionChangedEvent;->getOldIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 451
    iget-object v1, p0, Lcom/telerik/android/data/RadDataSource;->sourceCollection:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/telerik/android/common/CollectionChangedEvent;->getNewIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 452
    return-void
.end method

.method protected onDataChanged()V
    .locals 3

    .line 576
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->changedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/data/DataChangedListener;

    .line 577
    .local v1, "listener":Lcom/telerik/android/data/DataChangedListener;, "Lcom/telerik/android/data/DataChangedListener<TE;>;"
    new-instance v2, Lcom/telerik/android/data/DataChangeInfo;

    invoke-direct {v2}, Lcom/telerik/android/data/DataChangeInfo;-><init>()V

    invoke-interface {v1, v2}, Lcom/telerik/android/data/DataChangedListener;->dataChanged(Lcom/telerik/android/data/DataChangeInfo;)V

    .line 578
    .end local v1    # "listener":Lcom/telerik/android/data/DataChangedListener;, "Lcom/telerik/android/data/DataChangedListener<TE;>;"
    goto :goto_0

    .line 579
    :cond_0
    return-void
.end method

.method refresh(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)V"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "newSource":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->sourceCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 243
    iput-object p1, p0, Lcom/telerik/android/data/RadDataSource;->rawSource:Ljava/lang/Iterable;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/android/data/RadDataSource;->view:Ljava/util/List;

    .line 247
    if-nez p1, :cond_0

    .line 248
    return-void

    .line 251
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 252
    .local v1, "rawEntity":Ljava/lang/Object;, "TE;"
    new-instance v2, Lcom/telerik/android/data/DataItem;

    invoke-direct {v2, v1}, Lcom/telerik/android/data/DataItem;-><init>(Ljava/lang/Object;)V

    .line 253
    .local v2, "dataItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    iget-object v3, p0, Lcom/telerik/android/data/RadDataSource;->sourceCollection:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v1    # "rawEntity":Ljava/lang/Object;, "TE;"
    .end local v2    # "dataItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/telerik/android/data/RadDataSource;->invalidateDescriptors()V

    .line 257
    return-void
.end method

.method public removeDataChangeListener(Lcom/telerik/android/data/DataChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/DataChangedListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "listener":Lcom/telerik/android/data/DataChangedListener;, "Lcom/telerik/android/data/DataChangedListener<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->changedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method removeEmptyGroups(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 409
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 410
    .local v0, "groupsToRemove":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/telerik/android/data/DataItem<TE;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/android/data/DataItem;

    .line 411
    .local v2, "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-virtual {v2}, Lcom/telerik/android/data/DataItem;->groupKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 412
    invoke-virtual {v2}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 415
    :cond_0
    invoke-virtual {v2}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/telerik/android/data/RadDataSource;->removeEmptyGroups(Ljava/util/List;)V

    .line 416
    invoke-virtual {v2}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 417
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v2    # "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/android/data/DataItem;

    .line 424
    .local v2, "group":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 425
    .end local v2    # "group":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    goto :goto_2

    .line 426
    :cond_3
    return-void
.end method

.method removeFromGroup(Lcom/telerik/android/data/DataItem;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 429
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "dataItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .local p2, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/data/DataItem;

    .line 430
    .local v1, "group":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    return-void

    .line 434
    :cond_0
    invoke-virtual {v1}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/telerik/android/data/RadDataSource;->removeFromGroup(Lcom/telerik/android/data/DataItem;Ljava/util/List;)V

    .line 435
    .end local v1    # "group":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    goto :goto_0

    .line 436
    :cond_1
    return-void
.end method

.method removeItem(Lcom/telerik/android/common/CollectionChangedEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/common/CollectionChangedEvent<",
            "TE;>;)V"
        }
    .end annotation

    .line 393
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "info":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p1}, Lcom/telerik/android/common/CollectionChangedEvent;->getOldItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 394
    .local v1, "item":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/telerik/android/data/RadDataSource;->sourceCollection:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v1}, Lcom/telerik/android/data/RadDataSource;->findDataItem(Ljava/lang/Iterable;Ljava/lang/Object;)Lcom/telerik/android/data/DataItem;

    move-result-object v2

    .line 395
    .local v2, "dataItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    iget-object v3, p0, Lcom/telerik/android/data/RadDataSource;->sourceCollection:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 397
    iget-object v3, p0, Lcom/telerik/android/data/RadDataSource;->groupDescriptors:Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v3}, Lcom/telerik/android/common/ObservableCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/telerik/android/data/RadDataSource;->view:Ljava/util/List;

    invoke-virtual {p0, v3, v1}, Lcom/telerik/android/data/RadDataSource;->findDataItem(Ljava/lang/Iterable;Ljava/lang/Object;)Lcom/telerik/android/data/DataItem;

    move-result-object v2

    .line 399
    iget-object v3, p0, Lcom/telerik/android/data/RadDataSource;->view:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 401
    :cond_0
    iget-object v3, p0, Lcom/telerik/android/data/RadDataSource;->view:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/telerik/android/data/RadDataSource;->removeFromGroup(Lcom/telerik/android/data/DataItem;Ljava/util/List;)V

    .line 403
    .end local v1    # "item":Ljava/lang/Object;, "TE;"
    .end local v2    # "dataItem":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    :goto_1
    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->view:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/telerik/android/data/RadDataSource;->removeEmptyGroups(Ljava/util/List;)V

    .line 406
    return-void
.end method

.method replaceItem(Lcom/telerik/android/common/CollectionChangedEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/common/CollectionChangedEvent<",
            "TE;>;)V"
        }
    .end annotation

    .line 455
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "info":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    invoke-virtual {p0, p1}, Lcom/telerik/android/data/RadDataSource;->removeItem(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 456
    invoke-virtual {p0, p1}, Lcom/telerik/android/data/RadDataSource;->insertNewItem(Lcom/telerik/android/common/CollectionChangedEvent;)V

    .line 457
    return-void
.end method

.method public resumeUpdate()V
    .locals 1

    .line 202
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/telerik/android/data/RadDataSource;->resumeUpdate(Z)V

    .line 203
    return-void
.end method

.method public resumeUpdate(Z)V
    .locals 1
    .param p1, "refresh"    # Z

    .line 212
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/android/data/RadDataSource;->suspend:Z

    .line 213
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->rawSource:Ljava/lang/Iterable;

    invoke-virtual {p0, v0}, Lcom/telerik/android/data/RadDataSource;->refresh(Ljava/lang/Iterable;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setSource(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)V"
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->rawSource:Ljava/lang/Iterable;

    instance-of v1, v0, Lcom/telerik/android/common/ObservableCollection;

    if-eqz v1, :cond_0

    .line 267
    check-cast v0, Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v0, p0}, Lcom/telerik/android/common/ObservableCollection;->removeCollectionChangeListener(Lcom/telerik/android/common/CollectionChangeListener;)V

    .line 270
    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/android/data/RadDataSource;->refresh(Ljava/lang/Iterable;)V

    .line 272
    instance-of v0, p1, Lcom/telerik/android/common/ObservableCollection;

    if-eqz v0, :cond_1

    .line 273
    move-object v0, p1

    check-cast v0, Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v0, p0}, Lcom/telerik/android/common/ObservableCollection;->addCollectionChangeListener(Lcom/telerik/android/common/CollectionChangeListener;)V

    .line 275
    :cond_1
    return-void
.end method

.method public sortDescriptors()Lcom/telerik/android/common/ObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/telerik/android/common/ObservableCollection<",
            "Lcom/telerik/android/data/ListViewSortFunction;",
            ">;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->sortDescriptors:Lcom/telerik/android/common/ObservableCollection;

    return-object v0
.end method

.method sortItems(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;)",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    .local p1, "view":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->sortDescriptors:Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v0}, Lcom/telerik/android/common/ObservableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    return-object p1

    .line 382
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/telerik/android/data/DataItem<TE;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/android/data/DataItem;

    .line 384
    .local v2, "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v2    # "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    goto :goto_0

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/telerik/android/data/RadDataSource;->itemComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 389
    return-object v0
.end method

.method public suspendUpdate()V
    .locals 1

    .line 197
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/android/data/RadDataSource;->suspend:Z

    .line 198
    return-void
.end method

.method public view()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource;->view:Ljava/util/List;

    return-object v0
.end method
