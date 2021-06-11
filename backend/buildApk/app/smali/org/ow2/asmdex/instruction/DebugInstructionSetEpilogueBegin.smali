.class public Lorg/ow2/asmdex/instruction/DebugInstructionSetEpilogueBegin;
.super Lorg/ow2/asmdex/instruction/DebugInstruction;
.source "DebugInstructionSetEpilogueBegin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/ow2/asmdex/instruction/DebugInstruction;-><init>()V

    return-void
.end method


# virtual methods
.method public getOpcode()I
    .locals 1

    .line 47
    const/16 v0, 0x8

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 52
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 53
    return-void
.end method
