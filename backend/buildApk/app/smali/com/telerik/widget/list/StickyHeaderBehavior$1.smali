.class Lcom/telerik/widget/list/StickyHeaderBehavior$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "StickyHeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/StickyHeaderBehavior;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/StickyHeaderBehavior;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/StickyHeaderBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/StickyHeaderBehavior;

    .line 34
    iput-object p1, p0, Lcom/telerik/widget/list/StickyHeaderBehavior$1;->this$0:Lcom/telerik/widget/list/StickyHeaderBehavior;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior$1;->this$0:Lcom/telerik/widget/list/StickyHeaderBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->invalidate()V

    .line 38
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 42
    iget-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior$1;->this$0:Lcom/telerik/widget/list/StickyHeaderBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->invalidate()V

    .line 43
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior$1;->this$0:Lcom/telerik/widget/list/StickyHeaderBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->invalidate()V

    .line 48
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 52
    iget-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior$1;->this$0:Lcom/telerik/widget/list/StickyHeaderBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->invalidate()V

    .line 53
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 57
    iget-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior$1;->this$0:Lcom/telerik/widget/list/StickyHeaderBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->invalidate()V

    .line 58
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 62
    iget-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior$1;->this$0:Lcom/telerik/widget/list/StickyHeaderBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->invalidate()V

    .line 63
    return-void
.end method
