.class Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "SwipeRefreshBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/SwipeRefreshBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeRefreshIndicator"
.end annotation


# instance fields
.field hasToBeDetached:Z

.field final synthetic this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;


# direct methods
.method public constructor <init>(Lcom/telerik/widget/list/SwipeRefreshBehavior;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/telerik/widget/list/SwipeRefreshBehavior;
    .param p2, "context"    # Landroid/content/Context;

    .line 231
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;

    .line 232
    invoke-direct {p0, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->hasToBeDetached:Z

    .line 233
    return-void
.end method


# virtual methods
.method detach()V
    .locals 6

    .line 265
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 266
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 267
    .local v1, "swipeIndicatorIndex":I
    iget-object v2, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;

    invoke-static {v2}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->access$100(Lcom/telerik/widget/list/SwipeRefreshBehavior;)Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 269
    .local v2, "listViewIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 274
    invoke-virtual {p0, v2}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->removeViewAt(I)V

    .line 275
    iget-object v3, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;

    invoke-static {v3}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->access$100(Lcom/telerik/widget/list/SwipeRefreshBehavior;)Lcom/telerik/widget/list/RadListView;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 277
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 278
    iget-object v4, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->access$202(Lcom/telerik/widget/list/SwipeRefreshBehavior;Z)Z

    .line 279
    iget-object v4, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;

    invoke-static {v4, v3}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->access$102(Lcom/telerik/widget/list/SwipeRefreshBehavior;Lcom/telerik/widget/list/RadListView;)Lcom/telerik/widget/list/RadListView;

    .line 280
    return-void

    .line 270
    :cond_1
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 249
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->access$000(Lcom/telerik/widget/list/SwipeRefreshBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    return v0

    .line 252
    :cond_0
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 239
    invoke-super {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onMeasure(II)V

    .line 241
    iget-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->hasToBeDetached:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->detach()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->hasToBeDetached:Z

    .line 245
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 257
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$SwipeRefreshIndicator;->this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->access$000(Lcom/telerik/widget/list/SwipeRefreshBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x0

    return v0

    .line 260
    :cond_0
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
