.class public Lorg/ow2/asmdex/instruction/InstructionFormat3RC;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat3RC.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IRegisterArrayInstruction;
.implements Lorg/ow2/asmdex/instruction/IIndexInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x6


# instance fields
.field private index:I

.field private method:Lorg/ow2/asmdex/structureWriter/Method;

.field private registers:[I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;[I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "registers"    # [I

    .line 136
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 137
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->type:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->registers:[I

    .line 139
    invoke-static {p3}, Lorg/ow2/asmdex/instruction/Instruction;->testRange([I)V

    .line 140
    return-void
.end method

.method public constructor <init>(ILorg/ow2/asmdex/structureWriter/Method;[I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "method"    # Lorg/ow2/asmdex/structureWriter/Method;
    .param p3, "registers"    # [I

    .line 124
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 125
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->method:Lorg/ow2/asmdex/structureWriter/Method;

    .line 126
    iput-object p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->registers:[I

    .line 127
    return-void
.end method

.method public static getIndex(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 86
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    return v0
.end method

.method public static getRegisters(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)[I
    .locals 5
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .param p1, "opcode"    # I

    .line 98
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 99
    .local v0, "opcodeHighOrderByte":I
    move v1, v0

    .line 100
    .local v1, "nbRegisters":I
    new-array v2, v1, [I

    .line 101
    .local v2, "registers":[I
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v3

    .line 102
    .local v3, "currentRegister":I
    const/4 v4, 0x0

    .local v4, "registerIndex":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 103
    aput v3, v2, v4

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .end local v4    # "registerIndex":I
    :cond_0
    return-object v2
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 114
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 115
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->index:I

    return v0
.end method

.method public getRegisters()[I
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->registers:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 144
    const/4 v0, 0x6

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 3
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 150
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->registers:[I

    array-length v0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->opcodeByte:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 151
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->opcodeByte:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {p2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getMethodIndex(Lorg/ow2/asmdex/structureWriter/Method;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 158
    :goto_0
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->registers:[I

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget v2, v0, v2

    :cond_1
    move v0, v2

    .line 159
    .local v0, "regArg":I
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 160
    return-void
.end method
