.class public Lorg/ow2/asmdex/instruction/InstructionFormat23X;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat23X.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IThreeRegistersInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x4


# instance fields
.field private registerA:I

.field private registerB:I

.field private registerC:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "registerA"    # I
    .param p3, "registerB"    # I
    .param p4, "registerC"    # I

    .line 138
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 140
    iput p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->registerA:I

    .line 141
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->registerB:I

    .line 142
    iput p4, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->registerC:I

    .line 143
    return-void
.end method

.method public static getEncodedRegisterBAndC(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 98
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    return v0
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 87
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getRegisterBFromEncodedRegisterBAndC(I)I
    .locals 1
    .param p0, "encodedRegisterBAndC"    # I

    .line 108
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getRegisterCFromEncodedRegisterBAndC(I)I
    .locals 1
    .param p0, "encodedRegisterBAndC"    # I

    .line 118
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 127
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 128
    return-void
.end method


# virtual methods
.method public getRegisterA()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->registerA:I

    return v0
.end method

.method public getRegisterB()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->registerB:I

    return v0
.end method

.method public getRegisterC()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->registerC:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 147
    const/4 v0, 0x4

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 200
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->registerA:I

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->registerB:I

    or-int/2addr v0, v1

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->registerC:I

    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->test8BitsLimit(I)V

    .line 201
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->registerA:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->opcodeByte:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 202
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->registerC:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->registerB:I

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 203
    return-void
.end method
