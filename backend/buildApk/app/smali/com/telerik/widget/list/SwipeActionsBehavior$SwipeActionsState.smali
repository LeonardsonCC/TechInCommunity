.class public final enum Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;
.super Ljava/lang/Enum;
.source "SwipeActionsBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/SwipeActionsBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeActionsState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

.field public static final enum ACTIVE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

.field public static final enum IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

.field public static final enum RESETTING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

.field public static final enum SWIPING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 782
    new-instance v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    .line 787
    new-instance v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    const/4 v2, 0x1

    const-string v3, "SWIPING"

    invoke-direct {v0, v3, v2}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->SWIPING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    .line 793
    new-instance v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    const/4 v3, 0x2

    const-string v4, "RESETTING"

    invoke-direct {v0, v4, v3}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->RESETTING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    .line 799
    new-instance v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    const/4 v4, 0x3

    const-string v5, "ACTIVE"

    invoke-direct {v0, v5, v4}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->ACTIVE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    .line 777
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    sget-object v6, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->IDLE:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    aput-object v6, v5, v1

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->SWIPING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    aput-object v1, v5, v2

    sget-object v1, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->RESETTING:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->$VALUES:[Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 777
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 777
    const-class v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    return-object v0
.end method

.method public static values()[Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;
    .locals 1

    .line 777
    sget-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->$VALUES:[Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    invoke-virtual {v0}, [Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeActionsState;

    return-object v0
.end method
