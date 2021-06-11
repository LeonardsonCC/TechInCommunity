.class public Lorg/ow2/asmdex/instruction/InstructionFormat31I;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat31I.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IOneRegisterInstruction;
.implements Lorg/ow2/asmdex/instruction/ILiteralInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x6


# instance fields
.field private literalB:I

.field private registerA:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # I

    .line 108
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 109
    iput p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->registerA:I

    .line 110
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->literalB:I

    .line 111
    return-void
.end method

.method public static getLiteralB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 2
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 90
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 80
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 98
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public getLiteral()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->literalB:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->registerA:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 115
    const/4 v0, 0x6

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 137
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->registerA:I

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->test8BitsLimit(I)V

    .line 138
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->registerA:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->opcodeByte:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 139
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->literalB:I

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 140
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->literalB:I

    shr-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 141
    return-void
.end method
