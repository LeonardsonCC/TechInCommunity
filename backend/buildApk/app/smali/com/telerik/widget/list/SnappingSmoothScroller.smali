.class public Lcom/telerik/widget/list/SnappingSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SnappingSmoothScroller.java"


# static fields
.field public static final SNAP_BOTTOM:I = 0x3

.field public static final SNAP_CENTER:I = 0x1

.field public static final SNAP_NONE:I = 0x0

.field public static final SNAP_TOP:I = 0x2


# instance fields
.field private ownerList:Lcom/telerik/widget/list/RadListView;

.field private snapMode:I


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/RadListView;Landroid/content/Context;)V
    .locals 1
    .param p1, "list"    # Lcom/telerik/widget/list/RadListView;
    .param p2, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/telerik/widget/list/SnappingSmoothScroller;->snapMode:I

    .line 32
    iput-object p1, p0, Lcom/telerik/widget/list/SnappingSmoothScroller;->ownerList:Lcom/telerik/widget/list/RadListView;

    .line 33
    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 3
    .param p1, "viewStart"    # I
    .param p2, "viewEnd"    # I
    .param p3, "boxStart"    # I
    .param p4, "boxEnd"    # I
    .param p5, "snapPreference"    # I

    .line 96
    iget v0, p0, Lcom/telerik/widget/list/SnappingSmoothScroller;->snapMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 104
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v0

    return v0

    .line 100
    :cond_0
    sub-int v0, p4, p2

    return v0

    .line 102
    :cond_1
    sub-int v0, p3, p1

    return v0

    .line 98
    :cond_2
    sub-int v0, p3, p1

    sub-int v1, p4, p3

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    sub-int v1, p2, p1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 7
    .param p1, "targetPosition"    # I

    .line 57
    iget-object v0, p0, Lcom/telerik/widget/list/SnappingSmoothScroller;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/telerik/widget/list/SnappingSmoothScroller;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 59
    .local v0, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1

    .line 62
    .end local v0    # "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/SnappingSmoothScroller;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/telerik/widget/list/SnappingSmoothScroller;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 64
    .local v0, "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1

    .line 67
    .end local v0    # "gridLayoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/list/SnappingSmoothScroller;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/telerik/widget/list/SnappingSmoothScroller;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 71
    .local v0, "staggeredLayoutManager":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    :try_start_0
    const-class v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const-string v2, "calculateScrollDirectionForPosition"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 72
    .local v1, "computeDirectionMethod":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 73
    .local v2, "direction":I
    if-nez v2, :cond_2

    .line 74
    const/4 v3, 0x0

    return-object v3

    .line 76
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 77
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v5, v2

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    .line 79
    :cond_3
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v5, v2

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 85
    .end local v1    # "computeDirectionMethod":Ljava/lang/reflect/Method;
    .end local v2    # "direction":I
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 81
    :catch_2
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 90
    .end local v0    # "staggeredLayoutManager":Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_4
    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/telerik/widget/list/SnappingSmoothScroller;->ownerList:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "lm":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1
.end method

.method public getSnapMode()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/telerik/widget/list/SnappingSmoothScroller;->snapMode:I

    return v0
.end method

.method public setSnapMode(I)V
    .locals 0
    .param p1, "snapMode"    # I

    .line 52
    iput p1, p0, Lcom/telerik/widget/list/SnappingSmoothScroller;->snapMode:I

    .line 53
    return-void
.end method
