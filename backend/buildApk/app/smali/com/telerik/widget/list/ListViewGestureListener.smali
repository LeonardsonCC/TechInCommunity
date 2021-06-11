.class public Lcom/telerik/widget/list/ListViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ListViewGestureListener.java"


# static fields
.field private static final INVALID_ID:I = -0x1


# instance fields
.field private activePointerId:I

.field private detector:Landroid/view/GestureDetector;

.field private gestureStartX:F

.field private gestureStartY:F

.field private hasMoved:Z

.field private isLongPress:Z

.field protected owner:Lcom/telerik/widget/list/RadListView;

.field private touchSlopSquare:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->activePointerId:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->hasMoved:Z

    .line 26
    iput-boolean v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->isLongPress:Z

    .line 34
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->detector:Landroid/view/GestureDetector;

    .line 35
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ListViewGestureListener;->initTouchSlop(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/telerik/widget/list/RadListView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "owner"    # Lcom/telerik/widget/list/RadListView;

    .line 39
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/ListViewGestureListener;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    .line 41
    return-void
.end method

.method private initTouchSlop(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 352
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 353
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 354
    .local v1, "touchSlop":I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->touchSlopSquare:I

    .line 355
    return-void
.end method

.method private startEventHandling(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 45
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/telerik/widget/list/ListViewGestureListener;->gestureStartX:F

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/telerik/widget/list/ListViewGestureListener;->gestureStartY:F

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/telerik/widget/list/ListViewGestureListener;->activePointerId:I

    .line 48
    return-void
.end method


# virtual methods
.method public onActionUpOrCancel(Z)Z
    .locals 6
    .param p1, "isCanceled"    # Z

    .line 232
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 233
    return v1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/RadListView;->notifyOnUpOrCancel(Z)V

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "result":Z
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/ListViewBehavior;

    .line 239
    .local v3, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v3, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onActionUpOrCancel(Z)Z

    move-result v4

    .line 240
    .local v4, "behaviorResult":Z
    if-nez v0, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    move v0, v5

    .line 241
    .end local v3    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    .end local v4    # "behaviorResult":Z
    goto :goto_0

    .line 242
    :cond_3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "clickedView"    # Landroid/view/View;

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->isLongPress:Z

    .line 296
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/RadListView;->notifyOnClick(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewBehavior;

    .line 302
    .local v1, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v1, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onClick(Landroid/view/View;)V

    .line 303
    .end local v1    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_0

    .line 304
    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent2"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v2"    # F

    .line 339
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 340
    return v1

    .line 343
    :cond_0
    const/4 v0, 0x0

    .line 344
    .local v0, "result":Z
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/ListViewBehavior;

    .line 345
    .local v3, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/telerik/widget/list/ListViewBehavior;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v4

    .line 346
    .local v4, "behaviorResult":Z
    if-nez v0, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    move v0, v5

    .line 347
    .end local v3    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    .end local v4    # "behaviorResult":Z
    goto :goto_0

    .line 348
    :cond_3
    return v0
.end method

.method public onInterceptTouchEvent(Lcom/telerik/widget/list/RadListView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "owner"    # Lcom/telerik/widget/list/RadListView;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 169
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 170
    return v1

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 174
    .local v2, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v2, p2}, Lcom/telerik/widget/list/ListViewBehavior;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    return v1

    .line 177
    .end local v2    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    :cond_1
    goto :goto_0

    .line 178
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "clickedView"    # Landroid/view/View;

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "result":Z
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 309
    return v2

    .line 312
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/telerik/widget/list/ListViewGestureListener;->isLongPress:Z

    .line 313
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v3, p1}, Lcom/telerik/widget/list/RadListView;->notifyOnLongClick(Landroid/view/View;)V

    .line 314
    iget-object v3, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/telerik/widget/list/ListViewBehavior;

    .line 315
    .local v4, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    if-nez v0, :cond_2

    invoke-virtual {v4, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onLongClick(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    move v0, v5

    .line 316
    .end local v4    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_0

    .line 317
    :cond_3
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 322
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    return-void

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->hasMoved:Z

    if-eqz v0, :cond_1

    .line 327
    return-void

    .line 329
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->isLongPress:Z

    .line 331
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/RadListView;->notifyOnLongPress(Landroid/view/MotionEvent;)V

    .line 332
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewBehavior;

    .line 333
    .local v1, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v1, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onLongPress(Landroid/view/MotionEvent;)V

    .line 334
    .end local v1    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_0

    .line 335
    :cond_2
    return-void
.end method

.method public onLongPressDrag(FFFF)V
    .locals 2
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 254
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->notifyMove()V

    .line 259
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewBehavior;

    .line 260
    .local v1, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/telerik/widget/list/ListViewBehavior;->onLongPressDrag(FFFF)V

    .line 261
    .end local v1    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    goto :goto_0

    .line 262
    :cond_1
    return-void
.end method

.method public onLongPressDragEnded(Z)Z
    .locals 6
    .param p1, "isCanceled"    # Z

    .line 270
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 271
    return v1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/RadListView;->notifyOnUpOrCancel(Z)V

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "result":Z
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/ListViewBehavior;

    .line 278
    .local v3, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v3, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onLongPressDragEnded(Z)Z

    move-result v4

    .line 279
    .local v4, "behaviorResult":Z
    if-nez v0, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    move v0, v5

    .line 280
    .end local v3    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    .end local v4    # "behaviorResult":Z
    goto :goto_0

    .line 281
    :cond_3
    return v0
.end method

.method public onShortPressDrag(FFFF)Z
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "currentX"    # F
    .param p4, "currentY"    # F

    .line 213
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 214
    return v1

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 218
    .local v0, "result":Z
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->notifyMove()V

    .line 219
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/ListViewBehavior;

    .line 220
    .local v3, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/telerik/widget/list/ListViewBehavior;->onShortPressDrag(FFFF)Z

    move-result v4

    .line 221
    .local v4, "behaviorResult":Z
    if-nez v0, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    move v0, v5

    .line 222
    .end local v3    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    .end local v4    # "behaviorResult":Z
    goto :goto_0

    .line 223
    :cond_3
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 286
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x1

    return v0

    .line 290
    :cond_0
    invoke-virtual {p0, p1}, Lcom/telerik/widget/list/ListViewGestureListener;->onTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 187
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/RadListView;->notifyOnTapUp(Landroid/view/MotionEvent;)V

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->behaviors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telerik/widget/list/ListViewBehavior;

    .line 194
    .local v2, "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    invoke-virtual {v2, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onTapUp(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 196
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 197
    const/4 v0, 0x1

    .line 199
    .end local v2    # "behavior":Lcom/telerik/widget/list/ListViewBehavior;
    .end local v3    # "result":Z
    :cond_1
    goto :goto_0

    .line 201
    :cond_2
    return v0
.end method

.method public onTouchEvent(Lcom/telerik/widget/list/RadListView;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "sender"    # Lcom/telerik/widget/list/RadListView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 58
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    .line 60
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 61
    return v1

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 68
    .local v0, "action":I
    const/4 v2, 0x0

    if-eqz v0, :cond_e

    const/4 v3, -0x1

    if-eq v0, v1, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    goto/16 :goto_3

    .line 150
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 151
    .local v3, "pointerIndex":I
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 153
    .local v4, "pointerId":I
    iget v5, p0, Lcom/telerik/widget/list/ListViewGestureListener;->activePointerId:I

    if-ne v4, v5, :cond_f

    .line 155
    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 156
    .local v1, "newPointerIndex":I
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 157
    .local v2, "currentX":F
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 158
    .local v5, "currentY":F
    iget v6, p0, Lcom/telerik/widget/list/ListViewGestureListener;->gestureStartX:F

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float v7, v2, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/telerik/widget/list/ListViewGestureListener;->gestureStartX:F

    .line 159
    iget v6, p0, Lcom/telerik/widget/list/ListViewGestureListener;->gestureStartY:F

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float v7, v5, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/telerik/widget/list/ListViewGestureListener;->gestureStartY:F

    .line 160
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/telerik/widget/list/ListViewGestureListener;->activePointerId:I

    .line 161
    .end local v1    # "newPointerIndex":I
    goto/16 :goto_3

    .line 132
    .end local v2    # "currentX":F
    .end local v3    # "pointerIndex":I
    .end local v4    # "pointerId":I
    .end local v5    # "currentY":F
    :cond_3
    iget v4, p0, Lcom/telerik/widget/list/ListViewGestureListener;->activePointerId:I

    if-ne v4, v3, :cond_4

    .line 133
    return v2

    .line 135
    :cond_4
    iput v3, p0, Lcom/telerik/widget/list/ListViewGestureListener;->activePointerId:I

    .line 137
    iget-boolean v3, p0, Lcom/telerik/widget/list/ListViewGestureListener;->isLongPress:Z

    if-eqz v3, :cond_5

    .line 138
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/ListViewGestureListener;->onLongPressDragEnded(Z)Z

    move-result v3

    .line 139
    .local v3, "result":Z
    iput-boolean v2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->isLongPress:Z

    goto :goto_1

    .line 141
    .end local v3    # "result":Z
    :cond_5
    invoke-virtual {p0, v1}, Lcom/telerik/widget/list/ListViewGestureListener;->onActionUpOrCancel(Z)Z

    move-result v3

    .line 143
    .restart local v3    # "result":Z
    :goto_1
    if-eqz v3, :cond_f

    .line 144
    return v1

    .line 80
    .end local v3    # "result":Z
    :cond_6
    iget v2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->activePointerId:I

    if-ne v2, v3, :cond_7

    .line 83
    invoke-direct {p0, p2}, Lcom/telerik/widget/list/ListViewGestureListener;->startEventHandling(Landroid/view/MotionEvent;)V

    .line 85
    :cond_7
    iget v2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->activePointerId:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 86
    .local v2, "pointerIndex":I
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 87
    .local v3, "currentX":F
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 89
    .local v4, "currentY":F
    iget v5, p0, Lcom/telerik/widget/list/ListViewGestureListener;->gestureStartX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 90
    .local v5, "distanceX":F
    iget v6, p0, Lcom/telerik/widget/list/ListViewGestureListener;->gestureStartY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 92
    .local v6, "distanceY":F
    float-to-int v7, v5

    .line 93
    .local v7, "deltaX":I
    float-to-int v8, v6

    .line 94
    .local v8, "deltaY":I
    mul-int v9, v7, v7

    mul-int v10, v8, v8

    add-int/2addr v9, v10

    .line 95
    .local v9, "distance":I
    iget v10, p0, Lcom/telerik/widget/list/ListViewGestureListener;->touchSlopSquare:I

    if-ge v9, v10, :cond_8

    .line 96
    goto :goto_3

    .line 98
    :cond_8
    iput-boolean v1, p0, Lcom/telerik/widget/list/ListViewGestureListener;->hasMoved:Z

    .line 99
    iget-boolean v10, p0, Lcom/telerik/widget/list/ListViewGestureListener;->isLongPress:Z

    if-eqz v10, :cond_9

    .line 100
    iget v10, p0, Lcom/telerik/widget/list/ListViewGestureListener;->gestureStartX:F

    iget v11, p0, Lcom/telerik/widget/list/ListViewGestureListener;->gestureStartY:F

    invoke-virtual {p0, v10, v11, v3, v4}, Lcom/telerik/widget/list/ListViewGestureListener;->onLongPressDrag(FFFF)V

    .line 101
    return v1

    .line 103
    :cond_9
    iget v10, p0, Lcom/telerik/widget/list/ListViewGestureListener;->gestureStartX:F

    iget v11, p0, Lcom/telerik/widget/list/ListViewGestureListener;->gestureStartY:F

    invoke-virtual {p0, v10, v11, v3, v4}, Lcom/telerik/widget/list/ListViewGestureListener;->onShortPressDrag(FFFF)Z

    move-result v10

    .line 104
    .local v10, "isDragHandled":Z
    if-eqz v10, :cond_a

    .line 105
    return v1

    .line 108
    .end local v10    # "isDragHandled":Z
    :cond_a
    goto :goto_3

    .line 112
    .end local v2    # "pointerIndex":I
    .end local v3    # "currentX":F
    .end local v4    # "currentY":F
    .end local v5    # "distanceX":F
    .end local v6    # "distanceY":F
    .end local v7    # "deltaX":I
    .end local v8    # "deltaY":I
    .end local v9    # "distance":I
    :cond_b
    iget v4, p0, Lcom/telerik/widget/list/ListViewGestureListener;->activePointerId:I

    if-ne v4, v3, :cond_c

    .line 113
    return v2

    .line 115
    :cond_c
    iput v3, p0, Lcom/telerik/widget/list/ListViewGestureListener;->activePointerId:I

    .line 117
    iget-boolean v3, p0, Lcom/telerik/widget/list/ListViewGestureListener;->isLongPress:Z

    if-eqz v3, :cond_d

    .line 118
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/ListViewGestureListener;->onLongPressDragEnded(Z)Z

    move-result v3

    .local v3, "result":Z
    goto :goto_2

    .line 120
    .end local v3    # "result":Z
    :cond_d
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/ListViewGestureListener;->onActionUpOrCancel(Z)Z

    move-result v3

    .line 123
    .restart local v3    # "result":Z
    :goto_2
    iput-boolean v2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->isLongPress:Z

    .line 125
    if-eqz v3, :cond_f

    .line 126
    return v1

    .line 70
    .end local v3    # "result":Z
    :cond_e
    invoke-direct {p0, p2}, Lcom/telerik/widget/list/ListViewGestureListener;->startEventHandling(Landroid/view/MotionEvent;)V

    .line 71
    iput-boolean v2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->isLongPress:Z

    .line 73
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewGestureListener;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v1, p2}, Lcom/telerik/widget/list/RadListView;->notifyOnDown(Landroid/view/MotionEvent;)V

    .line 74
    iput-boolean v2, p0, Lcom/telerik/widget/list/ListViewGestureListener;->hasMoved:Z

    .line 76
    nop

    .line 165
    :cond_f
    :goto_3
    iget-object v1, p0, Lcom/telerik/widget/list/ListViewGestureListener;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
