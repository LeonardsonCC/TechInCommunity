.class public Lorg/ow2/asmdex/instruction/InstructionFormat21H;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat21H.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IOneRegisterInstruction;
.implements Lorg/ow2/asmdex/instruction/ILiteralInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x4


# instance fields
.field private literalB:I

.field private registerA:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # I

    .line 112
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 113
    iput p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->registerA:I

    .line 114
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->literalB:I

    .line 115
    return-void
.end method

.method public static getLiteralB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 94
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    return v0
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 84
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 102
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 103
    return-void
.end method


# virtual methods
.method public getLiteral()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->literalB:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->registerA:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 119
    const/4 v0, 0x4

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 141
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->registerA:I

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->test8BitsLimit(I)V

    .line 142
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->registerA:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->opcodeByte:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 143
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->literalB:I

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 144
    return-void
.end method
