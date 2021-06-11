.class public Lorg/ow2/asmdex/instruction/InstructionFormat10X;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat10X.java"


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x2


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 55
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 62
    const/4 v0, 0x2

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 77
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat10X;->opcodeByte:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 78
    return-void
.end method
