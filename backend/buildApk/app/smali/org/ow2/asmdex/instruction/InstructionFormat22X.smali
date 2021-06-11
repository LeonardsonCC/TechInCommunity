.class public Lorg/ow2/asmdex/instruction/InstructionFormat22X;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat22X.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/ITwoRegistersInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x4


# instance fields
.field private registerA:I

.field private registerB:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # I

    .line 107
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 108
    iput p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->registerA:I

    .line 109
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->registerB:I

    .line 110
    return-void
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 79
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getRegisterB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 89
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    return v0
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 97
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 98
    return-void
.end method


# virtual methods
.method public getRegisterA()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->registerA:I

    return v0
.end method

.method public getRegisterB()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->registerB:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 114
    const/4 v0, 0x4

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 3
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 137
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->registerA:I

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->test8BitsLimit(I)V

    .line 138
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->registerB:I

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->test16BitsLimit(I)V

    .line 139
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->registerA:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->opcodeByte:I

    add-int/2addr v0, v1

    .line 140
    .local v0, "firstShort":I
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 141
    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->registerB:I

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 142
    return-void
.end method
