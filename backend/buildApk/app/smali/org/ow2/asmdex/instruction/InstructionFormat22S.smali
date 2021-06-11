.class public Lorg/ow2/asmdex/instruction/InstructionFormat22S;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat22S.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/ITwoRegistersInstruction;
.implements Lorg/ow2/asmdex/instruction/ILiteralInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x4


# instance fields
.field private literalC:I

.field private registerA:I

.field private registerB:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "registerA"    # I
    .param p3, "registerB"    # I
    .param p4, "value"    # I

    .line 123
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 125
    iput p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->registerA:I

    .line 126
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->registerB:I

    .line 127
    iput p4, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->literalC:I

    .line 129
    invoke-static {p2}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 130
    invoke-static {p3}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 131
    return-void
.end method

.method public static getLiteralC(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 104
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sshort()S

    move-result v0

    return v0
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 86
    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static getRegisterB(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 94
    shr-int/lit8 v0, p0, 0xc

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 112
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 113
    return-void
.end method


# virtual methods
.method public getLiteral()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->literalC:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->registerA:I

    return v0
.end method

.method public getRegisterB()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->registerB:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 135
    const/4 v0, 0x4

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 150
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->registerA:I

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->registerB:I

    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->test4BitsLimit(I)V

    .line 151
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->registerA:I

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->registerB:I

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->opcodeByte:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 152
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->literalC:I

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 153
    return-void
.end method
