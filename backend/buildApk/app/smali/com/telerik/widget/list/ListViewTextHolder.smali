.class public Lcom/telerik/widget/list/ListViewTextHolder;
.super Lcom/telerik/widget/list/ListViewHolder;
.source "ListViewTextHolder.java"


# instance fields
.field public textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 21
    sget v0, Lcom/telerik/widget/list/R$id;->groupHeaderText:I

    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/ListViewTextHolder;-><init>(Landroid/view/View;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "textViewResourceId"    # I

    .line 29
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ListViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewTextHolder;->textView:Landroid/widget/TextView;

    .line 32
    return-void
.end method
