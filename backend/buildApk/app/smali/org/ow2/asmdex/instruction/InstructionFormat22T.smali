.class public Lorg/ow2/asmdex/instruction/InstructionFormat22T;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat22T.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/ITwoRegistersInstruction;
.implements Lorg/ow2/asmdex/instruction/IOffsetInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x4


# instance fields
.field private instructionOffset:I

.field private label:Lorg/ow2/asmdex/structureCommon/Label;

.field private offset:I

.field private registerA:I

.field private registerB:I


# direct methods
.method public constructor <init>(ILorg/ow2/asmdex/structureCommon/Label;III)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "registerA"    # I
    .param p4, "registerB"    # I
    .param p5, "instructionOffset"    # I

    .line 150
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 152
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    .line 153
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->registerA:I

    .line 154
    iput p4, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->registerB:I

    .line 155
    iput p5, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->instructionOffset:I

    .line 157
    invoke-static {p3}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 158
    invoke-static {p4}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 159
    return-void
.end method

.method public static getOffset(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)I
    .locals 2
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .param p1, "opcode"    # I

    .line 127
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sshort()S

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 129
    .local v0, "readOffset":I
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    add-int/2addr v1, v0

    return v1
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 108
    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static getRegisterB(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 116
    shr-int/lit8 v0, p0, 0xc

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 137
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 138
    return-void
.end method


# virtual methods
.method public getInstructionOffset()I
    .locals 1

    .line 178
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->instructionOffset:I

    return v0
.end method

.method public getLabel()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->offset:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->registerA:I

    return v0
.end method

.method public getRegisterB()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->registerB:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 163
    const/4 v0, 0x4

    return v0
.end method

.method public setInstructionOffset(I)V
    .locals 0
    .param p1, "instructionOffset"    # I

    .line 183
    iput p1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->instructionOffset:I

    .line 184
    return-void
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 3
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 188
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->registerA:I

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->registerB:I

    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->test4BitsLimit(I)V

    .line 191
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->registerB:I

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->registerA:I

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->opcodeByte:I

    add-int/2addr v0, v1

    .line 192
    .local v0, "firstShort":I
    iget-object v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v1

    iget v2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->instructionOffset:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 193
    .local v1, "secondShort":I
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 194
    invoke-virtual {p1, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 195
    return-void
.end method
