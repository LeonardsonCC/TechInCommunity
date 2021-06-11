.class public Lcom/telerik/android/data/DataSourceAdapterBase;
.super Landroid/widget/BaseAdapter;
.source "DataSourceAdapterBase.java"

# interfaces
.implements Lcom/telerik/android/data/DataChangedListener;
.implements Lcom/telerik/android/data/SelectionChangeListener;
.implements Lcom/telerik/android/data/CurrentItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/telerik/android/data/DataChangedListener<",
        "TE;>;",
        "Lcom/telerik/android/data/SelectionChangeListener<",
        "Lcom/telerik/android/data/DataItem<",
        "TE;>;>;",
        "Lcom/telerik/android/data/CurrentItemChangedListener<",
        "TE;>;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field currencyService:Lcom/telerik/android/data/CurrencyService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/telerik/android/data/CurrencyService<",
            "TE;>;"
        }
    .end annotation
.end field

.field dataSource:Lcom/telerik/android/data/RadDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/telerik/android/data/RadDataSource<",
            "TE;>;"
        }
    .end annotation
.end field

.field selectionService:Lcom/telerik/android/data/SelectionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/telerik/android/data/SelectionService<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field viewType:Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 13
    new-instance v0, Lcom/telerik/android/data/RadDataSource;

    invoke-direct {v0}, Lcom/telerik/android/data/RadDataSource;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->dataSource:Lcom/telerik/android/data/RadDataSource;

    .line 14
    new-instance v0, Lcom/telerik/android/data/SelectionService;

    invoke-direct {v0}, Lcom/telerik/android/data/SelectionService;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->selectionService:Lcom/telerik/android/data/SelectionService;

    .line 20
    iput-object p2, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->context:Landroid/content/Context;

    .line 21
    new-instance v0, Lcom/telerik/android/data/CurrencyService;

    invoke-direct {v0, p1}, Lcom/telerik/android/data/CurrencyService;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->currencyService:Lcom/telerik/android/data/CurrencyService;

    .line 22
    iget-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->dataSource:Lcom/telerik/android/data/RadDataSource;

    invoke-virtual {v0, p1}, Lcom/telerik/android/data/RadDataSource;->setSource(Ljava/lang/Iterable;)V

    .line 23
    iget-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->dataSource:Lcom/telerik/android/data/RadDataSource;

    invoke-virtual {v0, p0}, Lcom/telerik/android/data/RadDataSource;->addDataChangeListener(Lcom/telerik/android/data/DataChangedListener;)V

    .line 24
    iget-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->selectionService:Lcom/telerik/android/data/SelectionService;

    invoke-virtual {v0, p0}, Lcom/telerik/android/data/SelectionService;->addSelectionChangeListener(Lcom/telerik/android/data/SelectionChangeListener;)V

    .line 25
    return-void
.end method

.method private createNormalView(Lcom/telerik/android/data/DataItem;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    .local p1, "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/telerik/android/data/DataItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Lcom/telerik/android/data/DataItem;->groupKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    return-object v0
.end method

.method private createSelectedView(Lcom/telerik/android/data/DataItem;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    .local p1, "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-direct {p0, p1}, Lcom/telerik/android/data/DataSourceAdapterBase;->createNormalView(Lcom/telerik/android/data/DataItem;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "result":Landroid/view/View;
    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 88
    return-object v0
.end method

.method private getDataSourceView()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->viewType:Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    sget-object v1, Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;->FLAT:Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->dataSource:Lcom/telerik/android/data/RadDataSource;

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->flatView()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->dataSource:Lcom/telerik/android/data/RadDataSource;

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->view()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createCurrentView(Lcom/telerik/android/data/DataItem;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    .local p1, "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    invoke-direct {p0, p1}, Lcom/telerik/android/data/DataSourceAdapterBase;->createSelectedView(Lcom/telerik/android/data/DataItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public currentItemChanged(Lcom/telerik/android/data/CurrentItemChangedInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/CurrentItemChangedInfo<",
            "TE;>;)V"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    .local p1, "changeInfo":Lcom/telerik/android/data/CurrentItemChangedInfo;, "Lcom/telerik/android/data/CurrentItemChangedInfo<TE;>;"
    invoke-virtual {p0}, Lcom/telerik/android/data/DataSourceAdapterBase;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method public dataChanged(Lcom/telerik/android/data/DataChangeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/DataChangeInfo<",
            "TE;>;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    .local p1, "info":Lcom/telerik/android/data/DataChangeInfo;, "Lcom/telerik/android/data/DataChangeInfo<TE;>;"
    invoke-virtual {p0}, Lcom/telerik/android/data/DataSourceAdapterBase;->notifyDataSetInvalidated()V

    .line 109
    return-void
.end method

.method public dataSource()Lcom/telerik/android/data/RadDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/telerik/android/data/RadDataSource<",
            "TE;>;"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->dataSource:Lcom/telerik/android/data/RadDataSource;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 37
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    invoke-direct {p0}, Lcom/telerik/android/data/DataSourceAdapterBase;->getDataSourceView()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 42
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    invoke-direct {p0}, Lcom/telerik/android/data/DataSourceAdapterBase;->getDataSourceView()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 47
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    invoke-direct {p0}, Lcom/telerik/android/data/DataSourceAdapterBase;->getDataSourceView()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/data/DataItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 52
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    invoke-direct {p0}, Lcom/telerik/android/data/DataSourceAdapterBase;->getDataSourceView()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/data/DataItem;

    .line 53
    .local v0, "item":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    iget-object v1, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->selectionService:Lcom/telerik/android/data/SelectionService;

    invoke-virtual {v1, v0}, Lcom/telerik/android/data/SelectionService;->isItemSelected(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-direct {p0, v0}, Lcom/telerik/android/data/DataSourceAdapterBase;->createSelectedView(Lcom/telerik/android/data/DataItem;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->currencyService:Lcom/telerik/android/data/CurrencyService;

    invoke-virtual {v0}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/telerik/android/data/CurrencyService;->isCurrent(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p0, v0}, Lcom/telerik/android/data/DataSourceAdapterBase;->createCurrentView(Lcom/telerik/android/data/DataItem;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 61
    :cond_1
    invoke-direct {p0, v0}, Lcom/telerik/android/data/DataSourceAdapterBase;->createNormalView(Lcom/telerik/android/data/DataItem;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getViewType()Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;
    .locals 1

    .line 65
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->viewType:Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    return-object v0
.end method

.method public selectionChanged(Lcom/telerik/android/data/SelectionChangeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/SelectionChangeInfo<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    .local p1, "info":Lcom/telerik/android/data/SelectionChangeInfo;, "Lcom/telerik/android/data/SelectionChangeInfo<Lcom/telerik/android/data/DataItem<TE;>;>;"
    invoke-virtual {p0}, Lcom/telerik/android/data/DataSourceAdapterBase;->notifyDataSetChanged()V

    .line 114
    return-void
.end method

.method public selectionService()Lcom/telerik/android/data/SelectionService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/telerik/android/data/SelectionService<",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;>;"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->selectionService:Lcom/telerik/android/data/SelectionService;

    return-object v0
.end method

.method public setViewType(Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;)V
    .locals 1
    .param p1, "value"    # Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    .line 69
    .local p0, "this":Lcom/telerik/android/data/DataSourceAdapterBase;, "Lcom/telerik/android/data/DataSourceAdapterBase<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->viewType:Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    if-ne v0, p1, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/telerik/android/data/DataSourceAdapterBase;->viewType:Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    .line 74
    invoke-virtual {p0}, Lcom/telerik/android/data/DataSourceAdapterBase;->notifyDataSetInvalidated()V

    .line 75
    return-void
.end method
