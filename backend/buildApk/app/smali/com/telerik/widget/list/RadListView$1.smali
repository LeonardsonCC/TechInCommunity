.class Lcom/telerik/widget/list/RadListView$1;
.super Ljava/lang/Object;
.source "RadListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/RadListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/RadListView;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/RadListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/RadListView;

    .line 95
    iput-object p1, p0, Lcom/telerik/widget/list/RadListView$1;->this$0:Lcom/telerik/widget/list/RadListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView$1;->this$0:Lcom/telerik/widget/list/RadListView;

    invoke-static {v0}, Lcom/telerik/widget/list/RadListView;->access$000(Lcom/telerik/widget/list/RadListView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/telerik/widget/list/RadListView$1;->this$0:Lcom/telerik/widget/list/RadListView;

    invoke-static {v0}, Lcom/telerik/widget/list/RadListView;->access$000(Lcom/telerik/widget/list/RadListView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 101
    :cond_0
    return-void
.end method
