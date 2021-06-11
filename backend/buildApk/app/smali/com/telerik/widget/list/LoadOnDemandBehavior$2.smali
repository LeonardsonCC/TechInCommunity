.class Lcom/telerik/widget/list/LoadOnDemandBehavior$2;
.super Ljava/lang/Object;
.source "LoadOnDemandBehavior.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/LoadOnDemandBehavior;->createDefaultManualDemandView()Landroid/view/View;
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

    .line 264
    iput-object p1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior$2;->this$0:Lcom/telerik/widget/list/LoadOnDemandBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 267
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior$2;->this$0:Lcom/telerik/widget/list/LoadOnDemandBehavior;

    invoke-virtual {v0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->startLoad()V

    .line 268
    return-void
.end method
