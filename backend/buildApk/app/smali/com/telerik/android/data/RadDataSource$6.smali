.class Lcom/telerik/android/data/RadDataSource$6;
.super Ljava/lang/Object;
.source "RadDataSource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/android/data/RadDataSource;->groupBy(Ljava/util/List;Lcom/telerik/android/data/ListViewGroupFunction;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/telerik/android/data/DataItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/android/data/RadDataSource;


# direct methods
.method constructor <init>(Lcom/telerik/android/data/RadDataSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/android/data/RadDataSource;

    .line 368
    .local p0, "this":Lcom/telerik/android/data/RadDataSource$6;, "Lcom/telerik/android/data/RadDataSource$6;"
    iput-object p1, p0, Lcom/telerik/android/data/RadDataSource$6;->this$0:Lcom/telerik/android/data/RadDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/telerik/android/data/DataItem;Lcom/telerik/android/data/DataItem;)I
    .locals 2
    .param p1, "first"    # Lcom/telerik/android/data/DataItem;
    .param p2, "second"    # Lcom/telerik/android/data/DataItem;

    .line 371
    .local p0, "this":Lcom/telerik/android/data/RadDataSource$6;, "Lcom/telerik/android/data/RadDataSource$6;"
    invoke-virtual {p1}, Lcom/telerik/android/data/DataItem;->groupKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/telerik/android/data/DataItem;->groupKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 368
    .local p0, "this":Lcom/telerik/android/data/RadDataSource$6;, "Lcom/telerik/android/data/RadDataSource$6;"
    check-cast p1, Lcom/telerik/android/data/DataItem;

    check-cast p2, Lcom/telerik/android/data/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/telerik/android/data/RadDataSource$6;->compare(Lcom/telerik/android/data/DataItem;Lcom/telerik/android/data/DataItem;)I

    move-result p1

    return p1
.end method
