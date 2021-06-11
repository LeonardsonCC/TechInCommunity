.class Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ListViewWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/ListViewWrapperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedDataObserver"
.end annotation


# instance fields
.field observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field final synthetic this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;


# direct methods
.method public constructor <init>(Lcom/telerik/widget/list/ListViewWrapperAdapter;Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/ListViewWrapperAdapter;
    .param p2, "observer"    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 546
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 547
    iput-object p2, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 548
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 553
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 557
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 558
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 563
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 567
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    iget-object v0, v0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    iget-object v0, v0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 568
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->notifyDataSetChanged()V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 571
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 585
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v2}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 586
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 575
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    iget-object v0, v0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    iget-object v0, v0, Lcom/telerik/widget/list/ListViewWrapperAdapter;->adapter:Lcom/telerik/widget/list/ListViewAdapterBase;

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->notifyDataSetChanged()V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$WrappedDataObserver;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getTopViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 581
    return-void
.end method
