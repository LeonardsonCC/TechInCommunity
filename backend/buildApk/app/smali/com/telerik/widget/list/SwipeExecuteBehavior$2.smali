.class Lcom/telerik/widget/list/SwipeExecuteBehavior$2;
.super Ljava/lang/Object;
.source "SwipeExecuteBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/widget/list/SwipeExecuteBehavior;->handleEndExecute(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

.field final synthetic val$finalOffsetHorizontal:I

.field final synthetic val$finalOffsetVertical:I


# direct methods
.method constructor <init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;

    .line 166
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$2;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    iput p2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$2;->val$finalOffsetHorizontal:I

    iput p3, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$2;->val$finalOffsetVertical:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$2;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    iget v1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$2;->val$finalOffsetHorizontal:I

    iget v2, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$2;->val$finalOffsetVertical:I

    invoke-static {v0, v1, v2}, Lcom/telerik/widget/list/SwipeExecuteBehavior;->access$100(Lcom/telerik/widget/list/SwipeExecuteBehavior;II)V

    .line 170
    return-void
.end method
