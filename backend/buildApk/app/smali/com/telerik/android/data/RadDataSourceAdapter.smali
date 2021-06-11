.class public Lcom/telerik/android/data/RadDataSourceAdapter;
.super Lcom/telerik/android/data/DataSourceAdapterBase;
.source "RadDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/telerik/android/data/DataSourceAdapterBase<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
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

    .line 10
    .local p0, "this":Lcom/telerik/android/data/RadDataSourceAdapter;, "Lcom/telerik/android/data/RadDataSourceAdapter<TE;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/telerik/android/data/DataSourceAdapterBase;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 12
    return-void
.end method
