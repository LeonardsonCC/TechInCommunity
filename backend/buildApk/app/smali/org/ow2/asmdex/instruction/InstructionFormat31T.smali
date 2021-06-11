.class public Lorg/ow2/asmdex/instruction/InstructionFormat31T;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat31T.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IOneRegisterInstruction;
.implements Lorg/ow2/asmdex/instruction/IOffsetInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x6


# instance fields
.field private instructionOffset:I

.field private label:Lorg/ow2/asmdex/structureCommon/Label;

.field private offsetB:I

.field private registerA:I


# direct methods
.method public constructor <init>(ILorg/ow2/asmdex/structureCommon/Label;II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "register"    # I
    .param p4, "instructionOffset"    # I

    .line 138
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 140
    iput p4, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->instructionOffset:I

    .line 141
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    .line 142
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->registerA:I

    .line 143
    return-void
.end method

.method public static getOffset(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)I
    .locals 2
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .param p1, "opcode"    # I

    .line 117
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getPos()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 119
    .local v0, "opcodeOffset":I
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sint()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 106
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 127
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 128
    return-void
.end method


# virtual methods
.method public getInstructionOffset()I
    .locals 1

    .line 162
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->instructionOffset:I

    return v0
.end method

.method public getLabel()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->offsetB:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->registerA:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 147
    const/4 v0, 0x6

    return v0
.end method

.method public setInstructionOffset(I)V
    .locals 0
    .param p1, "instructionOffset"    # I

    .line 167
    iput p1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->instructionOffset:I

    .line 168
    return-void
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 3
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 173
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->registerA:I

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->test8BitsLimit(I)V

    .line 174
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->registerA:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->opcodeByte:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 175
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v0

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->instructionOffset:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 176
    .local v0, "branchOffset":I
    const v1, 0xffff

    and-int v2, v0, v1

    invoke-virtual {p1, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 177
    shr-int/lit8 v2, v0, 0x10

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 178
    return-void
.end method
