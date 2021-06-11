.class public Lorg/ow2/asmdex/instruction/DebugInstructionSpecialOpcode;
.super Lorg/ow2/asmdex/instruction/DebugInstruction;
.source "DebugInstructionSpecialOpcode.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IDebugDifferenceAddressInstruction;
.implements Lorg/ow2/asmdex/instruction/IDebugDifferenceLineInstruction;


# instance fields
.field private differenceAddress:I

.field private differenceLine:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "differenceAddress"    # I
    .param p2, "differenceLine"    # I

    .line 61
    invoke-direct {p0}, Lorg/ow2/asmdex/instruction/DebugInstruction;-><init>()V

    .line 62
    iput p1, p0, Lorg/ow2/asmdex/instruction/DebugInstructionSpecialOpcode;->differenceAddress:I

    .line 63
    iput p2, p0, Lorg/ow2/asmdex/instruction/DebugInstructionSpecialOpcode;->differenceLine:I

    .line 64
    return-void
.end method


# virtual methods
.method public getDifferenceAddress()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionSpecialOpcode;->differenceAddress:I

    return v0
.end method

.method public getDifferenceLine()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionSpecialOpcode;->differenceLine:I

    return v0
.end method

.method public getOpcode()I
    .locals 1

    .line 68
    const/16 v0, 0xa

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 83
    iget v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionSpecialOpcode;->differenceAddress:I

    mul-int/lit8 v0, v0, 0xf

    iget v1, p0, Lorg/ow2/asmdex/instruction/DebugInstructionSpecialOpcode;->differenceLine:I

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 84
    .local v0, "nb":I
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p1, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 85
    return-void
.end method
