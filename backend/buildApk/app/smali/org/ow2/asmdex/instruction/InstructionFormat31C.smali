.class public Lorg/ow2/asmdex/instruction/InstructionFormat31C;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat31C.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IOneRegisterInstruction;
.implements Lorg/ow2/asmdex/instruction/IIndexInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x6


# instance fields
.field private indexB:I

.field private registerA:I

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "registerA"    # I

    .line 112
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 114
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31C;->registerA:I

    .line 115
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31C;->string:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public static getIndexB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 2
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 94
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 84
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 102
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 103
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31C;->indexB:I

    return v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31C;->registerA:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 120
    const/4 v0, 0x6

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 3
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 135
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31C;->registerA:I

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat31C;->test8BitsLimit(I)V

    .line 137
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31C;->registerA:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31C;->opcodeByte:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 138
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat31C;->string:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "index":I
    const v1, 0xffff

    and-int v2, v0, v1

    invoke-virtual {p1, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 140
    shr-int/lit8 v2, v0, 0x10

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 141
    return-void
.end method
