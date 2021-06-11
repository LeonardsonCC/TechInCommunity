.class public final enum Lorg/nativescript/widgets/GridUnitType;
.super Ljava/lang/Enum;
.source "GridUnitType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/nativescript/widgets/GridUnitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/nativescript/widgets/GridUnitType;

.field public static final enum auto:Lorg/nativescript/widgets/GridUnitType;

.field public static final enum pixel:Lorg/nativescript/widgets/GridUnitType;

.field public static final enum star:Lorg/nativescript/widgets/GridUnitType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lorg/nativescript/widgets/GridUnitType;

    const/4 v1, 0x0

    const-string v2, "auto"

    invoke-direct {v0, v2, v1}, Lorg/nativescript/widgets/GridUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nativescript/widgets/GridUnitType;->auto:Lorg/nativescript/widgets/GridUnitType;

    .line 12
    new-instance v0, Lorg/nativescript/widgets/GridUnitType;

    const/4 v2, 0x1

    const-string v3, "pixel"

    invoke-direct {v0, v3, v2}, Lorg/nativescript/widgets/GridUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nativescript/widgets/GridUnitType;->pixel:Lorg/nativescript/widgets/GridUnitType;

    .line 13
    new-instance v0, Lorg/nativescript/widgets/GridUnitType;

    const/4 v3, 0x2

    const-string v4, "star"

    invoke-direct {v0, v4, v3}, Lorg/nativescript/widgets/GridUnitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nativescript/widgets/GridUnitType;->star:Lorg/nativescript/widgets/GridUnitType;

    .line 10
    const/4 v4, 0x3

    new-array v4, v4, [Lorg/nativescript/widgets/GridUnitType;

    sget-object v5, Lorg/nativescript/widgets/GridUnitType;->auto:Lorg/nativescript/widgets/GridUnitType;

    aput-object v5, v4, v1

    sget-object v1, Lorg/nativescript/widgets/GridUnitType;->pixel:Lorg/nativescript/widgets/GridUnitType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/nativescript/widgets/GridUnitType;->$VALUES:[Lorg/nativescript/widgets/GridUnitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/nativescript/widgets/GridUnitType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lorg/nativescript/widgets/GridUnitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/GridUnitType;

    return-object v0
.end method

.method public static values()[Lorg/nativescript/widgets/GridUnitType;
    .locals 1

    .line 10
    sget-object v0, Lorg/nativescript/widgets/GridUnitType;->$VALUES:[Lorg/nativescript/widgets/GridUnitType;

    invoke-virtual {v0}, [Lorg/nativescript/widgets/GridUnitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/nativescript/widgets/GridUnitType;

    return-object v0
.end method
