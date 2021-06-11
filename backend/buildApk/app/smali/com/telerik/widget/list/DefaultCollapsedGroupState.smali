.class Lcom/telerik/widget/list/DefaultCollapsedGroupState;
.super Ljava/lang/Object;
.source "DefaultCollapsedGroupState.java"

# interfaces
.implements Lcom/telerik/widget/list/CollapsedGroupState;


# instance fields
.field private collapsedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Lcom/telerik/widget/list/RadListView;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->collapsedGroups:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;

    .line 20
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public clearCollapsedGroups()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->collapsedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    return-void
.end method

.method public collapseGroupAtPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .line 57
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    .line 58
    .local v0, "dataSourceAdapter":Lcom/telerik/widget/list/ListViewDataSourceAdapter;
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, "item":Ljava/lang/Object;
    iget-object v2, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->collapsedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;

    .line 61
    .local v3, "listener":Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;
    invoke-interface {v3, v1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;->onGroupCollapsed(Ljava/lang/Object;)V

    .line 62
    .end local v3    # "listener":Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public expandGroupAtPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .line 66
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    .line 68
    .local v0, "dataSourceAdapter":Lcom/telerik/widget/list/ListViewDataSourceAdapter;
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "item":Ljava/lang/Object;
    iget-object v2, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->collapsedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;

    .line 71
    .local v3, "listener":Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;
    invoke-interface {v3, v1}, Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;->onGroupExpanded(Ljava/lang/Object;)V

    .line 72
    .end local v3    # "listener":Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;
    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public getCollapsedGroupPositions()[I
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->collapsedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 30
    .local v0, "positions":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->collapsedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->collapsedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 32
    .local v2, "item":Ljava/lang/Object;
    iget-object v3, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v3}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/telerik/widget/list/ListViewAdapter;

    invoke-virtual {v3, v2}, Lcom/telerik/widget/list/ListViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    .line 33
    .local v3, "position":I
    aput v3, v0, v1

    .line 30
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "position":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public isGroupCollapsed(I)Z
    .locals 3
    .param p1, "position"    # I

    .line 44
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->owner:Lcom/telerik/widget/list/RadListView;

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/ListViewDataSourceAdapter;

    .line 48
    .local v0, "dataSourceAdapter":Lcom/telerik/widget/list/ListViewDataSourceAdapter;
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/ListViewDataSourceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, "item":Ljava/lang/Object;
    iget-object v2, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->collapsedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public isGroupCollapsed(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "group"    # Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->collapsedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/CollapsibleGroupsBehavior$CollapseGroupListener;

    .line 24
    iget-object v0, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public setOwner(Lcom/telerik/widget/list/RadListView;)V
    .locals 0
    .param p1, "owner"    # Lcom/telerik/widget/list/RadListView;

    .line 16
    iput-object p1, p0, Lcom/telerik/widget/list/DefaultCollapsedGroupState;->owner:Lcom/telerik/widget/list/RadListView;

    .line 17
    return-void
.end method
