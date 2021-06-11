.class public Lcom/telerik/widget/list/SlideLayoutManager;
.super Lcom/telerik/widget/list/SlideLayoutManagerBase;
.source "SlideLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/list/SlideLayoutManager$Transition;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field static final SLIDE_TRANSITION_SCALE:F = 0.7f

.field public static final VERTICAL:I = 0x1


# instance fields
.field private itemSpacing:I

.field private nextItemPreview:I

.field private previousItemPreview:I

.field private scrollOnTap:Z

.field private transitionMode:Lcom/telerik/widget/list/SlideLayoutManager$Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/telerik/widget/list/SlideLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .line 44
    invoke-direct {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;-><init>()V

    .line 20
    sget-object v0, Lcom/telerik/widget/list/SlideLayoutManager$Transition;->SLIDE_AWAY:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    iput-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->transitionMode:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->itemSpacing:I

    .line 23
    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->previousItemPreview:I

    .line 24
    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->nextItemPreview:I

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->scrollOnTap:Z

    .line 45
    invoke-virtual {p0, p2}, Lcom/telerik/widget/list/SlideLayoutManager;->setOrientation(I)V

    .line 46
    return-void
.end method


# virtual methods
.method protected alphaForIndex(I)F
    .locals 2
    .param p1, "layoutIndex"    # I

    .line 209
    iget-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->transitionMode:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    sget-object v1, Lcom/telerik/widget/list/SlideLayoutManager$Transition;->SLIDE_OVER:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    if-ne v0, v1, :cond_0

    .line 210
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 211
    const/4 v0, 0x0

    return v0

    .line 214
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected calculateFrontViewSize()V
    .locals 3

    .line 151
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewWidth:I

    .line 152
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewHeight:I

    .line 153
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewWidth:I

    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManager;->previousItemPreview:I

    iget v2, p0, Lcom/telerik/widget/list/SlideLayoutManager;->nextItemPreview:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewWidth:I

    goto :goto_0

    .line 156
    :cond_0
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewHeight:I

    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManager;->previousItemPreview:I

    iget v2, p0, Lcom/telerik/widget/list/SlideLayoutManager;->nextItemPreview:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewHeight:I

    .line 158
    :goto_0
    return-void
.end method

.method public getItemSpacing()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->itemSpacing:I

    return v0
.end method

.method public getNextItemPreview()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->nextItemPreview:I

    return v0
.end method

.method public getPreviousItemPreview()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->previousItemPreview:I

    return v0
.end method

.method public getTransitionMode()Lcom/telerik/widget/list/SlideLayoutManager$Transition;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->transitionMode:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    return-object v0
.end method

.method public isScrollOnTap()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->scrollOnTap:Z

    return v0
.end method

.method protected layoutView(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 179
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewWidth:I

    .line 180
    .local v0, "width":I
    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewHeight:I

    .line 182
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 183
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->getPaddingTop()I

    move-result v3

    .line 185
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->getOrientation()I

    move-result v4

    if-nez v4, :cond_0

    .line 186
    iget v4, p0, Lcom/telerik/widget/list/SlideLayoutManager;->previousItemPreview:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 188
    :cond_0
    iget v4, p0, Lcom/telerik/widget/list/SlideLayoutManager;->previousItemPreview:I

    add-int/2addr v3, v4

    .line 191
    :goto_0
    add-int v4, v2, v0

    .line 192
    .local v4, "right":I
    add-int v5, v3, v1

    .line 194
    .local v5, "bottom":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 196
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v6, :cond_1

    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 198
    .local v7, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v8

    .line 199
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v8

    .line 200
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v8

    .line 201
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v8

    .line 204
    .end local v7    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    move-object v8, p0

    move-object v9, p1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/telerik/widget/list/SlideLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 205
    return-void
.end method

.method protected nextItemsCount()I
    .locals 2

    .line 167
    invoke-super {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->nextItemsCount()I

    move-result v0

    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManager;->nextItemPreview:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method onTap(I)V
    .locals 1
    .param p1, "position"    # I

    .line 272
    iget-boolean v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->scrollOnTap:Z

    if-nez v0, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewPosition:I

    if-eq p1, v0, :cond_3

    .line 276
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewPosition:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->scrollToPrevious()V

    goto :goto_0

    .line 278
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewPosition:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->scrollToNext()V

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/SlideLayoutManager;->scrollToPosition(I)V

    .line 284
    :cond_3
    :goto_0
    return-void
.end method

.method protected previousItemsCount()I
    .locals 2

    .line 162
    invoke-super {p0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->previousItemsCount()I

    move-result v0

    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManager;->previousItemPreview:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method protected scaleXForIndex(I)F
    .locals 2
    .param p1, "layoutIndex"    # I

    .line 253
    iget-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->transitionMode:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    sget-object v1, Lcom/telerik/widget/list/SlideLayoutManager$Transition;->SLIDE_OVER:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    if-ne v0, v1, :cond_0

    .line 254
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 255
    const v0, 0x3f333333    # 0.7f

    return v0

    .line 258
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected scaleYForIndex(I)F
    .locals 2
    .param p1, "layoutIndex"    # I

    .line 263
    iget-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->transitionMode:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    sget-object v1, Lcom/telerik/widget/list/SlideLayoutManager$Transition;->SLIDE_OVER:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    if-ne v0, v1, :cond_0

    .line 264
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 265
    const v0, 0x3f333333    # 0.7f

    return v0

    .line 268
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected scrollViews(IF)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "progress"    # F

    .line 172
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 173
    .local v0, "actualProgress":F
    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 174
    invoke-super {p0, p1, v0}, Lcom/telerik/widget/list/SlideLayoutManagerBase;->scrollViews(IF)V

    .line 175
    return-void
.end method

.method public setItemSpacing(I)V
    .locals 2
    .param p1, "itemSpacing"    # I

    .line 81
    if-ltz p1, :cond_0

    .line 84
    iput p1, p0, Lcom/telerik/widget/list/SlideLayoutManager;->itemSpacing:I

    .line 85
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Item Spacing can\'t be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNextItemPreview(I)V
    .locals 2
    .param p1, "nextItemPreview"    # I

    .line 120
    if-ltz p1, :cond_0

    .line 123
    iput p1, p0, Lcom/telerik/widget/list/SlideLayoutManager;->nextItemPreview:I

    .line 124
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->removeAllViews()V

    .line 125
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The preview of items can\'t be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreviousItemPreview(I)V
    .locals 2
    .param p1, "previousItemPreview"    # I

    .line 142
    if-ltz p1, :cond_0

    .line 145
    iput p1, p0, Lcom/telerik/widget/list/SlideLayoutManager;->previousItemPreview:I

    .line 146
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->removeAllViews()V

    .line 147
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The preview of items can\'t be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScrollOnTap(Z)V
    .locals 0
    .param p1, "scrollOnTap"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/telerik/widget/list/SlideLayoutManager;->scrollOnTap:Z

    .line 64
    return-void
.end method

.method public setTransitionMode(Lcom/telerik/widget/list/SlideLayoutManager$Transition;)V
    .locals 0
    .param p1, "transitionMode"    # Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    .line 102
    iput-object p1, p0, Lcom/telerik/widget/list/SlideLayoutManager;->transitionMode:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    .line 103
    return-void
.end method

.method protected translationXForIndex(I)F
    .locals 3
    .param p1, "layoutIndex"    # I

    .line 219
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 220
    return v1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->transitionMode:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    sget-object v2, Lcom/telerik/widget/list/SlideLayoutManager$Transition;->SLIDE_OVER:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    if-ne v0, v2, :cond_1

    .line 223
    if-ltz p1, :cond_1

    .line 224
    return v1

    .line 227
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewWidth:I

    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManager;->itemSpacing:I

    add-int/2addr v0, v1

    mul-int v0, v0, p1

    int-to-float v0, v0

    return v0
.end method

.method protected translationYForIndex(I)F
    .locals 3
    .param p1, "layoutIndex"    # I

    .line 232
    invoke-virtual {p0}, Lcom/telerik/widget/list/SlideLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 233
    return v1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->transitionMode:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    sget-object v2, Lcom/telerik/widget/list/SlideLayoutManager$Transition;->SLIDE_OVER:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    if-ne v0, v2, :cond_1

    .line 236
    if-ltz p1, :cond_1

    .line 237
    return v1

    .line 240
    :cond_1
    iget v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->frontViewHeight:I

    iget v1, p0, Lcom/telerik/widget/list/SlideLayoutManager;->itemSpacing:I

    add-int/2addr v0, v1

    mul-int v0, v0, p1

    int-to-float v0, v0

    return v0
.end method

.method protected translationZForIndex(I)F
    .locals 2
    .param p1, "layoutIndex"    # I

    .line 245
    iget-object v0, p0, Lcom/telerik/widget/list/SlideLayoutManager;->transitionMode:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    sget-object v1, Lcom/telerik/widget/list/SlideLayoutManager$Transition;->SLIDE_OVER:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    if-ne v0, v1, :cond_0

    .line 246
    neg-int v0, p1

    int-to-float v0, v0

    return v0

    .line 248
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
