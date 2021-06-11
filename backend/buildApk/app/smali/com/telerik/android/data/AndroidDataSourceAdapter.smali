.class public Lcom/telerik/android/data/AndroidDataSourceAdapter;
.super Lcom/telerik/android/data/DataSourceAdapterBase;
.source "AndroidDataSourceAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/telerik/android/data/DataSourceAdapterBase<",
        "TE;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field adapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Landroid/widget/AdapterView;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Landroid/content/Context;",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 13
    .local p0, "this":Lcom/telerik/android/data/AndroidDataSourceAdapter;, "Lcom/telerik/android/data/AndroidDataSourceAdapter<TE;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p3, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p1, p2}, Lcom/telerik/android/data/DataSourceAdapterBase;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 14
    iput-object p3, p0, Lcom/telerik/android/data/AndroidDataSourceAdapter;->adapterView:Landroid/widget/AdapterView;

    .line 15
    if-eqz p3, :cond_0

    .line 16
    invoke-virtual {p3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/telerik/android/data/AndroidDataSourceAdapter;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/telerik/android/data/AndroidDataSourceAdapter;, "Lcom/telerik/android/data/AndroidDataSourceAdapter<TE;>;"
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/telerik/android/data/AndroidDataSourceAdapter;->selectionService()Lcom/telerik/android/data/SelectionService;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/telerik/android/data/AndroidDataSourceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/data/DataItem;

    invoke-virtual {v0, v1}, Lcom/telerik/android/data/SelectionService;->selectItem(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lcom/telerik/android/data/AndroidDataSourceAdapter;->notifyDataSetChanged()V

    .line 25
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/telerik/android/data/AndroidDataSourceAdapter;, "Lcom/telerik/android/data/AndroidDataSourceAdapter<TE;>;"
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/telerik/android/data/AndroidDataSourceAdapter;->selectionService()Lcom/telerik/android/data/SelectionService;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/telerik/android/data/AndroidDataSourceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/data/DataItem;

    invoke-virtual {v0, v1}, Lcom/telerik/android/data/SelectionService;->selectItem(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p0}, Lcom/telerik/android/data/AndroidDataSourceAdapter;->notifyDataSetChanged()V

    .line 31
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lcom/telerik/android/data/AndroidDataSourceAdapter;, "Lcom/telerik/android/data/AndroidDataSourceAdapter<TE;>;"
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/telerik/android/data/AndroidDataSourceAdapter;->selectionService()Lcom/telerik/android/data/SelectionService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/android/data/SelectionService;->clearSelection()V

    .line 36
    invoke-virtual {p0}, Lcom/telerik/android/data/AndroidDataSourceAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method
