.class public Lorg/ow2/asmdex/instruction/DebugInstructionAdvanceLine;
.super Lorg/ow2/asmdex/instruction/DebugInstruction;
.source "DebugInstructionAdvanceLine.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IDebugDifferenceLineInstruction;


# instance fields
.field protected differenceLine:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "difference"    # I

    .line 54
    invoke-direct {p0}, Lorg/ow2/asmdex/instruction/DebugInstruction;-><init>()V

    .line 55
    iput p1, p0, Lorg/ow2/asmdex/instruction/DebugInstructionAdvanceLine;->differenceLine:I

    .line 56
    return-void
.end method


# virtual methods
.method public getDifferenceLine()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionAdvanceLine;->differenceLine:I

    return v0
.end method

.method public getOpcode()I
    .locals 1

    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 71
    iget v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionAdvanceLine;->differenceLine:I

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putSleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 72
    return-void
.end method
