.class public Lorg/ow2/asmdex/instruction/DebugInstructionRestartLocal;
.super Lorg/ow2/asmdex/instruction/DebugInstruction;
.source "DebugInstructionRestartLocal.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IDebugRegisterInstruction;
.implements Lorg/ow2/asmdex/instruction/IDebugLocalVariableInstruction;


# instance fields
.field protected register:I

.field protected restart:Lorg/ow2/asmdex/structureCommon/Label;


# direct methods
.method public constructor <init>(ILorg/ow2/asmdex/structureCommon/Label;)V
    .locals 0
    .param p1, "register"    # I
    .param p2, "restart"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 62
    invoke-direct {p0}, Lorg/ow2/asmdex/instruction/DebugInstruction;-><init>()V

    .line 63
    iput p1, p0, Lorg/ow2/asmdex/instruction/DebugInstructionRestartLocal;->register:I

    .line 64
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/DebugInstructionRestartLocal;->restart:Lorg/ow2/asmdex/structureCommon/Label;

    .line 65
    return-void
.end method


# virtual methods
.method public getLabel()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionRestartLocal;->restart:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getOpcode()I
    .locals 1

    .line 74
    const/4 v0, 0x6

    return v0
.end method

.method public getRegister()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionRestartLocal;->register:I

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 79
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 80
    iget v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionRestartLocal;->register:I

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 81
    return-void
.end method
