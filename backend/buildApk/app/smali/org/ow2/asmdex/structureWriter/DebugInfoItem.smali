.class public Lorg/ow2/asmdex/structureWriter/DebugInfoItem;
.super Ljava/lang/Object;
.source "DebugInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;,
        Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;
    }
.end annotation


# instance fields
.field private areSymbolicIndexesUsed:Z

.field private final constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

.field private debugAddress:I

.field private debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

.field private debugLine:I

.field private isFirstInstruction:Z

.field private offsetToDebugInstructions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/instruction/DebugInstruction;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugAddress:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->isFirstInstruction:Z

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->offsetToDebugInstructions:Ljava/util/HashMap;

    .line 111
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 112
    return-void
.end method

.method private addDebugInstruction(ILorg/ow2/asmdex/instruction/DebugInstruction;)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "insn"    # Lorg/ow2/asmdex/instruction/DebugInstruction;

    .line 519
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->offsetToDebugInstructions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 521
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/instruction/DebugInstruction;>;"
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->offsetToDebugInstructions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 523
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/instruction/DebugInstruction;>;"
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->offsetToDebugInstructions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 525
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/instruction/DebugInstruction;>;"
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    return-void
.end method

.method private encodeDebugAdvanceLine(I)V
    .locals 3
    .param p1, "deltaLine"    # I

    .line 542
    new-instance v0, Lorg/ow2/asmdex/instruction/DebugInstructionAdvanceLine;

    invoke-direct {v0, p1}, Lorg/ow2/asmdex/instruction/DebugInstructionAdvanceLine;-><init>(I)V

    .line 543
    .local v0, "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/instruction/DebugInstruction;->write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 544
    return-void
.end method

.method private encodeDebugAdvancePC(I)V
    .locals 3
    .param p1, "deltaOffsetInWord"    # I

    .line 533
    new-instance v0, Lorg/ow2/asmdex/instruction/DebugInstructionAdvancePC;

    invoke-direct {v0, p1}, Lorg/ow2/asmdex/instruction/DebugInstructionAdvancePC;-><init>(I)V

    .line 534
    .local v0, "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/instruction/DebugInstruction;->write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 535
    return-void
.end method

.method private encodeDebugSetPrologueEnd()V
    .locals 3

    .line 550
    new-instance v0, Lorg/ow2/asmdex/instruction/DebugInstructionSetPrologueEnd;

    invoke-direct {v0}, Lorg/ow2/asmdex/instruction/DebugInstructionSetPrologueEnd;-><init>()V

    .line 551
    .local v0, "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/instruction/DebugInstruction;->write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 552
    return-void
.end method

.method private encodeDebugSpecialOpcode(II)V
    .locals 3
    .param p1, "deltaOffsetInWord"    # I
    .param p2, "deltaLine"    # I

    .line 562
    new-instance v0, Lorg/ow2/asmdex/instruction/DebugInstructionSpecialOpcode;

    invoke-direct {v0, p1, p2}, Lorg/ow2/asmdex/instruction/DebugInstructionSpecialOpcode;-><init>(II)V

    .line 563
    .local v0, "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/instruction/DebugInstruction;->write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 564
    return-void
.end method

.method private mapResolvedIndexFromSymbolicIndex(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;IZ)V
    .locals 1
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "symbolicIndex"    # I
    .param p3, "isStringIndex"    # Z

    .line 472
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 473
    if-eqz p3, :cond_0

    .line 474
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getResolvedStringIndexFromSymbolicStringIndex(I)I

    move-result v0

    .local v0, "resolvedIndex":I
    goto :goto_0

    .line 476
    .end local v0    # "resolvedIndex":I
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getResolvedTypeIndexFromSymbolicTypeIndex(I)I

    move-result v0

    .restart local v0    # "resolvedIndex":I
    goto :goto_0

    .line 479
    .end local v0    # "resolvedIndex":I
    :cond_1
    const/4 v0, -0x1

    .line 481
    .restart local v0    # "resolvedIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128p1(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 482
    return-void
.end method


# virtual methods
.method public areSymbolicIndexesUsed()Z
    .locals 1

    .line 504
    iget-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->areSymbolicIndexesUsed:Z

    return v0
.end method

.method public closeDebugInfoItem()V
    .locals 2

    .line 396
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 397
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 399
    :cond_0
    return-void
.end method

.method public free()V
    .locals 1

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->offsetToDebugInstructions:Ljava/util/HashMap;

    .line 127
    return-void
.end method

.method public getDebugInfoItemCode()Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    return-object v0
.end method

.method public initializeDebugInfoItem([Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/CodeItem;Ljava/util/List;)V
    .locals 22
    .param p1, "parameters"    # [Ljava/lang/String;
    .param p2, "codeItem"    # Lorg/ow2/asmdex/structureWriter/CodeItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/ow2/asmdex/structureWriter/CodeItem;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/LocalVariable;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p3, "localVariables":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/LocalVariable;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-direct {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;-><init>()V

    iput-object v0, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 231
    iget-object v0, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->offsetToDebugInstructions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 233
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->areSymbolicIndexesUsed:Z

    .line 239
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 240
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    move-object v5, v0

    .line 242
    .local v5, "items":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ow2/asmdex/structureCommon/LocalVariable;

    .line 244
    .local v6, "lv":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getStart()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v14

    .line 245
    .local v14, "start":Lorg/ow2/asmdex/structureCommon/Label;
    if-eqz v14, :cond_1

    .line 246
    new-instance v15, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;

    sget-object v8, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->local:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    .line 247
    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getRegister()I

    move-result v9

    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getSignature()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getType()Ljava/lang/String;

    move-result-object v13

    move-object v7, v15

    move-object v11, v14

    invoke-direct/range {v7 .. v13}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;-><init>(Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;ILjava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .local v7, "item":Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
    invoke-virtual {v5, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v7    # "item":Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
    :cond_1
    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getEnds()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 255
    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getEnds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/ow2/asmdex/structureCommon/Label;

    .line 256
    .local v8, "end":Lorg/ow2/asmdex/structureCommon/Label;
    new-instance v9, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;

    sget-object v16, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->end:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    .line 257
    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getRegister()I

    move-result v17

    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getSignature()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getType()Ljava/lang/String;

    move-result-object v21

    move-object v15, v9

    move-object/from16 v19, v8

    invoke-direct/range {v15 .. v21}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;-><init>(Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;ILjava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .local v9, "item":Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
    invoke-virtual {v5, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v8    # "end":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v9    # "item":Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
    goto :goto_2

    .line 264
    :cond_2
    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getRestarts()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 265
    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getRestarts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/ow2/asmdex/structureCommon/Label;

    .line 266
    .local v8, "restart":Lorg/ow2/asmdex/structureCommon/Label;
    new-instance v9, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;

    sget-object v16, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->restart:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    .line 267
    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getRegister()I

    move-result v17

    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getSignature()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getType()Ljava/lang/String;

    move-result-object v21

    move-object v15, v9

    move-object/from16 v19, v8

    invoke-direct/range {v15 .. v21}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;-><init>(Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;ILjava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .restart local v9    # "item":Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
    invoke-virtual {v5, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v8    # "restart":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v9    # "item":Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
    goto :goto_3

    .line 272
    .end local v6    # "lv":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    .end local v14    # "start":Lorg/ow2/asmdex/structureCommon/Label;
    :cond_3
    goto/16 :goto_1

    .line 275
    :cond_4
    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;

    .line 276
    .restart local v7    # "item":Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
    sget-object v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$1;->$SwitchMap$org$ow2$asmdex$structureWriter$DebugInfoItem$LocalVariableType:[I

    iget-object v8, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->localVariableType:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    invoke-virtual {v8}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->ordinal()I

    move-result v8

    aget v0, v0, v8

    if-eq v0, v4, :cond_8

    const/4 v8, 0x2

    if-eq v0, v8, :cond_6

    const/4 v8, 0x3

    if-ne v0, v8, :cond_5

    .line 296
    new-instance v0, Lorg/ow2/asmdex/instruction/DebugInstructionRestartLocal;

    iget v8, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->register:I

    iget-object v9, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v0, v8, v9}, Lorg/ow2/asmdex/instruction/DebugInstructionRestartLocal;-><init>(ILorg/ow2/asmdex/structureCommon/Label;)V

    .line 297
    .local v0, "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    iget-object v8, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v8}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v8

    invoke-direct {v1, v8, v0}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->addDebugInstruction(ILorg/ow2/asmdex/instruction/DebugInstruction;)V

    .line 298
    goto :goto_6

    .line 302
    .end local v0    # "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    :cond_5
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unknown Local Variable type."

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "items":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;>;"
    .end local v7    # "item":Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
    .end local p1    # "parameters":[Ljava/lang/String;
    .end local p2    # "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    .end local p3    # "localVariables":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/LocalVariable;>;"
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .restart local v5    # "items":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;>;"
    .restart local v7    # "item":Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
    .restart local p1    # "parameters":[Ljava/lang/String;
    .restart local p2    # "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    .restart local p3    # "localVariables":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/LocalVariable;>;"
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v0, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->signature:Ljava/lang/String;

    .line 285
    .local v0, "signature":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 286
    new-instance v8, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocal;

    iget v9, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->register:I

    iget-object v10, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->name:Ljava/lang/String;

    iget-object v11, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->type:Ljava/lang/String;

    iget-object v12, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocal;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;)V

    .local v8, "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    goto :goto_5

    .line 289
    .end local v8    # "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    :cond_7
    new-instance v8, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;

    iget v10, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->register:I

    iget-object v11, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->name:Ljava/lang/String;

    iget-object v12, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->type:Ljava/lang/String;

    iget-object v14, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    move-object v9, v8

    move-object v13, v0

    invoke-direct/range {v9 .. v14}, Lorg/ow2/asmdex/instruction/DebugInstructionStartLocalExtended;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 292
    .restart local v8    # "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    :goto_5
    iget-object v9, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v9}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v9

    invoke-direct {v1, v9, v8}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->addDebugInstruction(ILorg/ow2/asmdex/instruction/DebugInstruction;)V

    .line 293
    goto :goto_6

    .line 278
    .end local v0    # "signature":Ljava/lang/String;
    .end local v8    # "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    :cond_8
    new-instance v0, Lorg/ow2/asmdex/instruction/DebugInstructionEndLocal;

    iget v8, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->register:I

    iget-object v9, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v0, v8, v9}, Lorg/ow2/asmdex/instruction/DebugInstructionEndLocal;-><init>(ILorg/ow2/asmdex/structureCommon/Label;)V

    .line 279
    .local v0, "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    iget-object v8, v7, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v8}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v8

    invoke-direct {v1, v8, v0}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->addDebugInstruction(ILorg/ow2/asmdex/instruction/DebugInstruction;)V

    .line 280
    nop

    .line 309
    .end local v0    # "insn":Lorg/ow2/asmdex/instruction/DebugInstruction;
    .end local v7    # "item":Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
    :cond_9
    :goto_6
    goto/16 :goto_4

    .line 314
    .end local v5    # "items":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;>;"
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getFirstLineNumber()I

    move-result v0

    .line 315
    .local v0, "firstLineFound":I
    if-nez v0, :cond_b

    const/4 v5, 0x1

    goto :goto_7

    :cond_b
    move v5, v0

    :goto_7
    iput v5, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugLine:I

    .line 316
    iget-object v6, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v6, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 319
    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    array-length v3, v2

    .line 320
    .local v3, "parameterCount":I
    :goto_8
    iget-object v5, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 323
    if-lez v3, :cond_e

    .line 324
    iput-boolean v4, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->areSymbolicIndexesUsed:Z

    .line 325
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    if-ge v4, v3, :cond_e

    .line 326
    aget-object v5, v2, v4

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, -0x1

    goto :goto_a

    .line 327
    :cond_d
    iget-object v5, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v5

    :goto_a
    nop

    .line 328
    .local v5, "parameterIndex":I
    iget-object v6, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v6, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128p1(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 325
    .end local v5    # "parameterIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 331
    .end local v4    # "i":I
    :cond_e
    return-void
.end method

.method public mapResolvedIndexes(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 9
    .param p1, "in"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "offsetInputBuffer"    # I

    .line 413
    invoke-virtual {p1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getBuffer()[B

    move-result-object v0

    .line 414
    .local v0, "data":[B
    new-instance v1, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-direct {v1, v0}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;-><init>([B)V

    .line 415
    .local v1, "reader":Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    invoke-interface {v1, p2}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->seek(I)V

    .line 416
    new-instance v2, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-direct {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;-><init>()V

    .line 418
    .local v2, "out":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 419
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128()I

    move-result v3

    .line 420
    .local v3, "nbParameters":I
    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 422
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_0

    .line 423
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128_p1()I

    move-result v6

    invoke-direct {p0, v2, v6, v5}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->mapResolvedIndexFromSymbolicIndex(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;IZ)V

    .line 422
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 426
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x1

    .line 428
    .local v4, "continueParsing":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 429
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ubyte()S

    move-result v6

    .line 430
    .local v6, "opcode":I
    invoke-virtual {v2, v6}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 431
    const/16 v7, 0x9

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 449
    :pswitch_0
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128()I

    move-result v8

    invoke-virtual {v2, v8}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 450
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128_p1()I

    move-result v8

    invoke-direct {p0, v2, v8, v5}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->mapResolvedIndexFromSymbolicIndex(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;IZ)V

    .line 451
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128_p1()I

    move-result v8

    invoke-direct {p0, v2, v8, v7}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->mapResolvedIndexFromSymbolicIndex(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;IZ)V

    .line 452
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128_p1()I

    move-result v7

    invoke-direct {p0, v2, v7, v5}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->mapResolvedIndexFromSymbolicIndex(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;IZ)V

    .line 453
    goto :goto_2

    .line 444
    :pswitch_1
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128()I

    move-result v8

    invoke-virtual {v2, v8}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 445
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128_p1()I

    move-result v8

    invoke-direct {p0, v2, v8, v5}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->mapResolvedIndexFromSymbolicIndex(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;IZ)V

    .line 446
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128_p1()I

    move-result v8

    invoke-direct {p0, v2, v8, v7}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->mapResolvedIndexFromSymbolicIndex(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;IZ)V

    .line 447
    goto :goto_2

    .line 438
    :pswitch_2
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sleb128()I

    move-result v7

    invoke-virtual {v2, v7}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putSleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 439
    goto :goto_2

    .line 435
    :pswitch_3
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128()I

    move-result v7

    invoke-virtual {v2, v7}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 436
    goto :goto_2

    .line 455
    :pswitch_4
    const/4 v4, 0x0

    goto :goto_2

    .line 441
    :cond_1
    invoke-interface {v1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128_p1()I

    move-result v7

    invoke-direct {p0, v2, v7, v5}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->mapResolvedIndexFromSymbolicIndex(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;IZ)V

    .line 442
    nop

    .line 458
    .end local v6    # "opcode":I
    :goto_2
    goto :goto_1

    .line 460
    :cond_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public parseDebugInformation(Lorg/ow2/asmdex/instruction/Instruction;I)V
    .locals 8
    .param p1, "instruction"    # Lorg/ow2/asmdex/instruction/Instruction;
    .param p2, "address"    # I

    .line 342
    iget-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->isFirstInstruction:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->encodeDebugSetPrologueEnd()V

    .line 344
    iput-boolean v1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->isFirstInstruction:Z

    .line 348
    :cond_0
    invoke-virtual {p1}, Lorg/ow2/asmdex/instruction/Instruction;->getLineNumber()I

    move-result v0

    .line 349
    .local v0, "newLineNumber":I
    if-lez v0, :cond_7

    .line 350
    iget v2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugLine:I

    sub-int v2, v0, v2

    .line 351
    .local v2, "deltaLine":I
    iget v3, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugAddress:I

    sub-int v3, p2, v3

    .line 352
    .local v3, "deltaOffset":I
    div-int/lit8 v4, v3, 0x2

    .line 357
    .local v4, "deltaOffsetInWord":I
    const/16 v5, 0xa

    const/4 v6, 0x1

    if-gt v2, v5, :cond_1

    const/4 v5, -0x4

    if-lt v2, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 360
    .local v5, "isDeltaLineWithinLimit":Z
    :goto_0
    if-ltz v4, :cond_2

    const/16 v7, 0xf

    if-gt v4, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 364
    .local v6, "isDeltaOffsetWithinLimit":Z
    :goto_1
    if-nez v6, :cond_3

    .line 365
    invoke-direct {p0, v4}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->encodeDebugAdvancePC(I)V

    .line 367
    :cond_3
    if-nez v5, :cond_4

    .line 368
    invoke-direct {p0, v2}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->encodeDebugAdvanceLine(I)V

    .line 373
    :cond_4
    if-eqz v6, :cond_5

    move v7, v4

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    .line 374
    :goto_2
    if-eqz v5, :cond_6

    move v1, v2

    .line 373
    :cond_6
    invoke-direct {p0, v7, v1}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->encodeDebugSpecialOpcode(II)V

    .line 376
    iput v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugLine:I

    .line 377
    iput p2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugAddress:I

    .line 381
    .end local v2    # "deltaLine":I
    .end local v3    # "deltaOffset":I
    .end local v4    # "deltaOffsetInWord":I
    .end local v5    # "isDeltaLineWithinLimit":Z
    .end local v6    # "isDeltaOffsetWithinLimit":Z
    :cond_7
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->offsetToDebugInstructions:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 382
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->offsetToDebugInstructions:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/instruction/DebugInstruction;

    .line 383
    .local v2, "debugInstruction":Lorg/ow2/asmdex/instruction/DebugInstruction;
    iget v3, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugAddress:I

    if-eq p2, v3, :cond_8

    .line 384
    sub-int v3, p2, v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->encodeDebugAdvancePC(I)V

    .line 386
    :cond_8
    iput p2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugAddress:I

    .line 387
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->debugCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v2, v3, v4}, Lorg/ow2/asmdex/instruction/DebugInstruction;->write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 388
    .end local v2    # "debugInstruction":Lorg/ow2/asmdex/instruction/DebugInstruction;
    goto :goto_3

    .line 390
    :cond_9
    return-void
.end method
