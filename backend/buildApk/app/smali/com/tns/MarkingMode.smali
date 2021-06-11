.class final enum Lcom/tns/MarkingMode;
.super Ljava/lang/Enum;
.source "MarkingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tns/MarkingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tns/MarkingMode;

.field public static final enum full:Lcom/tns/MarkingMode;

.field public static final enum none:Lcom/tns/MarkingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/tns/MarkingMode;

    const/4 v1, 0x0

    const-string v2, "full"

    invoke-direct {v0, v2, v1}, Lcom/tns/MarkingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tns/MarkingMode;->full:Lcom/tns/MarkingMode;

    .line 8
    new-instance v0, Lcom/tns/MarkingMode;

    const/4 v2, 0x1

    const-string v3, "none"

    invoke-direct {v0, v3, v2}, Lcom/tns/MarkingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tns/MarkingMode;->none:Lcom/tns/MarkingMode;

    .line 6
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tns/MarkingMode;

    sget-object v4, Lcom/tns/MarkingMode;->full:Lcom/tns/MarkingMode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/tns/MarkingMode;->$VALUES:[Lcom/tns/MarkingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tns/MarkingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/tns/MarkingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tns/MarkingMode;

    return-object v0
.end method

.method public static values()[Lcom/tns/MarkingMode;
    .locals 1

    .line 6
    sget-object v0, Lcom/tns/MarkingMode;->$VALUES:[Lcom/tns/MarkingMode;

    invoke-virtual {v0}, [Lcom/tns/MarkingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tns/MarkingMode;

    return-object v0
.end method
