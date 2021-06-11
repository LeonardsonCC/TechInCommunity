.class public final enum Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;
.super Ljava/lang/Enum;
.source "SelectionBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/SelectionBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionOnTouch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

.field public static final enum AFTER_START:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

.field public static final enum ALWAYS:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

.field public static final enum NEVER:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 568
    new-instance v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    const/4 v1, 0x0

    const-string v2, "NEVER"

    invoke-direct {v0, v2, v1}, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->NEVER:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    .line 574
    new-instance v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    const/4 v2, 0x1

    const-string v3, "ALWAYS"

    invoke-direct {v0, v3, v2}, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->ALWAYS:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    .line 581
    new-instance v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    const/4 v3, 0x2

    const-string v4, "AFTER_START"

    invoke-direct {v0, v4, v3}, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->AFTER_START:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    .line 564
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    sget-object v5, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->NEVER:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    aput-object v5, v4, v1

    sget-object v1, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->ALWAYS:Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->$VALUES:[Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 564
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 564
    const-class v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    return-object v0
.end method

.method public static values()[Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;
    .locals 1

    .line 564
    sget-object v0, Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->$VALUES:[Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    invoke-virtual {v0}, [Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telerik/widget/list/SelectionBehavior$SelectionOnTouch;

    return-object v0
.end method
