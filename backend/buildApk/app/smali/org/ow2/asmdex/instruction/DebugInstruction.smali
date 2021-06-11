.class public abstract Lorg/ow2/asmdex/instruction/DebugInstruction;
.super Ljava/lang/Object;
.source "DebugInstruction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOpcode()I
.end method

.method public abstract write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
.end method
