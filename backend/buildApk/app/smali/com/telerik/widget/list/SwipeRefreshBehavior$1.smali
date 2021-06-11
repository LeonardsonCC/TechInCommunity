.class Lcom/telerik/widget/list/SwipeRefreshBehavior$1;
.super Ljava/lang/Object;
.source "SwipeRefreshBehavior.java"

# interfaces
.implements Lcom/telerik/widget/list/SwipeRefreshBehavior$RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/SwipeRefreshBehavior;->init(Landroid/content/Context;)V
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

    .line 107
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$1;->this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshFinished()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeRefreshBehavior$1;->this$0:Lcom/telerik/widget/list/SwipeRefreshBehavior;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/SwipeRefreshBehavior;->endRefresh(Z)V

    .line 111
    return-void
.end method
