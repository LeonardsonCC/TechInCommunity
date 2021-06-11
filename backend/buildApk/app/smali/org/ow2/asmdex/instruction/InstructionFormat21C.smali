.class public Lorg/ow2/asmdex/instruction/InstructionFormat21C;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat21C.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IOneRegisterInstruction;
.implements Lorg/ow2/asmdex/instruction/IIndexInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x4


# instance fields
.field private field:Lorg/ow2/asmdex/structureWriter/Field;

.field private indexB:I

.field private registerA:I

.field private stringOrType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "stringOrType"    # Ljava/lang/String;
    .param p3, "registerA"    # I

    .line 113
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 115
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->registerA:I

    .line 116
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->stringOrType:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(ILorg/ow2/asmdex/structureWriter/Field;I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "field"    # Lorg/ow2/asmdex/structureWriter/Field;
    .param p3, "registerA"    # I

    .line 126
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 128
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->registerA:I

    .line 129
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->field:Lorg/ow2/asmdex/structureWriter/Field;

    .line 130
    return-void
.end method

.method public static getIndexB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 103
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    return v0
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 93
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

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
.method public getIndex()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->indexB:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->registerA:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 142
    const/4 v0, 0x4

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 165
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->registerA:I

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->test8BitsLimit(I)V

    .line 167
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->registerA:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->opcodeByte:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 170
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->opcodeByte:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->stringOrType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    goto :goto_1

    .line 172
    .end local v0    # "index":I
    :cond_0
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->opcodeByte:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->opcodeByte:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->opcodeByte:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->field:Lorg/ow2/asmdex/structureWriter/Field;

    invoke-virtual {p2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getFieldIndex(Lorg/ow2/asmdex/structureWriter/Field;)I

    move-result v0

    .restart local v0    # "index":I
    goto :goto_1

    .line 173
    .end local v0    # "index":I
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->stringOrType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v0

    .line 177
    .restart local v0    # "index":I
    :goto_1
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 178
    return-void
.end method
