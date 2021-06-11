.class Lcom/telerik/widget/list/SwipeRefreshBehavior$2;
.super Ljava/lang/Object;
.source "SwipeRefreshBehavior.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/SwipeRefreshBehavior;->attachIndicator(Lcom/telerik/widget/list/RadListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/SwipeRefreshBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/SwipeRefreshBehavior;

    .line 203
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$2;->this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$2;->this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->startRefresh()V

    .line 207
    return-void
.end method
