.class public Lcom/telerik/widget/list/ListViewAdapter;
.super Lcom/telerik/widget/list/ListViewAdapterBase;
.source "ListViewAdapter.java"


# instance fields
.field private items:Ljava/util/List;

.field private selectionServiceProvider:Lcom/telerik/android/data/SelectionAdapter;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1, "items"    # Ljava/util/List;

    .line 33
    new-instance v0, Lcom/telerik/widget/list/DefaultSelectionAdapter;

    new-instance v1, Lcom/telerik/android/data/SelectionService;

    invoke-direct {v1}, Lcom/telerik/android/data/SelectionService;-><init>()V

    invoke-direct {v0, v1}, Lcom/telerik/widget/list/DefaultSelectionAdapter;-><init>(Lcom/telerik/android/data/SelectionService;)V

    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/ListViewAdapter;-><init>(Ljava/util/List;Lcom/telerik/android/data/SelectionAdapter;)V

    .line 35
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewAdapter;->getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/DefaultSelectionAdapter;

    invoke-virtual {v0, p0}, Lcom/telerik/widget/list/DefaultSelectionAdapter;->setOwner(Lcom/telerik/widget/list/ListViewAdapter;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/telerik/android/data/SelectionAdapter;)V
    .locals 0
    .param p1, "items"    # Ljava/util/List;
    .param p2, "selectionAdapter"    # Lcom/telerik/android/data/SelectionAdapter;

    .line 38
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewAdapterBase;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewAdapter;->items:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/telerik/widget/list/ListViewAdapter;->selectionServiceProvider:Lcom/telerik/android/data/SelectionAdapter;

    .line 41
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewAdapter;->notifyItemInserted(I)V

    .line 66
    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/telerik/widget/list/ListViewAdapter;->add(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 153
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewAdapter;->isPositionValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItem(J)Ljava/lang/Object;
    .locals 5
    .param p1, "id"    # J

    .line 137
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/ListViewAdapter;->getItemId(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 139
    return-object v1

    .line 141
    .end local v1    # "item":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 267
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 270
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemId(Ljava/lang/Object;)J
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;

    .line 197
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public getPosition(J)I
    .locals 6
    .param p1, "id"    # J

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "position":I
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, "item":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 170
    return v0

    .line 172
    :cond_0
    nop

    .end local v2    # "item":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    .line 173
    goto :goto_0

    .line 174
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "searchItem"    # Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSelectionServiceProvider()Lcom/telerik/android/data/SelectionAdapter;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewAdapter;->selectionServiceProvider:Lcom/telerik/android/data/SelectionAdapter;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/telerik/widget/list/ListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ListViewAdapter;->onBindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "position"    # I

    .line 252
    instance-of v0, p1, Lcom/telerik/widget/list/ListViewTextHolder;

    if-nez v0, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/telerik/widget/list/ListViewTextHolder;

    .line 256
    .local v0, "textHolder":Lcom/telerik/widget/list/ListViewTextHolder;
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 257
    .local v1, "item":Ljava/lang/Object;
    iget-object v2, v0, Lcom/telerik/widget/list/ListViewTextHolder;->textView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 203
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 204
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/telerik/widget/list/R$layout;->simple_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 205
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/telerik/widget/list/ListViewTextHolder;

    sget v3, Lcom/telerik/widget/list/R$id;->text1:I

    invoke-direct {v2, v1, v3}, Lcom/telerik/widget/list/ListViewTextHolder;-><init>(Landroid/view/View;I)V

    return-object v2
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 90
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewAdapter;->notifyItemRemoved(I)V

    .line 92
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, "position":I
    const/4 v1, 0x0

    .line 77
    .local v1, "removedItem":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/ListViewAdapter;->isPositionValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/ListViewAdapter;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 80
    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public reorderItem(II)Z
    .locals 3
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 103
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "items":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 105
    .local v1, "removedItem":Ljava/lang/Object;
    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/ListViewAdapter;->notifyItemMoved(II)V

    .line 107
    const/4 v2, 0x1

    return v2
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .param p1, "items"    # Ljava/util/List;

    .line 125
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewAdapter;->items:Ljava/util/List;

    .line 126
    invoke-virtual {p0}, Lcom/telerik/widget/list/ListViewAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method

.method protected updateLayoutParams(Lcom/telerik/widget/list/ListViewHolder;Z)V
    .locals 3
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "orientationHorizontal"    # Z

    .line 209
    instance-of v0, p1, Lcom/telerik/widget/list/ListViewTextHolder;

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 214
    :cond_0
    const/4 v0, -0x2

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    .line 215
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    move-object v0, v2

    .local v0, "layoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    goto :goto_0

    .line 217
    .end local v0    # "layoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_1
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    move-object v0, v2

    .line 219
    .restart local v0    # "layoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/telerik/widget/list/ListViewTextHolder;

    iget-object v1, v1, Lcom/telerik/widget/list/ListViewTextHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void
.end method

.method protected updateMainLayoutParams(Lcom/telerik/widget/list/ListViewHolder;Z)V
    .locals 3
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "orientationHorizontal"    # Z

    .line 237
    instance-of v0, p1, Lcom/telerik/widget/list/ListViewTextHolder;

    if-nez v0, :cond_0

    .line 238
    return-void

    .line 242
    :cond_0
    const/4 v0, -0x2

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    .line 243
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v2

    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0

    .line 245
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v2

    .line 247
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/telerik/widget/list/ListViewTextHolder;

    iget-object v1, v1, Lcom/telerik/widget/list/ListViewTextHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-void
.end method

.method protected updateSwipeLayoutParams(Lcom/telerik/widget/list/ListViewHolder;Z)V
    .locals 3
    .param p1, "holder"    # Lcom/telerik/widget/list/ListViewHolder;
    .param p2, "orientationHorizontal"    # Z

    .line 223
    instance-of v0, p1, Lcom/telerik/widget/list/ListViewTextHolder;

    if-nez v0, :cond_0

    .line 224
    return-void

    .line 228
    :cond_0
    const/4 v0, -0x2

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    .line 229
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v2

    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0

    .line 231
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v2

    .line 233
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/telerik/widget/list/ListViewTextHolder;

    iget-object v1, v1, Lcom/telerik/widget/list/ListViewTextHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    return-void
.end method
