.class Lcom/telerik/widget/list/RadListView$2;
.super Ljava/lang/Object;
.source "RadListView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/RadListView;->sortBehaviors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/telerik/widget/list/ListViewBehavior;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/RadListView;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/RadListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/RadListView;

    .line 204
    iput-object p1, p0, Lcom/telerik/widget/list/RadListView$2;->this$0:Lcom/telerik/widget/list/RadListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/telerik/widget/list/ListViewBehavior;Lcom/telerik/widget/list/ListViewBehavior;)I
    .locals 3
    .param p1, "lhs"    # Lcom/telerik/widget/list/ListViewBehavior;
    .param p2, "rhs"    # Lcom/telerik/widget/list/ListViewBehavior;

    .line 207
    instance-of v0, p1, Lcom/telerik/widget/list/ItemReorderBehavior;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 208
    return v1

    .line 209
    :cond_0
    instance-of v0, p1, Lcom/telerik/widget/list/SwipeExecuteBehavior;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 210
    return v2

    .line 212
    :cond_1
    instance-of v0, p2, Lcom/telerik/widget/list/ItemReorderBehavior;

    if-eqz v0, :cond_2

    .line 213
    return v2

    .line 215
    :cond_2
    instance-of v0, p2, Lcom/telerik/widget/list/SwipeExecuteBehavior;

    if-eqz v0, :cond_3

    .line 216
    return v1

    .line 218
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 204
    check-cast p1, Lcom/telerik/widget/list/ListViewBehavior;

    check-cast p2, Lcom/telerik/widget/list/ListViewBehavior;

    invoke-virtual {p0, p1, p2}, Lcom/telerik/widget/list/RadListView$2;->compare(Lcom/telerik/widget/list/ListViewBehavior;Lcom/telerik/widget/list/ListViewBehavior;)I

    move-result p1

    return p1
.end method
