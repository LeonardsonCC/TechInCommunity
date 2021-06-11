.class synthetic Lorg/ow2/asmdex/structureWriter/DebugInfoItem$1;
.super Ljava/lang/Object;
.source "DebugInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ow2/asmdex/structureWriter/DebugInfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$ow2$asmdex$structureWriter$DebugInfoItem$LocalVariableType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 276
    invoke-static {}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->values()[Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$1;->$SwitchMap$org$ow2$asmdex$structureWriter$DebugInfoItem$LocalVariableType:[I

    :try_start_0
    sget-object v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->end:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$1;->$SwitchMap$org$ow2$asmdex$structureWriter$DebugInfoItem$LocalVariableType:[I

    sget-object v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->local:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$1;->$SwitchMap$org$ow2$asmdex$structureWriter$DebugInfoItem$LocalVariableType:[I

    sget-object v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->restart:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
