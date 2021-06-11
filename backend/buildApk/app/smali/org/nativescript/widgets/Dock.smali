.class public final enum Lorg/nativescript/widgets/Dock;
.super Ljava/lang/Enum;
.source "Dock.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/nativescript/widgets/Dock;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/nativescript/widgets/Dock;

.field public static final enum bottom:Lorg/nativescript/widgets/Dock;

.field public static final enum left:Lorg/nativescript/widgets/Dock;

.field public static final enum right:Lorg/nativescript/widgets/Dock;

.field public static final enum top:Lorg/nativescript/widgets/Dock;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lorg/nativescript/widgets/Dock;

    const/4 v1, 0x0

    const-string v2, "left"

    invoke-direct {v0, v2, v1}, Lorg/nativescript/widgets/Dock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nativescript/widgets/Dock;->left:Lorg/nativescript/widgets/Dock;

    .line 12
    new-instance v0, Lorg/nativescript/widgets/Dock;

    const/4 v2, 0x1

    const-string v3, "top"

    invoke-direct {v0, v3, v2}, Lorg/nativescript/widgets/Dock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nativescript/widgets/Dock;->top:Lorg/nativescript/widgets/Dock;

    .line 13
    new-instance v0, Lorg/nativescript/widgets/Dock;

    const/4 v3, 0x2

    const-string v4, "right"

    invoke-direct {v0, v4, v3}, Lorg/nativescript/widgets/Dock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nativescript/widgets/Dock;->right:Lorg/nativescript/widgets/Dock;

    .line 14
    new-instance v0, Lorg/nativescript/widgets/Dock;

    const/4 v4, 0x3

    const-string v5, "bottom"

    invoke-direct {v0, v5, v4}, Lorg/nativescript/widgets/Dock;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nativescript/widgets/Dock;->bottom:Lorg/nativescript/widgets/Dock;

    .line 10
    const/4 v5, 0x4

    new-array v5, v5, [Lorg/nativescript/widgets/Dock;

    sget-object v6, Lorg/nativescript/widgets/Dock;->left:Lorg/nativescript/widgets/Dock;

    aput-object v6, v5, v1

    sget-object v1, Lorg/nativescript/widgets/Dock;->top:Lorg/nativescript/widgets/Dock;

    aput-object v1, v5, v2

    sget-object v1, Lorg/nativescript/widgets/Dock;->right:Lorg/nativescript/widgets/Dock;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lorg/nativescript/widgets/Dock;->$VALUES:[Lorg/nativescript/widgets/Dock;

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

.method public static valueOf(Ljava/lang/String;)Lorg/nativescript/widgets/Dock;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lorg/nativescript/widgets/Dock;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/Dock;

    return-object v0
.end method

.method public static values()[Lorg/nativescript/widgets/Dock;
    .locals 1

    .line 10
    sget-object v0, Lorg/nativescript/widgets/Dock;->$VALUES:[Lorg/nativescript/widgets/Dock;

    invoke-virtual {v0}, [Lorg/nativescript/widgets/Dock;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/nativescript/widgets/Dock;

    return-object v0
.end method
