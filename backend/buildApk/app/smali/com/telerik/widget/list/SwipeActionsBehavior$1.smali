.class Lcom/telerik/widget/list/SwipeActionsBehavior$1;
.super Ljava/lang/Object;
.source "SwipeActionsBehavior.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/SwipeActionsBehavior;->updateMainView(Lcom/telerik/widget/list/SwipeLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

.field final synthetic val$parentView:Lcom/telerik/widget/list/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/SwipeActionsBehavior;Lcom/telerik/widget/list/SwipeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/SwipeActionsBehavior;

    .line 189
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$1;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    iput-object p2, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$1;->val$parentView:Lcom/telerik/widget/list/SwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$1;->this$0:Lcom/telerik/widget/list/SwipeActionsBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/SwipeActionsBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getGestureListener()Lcom/telerik/widget/list/ListViewGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/telerik/widget/list/SwipeActionsBehavior$1;->val$parentView:Lcom/telerik/widget/list/SwipeLayout;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewGestureListener;->onClick(Landroid/view/View;)V

    .line 193
    return-void
.end method
