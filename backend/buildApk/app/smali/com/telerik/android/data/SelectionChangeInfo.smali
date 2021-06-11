.class public Lcom/telerik/android/data/SelectionChangeInfo;
.super Ljava/lang/Object;
.source "SelectionChangeInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private deselected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private selected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 10
    .local p0, "this":Lcom/telerik/android/data/SelectionChangeInfo;, "Lcom/telerik/android/data/SelectionChangeInfo<TE;>;"
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "deselectedItems":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/telerik/android/data/SelectionChangeInfo;->selected:Ljava/util/List;

    .line 12
    iput-object p2, p0, Lcom/telerik/android/data/SelectionChangeInfo;->deselected:Ljava/util/List;

    .line 14
    if-nez p1, :cond_0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/SelectionChangeInfo;->selected:Ljava/util/List;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/telerik/android/data/SelectionChangeInfo;->deselected:Ljava/util/List;

    if-nez v0, :cond_1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/data/SelectionChangeInfo;->deselected:Ljava/util/List;

    .line 21
    :cond_1
    return-void
.end method


# virtual methods
.method public deselectedItems()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/telerik/android/data/SelectionChangeInfo;, "Lcom/telerik/android/data/SelectionChangeInfo<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionChangeInfo;->deselected:Ljava/util/List;

    return-object v0
.end method

.method public selectedItems()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .line 24
    .local p0, "this":Lcom/telerik/android/data/SelectionChangeInfo;, "Lcom/telerik/android/data/SelectionChangeInfo<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/data/SelectionChangeInfo;->selected:Ljava/util/List;

    return-object v0
.end method
