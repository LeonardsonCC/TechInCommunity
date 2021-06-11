.class Lcom/telerik/android/data/RadDataSource$1;
.super Ljava/lang/Object;
.source "RadDataSource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/android/data/RadDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/telerik/android/data/DataItem<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/android/data/RadDataSource;


# direct methods
.method constructor <init>(Lcom/telerik/android/data/RadDataSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/android/data/RadDataSource;

    .line 36
    .local p0, "this":Lcom/telerik/android/data/RadDataSource$1;, "Lcom/telerik/android/data/RadDataSource$1;"
    iput-object p1, p0, Lcom/telerik/android/data/RadDataSource$1;->this$0:Lcom/telerik/android/data/RadDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/telerik/android/data/DataItem;Lcom/telerik/android/data/DataItem;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;",
            "Lcom/telerik/android/data/DataItem<",
            "TE;>;)I"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/telerik/android/data/RadDataSource$1;, "Lcom/telerik/android/data/RadDataSource$1;"
    .local p1, "item1":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    .local p2, "item2":Lcom/telerik/android/data/DataItem;, "Lcom/telerik/android/data/DataItem<TE;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, "result":I
    iget-object v1, p0, Lcom/telerik/android/data/RadDataSource$1;->this$0:Lcom/telerik/android/data/RadDataSource;

    iget-object v1, v1, Lcom/telerik/android/data/RadDataSource;->sortDescriptors:Lcom/telerik/android/common/ObservableCollection;

    invoke-virtual {v1}, Lcom/telerik/android/common/ObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/android/data/ListViewSortFunction;

    .line 41
    .local v2, "sortDescriptor":Lcom/telerik/android/data/ListViewSortFunction;
    invoke-virtual {p1}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lcom/telerik/android/data/DataItem;->entity()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/telerik/android/data/ListViewSortFunction;->compareItems(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    goto :goto_1

    .line 45
    .end local v2    # "sortDescriptor":Lcom/telerik/android/data/ListViewSortFunction;
    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 36
    .local p0, "this":Lcom/telerik/android/data/RadDataSource$1;, "Lcom/telerik/android/data/RadDataSource$1;"
    check-cast p1, Lcom/telerik/android/data/DataItem;

    check-cast p2, Lcom/telerik/android/data/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/telerik/android/data/RadDataSource$1;->compare(Lcom/telerik/android/data/DataItem;Lcom/telerik/android/data/DataItem;)I

    move-result p1

    return p1
.end method
