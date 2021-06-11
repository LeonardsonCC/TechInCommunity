.class Lcom/telerik/widget/list/ItemReorderBehavior$2;
.super Ljava/lang/Object;
.source "ItemReorderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/ItemReorderBehavior;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/ItemReorderBehavior;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/ItemReorderBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/ItemReorderBehavior;

    .line 503
    iput-object p1, p0, Lcom/telerik/widget/list/ItemReorderBehavior$2;->this$0:Lcom/telerik/widget/list/ItemReorderBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior$2;->this$0:Lcom/telerik/widget/list/ItemReorderBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/ItemReorderBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/telerik/widget/list/ItemReorderBehavior$2;->this$0:Lcom/telerik/widget/list/ItemReorderBehavior;

    invoke-static {v1}, Lcom/telerik/widget/list/ItemReorderBehavior;->access$100(Lcom/telerik/widget/list/ItemReorderBehavior;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/RadListView;->canScroll(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior$2;->this$0:Lcom/telerik/widget/list/ItemReorderBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/ItemReorderBehavior;->access$200(Lcom/telerik/widget/list/ItemReorderBehavior;)V

    .line 508
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior$2;->this$0:Lcom/telerik/widget/list/ItemReorderBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/ItemReorderBehavior;->access$300(Lcom/telerik/widget/list/ItemReorderBehavior;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior$2;->this$0:Lcom/telerik/widget/list/ItemReorderBehavior;

    invoke-static {v0}, Lcom/telerik/widget/list/ItemReorderBehavior;->access$400(Lcom/telerik/widget/list/ItemReorderBehavior;)V

    .line 512
    :goto_0
    return-void
.end method
