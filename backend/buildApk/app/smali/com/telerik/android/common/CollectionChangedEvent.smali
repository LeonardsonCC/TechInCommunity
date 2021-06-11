.class public Lcom/telerik/android/common/CollectionChangedEvent;
.super Ljava/lang/Object;
.source "CollectionChangedEvent.java"


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
.field private action:Lcom/telerik/android/common/CollectionChangeAction;

.field private newIndex:I

.field private newItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private oldIndex:I

.field private oldItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TE;>;"
        }
    .end annotation
.end field

.field source:Lcom/telerik/android/common/ObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/telerik/android/common/ObservableCollection<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;)V
    .locals 7
    .param p2, "action"    # Lcom/telerik/android/common/CollectionChangeAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/common/ObservableCollection<",
            "TE;>;",
            "Lcom/telerik/android/common/CollectionChangeAction;",
            ")V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    .local p1, "source":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<TE;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/telerik/android/common/CollectionChangedEvent;-><init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;Ljava/util/List;Ljava/util/List;II)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/telerik/android/common/ObservableCollection;Lcom/telerik/android/common/CollectionChangeAction;Ljava/util/List;Ljava/util/List;II)V
    .locals 0
    .param p2, "action"    # Lcom/telerik/android/common/CollectionChangeAction;
    .param p5, "oldIndex"    # I
    .param p6, "newIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/common/ObservableCollection<",
            "+TE;>;",
            "Lcom/telerik/android/common/CollectionChangeAction;",
            "Ljava/util/List<",
            "+TE;>;",
            "Ljava/util/List<",
            "+TE;>;II)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    .local p1, "source":Lcom/telerik/android/common/ObservableCollection;, "Lcom/telerik/android/common/ObservableCollection<+TE;>;"
    .local p3, "oldItems":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .local p4, "newItems":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/telerik/android/common/CollectionChangedEvent;->action:Lcom/telerik/android/common/CollectionChangeAction;

    .line 28
    iput-object p3, p0, Lcom/telerik/android/common/CollectionChangedEvent;->oldItems:Ljava/util/List;

    .line 29
    iput-object p4, p0, Lcom/telerik/android/common/CollectionChangedEvent;->newItems:Ljava/util/List;

    .line 30
    iput p5, p0, Lcom/telerik/android/common/CollectionChangedEvent;->oldIndex:I

    .line 31
    iput p6, p0, Lcom/telerik/android/common/CollectionChangedEvent;->newIndex:I

    .line 32
    iput-object p1, p0, Lcom/telerik/android/common/CollectionChangedEvent;->source:Lcom/telerik/android/common/ObservableCollection;

    .line 33
    return-void
.end method


# virtual methods
.method public action()Lcom/telerik/android/common/CollectionChangeAction;
    .locals 1

    .line 55
    .local p0, "this":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/common/CollectionChangedEvent;->action:Lcom/telerik/android/common/CollectionChangeAction;

    return-object v0
.end method

.method public getNewIndex()I
    .locals 1

    .line 82
    .local p0, "this":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    iget v0, p0, Lcom/telerik/android/common/CollectionChangedEvent;->newIndex:I

    return v0
.end method

.method public getNewItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+TE;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/common/CollectionChangedEvent;->newItems:Ljava/util/List;

    return-object v0
.end method

.method public getOldIndex()I
    .locals 1

    .line 91
    .local p0, "this":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    iget v0, p0, Lcom/telerik/android/common/CollectionChangedEvent;->oldIndex:I

    return v0
.end method

.method public getOldItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+TE;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/common/CollectionChangedEvent;->oldItems:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Lcom/telerik/android/common/ObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/telerik/android/common/ObservableCollection<",
            "+TE;>;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<TE;>;"
    iget-object v0, p0, Lcom/telerik/android/common/CollectionChangedEvent;->source:Lcom/telerik/android/common/ObservableCollection;

    return-object v0
.end method
