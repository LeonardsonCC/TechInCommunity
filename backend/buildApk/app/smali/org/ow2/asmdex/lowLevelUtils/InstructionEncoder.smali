.class public Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;
.super Ljava/lang/Object;
.source "InstructionEncoder.java"


# static fields
.field private static final MAX_VALUE_16BITS_SIGNED:I = 0x7fff

.field private static final MAX_VALUE_4BITS_SIGNED:I = 0x7

.field private static final MAX_VALUE_4BITS_UNSIGNED:I = 0xf

.field private static final MAX_VALUE_8BITS_UNSIGNED:I = 0xff

.field private static final MIN_VALUE_16BITS_SIGNED:I = -0x8000

.field private static final MIN_VALUE_4BITS_SIGNED:I = -0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBest12X22X32XInstruction(III)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 2
    .param p0, "opcode"    # I
    .param p1, "destinationRegister"    # I
    .param p2, "sourceRegister"    # I

    .line 200
    const/4 v0, 0x7

    if-lt p0, v0, :cond_0

    .line 201
    const/4 p0, 0x7

    goto :goto_0

    .line 202
    :cond_0
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    .line 203
    const/4 p0, 0x4

    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    .line 205
    const/4 p0, 0x1

    .line 210
    :cond_2
    :goto_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_3

    if-gt p2, v0, :cond_3

    .line 212
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat12X;

    invoke-direct {v0, p0, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;-><init>(III)V

    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    goto :goto_1

    .line 213
    .end local v0    # "insn":Lorg/ow2/asmdex/instruction/Instruction;
    :cond_3
    const/16 v0, 0xff

    if-gt p1, v0, :cond_4

    .line 215
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat22X;

    add-int/lit8 v1, p0, 0x1

    invoke-direct {v0, v1, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat22X;-><init>(III)V

    .restart local v0    # "insn":Lorg/ow2/asmdex/instruction/Instruction;
    goto :goto_1

    .line 217
    .end local v0    # "insn":Lorg/ow2/asmdex/instruction/Instruction;
    :cond_4
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat32X;

    add-int/lit8 v1, p0, 0x2

    invoke-direct {v0, v1, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat32X;-><init>(III)V

    .line 223
    .restart local v0    # "insn":Lorg/ow2/asmdex/instruction/Instruction;
    :goto_1
    return-object v0
.end method

.method public static encodeArrayLength(II)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 2
    .param p0, "destinationRegister"    # I
    .param p1, "arrayReferenceBearing"    # I

    .line 418
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat12X;

    const/16 v1, 0x21

    invoke-direct {v0, v1, p0, p1}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;-><init>(III)V

    return-object v0
.end method

.method public static encodeArrayOperation(IIII)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 1
    .param p0, "opcode"    # I
    .param p1, "valueRegister"    # I
    .param p2, "arrayRegister"    # I
    .param p3, "indexRegister"    # I

    .line 432
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat23X;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;-><init>(IIII)V

    return-object v0
.end method

.method public static encodeDebugStartLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/instruction/DebugInstruction;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "start"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    if-nez p2, :cond_0

    .line 487
    new-instance v1, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocal;

    invoke-direct {v1, p3, p0, p1, p4}, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocal;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;)V

    move-object v0, v1

    goto :goto_0

    .line 489
    :cond_0
    new-instance v7, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;

    move-object v1, v7

    move v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;)V

    move-object v0, v7

    .line 491
    :goto_0
    return-object v0
.end method

.method public static encodeFieldInsn(IIILorg/ow2/asmdex/structureWriter/Field;)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 2
    .param p0, "opcode"    # I
    .param p1, "valueRegister"    # I
    .param p2, "objectRegister"    # I
    .param p3, "field"    # Lorg/ow2/asmdex/structureWriter/Field;

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    const/16 v1, 0x52

    if-lt p0, v1, :cond_0

    const/16 v1, 0x5f

    if-gt p0, v1, :cond_0

    .line 467
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat22C;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;-><init>(ILorg/ow2/asmdex/structureWriter/Field;II)V

    move-object v0, v1

    goto :goto_0

    .line 468
    :cond_0
    const/16 v1, 0x60

    if-lt p0, v1, :cond_1

    const/16 v1, 0x6d

    if-gt p0, v1, :cond_1

    .line 469
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat21C;

    invoke-direct {v1, p0, p3, p1}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;-><init>(ILorg/ow2/asmdex/structureWriter/Field;I)V

    move-object v0, v1

    .line 471
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static encodeFillArrayDataInsn(IILorg/ow2/asmdex/structureCommon/Label;I)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 1
    .param p0, "opcode"    # I
    .param p1, "arrayReference"    # I
    .param p2, "arrayLabel"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "instructionOffset"    # I

    .line 327
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/ow2/asmdex/instruction/InstructionFormat31T;-><init>(ILorg/ow2/asmdex/structureCommon/Label;II)V

    return-object v0
.end method

.method public static encodeInsn(I)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 1
    .param p0, "opcode"    # I

    .line 233
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat10X;

    invoke-direct {v0, p0}, Lorg/ow2/asmdex/instruction/InstructionFormat10X;-><init>(I)V

    return-object v0
.end method

.method public static encodeIntInsn(II)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 1
    .param p0, "opcode"    # I
    .param p1, "operand"    # I

    .line 279
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat11X;

    invoke-direct {v0, p0, p1}, Lorg/ow2/asmdex/instruction/InstructionFormat11X;-><init>(II)V

    return-object v0
.end method

.method public static encodeJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;III)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 8
    .param p0, "opcode"    # I
    .param p1, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p2, "registerA"    # I
    .param p3, "registerB"    # I
    .param p4, "instructionOffset"    # I

    .line 293
    const/4 v0, 0x0

    .line 299
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    const/16 v1, 0x28

    if-ne p0, v1, :cond_0

    .line 301
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat10T;

    invoke-direct {v1, p0, p1, p4}, Lorg/ow2/asmdex/instruction/InstructionFormat10T;-><init>(ILorg/ow2/asmdex/structureCommon/Label;I)V

    move-object v0, v1

    goto :goto_0

    .line 302
    :cond_0
    const/16 v1, 0x29

    if-ne p0, v1, :cond_1

    .line 303
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat20T;

    invoke-direct {v1, p0, p1, p4}, Lorg/ow2/asmdex/instruction/InstructionFormat20T;-><init>(ILorg/ow2/asmdex/structureCommon/Label;I)V

    move-object v0, v1

    goto :goto_0

    .line 304
    :cond_1
    const/16 v1, 0x2a

    if-ne p0, v1, :cond_2

    .line 305
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat30T;

    invoke-direct {v1, p0, p1, p4}, Lorg/ow2/asmdex/instruction/InstructionFormat30T;-><init>(ILorg/ow2/asmdex/structureCommon/Label;I)V

    move-object v0, v1

    goto :goto_0

    .line 306
    :cond_2
    const/16 v1, 0x32

    if-lt p0, v1, :cond_3

    const/16 v1, 0x37

    if-gt p0, v1, :cond_3

    .line 307
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat22T;

    move-object v2, v1

    move v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/ow2/asmdex/instruction/InstructionFormat22T;-><init>(ILorg/ow2/asmdex/structureCommon/Label;III)V

    move-object v0, v1

    goto :goto_0

    .line 308
    :cond_3
    const/16 v1, 0x38

    if-lt p0, v1, :cond_4

    const/16 v1, 0x3d

    if-gt p0, v1, :cond_4

    .line 309
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat21T;

    invoke-direct {v1, p0, p1, p2, p4}, Lorg/ow2/asmdex/instruction/InstructionFormat21T;-><init>(ILorg/ow2/asmdex/structureCommon/Label;II)V

    move-object v0, v1

    .line 314
    :goto_0
    return-object v0

    .line 311
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected opcode : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encodeMethodInsn(ILorg/ow2/asmdex/structureWriter/Method;[I)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 1
    .param p0, "opcode"    # I
    .param p1, "method"    # Lorg/ow2/asmdex/structureWriter/Method;
    .param p2, "arguments"    # [I

    .line 94
    const/16 v0, 0x74

    if-ge p0, v0, :cond_0

    .line 95
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;

    invoke-direct {v0, p0, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat35C;-><init>(ILorg/ow2/asmdex/structureWriter/Method;[I)V

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;

    invoke-direct {v0, p0, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;-><init>(ILorg/ow2/asmdex/structureWriter/Method;[I)V

    return-object v0
.end method

.method public static encodeMultiANewArrayInsn(Ljava/lang/String;[I)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "registers"    # [I

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    array-length v1, p1

    .line 376
    .local v1, "length":I
    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget v2, p1, v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 377
    new-instance v2, Lorg/ow2/asmdex/instruction/InstructionFormat35C;

    const/16 v3, 0x24

    invoke-direct {v2, v3, p0, p1}, Lorg/ow2/asmdex/instruction/InstructionFormat35C;-><init>(ILjava/lang/String;[I)V

    move-object v0, v2

    goto :goto_0

    .line 379
    :cond_0
    new-instance v2, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;

    const/16 v3, 0x25

    invoke-direct {v2, v3, p0, p1}, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;-><init>(ILjava/lang/String;[I)V

    move-object v0, v2

    .line 382
    :goto_0
    return-object v0
.end method

.method public static encodeOperationInsn(IIIII)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 4
    .param p0, "opcode"    # I
    .param p1, "destinationRegister"    # I
    .param p2, "firstSourceRegister"    # I
    .param p3, "secondSourceRegister"    # I
    .param p4, "value"    # I

    .line 247
    const/4 v0, 0x0

    .line 250
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    const/16 v1, 0xaf

    const/16 v2, 0x90

    if-lt p0, v2, :cond_0

    if-gt p0, v1, :cond_0

    .line 251
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat23X;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;-><init>(IIII)V

    move-object v0, v1

    goto :goto_0

    .line 252
    :cond_0
    const/16 v3, 0x2d

    if-lt p0, v3, :cond_1

    const/16 v3, 0x31

    if-gt p0, v3, :cond_1

    .line 253
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat23X;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;-><init>(IIII)V

    move-object v0, v1

    goto :goto_0

    .line 254
    :cond_1
    const/16 v3, 0x7b

    if-lt p0, v3, :cond_2

    const/16 v3, 0x8f

    if-gt p0, v3, :cond_2

    .line 255
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat12X;

    invoke-direct {v1, p0, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;-><init>(III)V

    move-object v0, v1

    goto :goto_0

    .line 256
    :cond_2
    if-lt p0, v2, :cond_3

    if-gt p0, v1, :cond_3

    .line 257
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat23X;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;-><init>(IIII)V

    move-object v0, v1

    goto :goto_0

    .line 258
    :cond_3
    const/16 v1, 0xb0

    if-lt p0, v1, :cond_4

    const/16 v1, 0xcf

    if-gt p0, v1, :cond_4

    .line 259
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat12X;

    invoke-direct {v1, p0, p1, p3}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;-><init>(III)V

    move-object v0, v1

    goto :goto_0

    .line 260
    :cond_4
    const/16 v1, 0xd0

    if-lt p0, v1, :cond_5

    const/16 v1, 0xd7

    if-gt p0, v1, :cond_5

    .line 261
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat22S;

    invoke-direct {v1, p0, p1, p2, p4}, Lorg/ow2/asmdex/instruction/InstructionFormat22S;-><init>(IIII)V

    move-object v0, v1

    goto :goto_0

    .line 262
    :cond_5
    const/16 v1, 0xd8

    if-lt p0, v1, :cond_6

    const/16 v1, 0xe2

    if-gt p0, v1, :cond_6

    .line 263
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat22B;

    invoke-direct {v1, p0, p1, p2, p4}, Lorg/ow2/asmdex/instruction/InstructionFormat22B;-><init>(IIII)V

    move-object v0, v1

    .line 268
    :goto_0
    return-object v0

    .line 265
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected opcode : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encodeSparseSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;I)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 2
    .param p0, "register"    # I
    .param p1, "switchTableLabel"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p2, "instructionOffset"    # I

    .line 408
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;

    const/16 v1, 0x2c

    invoke-direct {v0, v1, p1, p0, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat31T;-><init>(ILorg/ow2/asmdex/structureCommon/Label;II)V

    return-object v0
.end method

.method public static encodeStringOperation(IILjava/lang/String;)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 4
    .param p0, "opcode"    # I
    .param p1, "destinationRegister"    # I
    .param p2, "string"    # Ljava/lang/String;

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    const/16 v1, 0x1a

    if-ne p0, v1, :cond_0

    .line 446
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat21C;

    invoke-direct {v1, p0, p2, p1}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    .line 447
    :cond_0
    const/16 v1, 0x1b

    if-ne p0, v1, :cond_1

    .line 448
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat31C;

    invoke-direct {v1, p0, p2, p1}, Lorg/ow2/asmdex/instruction/InstructionFormat31C;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    .line 452
    :goto_0
    return-object v0

    .line 450
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected opcode : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encodeTableSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;I)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 2
    .param p0, "register"    # I
    .param p1, "switchTableLabel"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p2, "instructionOffset"    # I

    .line 395
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat31T;

    const/16 v1, 0x2b

    invoke-direct {v0, v1, p1, p0, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat31T;-><init>(ILorg/ow2/asmdex/structureCommon/Label;II)V

    return-object v0
.end method

.method public static encodeTypeInsn(IIIILjava/lang/String;)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 4
    .param p0, "opcode"    # I
    .param p1, "destinationRegister"    # I
    .param p2, "referenceBearingRegister"    # I
    .param p3, "sizeRegister"    # I
    .param p4, "type"    # Ljava/lang/String;

    .line 341
    const/4 v0, 0x0

    .line 344
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    const/16 v1, 0x1c

    if-ne p0, v1, :cond_0

    .line 345
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat21C;

    invoke-direct {v1, p0, p4, p1}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    .line 346
    :cond_0
    const/16 v1, 0x1f

    if-ne p0, v1, :cond_1

    .line 347
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat21C;

    invoke-direct {v1, p0, p4, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    .line 348
    :cond_1
    const/16 v1, 0x20

    if-ne p0, v1, :cond_2

    .line 349
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat22C;

    invoke-direct {v1, p0, p4, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;-><init>(ILjava/lang/String;II)V

    move-object v0, v1

    goto :goto_0

    .line 350
    :cond_2
    const/16 v1, 0x22

    if-ne p0, v1, :cond_3

    .line 351
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat21C;

    invoke-direct {v1, p0, p4, p1}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    .line 352
    :cond_3
    const/16 v1, 0x23

    if-ne p0, v1, :cond_4

    .line 353
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat22C;

    invoke-direct {v1, p0, p4, p1, p3}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;-><init>(ILjava/lang/String;II)V

    move-object v0, v1

    .line 358
    :goto_0
    return-object v0

    .line 355
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected opcode : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encodeVarInsn(III)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 4
    .param p0, "opcode"    # I
    .param p1, "destinationRegister"    # I
    .param p2, "var"    # I

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    packed-switch p0, :pswitch_data_0

    const/16 v1, -0x8000

    const/16 v2, 0x7fff

    packed-switch p0, :pswitch_data_1

    .line 158
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected opcode : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :pswitch_0
    if-gt p2, v2, :cond_0

    if-lt p2, v1, :cond_0

    .line 150
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat21S;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat21S;-><init>(III)V

    move-object v0, v1

    goto :goto_1

    .line 153
    :cond_0
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat31I;

    const/16 v2, 0x17

    invoke-direct {v1, v2, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat31I;-><init>(III)V

    move-object v0, v1

    .line 155
    goto :goto_1

    .line 131
    :pswitch_1
    const/16 v3, 0xf

    if-gt p1, v3, :cond_1

    const/4 v3, 0x7

    if-gt p2, v3, :cond_1

    const/4 v3, -0x8

    if-lt p2, v3, :cond_1

    .line 133
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat11N;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat11N;-><init>(III)V

    move-object v0, v1

    goto :goto_1

    .line 134
    :cond_1
    const/16 v3, 0xff

    if-gt p1, v3, :cond_2

    if-gt p2, v2, :cond_2

    if-lt p2, v1, :cond_2

    .line 136
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat21S;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat21S;-><init>(III)V

    move-object v0, v1

    goto :goto_1

    .line 141
    :cond_2
    const v1, 0xffff

    and-int/2addr v1, p2

    if-nez v1, :cond_3

    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat21H;

    const/16 v2, 0x15

    shr-int/lit8 v3, p2, 0x10

    invoke-direct {v1, v2, p1, v3}, Lorg/ow2/asmdex/instruction/InstructionFormat21H;-><init>(III)V

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat31I;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat31I;-><init>(III)V

    :goto_0
    move-object v0, v1

    .line 143
    goto :goto_1

    .line 125
    :pswitch_2
    invoke-static {p0, p1, p2}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->createBest12X22X32XInstruction(III)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v0

    .line 126
    nop

    .line 160
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeVarInsn(IIJ)Lorg/ow2/asmdex/instruction/Instruction;
    .locals 8
    .param p0, "opcode"    # I
    .param p1, "destinationRegister"    # I
    .param p2, "var"    # J

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    const/16 v1, 0x19

    const/16 v2, 0x18

    if-eq p0, v2, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected opcode : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_1
    :goto_0
    const-wide v3, 0xffffffffffffL

    and-long/2addr v3, p2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    new-instance v2, Lorg/ow2/asmdex/instruction/InstructionFormat21H;

    const/16 v3, 0x30

    shr-long v3, p2, v3

    long-to-int v4, v3

    invoke-direct {v2, v1, p1, v4}, Lorg/ow2/asmdex/instruction/InstructionFormat21H;-><init>(III)V

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat51L;

    invoke-direct {v1, v2, p1, p2, p3}, Lorg/ow2/asmdex/instruction/InstructionFormat51L;-><init>(IIJ)V

    move-object v2, v1

    :goto_1
    move-object v0, v2

    .line 178
    nop

    .line 184
    return-object v0
.end method
