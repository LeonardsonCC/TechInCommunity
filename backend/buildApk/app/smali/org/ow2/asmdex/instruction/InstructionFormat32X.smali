.class public Lorg/ow2/asmdex/instruction/InstructionFormat32X;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat32X.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/ITwoRegistersInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x6


# instance fields
.field private registerA:I

.field private registerB:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "registerA"    # I
    .param p3, "registerB"    # I

    .line 109
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 110
    iput p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->registerA:I

    .line 111
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->registerB:I

    .line 112
    return-void
.end method

.method public static getRegisterA(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 81
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    return v0
.end method

.method public static getRegisterB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 91
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    return v0
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 99
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 100
    return-void
.end method


# virtual methods
.method public getRegisterA()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->registerA:I

    return v0
.end method

.method public getRegisterB()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->registerB:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 116
    const/4 v0, 0x6

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 139
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->registerA:I

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->registerB:I

    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->test16BitsLimit(I)V

    .line 140
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->opcodeByte:I

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 141
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->registerA:I

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 142
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->registerB:I

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 143
    return-void
.end method
