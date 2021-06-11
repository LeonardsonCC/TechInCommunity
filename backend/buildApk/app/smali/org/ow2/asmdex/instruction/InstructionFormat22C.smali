.class public Lorg/ow2/asmdex/instruction/InstructionFormat22C;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat22C.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/ITwoRegistersInstruction;
.implements Lorg/ow2/asmdex/instruction/IIndexInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x4


# instance fields
.field private field:Lorg/ow2/asmdex/structureWriter/Field;

.field private indexC:I

.field private registerA:I

.field private registerB:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "registerA"    # I
    .param p4, "registerB"    # I

    .line 138
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 140
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->registerA:I

    .line 141
    iput p4, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->registerB:I

    .line 142
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->type:Ljava/lang/String;

    .line 144
    invoke-static {p3}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 145
    invoke-static {p4}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 146
    return-void
.end method

.method public constructor <init>(ILorg/ow2/asmdex/structureWriter/Field;II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "field"    # Lorg/ow2/asmdex/structureWriter/Field;
    .param p3, "registerA"    # I
    .param p4, "registerB"    # I

    .line 156
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 158
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->registerA:I

    .line 159
    iput p4, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->registerB:I

    .line 160
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->field:Lorg/ow2/asmdex/structureWriter/Field;

    .line 162
    invoke-static {p3}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 163
    invoke-static {p4}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 164
    return-void
.end method

.method public static getIndexC(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 119
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    return v0
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 101
    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static getRegisterB(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 109
    shr-int/lit8 v0, p0, 0xc

    and-int/lit8 v0, v0, 0xf

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
.method public getIndex()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->indexC:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->registerA:I

    return v0
.end method

.method public getRegisterB()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->registerB:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 168
    const/4 v0, 0x4

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 192
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->registerA:I

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->registerB:I

    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->test8BitsLimit(I)V

    .line 193
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->registerA:I

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->registerB:I

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->opcodeByte:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 196
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->opcodeByte:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->opcodeByte:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->field:Lorg/ow2/asmdex/structureWriter/Field;

    invoke-virtual {p2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getFieldIndex(Lorg/ow2/asmdex/structureWriter/Field;)I

    move-result v0

    .local v0, "index":I
    goto :goto_1

    .line 197
    .end local v0    # "index":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v0

    .line 202
    .restart local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 203
    return-void
.end method
