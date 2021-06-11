.class final enum Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;
.super Ljava/lang/Enum;
.source "DebugInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ow2/asmdex/structureWriter/DebugInfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LocalVariableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

.field public static final enum end:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

.field public static final enum local:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

.field public static final enum restart:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 129
    new-instance v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    const/4 v1, 0x0

    const-string v2, "end"

    invoke-direct {v0, v2, v1, v1}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->end:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    new-instance v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    const/4 v2, 0x1

    const-string v3, "local"

    invoke-direct {v0, v3, v2, v2}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->local:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    new-instance v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    const/4 v3, 0x2

    const-string v4, "restart"

    invoke-direct {v0, v4, v3, v3}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->restart:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    sget-object v5, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->end:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    aput-object v5, v4, v1

    sget-object v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->local:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->$VALUES:[Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->id:I

    .line 133
    return-void
.end method

.method static synthetic access$000(Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;)I
    .locals 1
    .param p0, "x0"    # Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    .line 129
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->id:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 129
    const-class v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    return-object v0
.end method

.method public static values()[Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;
    .locals 1

    .line 129
    sget-object v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->$VALUES:[Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    invoke-virtual {v0}, [Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    return-object v0
.end method
