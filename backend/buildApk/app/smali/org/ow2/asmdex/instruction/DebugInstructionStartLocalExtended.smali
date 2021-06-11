.class public Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;
.super Lorg/ow2/asmdex/instruction/DebugInstruction;
.source "DebugInstructionStartLocalExtended.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IDebugLocalVariableStartInstruction;
.implements Lorg/ow2/asmdex/instruction/IDebugRegisterInstruction;


# instance fields
.field protected name:Ljava/lang/String;

.field protected register:I

.field protected signature:Ljava/lang/String;

.field protected start:Lorg/ow2/asmdex/structureCommon/Label;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 0
    .param p1, "register"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "start"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 81
    invoke-direct {p0}, Lorg/ow2/asmdex/instruction/DebugInstruction;-><init>()V

    .line 82
    iput p1, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->register:I

    .line 83
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->name:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->type:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->signature:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->start:Lorg/ow2/asmdex/structureCommon/Label;

    .line 87
    return-void
.end method


# virtual methods
.method public getLabel()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->start:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpcode()I
    .locals 1

    .line 111
    const/4 v0, 0x4

    return v0
.end method

.method public getRegister()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->register:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->type:Ljava/lang/String;

    return-object v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 121
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 122
    iget v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->register:I

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 123
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128p1(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 124
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128p1(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 125
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;->signature:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128p1(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 126
    return-void
.end method
