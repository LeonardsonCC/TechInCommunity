.class Lcom/telerik/widget/list/ListViewItemAnimator$2;
.super Ljava/lang/Object;
.source "ListViewItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/ListViewItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/ListViewItemAnimator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/ListViewItemAnimator;

    .line 216
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$2;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    iput-object p2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;

    .line 220
    .local v1, "change":Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;
    iget-object v2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$2;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-virtual {v2, v1}, Lcom/telerik/widget/list/ListViewItemAnimator;->animateChangeImpl(Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;)V

    .line 221
    .end local v1    # "change":Lcom/telerik/widget/list/ListViewItemAnimator$ChangeInfo;
    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 223
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewItemAnimator$2;->this$0:Lcom/telerik/widget/list/ListViewItemAnimator;

    invoke-static {v0}, Lcom/telerik/widget/list/ListViewItemAnimator;->access$100(Lcom/telerik/widget/list/ListViewItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method
