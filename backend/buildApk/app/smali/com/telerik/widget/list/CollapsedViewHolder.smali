.class public Lcom/telerik/widget/list/CollapsedViewHolder;
.super Lcom/telerik/widget/list/ListViewHolder;
.source "CollapsedViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;

    .line 8
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ListViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 10
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 11
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v2

    .line 13
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    return-void
.end method
