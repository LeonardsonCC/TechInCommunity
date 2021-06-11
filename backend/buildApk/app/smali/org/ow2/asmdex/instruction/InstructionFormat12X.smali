.class public Lorg/ow2/asmdex/instruction/InstructionFormat12X;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat12X.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/ITwoRegistersInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x2


# instance fields
.field private registerA:I

.field private registerB:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # I

    .line 82
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 83
    iput p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->registerA:I

    .line 84
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->registerB:I

    .line 85
    invoke-static {p2}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 86
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->registerB:I

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 87
    return-void
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 64
    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static getRegisterB(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 72
    shr-int/lit8 v0, p0, 0xc

    and-int/lit8 v0, v0, 0xf

    return v0
.end method


# virtual methods
.method public getRegisterA()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->registerA:I

    return v0
.end method

.method public getRegisterB()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->registerB:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 137
    const/4 v0, 0x2

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 142
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->registerA:I

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->registerB:I

    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->test4BitsLimit(I)V

    .line 143
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->registerB:I

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->registerA:I

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->opcodeByte:I

    add-int/2addr v0, v1

    .line 144
    .local v0, "firstShort":I
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 145
    return-void
.end method
