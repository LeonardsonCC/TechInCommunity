.class public Lorg/ow2/asmdex/instruction/InstructionFormat22B;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat22B.java"

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

    .line 137
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 139
    iput p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->registerA:I

    .line 140
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->registerB:I

    .line 141
    iput p4, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->literalC:I

    .line 142
    return-void
.end method

.method public static getEncodedRegisterBAndLiteralC(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 99
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    return v0
.end method

.method public static getLiteralCFromEncodedRegisterBAndLiteralC(I)I
    .locals 1
    .param p0, "encodedRegisterBAndC"    # I

    .line 119
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    return v0
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 88
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getRegisterBFromEncodedRegisterBAndC(I)I
    .locals 1
    .param p0, "encodedRegisterBAndLiteralC"    # I

    .line 109
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 126
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 127
    return-void
.end method


# virtual methods
.method public getLiteral()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->literalC:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->registerA:I

    return v0
.end method

.method public getRegisterB()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->registerB:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 146
    const/4 v0, 0x4

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 161
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->registerA:I

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->registerB:I

    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->test8BitsLimit(I)V

    .line 162
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->registerA:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->opcodeByte:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 163
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->literalC:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->registerB:I

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 164
    return-void
.end method
