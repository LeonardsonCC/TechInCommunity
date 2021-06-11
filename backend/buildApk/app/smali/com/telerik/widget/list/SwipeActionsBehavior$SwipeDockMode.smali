.class public final enum Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;
.super Ljava/lang/Enum;
.source "SwipeActionsBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/SwipeActionsBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeDockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

.field public static final enum DockAtLimit:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

.field public static final enum DockAtThreshold:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 811
    new-instance v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    const/4 v1, 0x0

    const-string v2, "DockAtLimit"

    invoke-direct {v0, v2, v1}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->DockAtLimit:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    .line 817
    new-instance v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    const/4 v2, 0x1

    const-string v3, "DockAtThreshold"

    invoke-direct {v0, v3, v2}, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->DockAtThreshold:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    .line 806
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    sget-object v4, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->DockAtLimit:Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->$VALUES:[Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 806
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 806
    const-class v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    return-object v0
.end method

.method public static values()[Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;
    .locals 1

    .line 806
    sget-object v0, Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->$VALUES:[Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    invoke-virtual {v0}, [Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telerik/widget/list/SwipeActionsBehavior$SwipeDockMode;

    return-object v0
.end method
