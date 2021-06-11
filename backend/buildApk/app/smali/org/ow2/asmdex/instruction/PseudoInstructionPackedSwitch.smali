.class public Lorg/ow2/asmdex/instruction/PseudoInstructionPackedSwitch;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "PseudoInstructionPackedSwitch.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IPseudoInstruction;


# static fields
.field private static final PACKED_SWITCH_OPCODE:I = 0x100


# instance fields
.field private firstKey:I

.field private instructionPackedSwitch:Lorg/ow2/asmdex/instruction/IOffsetInstruction;

.field private targets:[Lorg/ow2/asmdex/structureCommon/Label;


# direct methods
.method public constructor <init>(I[Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/instruction/IOffsetInstruction;)V
    .locals 1
    .param p1, "firstKey"    # I
    .param p2, "targets"    # [Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "instructionPackedSwitch"    # Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    .line 78
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 79
    iput p1, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionPackedSwitch;->firstKey:I

    .line 80
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionPackedSwitch;->targets:[Lorg/ow2/asmdex/structureCommon/Label;

    .line 81
    iput-object p3, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionPackedSwitch;->instructionPackedSwitch:Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    .line 82
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionPackedSwitch;->targets:[Lorg/ow2/asmdex/structureCommon/Label;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getSourceInstruction()Lorg/ow2/asmdex/instruction/IOffsetInstruction;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionPackedSwitch;->instructionPackedSwitch:Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    return-object v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 4
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 101
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 102
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionPackedSwitch;->targets:[Lorg/ow2/asmdex/structureCommon/Label;

    array-length v0, v0

    .line 103
    .local v0, "size":I
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 104
    iget v1, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionPackedSwitch;->firstKey:I

    invoke-virtual {p1, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 106
    iget-object v2, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionPackedSwitch;->targets:[Lorg/ow2/asmdex/structureCommon/Label;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v2

    iget-object v3, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionPackedSwitch;->instructionPackedSwitch:Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    invoke-interface {v3}, Lorg/ow2/asmdex/instruction/IOffsetInstruction;->getInstructionOffset()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
