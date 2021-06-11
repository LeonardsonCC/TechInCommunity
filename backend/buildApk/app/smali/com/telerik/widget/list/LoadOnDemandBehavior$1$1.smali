.class Lcom/telerik/widget/list/LoadOnDemandBehavior$1$1;
.super Ljava/lang/Object;
.source "LoadOnDemandBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/LoadOnDemandBehavior$1;->onLoadingRequested()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telerik/widget/list/LoadOnDemandBehavior$1;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/LoadOnDemandBehavior$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/telerik/widget/list/LoadOnDemandBehavior$1;

    .line 246
    iput-object p1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior$1$1;->this$1:Lcom/telerik/widget/list/LoadOnDemandBehavior$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior$1$1;->this$1:Lcom/telerik/widget/list/LoadOnDemandBehavior$1;

    iget-object v0, v0, Lcom/telerik/widget/list/LoadOnDemandBehavior$1;->this$0:Lcom/telerik/widget/list/LoadOnDemandBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->startLoad()V

    .line 250
    return-void
.end method
