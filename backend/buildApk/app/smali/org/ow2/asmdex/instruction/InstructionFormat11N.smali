.class public Lorg/ow2/asmdex/instruction/InstructionFormat11N;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat11N.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IOneRegisterInstruction;
.implements Lorg/ow2/asmdex/instruction/ILiteralInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x2


# instance fields
.field private literalB:I

.field private registerA:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # I

    .line 87
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 88
    iput p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11N;->registerA:I

    .line 89
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11N;->literalB:I

    .line 90
    invoke-static {p2}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 91
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11N;->literalB:I

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 92
    return-void
.end method

.method public static getLiteralB(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 76
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 68
    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0xf

    return v0
.end method


# virtual methods
.method public getLiteral()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11N;->literalB:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11N;->registerA:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 96
    const/4 v0, 0x2

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 101
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11N;->registerA:I

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat11N;->test4BitsLimit(I)V

    .line 102
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11N;->literalB:I

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11N;->registerA:I

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11N;->opcodeByte:I

    add-int/2addr v0, v1

    .line 103
    .local v0, "firstShort":I
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 104
    return-void
.end method
