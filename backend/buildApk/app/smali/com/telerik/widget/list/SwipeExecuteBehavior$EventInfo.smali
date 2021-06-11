.class Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;
.super Ljava/lang/Object;
.source "SwipeExecuteBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/SwipeExecuteBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventInfo"
.end annotation


# instance fields
.field eventX:F

.field eventY:F

.field shouldBeHandled:Z

.field final synthetic this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;


# direct methods
.method private constructor <init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;->this$0:Lcom/telerik/widget/list/SwipeExecuteBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;Lcom/telerik/widget/list/SwipeExecuteBehavior$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/telerik/widget/list/SwipeExecuteBehavior;
    .param p2, "x1"    # Lcom/telerik/widget/list/SwipeExecuteBehavior$1;

    .line 732
    invoke-direct {p0, p1}, Lcom/telerik/widget/list/SwipeExecuteBehavior$EventInfo;-><init>(Lcom/telerik/widget/list/SwipeExecuteBehavior;)V

    return-void
.end method
