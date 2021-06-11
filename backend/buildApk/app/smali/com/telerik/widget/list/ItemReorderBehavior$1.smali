.class Lcom/telerik/widget/list/ItemReorderBehavior$1;
.super Ljava/lang/Object;
.source "ItemReorderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/ItemReorderBehavior;->reorderToView(Landroid/view/View;)V
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

    .line 441
    iput-object p1, p0, Lcom/telerik/widget/list/ItemReorderBehavior$1;->this$0:Lcom/telerik/widget/list/ItemReorderBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/telerik/widget/list/ItemReorderBehavior$1;->this$0:Lcom/telerik/widget/list/ItemReorderBehavior;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/telerik/widget/list/ItemReorderBehavior;->access$002(Lcom/telerik/widget/list/ItemReorderBehavior;Z)Z

    .line 445
    return-void
.end method
