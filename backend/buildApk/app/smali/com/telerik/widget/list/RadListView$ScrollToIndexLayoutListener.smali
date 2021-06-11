.class Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;
.super Ljava/lang/Object;
.source "RadListView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/RadListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollToIndexLayoutListener"
.end annotation


# instance fields
.field private ownerList:Lcom/telerik/widget/list/RadListView;

.field private position:I

.field private snapMode:I


# direct methods
.method public constructor <init>(Lcom/telerik/widget/list/RadListView;II)V
    .locals 0
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;
    .param p2, "snapMode"    # I
    .param p3, "targetPosition"    # I

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput p2, p0, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->snapMode:I

    .line 886
    iput-object p1, p0, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->ownerList:Lcom/telerik/widget/list/RadListView;

    .line 887
    iput p3, p0, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->position:I

    .line 888
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 892
    move-object v1, p0

    iget-object v0, v1, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0, p0}, Lcom/telerik/widget/list/RadListView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 894
    iget-object v0, v1, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget v2, v1, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->position:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 896
    .local v2, "targetItemView":Landroid/view/View;
    if-eqz v2, :cond_8

    .line 898
    :try_start_0
    iget-object v0, v1, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getOrientation"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 899
    .local v0, "getOrientation":Ljava/lang/reflect/Method;
    iget-object v3, v1, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 900
    .local v3, "listOrientation":I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    iget-object v6, v1, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v6}, Lcom/telerik/widget/list/RadListView;->getTop()I

    move-result v6

    goto :goto_0

    :cond_0
    iget-object v6, v1, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v6}, Lcom/telerik/widget/list/RadListView;->getLeft()I

    move-result v6

    .line 901
    .local v6, "boxStart":I
    :goto_0
    if-ne v3, v5, :cond_1

    iget-object v7, v1, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v7}, Lcom/telerik/widget/list/RadListView;->getBottom()I

    move-result v7

    goto :goto_1

    :cond_1
    iget-object v7, v1, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v7}, Lcom/telerik/widget/list/RadListView;->getRight()I

    move-result v7

    .line 902
    .local v7, "boxEnd":I
    :goto_1
    if-ne v3, v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 903
    .local v8, "viewStart":I
    :goto_2
    if-ne v3, v5, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v9

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v9

    .line 905
    .local v9, "viewEnd":I
    :goto_3
    const/4 v10, 0x0

    .line 907
    .local v10, "scrollDelta":I
    iget v11, v1, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->snapMode:I

    const/4 v12, 0x2

    if-eq v11, v5, :cond_6

    if-eq v11, v12, :cond_5

    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    goto :goto_4

    .line 912
    :cond_4
    sub-int v11, v7, v6

    sub-int v10, v9, v11

    .line 913
    goto :goto_4

    .line 915
    :cond_5
    move v10, v8

    goto :goto_4

    .line 909
    :cond_6
    sub-int v11, v7, v6

    div-int/2addr v11, v12

    sub-int v11, v8, v11

    sub-int v13, v9, v8

    div-int/2addr v13, v12

    add-int v10, v11, v13

    .line 910
    nop

    .line 919
    :goto_4
    if-ne v3, v5, :cond_7

    .line 920
    iget-object v5, v1, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v5, v4, v10}, Lcom/telerik/widget/list/RadListView;->scrollBy(II)V

    goto :goto_5

    .line 922
    :cond_7
    iget-object v5, v1, Lcom/telerik/widget/list/RadListView$ScrollToIndexLayoutListener;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v5, v10, v4}, Lcom/telerik/widget/list/RadListView;->scrollBy(II)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 928
    .end local v0    # "getOrientation":Ljava/lang/reflect/Method;
    .end local v3    # "listOrientation":I
    .end local v6    # "boxStart":I
    .end local v7    # "boxEnd":I
    .end local v8    # "viewStart":I
    .end local v9    # "viewEnd":I
    .end local v10    # "scrollDelta":I
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    .line 926
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_5

    .line 924
    :catch_2
    move-exception v0

    .line 925
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 932
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_8
    :goto_5
    return-void
.end method
