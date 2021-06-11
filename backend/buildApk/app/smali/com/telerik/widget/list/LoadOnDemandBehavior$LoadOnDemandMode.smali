.class public final enum Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;
.super Ljava/lang/Enum;
.source "LoadOnDemandBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/LoadOnDemandBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadOnDemandMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

.field public static final enum AUTOMATIC:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

.field public static final enum MANUAL:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 380
    new-instance v0, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    const/4 v1, 0x0

    const-string v2, "MANUAL"

    invoke-direct {v0, v2, v1}, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->MANUAL:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    .line 387
    new-instance v0, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    const/4 v2, 0x1

    const-string v3, "AUTOMATIC"

    invoke-direct {v0, v3, v2}, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->AUTOMATIC:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    .line 375
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    sget-object v4, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->MANUAL:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->$VALUES:[Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 375
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 375
    const-class v0, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    return-object v0
.end method

.method public static values()[Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;
    .locals 1

    .line 375
    sget-object v0, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->$VALUES:[Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    invoke-virtual {v0}, [Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    return-object v0
.end method
