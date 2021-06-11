.class public final enum Lfi/iki/elonen/NanoWSD$State;
.super Ljava/lang/Enum;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoWSD$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoWSD$State;

.field public static final enum CLOSED:Lfi/iki/elonen/NanoWSD$State;

.field public static final enum CLOSING:Lfi/iki/elonen/NanoWSD$State;

.field public static final enum CONNECTING:Lfi/iki/elonen/NanoWSD$State;

.field public static final enum OPEN:Lfi/iki/elonen/NanoWSD$State;

.field public static final enum UNCONNECTED:Lfi/iki/elonen/NanoWSD$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 58
    new-instance v0, Lfi/iki/elonen/NanoWSD$State;

    const/4 v1, 0x0

    const-string v2, "UNCONNECTED"

    invoke-direct {v0, v2, v1}, Lfi/iki/elonen/NanoWSD$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$State;->UNCONNECTED:Lfi/iki/elonen/NanoWSD$State;

    .line 59
    new-instance v0, Lfi/iki/elonen/NanoWSD$State;

    const/4 v2, 0x1

    const-string v3, "CONNECTING"

    invoke-direct {v0, v3, v2}, Lfi/iki/elonen/NanoWSD$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$State;->CONNECTING:Lfi/iki/elonen/NanoWSD$State;

    .line 60
    new-instance v0, Lfi/iki/elonen/NanoWSD$State;

    const/4 v3, 0x2

    const-string v4, "OPEN"

    invoke-direct {v0, v4, v3}, Lfi/iki/elonen/NanoWSD$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    .line 61
    new-instance v0, Lfi/iki/elonen/NanoWSD$State;

    const/4 v4, 0x3

    const-string v5, "CLOSING"

    invoke-direct {v0, v5, v4}, Lfi/iki/elonen/NanoWSD$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$State;->CLOSING:Lfi/iki/elonen/NanoWSD$State;

    .line 62
    new-instance v0, Lfi/iki/elonen/NanoWSD$State;

    const/4 v5, 0x4

    const-string v6, "CLOSED"

    invoke-direct {v0, v6, v5}, Lfi/iki/elonen/NanoWSD$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$State;->CLOSED:Lfi/iki/elonen/NanoWSD$State;

    .line 57
    const/4 v6, 0x5

    new-array v6, v6, [Lfi/iki/elonen/NanoWSD$State;

    sget-object v7, Lfi/iki/elonen/NanoWSD$State;->UNCONNECTED:Lfi/iki/elonen/NanoWSD$State;

    aput-object v7, v6, v1

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->CONNECTING:Lfi/iki/elonen/NanoWSD$State;

    aput-object v1, v6, v2

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    aput-object v1, v6, v3

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->CLOSING:Lfi/iki/elonen/NanoWSD$State;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lfi/iki/elonen/NanoWSD$State;->$VALUES:[Lfi/iki/elonen/NanoWSD$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoWSD$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Lfi/iki/elonen/NanoWSD$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoWSD$State;

    return-object v0
.end method

.method public static values()[Lfi/iki/elonen/NanoWSD$State;
    .locals 1

    .line 57
    sget-object v0, Lfi/iki/elonen/NanoWSD$State;->$VALUES:[Lfi/iki/elonen/NanoWSD$State;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoWSD$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoWSD$State;

    return-object v0
.end method
