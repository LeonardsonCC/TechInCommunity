.class public final enum Lcom/telerik/android/data/SelectionMode;
.super Ljava/lang/Enum;
.source "SelectionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telerik/android/data/SelectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telerik/android/data/SelectionMode;

.field public static final enum MULTIPLE:Lcom/telerik/android/data/SelectionMode;

.field public static final enum NONE:Lcom/telerik/android/data/SelectionMode;

.field public static final enum SINGLE:Lcom/telerik/android/data/SelectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/telerik/android/data/SelectionMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/telerik/android/data/SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/android/data/SelectionMode;->NONE:Lcom/telerik/android/data/SelectionMode;

    .line 5
    new-instance v0, Lcom/telerik/android/data/SelectionMode;

    const/4 v2, 0x1

    const-string v3, "SINGLE"

    invoke-direct {v0, v3, v2}, Lcom/telerik/android/data/SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/android/data/SelectionMode;->SINGLE:Lcom/telerik/android/data/SelectionMode;

    .line 6
    new-instance v0, Lcom/telerik/android/data/SelectionMode;

    const/4 v3, 0x2

    const-string v4, "MULTIPLE"

    invoke-direct {v0, v4, v3}, Lcom/telerik/android/data/SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/android/data/SelectionMode;->MULTIPLE:Lcom/telerik/android/data/SelectionMode;

    .line 3
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/telerik/android/data/SelectionMode;

    sget-object v5, Lcom/telerik/android/data/SelectionMode;->NONE:Lcom/telerik/android/data/SelectionMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/telerik/android/data/SelectionMode;->SINGLE:Lcom/telerik/android/data/SelectionMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/telerik/android/data/SelectionMode;->$VALUES:[Lcom/telerik/android/data/SelectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telerik/android/data/SelectionMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/telerik/android/data/SelectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/data/SelectionMode;

    return-object v0
.end method

.method public static values()[Lcom/telerik/android/data/SelectionMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/telerik/android/data/SelectionMode;->$VALUES:[Lcom/telerik/android/data/SelectionMode;

    invoke-virtual {v0}, [Lcom/telerik/android/data/SelectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telerik/android/data/SelectionMode;

    return-object v0
.end method
