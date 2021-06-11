.class public final enum Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;
.super Ljava/lang/Enum;
.source "SelectionBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/SelectionBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

.field public static final enum MULTIPLE:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

.field public static final enum SINGLE:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 552
    new-instance v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    const/4 v1, 0x0

    const-string v2, "MULTIPLE"

    invoke-direct {v0, v2, v1}, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;->MULTIPLE:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    .line 557
    new-instance v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    const/4 v2, 0x1

    const-string v3, "SINGLE"

    invoke-direct {v0, v3, v2}, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;->SINGLE:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    .line 548
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    sget-object v4, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;->MULTIPLE:Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;->$VALUES:[Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 548
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 548
    const-class v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    return-object v0
.end method

.method public static values()[Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;
    .locals 1

    .line 548
    sget-object v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;->$VALUES:[Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    invoke-virtual {v0}, [Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telerik/widget/list/SelectionBehavior$SelectionMode;

    return-object v0
.end method
