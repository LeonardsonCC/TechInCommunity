.class final enum Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;
.super Ljava/lang/Enum;
.source "SwipeExecuteBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/SwipeExecuteBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SwipeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

.field public static final enum ENDED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

.field public static final enum IDLE:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

.field public static final enum STARTED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 739
    new-instance v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->IDLE:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    .line 740
    new-instance v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    const/4 v2, 0x1

    const-string v3, "STARTED"

    invoke-direct {v0, v3, v2}, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->STARTED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    .line 741
    new-instance v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    const/4 v3, 0x2

    const-string v4, "ENDED"

    invoke-direct {v0, v4, v3}, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->ENDED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    .line 738
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    sget-object v5, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->IDLE:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    aput-object v5, v4, v1

    sget-object v1, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->STARTED:Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->$VALUES:[Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 738
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 738
    const-class v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    return-object v0
.end method

.method public static values()[Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;
    .locals 1

    .line 738
    sget-object v0, Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->$VALUES:[Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    invoke-virtual {v0}, [Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telerik/widget/list/SwipeExecuteBehavior$SwipeState;

    return-object v0
.end method
