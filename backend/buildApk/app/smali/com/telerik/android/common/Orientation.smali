.class public final enum Lcom/telerik/android/common/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telerik/android/common/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telerik/android/common/Orientation;

.field public static final enum HORIZONTAL:Lcom/telerik/android/common/Orientation;

.field public static final enum VERTICAL:Lcom/telerik/android/common/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/telerik/android/common/Orientation;

    const/4 v1, 0x0

    const-string v2, "HORIZONTAL"

    invoke-direct {v0, v2, v1}, Lcom/telerik/android/common/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/android/common/Orientation;->HORIZONTAL:Lcom/telerik/android/common/Orientation;

    new-instance v0, Lcom/telerik/android/common/Orientation;

    const/4 v2, 0x1

    const-string v3, "VERTICAL"

    invoke-direct {v0, v3, v2}, Lcom/telerik/android/common/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/android/common/Orientation;->VERTICAL:Lcom/telerik/android/common/Orientation;

    .line 6
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/telerik/android/common/Orientation;

    sget-object v4, Lcom/telerik/android/common/Orientation;->HORIZONTAL:Lcom/telerik/android/common/Orientation;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/telerik/android/common/Orientation;->$VALUES:[Lcom/telerik/android/common/Orientation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/telerik/android/common/Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/telerik/android/common/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/common/Orientation;

    return-object v0
.end method

.method public static values()[Lcom/telerik/android/common/Orientation;
    .locals 1

    .line 6
    sget-object v0, Lcom/telerik/android/common/Orientation;->$VALUES:[Lcom/telerik/android/common/Orientation;

    invoke-virtual {v0}, [Lcom/telerik/android/common/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telerik/android/common/Orientation;

    return-object v0
.end method
