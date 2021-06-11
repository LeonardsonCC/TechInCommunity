.class Lcom/telerik/widget/list/ListViewWrapperAdapter$1;
.super Ljava/lang/Object;
.source "ListViewWrapperAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/ListViewWrapperAdapter;->bindEmptyContent(Lcom/telerik/widget/list/ListViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

.field final synthetic val$emptyViewVisibility:I

.field final synthetic val$holder:Lcom/telerik/widget/list/ListViewHolder;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/ListViewWrapperAdapter;Lcom/telerik/widget/list/ListViewHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 346
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$1;->this$0:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    iput-object p2, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$1;->val$holder:Lcom/telerik/widget/list/ListViewHolder;

    iput p3, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$1;->val$emptyViewVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$1;->val$holder:Lcom/telerik/widget/list/ListViewHolder;

    iget-object v0, v0, Lcom/telerik/widget/list/ListViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/telerik/widget/list/ListViewWrapperAdapter$1;->val$emptyViewVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    return-void
.end method
