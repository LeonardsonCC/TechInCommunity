.class Lcom/telerik/widget/list/LoadOnDemandBehavior$1;
.super Ljava/lang/Object;
.source "LoadOnDemandBehavior.java"

# interfaces
.implements Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/LoadOnDemandBehavior;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/LoadOnDemandBehavior;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/LoadOnDemandBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/LoadOnDemandBehavior;

    .line 243
    iput-object p1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior$1;->this$0:Lcom/telerik/widget/list/LoadOnDemandBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior$1;->this$0:Lcom/telerik/widget/list/LoadOnDemandBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->endLoad()V

    .line 257
    return-void
.end method

.method public onLoadingRequested()V
    .locals 2

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/telerik/widget/list/LoadOnDemandBehavior$1$1;

    invoke-direct {v1, p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior$1$1;-><init>(Lcom/telerik/widget/list/LoadOnDemandBehavior$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    return-void
.end method
