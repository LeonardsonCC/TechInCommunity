.class public final enum Lorg/nativescript/widgets/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/nativescript/widgets/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/nativescript/widgets/Orientation;

.field public static final enum horizontal:Lorg/nativescript/widgets/Orientation;

.field public static final enum vertical:Lorg/nativescript/widgets/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lorg/nativescript/widgets/Orientation;

    const/4 v1, 0x0

    const-string v2, "horizontal"

    invoke-direct {v0, v2, v1}, Lorg/nativescript/widgets/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nativescript/widgets/Orientation;->horizontal:Lorg/nativescript/widgets/Orientation;

    .line 12
    new-instance v0, Lorg/nativescript/widgets/Orientation;

    const/4 v2, 0x1

    const-string v3, "vertical"

    invoke-direct {v0, v3, v2}, Lorg/nativescript/widgets/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nativescript/widgets/Orientation;->vertical:Lorg/nativescript/widgets/Orientation;

    .line 10
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/nativescript/widgets/Orientation;

    sget-object v4, Lorg/nativescript/widgets/Orientation;->horizontal:Lorg/nativescript/widgets/Orientation;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lorg/nativescript/widgets/Orientation;->$VALUES:[Lorg/nativescript/widgets/Orientation;

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

.method public static valueOf(Ljava/lang/String;)Lorg/nativescript/widgets/Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lorg/nativescript/widgets/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/Orientation;

    return-object v0
.end method

.method public static values()[Lorg/nativescript/widgets/Orientation;
    .locals 1

    .line 10
    sget-object v0, Lorg/nativescript/widgets/Orientation;->$VALUES:[Lorg/nativescript/widgets/Orientation;

    invoke-virtual {v0}, [Lorg/nativescript/widgets/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/nativescript/widgets/Orientation;

    return-object v0
.end method
