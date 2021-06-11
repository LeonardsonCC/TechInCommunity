.class Lcom/telerik/widget/list/RadListView$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "RadListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/RadListView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/RadListView;

.field final synthetic val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/RadListView;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/RadListView;

    .line 479
    iput-object p1, p0, Lcom/telerik/widget/list/RadListView$3;->this$0:Lcom/telerik/widget/list/RadListView;

    iput-object p2, p0, Lcom/telerik/widget/list/RadListView$3;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2
    .param p1, "position"    # I

    .line 482
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView$3;->this$0:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/telerik/widget/list/RadListView$3;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getSpanSize(II)I

    move-result v0

    return v0
.end method
