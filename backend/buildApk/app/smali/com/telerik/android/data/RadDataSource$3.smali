.class Lcom/telerik/android/data/RadDataSource$3;
.super Ljava/lang/Object;
.source "RadDataSource.java"

# interfaces
.implements Lcom/telerik/android/common/CollectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/android/data/RadDataSource;->initializeDescriptorCollectionObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/telerik/android/common/CollectionChangeListener<",
        "Lcom/telerik/android/data/ListViewFilterFunction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/android/data/RadDataSource;


# direct methods
.method constructor <init>(Lcom/telerik/android/data/RadDataSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/android/data/RadDataSource;

    .line 278
    .local p0, "this":Lcom/telerik/android/data/RadDataSource$3;, "Lcom/telerik/android/data/RadDataSource$3;"
    iput-object p1, p0, Lcom/telerik/android/data/RadDataSource$3;->this$0:Lcom/telerik/android/data/RadDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collectionChanged(Lcom/telerik/android/common/CollectionChangedEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/common/CollectionChangedEvent<",
            "Lcom/telerik/android/data/ListViewFilterFunction;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p0, "this":Lcom/telerik/android/data/RadDataSource$3;, "Lcom/telerik/android/data/RadDataSource$3;"
    .local p1, "info":Lcom/telerik/android/common/CollectionChangedEvent;, "Lcom/telerik/android/common/CollectionChangedEvent<Lcom/telerik/android/data/ListViewFilterFunction;>;"
    iget-object v0, p0, Lcom/telerik/android/data/RadDataSource$3;->this$0:Lcom/telerik/android/data/RadDataSource;

    invoke-virtual {v0}, Lcom/telerik/android/data/RadDataSource;->invalidateDescriptors()V

    .line 282
    return-void
.end method
