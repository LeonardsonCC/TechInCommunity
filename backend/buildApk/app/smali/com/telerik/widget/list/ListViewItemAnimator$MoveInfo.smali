.class public Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "ListViewItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/ListViewItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method protected constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 129
    iput p2, p0, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->fromX:I

    .line 130
    iput p3, p0, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->fromY:I

    .line 131
    iput p4, p0, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->toX:I

    .line 132
    iput p5, p0, Lcom/telerik/widget/list/ListViewItemAnimator$MoveInfo;->toY:I

    .line 133
    return-void
.end method
