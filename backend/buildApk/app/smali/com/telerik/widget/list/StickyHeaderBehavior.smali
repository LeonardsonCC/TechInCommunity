.class public Lcom/telerik/widget/list/StickyHeaderBehavior;
.super Lcom/telerik/widget/list/ListViewBehavior;
.source "StickyHeaderBehavior.java"


# static fields
.field static final INVALID_POSITION:I = -0x1


# instance fields
.field adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

.field dataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field isDataObserverRegistered:Z

.field private isHorizontal:Z

.field protected stickyHeaderImage:Landroid/graphics/drawable/Drawable;

.field private stickyHeaderImageCache:Landroid/graphics/drawable/Drawable;

.field private stickyHeaderPositionCache:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewBehavior;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderPositionCache:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->isHorizontal:Z

    .line 28
    iput-boolean v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->isDataObserverRegistered:Z

    .line 34
    new-instance v0, Lcom/telerik/widget/list/StickyHeaderBehavior$1;

    invoke-direct {v0, p0}, Lcom/telerik/widget/list/StickyHeaderBehavior$1;-><init>(Lcom/telerik/widget/list/StickyHeaderBehavior;)V

    iput-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 65
    return-void
.end method

.method private isHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 241
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->isGroupHeader(I)Z

    move-result v0

    return v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private placeImageOnBottom(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 7
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "view"    # Landroid/view/View;

    .line 266
    iget-boolean v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->isHorizontal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 268
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 269
    .local v2, "width":I
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 271
    .local v3, "leftBounds":I
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v3, v2

    add-int v6, v3, v2

    invoke-direct {v4, v3, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v4

    .line 272
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 274
    .end local v0    # "left":I
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "width":I
    .end local v3    # "leftBounds":I
    :cond_0
    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 276
    .local v0, "top":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 277
    .local v2, "height":I
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 278
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 279
    .local v3, "topBounds":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int v6, v3, v2

    invoke-direct {v4, v1, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v4

    .line 280
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 283
    .end local v0    # "top":I
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "height":I
    .end local v3    # "topBounds":I
    :cond_2
    :goto_0
    return-void
.end method

.method private placeImageOnTop(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 7
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "view"    # Landroid/view/View;

    .line 248
    iget-boolean v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->isHorizontal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 250
    .local v0, "right":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 251
    .local v2, "width":I
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v0, v3, :cond_0

    .line 252
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v3

    .line 253
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 255
    .end local v0    # "right":I
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "width":I
    :cond_0
    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 257
    .local v0, "bottom":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 258
    .local v2, "height":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v0, v3, :cond_2

    .line 259
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-direct {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v3

    .line 260
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 263
    .end local v0    # "bottom":I
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "height":I
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected createImageFromView(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 236
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 237
    .local v2, "swipeImage":Landroid/graphics/drawable/BitmapDrawable;
    return-object v2
.end method

.method protected getItemHeaderPosition(I)I
    .locals 2
    .param p1, "itemPosition"    # I

    .line 217
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/StickyHeaderBehavior;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    return p1

    .line 221
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 222
    invoke-direct {p0, v0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->isHeader(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    return v0

    .line 221
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 227
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method protected getStickyImageForPosition(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "position"    # I

    .line 166
    iget v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderPositionCache:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderImageCache:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/StickyHeaderBehavior;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, "headerView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->createImageFromView(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderImageCache:Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    iput p1, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderPositionCache:I

    .line 172
    .end local v0    # "headerView":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderImageCache:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getViewForPosition(I)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I

    .line 176
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewAdapterBase;

    .line 177
    .local v0, "adapter":Lcom/telerik/widget/list/ListViewAdapterBase;
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/telerik/widget/list/RadListView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewHolder;

    .line 178
    .local v1, "viewHolder":Lcom/telerik/widget/list/ListViewHolder;
    if-nez v1, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->getItemViewType(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/telerik/widget/list/ListViewAdapterBase;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/telerik/widget/list/ListViewHolder;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1, p1}, Lcom/telerik/widget/list/ListViewAdapterBase;->onBindViewHolder(Lcom/telerik/widget/list/ListViewHolder;I)V

    .line 182
    iget-object v2, v1, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    .line 183
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_0

    .line 184
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 185
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getWidth()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 193
    .local v3, "ownerMeasureSpecWidth":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/telerik/widget/list/RadListView;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "ownerMeasureSpecHeight":I
    goto :goto_0

    .line 195
    .end local v3    # "ownerMeasureSpecWidth":I
    .end local v4    # "ownerMeasureSpecHeight":I
    :cond_1
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 196
    .restart local v3    # "ownerMeasureSpecWidth":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/telerik/widget/list/RadListView;->getHeight()I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 199
    .restart local v4    # "ownerMeasureSpecHeight":I
    :goto_0
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/telerik/widget/list/RadListView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/telerik/widget/list/RadListView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    .line 200
    .local v6, "paddingWidth":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/telerik/widget/list/RadListView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/telerik/widget/list/RadListView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 202
    .local v7, "paddingHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 203
    .local v8, "viewWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 205
    .local v9, "viewHeight":I
    invoke-static {v3, v6, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 206
    .local v10, "viewMeasureSpecWidth":I
    invoke-static {v4, v7, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 208
    .local v11, "viewMeasureSpecHeight":I
    invoke-virtual {v2, v10, v11}, Landroid/view/View;->measure(II)V

    .line 209
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v2, v5, v5, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 211
    return-object v2

    .line 213
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "ownerMeasureSpecWidth":I
    .end local v4    # "ownerMeasureSpecHeight":I
    .end local v6    # "paddingWidth":I
    .end local v7    # "paddingHeight":I
    .end local v8    # "viewWidth":I
    .end local v9    # "viewHeight":I
    .end local v10    # "viewMeasureSpecWidth":I
    .end local v11    # "viewMeasureSpecHeight":I
    :cond_2
    iget-object v2, v1, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    return-object v2
.end method

.method public invalidate()V
    .locals 1

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderPositionCache:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderImage:Landroid/graphics/drawable/Drawable;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->onScrolled(II)V

    .line 71
    return-void
.end method

.method onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 98
    iget-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->isDataObserverRegistered:Z

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->isDataObserverRegistered:Z

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V

    .line 103
    iput-object p1, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 104
    if-eqz p1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->isDataObserverRegistered:Z

    .line 108
    :cond_1
    return-void
.end method

.method public onAttached(Lcom/telerik/widget/list/RadListView;)V
    .locals 2
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 75
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAttached(Lcom/telerik/widget/list/RadListView;)V

    .line 76
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 81
    iget-object v1, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 82
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telerik/widget/list/RadListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->isDataObserverRegistered:Z

    .line 84
    return-void
.end method

.method public onDetached(Lcom/telerik/widget/list/RadListView;)V
    .locals 2
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 88
    iget-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->isDataObserverRegistered:Z

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->dataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->isDataObserverRegistered:Z

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 93
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onDetached(Lcom/telerik/widget/list/RadListView;)V

    .line 94
    return-void
.end method

.method public onDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 160
    iget-object v0, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onScrolled(II)V
    .locals 9
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 112
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->isHorizontal:Z

    .line 113
    invoke-virtual {p0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 115
    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v2, :cond_1

    .line 116
    return-void

    .line 119
    :cond_1
    move-object v2, v1

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 120
    .local v2, "headerDeterminerPosition":I
    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v3

    .line 121
    .local v3, "headerChangerCandidate":I
    if-gez v2, :cond_2

    .line 122
    return-void

    .line 124
    :cond_2
    if-gez v3, :cond_3

    .line 125
    move v3, v2

    .line 128
    :cond_3
    if-ltz p1, :cond_4

    if-gez p2, :cond_5

    .line 129
    :cond_4
    move v4, v3

    .line 130
    .local v4, "change":I
    move v3, v2

    .line 131
    move v2, v4

    .line 134
    .end local v4    # "change":I
    :cond_5
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/StickyHeaderBehavior;->getItemHeaderPosition(I)I

    move-result v4

    .line 135
    .local v4, "stickyHeaderPosition":I
    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/StickyHeaderBehavior;->getItemHeaderPosition(I)I

    move-result v5

    .line 137
    .local v5, "stickyHeaderCandidatePosition":I
    invoke-virtual {p0, v4}, Lcom/telerik/widget/list/StickyHeaderBehavior;->getStickyImageForPosition(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderImage:Landroid/graphics/drawable/Drawable;

    .line 138
    if-ltz p1, :cond_6

    if-gez p2, :cond_7

    .line 139
    :cond_6
    invoke-virtual {p0, v5}, Lcom/telerik/widget/list/StickyHeaderBehavior;->getStickyImageForPosition(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderImage:Landroid/graphics/drawable/Drawable;

    .line 142
    :cond_7
    if-eqz v3, :cond_b

    .line 143
    if-eq v4, v5, :cond_a

    .line 144
    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/StickyHeaderBehavior;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "headerChangerView":Landroid/view/View;
    if-ltz p1, :cond_9

    if-gez p2, :cond_8

    goto :goto_1

    .line 149
    :cond_8
    iget-object v6, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6, v0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->placeImageOnTop(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    goto :goto_2

    .line 147
    :cond_9
    :goto_1
    iget-object v6, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6, v0}, Lcom/telerik/widget/list/StickyHeaderBehavior;->placeImageOnBottom(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 151
    .end local v0    # "headerChangerView":Landroid/view/View;
    :goto_2
    goto :goto_3

    .line 152
    :cond_a
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v6, v0, v0, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v6

    .line 153
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/telerik/widget/list/StickyHeaderBehavior;->stickyHeaderImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 156
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_b
    :goto_3
    return-void
.end method
