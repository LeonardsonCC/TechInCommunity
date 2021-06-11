.class public final enum Lcom/telerik/widget/list/SlideLayoutManager$Transition;
.super Ljava/lang/Enum;
.source "SlideLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/list/SlideLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telerik/widget/list/SlideLayoutManager$Transition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telerik/widget/list/SlideLayoutManager$Transition;

.field public static final enum SLIDE_AWAY:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

.field public static final enum SLIDE_OVER:Lcom/telerik/widget/list/SlideLayoutManager$Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 287
    new-instance v0, Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    const/4 v1, 0x0

    const-string v2, "SLIDE_AWAY"

    invoke-direct {v0, v2, v1}, Lcom/telerik/widget/list/SlideLayoutManager$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SlideLayoutManager$Transition;->SLIDE_AWAY:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    new-instance v0, Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    const/4 v2, 0x1

    const-string v3, "SLIDE_OVER"

    invoke-direct {v0, v3, v2}, Lcom/telerik/widget/list/SlideLayoutManager$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/widget/list/SlideLayoutManager$Transition;->SLIDE_OVER:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    .line 286
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    sget-object v4, Lcom/telerik/widget/list/SlideLayoutManager$Transition;->SLIDE_AWAY:Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/telerik/widget/list/SlideLayoutManager$Transition;->$VALUES:[Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 286
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telerik/widget/list/SlideLayoutManager$Transition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 286
    const-class v0, Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    return-object v0
.end method

.method public static values()[Lcom/telerik/widget/list/SlideLayoutManager$Transition;
    .locals 1

    .line 286
    sget-object v0, Lcom/telerik/widget/list/SlideLayoutManager$Transition;->$VALUES:[Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    invoke-virtual {v0}, [Lcom/telerik/widget/list/SlideLayoutManager$Transition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telerik/widget/list/SlideLayoutManager$Transition;

    return-object v0
.end method
