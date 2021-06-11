.class Lcom/telerik/widget/list/DeckOfCardsLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "DeckOfCardsLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/DeckOfCardsLayoutManager;


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/DeckOfCardsLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/DeckOfCardsLayoutManager;
    .param p2, "x0"    # Landroid/content/Context;

    .line 141
    iput-object p1, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager$1;->this$0:Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .line 144
    iget-object v0, p0, Lcom/telerik/widget/list/DeckOfCardsLayoutManager$1;->this$0:Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    .line 145
    invoke-virtual {v0, p1}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 144
    return-object v0
.end method
