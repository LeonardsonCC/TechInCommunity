.class public Lorg/ow2/asmdex/instruction/InstructionFormat11X;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat11X.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IOneRegisterInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x2


# instance fields
.field private registerA:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "register"    # I

    .line 78
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 79
    iput p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11X;->registerA:I

    .line 80
    return-void
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 69
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public getRegisterA()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11X;->registerA:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 84
    const/4 v0, 0x2

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 108
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11X;->registerA:I

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat11X;->test8BitsLimit(I)V

    .line 109
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11X;->registerA:I

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat11X;->opcodeByte:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 110
    return-void
.end method
