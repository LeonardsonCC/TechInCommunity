.class public Lorg/ow2/asmdex/instruction/InstructionFormat20T;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat20T.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IOffsetInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x4


# instance fields
.field private instructionOffset:I

.field private label:Lorg/ow2/asmdex/structureCommon/Label;

.field private offset:I


# direct methods
.method public constructor <init>(ILorg/ow2/asmdex/structureCommon/Label;I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "instructionOffset"    # I

    .line 123
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 125
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat20T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    .line 126
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat20T;->instructionOffset:I

    .line 127
    return-void
.end method

.method public static getOffset(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)I
    .locals 2
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .param p1, "opcode"    # I

    .line 102
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sshort()S

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 105
    .local v0, "readOffset":I
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    add-int/2addr v1, v0

    return v1
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 113
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 114
    return-void
.end method


# virtual methods
.method public getInstructionOffset()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat20T;->instructionOffset:I

    return v0
.end method

.method public getLabel()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat20T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat20T;->offset:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 131
    const/4 v0, 0x4

    return v0
.end method

.method public setInstructionOffset(I)V
    .locals 0
    .param p1, "instructionOffset"    # I

    .line 151
    iput p1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat20T;->instructionOffset:I

    .line 152
    return-void
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 157
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat20T;->opcodeByte:I

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 158
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat20T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v0

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat20T;->instructionOffset:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 159
    return-void
.end method
