.class public final enum Lcom/telerik/android/common/CollectionChangeAction;
.super Ljava/lang/Enum;
.source "CollectionChangeAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telerik/android/common/CollectionChangeAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telerik/android/common/CollectionChangeAction;

.field public static final enum ADD:Lcom/telerik/android/common/CollectionChangeAction;

.field public static final enum MOVE:Lcom/telerik/android/common/CollectionChangeAction;

.field public static final enum REMOVE:Lcom/telerik/android/common/CollectionChangeAction;

.field public static final enum REPLACE:Lcom/telerik/android/common/CollectionChangeAction;

.field public static final enum RESET:Lcom/telerik/android/common/CollectionChangeAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 7
    new-instance v0, Lcom/telerik/android/common/CollectionChangeAction;

    const/4 v1, 0x0

    const-string v2, "ADD"

    invoke-direct {v0, v2, v1}, Lcom/telerik/android/common/CollectionChangeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/android/common/CollectionChangeAction;->ADD:Lcom/telerik/android/common/CollectionChangeAction;

    .line 8
    new-instance v0, Lcom/telerik/android/common/CollectionChangeAction;

    const/4 v2, 0x1

    const-string v3, "REMOVE"

    invoke-direct {v0, v3, v2}, Lcom/telerik/android/common/CollectionChangeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/android/common/CollectionChangeAction;->REMOVE:Lcom/telerik/android/common/CollectionChangeAction;

    .line 9
    new-instance v0, Lcom/telerik/android/common/CollectionChangeAction;

    const/4 v3, 0x2

    const-string v4, "RESET"

    invoke-direct {v0, v4, v3}, Lcom/telerik/android/common/CollectionChangeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/android/common/CollectionChangeAction;->RESET:Lcom/telerik/android/common/CollectionChangeAction;

    .line 10
    new-instance v0, Lcom/telerik/android/common/CollectionChangeAction;

    const/4 v4, 0x3

    const-string v5, "REPLACE"

    invoke-direct {v0, v5, v4}, Lcom/telerik/android/common/CollectionChangeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/android/common/CollectionChangeAction;->REPLACE:Lcom/telerik/android/common/CollectionChangeAction;

    .line 11
    new-instance v0, Lcom/telerik/android/common/CollectionChangeAction;

    const/4 v5, 0x4

    const-string v6, "MOVE"

    invoke-direct {v0, v6, v5}, Lcom/telerik/android/common/CollectionChangeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/android/common/CollectionChangeAction;->MOVE:Lcom/telerik/android/common/CollectionChangeAction;

    .line 6
    const/4 v6, 0x5

    new-array v6, v6, [Lcom/telerik/android/common/CollectionChangeAction;

    sget-object v7, Lcom/telerik/android/common/CollectionChangeAction;->ADD:Lcom/telerik/android/common/CollectionChangeAction;

    aput-object v7, v6, v1

    sget-object v1, Lcom/telerik/android/common/CollectionChangeAction;->REMOVE:Lcom/telerik/android/common/CollectionChangeAction;

    aput-object v1, v6, v2

    sget-object v1, Lcom/telerik/android/common/CollectionChangeAction;->RESET:Lcom/telerik/android/common/CollectionChangeAction;

    aput-object v1, v6, v3

    sget-object v1, Lcom/telerik/android/common/CollectionChangeAction;->REPLACE:Lcom/telerik/android/common/CollectionChangeAction;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/telerik/android/common/CollectionChangeAction;->$VALUES:[Lcom/telerik/android/common/CollectionChangeAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/telerik/android/common/CollectionChangeAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/telerik/android/common/CollectionChangeAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/common/CollectionChangeAction;

    return-object v0
.end method

.method public static values()[Lcom/telerik/android/common/CollectionChangeAction;
    .locals 1

    .line 6
    sget-object v0, Lcom/telerik/android/common/CollectionChangeAction;->$VALUES:[Lcom/telerik/android/common/CollectionChangeAction;

    invoke-virtual {v0}, [Lcom/telerik/android/common/CollectionChangeAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telerik/android/common/CollectionChangeAction;

    return-object v0
.end method
