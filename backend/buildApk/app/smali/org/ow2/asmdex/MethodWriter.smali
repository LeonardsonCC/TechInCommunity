.class public Lorg/ow2/asmdex/MethodWriter;
.super Lorg/ow2/asmdex/MethodVisitor;
.source "MethodWriter.java"


# static fields
.field static final MAXIMUM_SIGNED_VALUE_16_BITS:I = 0x7fff

.field static final MAXIMUM_SIGNED_VALUE_32_BITS:I = 0x7fffffff

.field static final MAXIMUM_SIGNED_VALUE_8_BITS:I = 0x7f

.field static final MINIMUM_SIGNED_VALUE_16_BITS:I = -0x8000


# instance fields
.field private classWriter:Lorg/ow2/asmdex/ClassWriter;

.field private constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

.field private method:Lorg/ow2/asmdex/structureWriter/Method;

.field private nextLineNumber:I

.field private pseudoInstructionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/instruction/Instruction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/ClassWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "classWriter"    # Lorg/ow2/asmdex/ClassWriter;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # [Ljava/lang/String;
    .param p6, "exceptions"    # [Ljava/lang/String;

    .line 149
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/MethodVisitor;-><init>(I)V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->pseudoInstructionList:Ljava/util/ArrayList;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/MethodWriter;->nextLineNumber:I

    .line 150
    iput-object p1, p0, Lorg/ow2/asmdex/MethodWriter;->classWriter:Lorg/ow2/asmdex/ClassWriter;

    .line 152
    invoke-virtual {p1}, Lorg/ow2/asmdex/ClassWriter;->getConstantPool()Lorg/ow2/asmdex/structureWriter/ConstantPool;

    move-result-object v1

    iput-object v1, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 155
    invoke-virtual {p1}, Lorg/ow2/asmdex/ClassWriter;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p3

    move-object v4, p4

    move v5, p2

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addMethodToConstantPool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/structureWriter/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    .line 157
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v1

    .line 159
    .local v1, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    if-eqz v1, :cond_1

    .line 163
    and-int/lit8 v2, p2, 0x8

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 165
    .local v0, "ias":I
    :goto_0
    const/4 v2, 0x1

    invoke-static {p4, v2}, Lorg/ow2/asmdex/structureWriter/Prototype;->getSizeOfDescriptor(Ljava/lang/String;Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 166
    div-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/structureWriter/CodeItem;->setIncomingArgumentsSizeInWord(I)V

    .line 168
    .end local v0    # "ias":I
    :cond_1
    return-void
.end method

.method private checkAndCorrectLabelReferences()V
    .locals 18

    .line 851
    invoke-virtual/range {p0 .. p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v1

    .line 852
    .local v1, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getLabels()Ljava/util/List;

    move-result-object v2

    .line 858
    .local v2, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :goto_0
    const/4 v0, 0x0

    .line 859
    .local v0, "madeChange":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 860
    .local v3, "labelIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :goto_1
    if-nez v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 861
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/structureCommon/Label;

    .line 862
    .local v4, "label":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v4}, Lorg/ow2/asmdex/structureCommon/Label;->getReferringInstructions()Ljava/util/ArrayList;

    move-result-object v5

    .line 864
    .local v5, "instructions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/instruction/Instruction;>;"
    const/4 v6, 0x0

    .line 865
    .local v6, "insnIndex":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v6

    move v6, v0

    .line 866
    .end local v0    # "madeChange":Z
    .local v6, "madeChange":Z
    .local v7, "nbInsn":I
    .local v8, "insnIndex":I
    :goto_2
    if-nez v6, :cond_8

    if-ge v8, v7, :cond_8

    .line 867
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/ow2/asmdex/instruction/Instruction;

    .line 869
    .local v9, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    move-object v10, v9

    check-cast v10, Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    .line 870
    .local v10, "offsetInsn":Lorg/ow2/asmdex/instruction/IOffsetInstruction;
    invoke-interface {v10}, Lorg/ow2/asmdex/instruction/IOffsetInstruction;->getInstructionOffset()I

    move-result v11

    .line 874
    .local v11, "instructionOffset":I
    invoke-virtual {v4}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v0

    sub-int/2addr v0, v11

    div-int/lit8 v12, v0, 0x2

    .line 876
    .local v12, "relativeOffset":I
    invoke-virtual {v9}, Lorg/ow2/asmdex/instruction/Instruction;->getOpcodeByte()I

    move-result v13

    .line 877
    .local v13, "opcode":I
    const/4 v14, 0x0

    .line 879
    .local v14, "maximumOffset":I
    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    .line 905
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v2

    .end local v2    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .local v16, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :try_start_1
    const-string v2, "Opcode error : 0x"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v1    # "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    .end local v3    # "labelIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .end local v4    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v5    # "instructions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/instruction/Instruction;>;"
    .end local v6    # "madeChange":Z
    .end local v7    # "nbInsn":I
    .end local v8    # "insnIndex":I
    .end local v9    # "insn":Lorg/ow2/asmdex/instruction/Instruction;
    .end local v10    # "offsetInsn":Lorg/ow2/asmdex/instruction/IOffsetInstruction;
    .end local v11    # "instructionOffset":I
    .end local v12    # "relativeOffset":I
    .end local v13    # "opcode":I
    .end local v14    # "maximumOffset":I
    .end local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 906
    .restart local v1    # "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    .restart local v3    # "labelIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .restart local v4    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    .restart local v5    # "instructions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/instruction/Instruction;>;"
    .restart local v6    # "madeChange":Z
    .restart local v7    # "nbInsn":I
    .restart local v8    # "insnIndex":I
    .restart local v9    # "insn":Lorg/ow2/asmdex/instruction/Instruction;
    .restart local v10    # "offsetInsn":Lorg/ow2/asmdex/instruction/IOffsetInstruction;
    .restart local v11    # "instructionOffset":I
    .restart local v12    # "relativeOffset":I
    .restart local v13    # "opcode":I
    .restart local v14    # "maximumOffset":I
    .restart local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .restart local v2    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :catch_1
    move-exception v0

    move-object/from16 v16, v2

    .line 907
    .end local v2    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :goto_3
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 908
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 879
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .restart local v2    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :pswitch_0
    move-object/from16 v16, v2

    .end local v2    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .restart local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    goto :goto_4

    .line 901
    .end local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .restart local v2    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :pswitch_1
    move-object/from16 v16, v2

    .end local v2    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .restart local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    const v14, 0x7fffffff

    .line 902
    goto :goto_5

    .line 896
    :goto_4
    const/16 v14, 0x7fff

    .line 897
    goto :goto_5

    .line 881
    .end local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .restart local v2    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :pswitch_2
    move-object/from16 v16, v2

    .end local v2    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .restart local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    const/16 v14, 0x7f

    .line 882
    nop

    .line 913
    :cond_0
    :goto_5
    neg-int v0, v14

    add-int/lit8 v2, v0, -0x1

    .line 915
    .local v2, "minimumOffset":I
    if-lt v12, v2, :cond_2

    if-le v12, v14, :cond_1

    goto :goto_6

    :cond_1
    move/from16 v17, v2

    goto :goto_8

    .line 918
    :cond_2
    :goto_6
    const/16 v0, 0x28

    const/16 v15, 0x29

    if-eq v13, v0, :cond_5

    if-ne v13, v15, :cond_3

    move/from16 v17, v2

    goto :goto_9

    .line 942
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v17, v2

    .end local v2    # "minimumOffset":I
    .local v17, "minimumOffset":I
    :try_start_3
    const-string v2, "Instruction Range extension unhandled. Opcode : 0x"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    .end local v3    # "labelIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .end local v4    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v5    # "instructions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/instruction/Instruction;>;"
    .end local v6    # "madeChange":Z
    .end local v7    # "nbInsn":I
    .end local v8    # "insnIndex":I
    .end local v9    # "insn":Lorg/ow2/asmdex/instruction/Instruction;
    .end local v10    # "offsetInsn":Lorg/ow2/asmdex/instruction/IOffsetInstruction;
    .end local v11    # "instructionOffset":I
    .end local v12    # "relativeOffset":I
    .end local v13    # "opcode":I
    .end local v14    # "maximumOffset":I
    .end local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .end local v17    # "minimumOffset":I
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 943
    .restart local v1    # "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    .restart local v3    # "labelIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .restart local v4    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    .restart local v5    # "instructions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/instruction/Instruction;>;"
    .restart local v6    # "madeChange":Z
    .restart local v7    # "nbInsn":I
    .restart local v8    # "insnIndex":I
    .restart local v9    # "insn":Lorg/ow2/asmdex/instruction/Instruction;
    .restart local v10    # "offsetInsn":Lorg/ow2/asmdex/instruction/IOffsetInstruction;
    .restart local v11    # "instructionOffset":I
    .restart local v12    # "relativeOffset":I
    .restart local v13    # "opcode":I
    .restart local v14    # "maximumOffset":I
    .restart local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .restart local v17    # "minimumOffset":I
    :catch_2
    move-exception v0

    goto :goto_7

    .end local v17    # "minimumOffset":I
    .restart local v2    # "minimumOffset":I
    :catch_3
    move-exception v0

    move/from16 v17, v2

    .line 944
    .end local v2    # "minimumOffset":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v17    # "minimumOffset":I
    :goto_7
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 945
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 951
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "minimumOffset":I
    .restart local v2    # "minimumOffset":I
    :cond_4
    :goto_8
    move-object/from16 v15, p0

    .end local v2    # "minimumOffset":I
    .restart local v17    # "minimumOffset":I
    goto :goto_c

    .line 918
    .end local v17    # "minimumOffset":I
    .restart local v2    # "minimumOffset":I
    :cond_5
    move/from16 v17, v2

    .line 921
    .end local v2    # "minimumOffset":I
    .restart local v17    # "minimumOffset":I
    :goto_9
    const/16 v0, 0x7fff

    if-gt v12, v0, :cond_7

    const/16 v0, -0x8000

    if-ge v12, v0, :cond_6

    goto :goto_a

    .line 926
    :cond_6
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat20T;

    invoke-direct {v0, v15, v4, v11}, Lorg/ow2/asmdex/instruction/InstructionFormat20T;-><init>(ILorg/ow2/asmdex/structureCommon/Label;I)V

    .local v0, "newInsn":Lorg/ow2/asmdex/instruction/Instruction;
    goto :goto_b

    .line 923
    .end local v0    # "newInsn":Lorg/ow2/asmdex/instruction/Instruction;
    :cond_7
    :goto_a
    new-instance v0, Lorg/ow2/asmdex/instruction/InstructionFormat30T;

    const/16 v2, 0x2a

    invoke-direct {v0, v2, v4, v11}, Lorg/ow2/asmdex/instruction/InstructionFormat30T;-><init>(ILorg/ow2/asmdex/structureCommon/Label;I)V

    .line 930
    .restart local v0    # "newInsn":Lorg/ow2/asmdex/instruction/Instruction;
    :goto_b
    invoke-virtual {v1, v9, v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->replaceInstructions(Lorg/ow2/asmdex/instruction/Instruction;Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 933
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 934
    invoke-virtual {v5, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 937
    invoke-virtual {v0}, Lorg/ow2/asmdex/instruction/Instruction;->getSize()I

    move-result v2

    invoke-virtual {v9}, Lorg/ow2/asmdex/instruction/Instruction;->getSize()I

    move-result v15

    sub-int/2addr v2, v15

    move-object/from16 v15, p0

    invoke-direct {v15, v11, v2}, Lorg/ow2/asmdex/MethodWriter;->shiftOffsetInstructionsAndLabels(II)V

    .line 938
    const/4 v6, 0x1

    .line 940
    .end local v0    # "newInsn":Lorg/ow2/asmdex/instruction/Instruction;
    nop

    .line 951
    :goto_c
    nop

    .end local v9    # "insn":Lorg/ow2/asmdex/instruction/Instruction;
    .end local v10    # "offsetInsn":Lorg/ow2/asmdex/instruction/IOffsetInstruction;
    .end local v11    # "instructionOffset":I
    .end local v12    # "relativeOffset":I
    .end local v13    # "opcode":I
    .end local v14    # "maximumOffset":I
    .end local v17    # "minimumOffset":I
    add-int/lit8 v8, v8, 0x1

    .line 952
    move-object/from16 v2, v16

    goto/16 :goto_2

    .line 866
    .end local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .local v2, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :cond_8
    move-object/from16 v15, p0

    move-object/from16 v16, v2

    .line 954
    .end local v2    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .end local v4    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v5    # "instructions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/instruction/Instruction;>;"
    .end local v7    # "nbInsn":I
    .end local v8    # "insnIndex":I
    .restart local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    move v0, v6

    move-object/from16 v2, v16

    goto/16 :goto_1

    .line 860
    .end local v6    # "madeChange":Z
    .end local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .local v0, "madeChange":Z
    .restart local v2    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :cond_9
    move-object/from16 v15, p0

    move-object/from16 v16, v2

    .line 955
    .end local v2    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .end local v3    # "labelIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .restart local v16    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    if-nez v0, :cond_a

    .line 956
    return-void

    .line 955
    :cond_a
    move-object/from16 v2, v16

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private shiftOffsetInstructionsAndLabels(II)V
    .locals 10
    .param p1, "shiftOffset"    # I
    .param p2, "shiftSize"    # I

    .line 965
    if-eqz p2, :cond_3

    .line 966
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v0

    .line 967
    .local v0, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getLabels()Ljava/util/List;

    move-result-object v1

    .line 968
    .local v1, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/structureCommon/Label;

    .line 970
    .local v3, "label":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v3}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v4

    .line 971
    .local v4, "labelOffset":I
    if-le v4, p1, :cond_0

    .line 972
    add-int v5, v4, p2

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/structureCommon/Label;->setOffset(I)V

    .line 975
    :cond_0
    invoke-virtual {v3}, Lorg/ow2/asmdex/structureCommon/Label;->getReferringInstructions()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ow2/asmdex/instruction/Instruction;

    .line 976
    .local v6, "instruction":Lorg/ow2/asmdex/instruction/Instruction;
    move-object v7, v6

    check-cast v7, Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    .line 977
    .local v7, "offsetInstruction":Lorg/ow2/asmdex/instruction/IOffsetInstruction;
    invoke-interface {v7}, Lorg/ow2/asmdex/instruction/IOffsetInstruction;->getInstructionOffset()I

    move-result v8

    .line 978
    .local v8, "instructionOffset":I
    if-le v8, p1, :cond_1

    .line 979
    add-int v9, v8, p2

    invoke-interface {v7, v9}, Lorg/ow2/asmdex/instruction/IOffsetInstruction;->setInstructionOffset(I)V

    .line 981
    .end local v6    # "instruction":Lorg/ow2/asmdex/instruction/Instruction;
    .end local v7    # "offsetInstruction":Lorg/ow2/asmdex/instruction/IOffsetInstruction;
    .end local v8    # "instructionOffset":I
    :cond_1
    goto :goto_1

    .line 982
    .end local v3    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v4    # "labelOffset":I
    :cond_2
    goto :goto_0

    .line 984
    .end local v0    # "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    .end local v1    # "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V
    .locals 1
    .param p1, "insn"    # Lorg/ow2/asmdex/instruction/Instruction;

    .line 229
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/CodeItem;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 231
    iget v0, p0, Lorg/ow2/asmdex/MethodWriter;->nextLineNumber:I

    if-lez v0, :cond_0

    .line 232
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/instruction/Instruction;->setLineNumber(I)V

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/MethodWriter;->nextLineNumber:I

    .line 235
    :cond_0
    return-void
.end method

.method public addLabel(Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 220
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/CodeItem;->addLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 221
    return-void
.end method

.method public addPadding()I
    .locals 6

    .line 243
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v0

    .line 244
    .local v0, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getSize()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    .line 245
    .local v1, "padding":I
    if-eqz v1, :cond_1

    .line 246
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 247
    new-instance v2, Lorg/ow2/asmdex/instruction/InstructionFormat10X;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/ow2/asmdex/instruction/InstructionFormat10X;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/ow2/asmdex/structureWriter/CodeItem;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    goto :goto_0

    .line 249
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Padding can only be 0 or 2 ! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v4}, Lorg/ow2/asmdex/structureWriter/Method;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v5}, Lorg/ow2/asmdex/structureWriter/Method;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getSize()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_1
    :goto_0
    return v1
.end method

.method public closeAnnotations()V
    .locals 2

    .line 991
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    iget-object v1, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/structureWriter/Method;->closeAnnotations(Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 992
    return-void
.end method

.method public getClassWriter()Lorg/ow2/asmdex/ClassWriter;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->classWriter:Lorg/ow2/asmdex/ClassWriter;

    return-object v0
.end method

.method public getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/Method;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lorg/ow2/asmdex/structureWriter/Method;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    return-object v0
.end method

.method public setStartBytecodeToCopy(I)V
    .locals 1
    .param p1, "start"    # I

    .line 191
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/Method;->setStartBytecodeToCopy(I)V

    .line 192
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 647
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/ow2/asmdex/AnnotationWriter;->createAnnotationWriter(Ljava/lang/String;ZLorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)Lorg/ow2/asmdex/AnnotationWriter;

    move-result-object v0

    .line 648
    .local v0, "annotationWriter":Lorg/ow2/asmdex/AnnotationWriter;
    iget-object v1, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v0}, Lorg/ow2/asmdex/AnnotationWriter;->getAnnotationItem()Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/structureWriter/Method;->addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 650
    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 4

    .line 824
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    iget-object v1, p0, Lorg/ow2/asmdex/MethodWriter;->classWriter:Lorg/ow2/asmdex/ClassWriter;

    .line 825
    invoke-virtual {v1}, Lorg/ow2/asmdex/ClassWriter;->getClassDefinitionItem()Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    move-result-object v1

    .line 824
    const-string v2, "Ldalvik/annotation/AnnotationDefault;"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/ow2/asmdex/AnnotationWriter;->createAnnotationWriter(Ljava/lang/String;ZLorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)Lorg/ow2/asmdex/AnnotationWriter;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayLengthInsn(II)V
    .locals 1
    .param p1, "destinationRegister"    # I
    .param p2, "arrayReferenceBearing"    # I

    .line 683
    invoke-static {p1, p2}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeArrayLength(II)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v0

    .line 684
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 685
    return-void
.end method

.method public visitArrayOperationInsn(IIII)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "valueRegister"    # I
    .param p3, "arrayRegister"    # I
    .param p4, "indexRegister"    # I

    .line 700
    invoke-static {p1, p2, p3, p4}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeArrayOperation(IIII)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v0

    .line 701
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 702
    return-void
.end method

.method public visitAttribute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attr"    # Ljava/lang/Object;

    .line 831
    return-void
.end method

.method public visitCode()V
    .locals 0

    .line 265
    return-void
.end method

.method public visitEnd()V
    .locals 6

    .line 274
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->closeAnnotations()V

    .line 281
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v0

    .line 282
    .local v0, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    if-nez v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 286
    iget-object v1, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->free()V

    .line 287
    return-void

    .line 292
    :cond_1
    invoke-direct {p0}, Lorg/ow2/asmdex/MethodWriter;->checkAndCorrectLabelReferences()V

    .line 299
    iget-object v1, p0, Lorg/ow2/asmdex/MethodWriter;->pseudoInstructionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/instruction/Instruction;

    .line 300
    .local v2, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->addPadding()I

    .line 301
    move-object v3, v2

    check-cast v3, Lorg/ow2/asmdex/instruction/IPseudoInstruction;

    .line 304
    .local v3, "ps":Lorg/ow2/asmdex/instruction/IPseudoInstruction;
    invoke-interface {v3}, Lorg/ow2/asmdex/instruction/IPseudoInstruction;->getSourceInstruction()Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    move-result-object v4

    invoke-interface {v4}, Lorg/ow2/asmdex/instruction/IOffsetInstruction;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v4

    .line 305
    .local v4, "label":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getSize()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/structureCommon/Label;->setOffset(I)V

    .line 306
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 307
    .end local v2    # "insn":Lorg/ow2/asmdex/instruction/Instruction;
    .end local v3    # "ps":Lorg/ow2/asmdex/instruction/IPseudoInstruction;
    .end local v4    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    goto :goto_0

    .line 311
    :cond_2
    iget-object v1, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->generateCodeItemCode()V

    .line 312
    iget-object v1, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->free()V

    .line 313
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "valueRegister"    # I
    .param p6, "objectRegister"    # I

    .line 738
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    const/high16 v4, 0x40000

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addFieldToConstantPool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/structureWriter/Field;

    move-result-object v0

    .line 740
    .local v0, "field":Lorg/ow2/asmdex/structureWriter/Field;
    invoke-static {p1, p5, p6, v0}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeFieldInsn(IIILorg/ow2/asmdex/structureWriter/Field;)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v1

    .line 741
    .local v1, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    if-eqz v1, :cond_0

    .line 742
    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 746
    return-void

    .line 744
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "MethodWriter.visitFieldInsn"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public visitFillArrayDataInsn(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "arrayReference"    # I
    .param p2, "arrayData"    # [Ljava/lang/Object;

    .line 502
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v0

    .line 503
    .local v0, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    new-instance v1, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v1}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 504
    .local v1, "arrayLabel":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getSize()I

    move-result v2

    const/16 v3, 0x26

    invoke-static {v3, p1, v1, v2}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeFillArrayDataInsn(IILorg/ow2/asmdex/structureCommon/Label;I)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v2

    .line 505
    .local v2, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 508
    new-instance v3, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;

    move-object v4, v2

    check-cast v4, Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    invoke-direct {v3, p2, v4}, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;-><init>([Ljava/lang/Object;Lorg/ow2/asmdex/instruction/IOffsetInstruction;)V

    .line 509
    .local v3, "ps":Lorg/ow2/asmdex/instruction/Instruction;
    iget-object v4, p0, Lorg/ow2/asmdex/MethodWriter;->pseudoInstructionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 837
    return-void
.end method

.method public visitInsn(I)V
    .locals 1
    .param p1, "opcode"    # I

    .line 418
    invoke-static {p1}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeInsn(I)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 419
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "register"    # I

    .line 460
    invoke-static {p1, p2}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeIntInsn(II)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v0

    .line 461
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 462
    return-void
.end method

.method public visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "registerA"    # I
    .param p4, "registerB"    # I

    .line 477
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v0

    .line 478
    .local v0, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getSize()I

    move-result v1

    invoke-static {p1, p2, p3, p4, v1}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;III)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v1

    .line 481
    .local v1, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p2, v1}, Lorg/ow2/asmdex/structureCommon/Label;->addReferringInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 483
    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 484
    invoke-virtual {p0, p2}, Lorg/ow2/asmdex/MethodWriter;->addLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 485
    return-void
.end method

.method public visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 423
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v0

    .line 424
    .local v0, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getSize()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/ow2/asmdex/structureCommon/Label;->setOffset(I)V

    .line 425
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/MethodWriter;->addLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 430
    return-void
.end method

.method public visitLineNumber(ILorg/ow2/asmdex/structureCommon/Label;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 804
    iput p1, p0, Lorg/ow2/asmdex/MethodWriter;->nextLineNumber:I

    .line 805
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/Method;->setFirstLineNumberIfNeeded(I)V

    .line 806
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;I)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p7, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;I)V"
        }
    .end annotation

    .line 786
    .local p5, "ends":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .local p6, "restarts":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    move-object v0, p0

    iget-object v1, v0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    move-object v10, p1

    invoke-virtual {v1, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 787
    iget-object v1, v0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    move-object v11, p2

    invoke-virtual {v1, p2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 788
    iget-object v1, v0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    move-object/from16 v12, p3

    invoke-virtual {v1, v12}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 790
    new-instance v1, Lorg/ow2/asmdex/structureCommon/LocalVariable;

    move-object v2, v1

    move/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lorg/ow2/asmdex/structureCommon/LocalVariable;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;)V

    .line 791
    .local v1, "localVariable":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    iget-object v2, v0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/structureWriter/Method;->addLocalVariable(Lorg/ow2/asmdex/structureCommon/LocalVariable;)V

    .line 792
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p5, "end"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p6, "index"    # I

    .line 751
    const/4 v0, 0x0

    .line 752
    .local v0, "ends":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    if-eqz p5, :cond_0

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 754
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_0
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lorg/ow2/asmdex/MethodWriter;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;I)V

    .line 757
    return-void
.end method

.method public visitLookupSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;[I[Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 5
    .param p1, "register"    # I
    .param p2, "dflt"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "keys"    # [I
    .param p4, "labels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 603
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v0

    .line 604
    .local v0, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    new-instance v1, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v1}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 605
    .local v1, "switchLabel":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getSize()I

    move-result v2

    invoke-static {p1, v1, v2}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeSparseSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;I)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v2

    .line 606
    .local v2, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 610
    new-instance v3, Lorg/ow2/asmdex/instruction/PseudoInstructionSparseSwitch;

    move-object v4, v2

    check-cast v4, Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    invoke-direct {v3, p3, p4, v4}, Lorg/ow2/asmdex/instruction/PseudoInstructionSparseSwitch;-><init>([I[Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/instruction/IOffsetInstruction;)V

    .line 611
    .local v3, "ps":Lorg/ow2/asmdex/instruction/Instruction;
    iget-object v4, p0, Lorg/ow2/asmdex/MethodWriter;->pseudoInstructionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    return-void
.end method

.method public visitMaxs(II)V
    .locals 1
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 815
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/Method;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/CodeItem;->setRegisterSize(I)V

    .line 816
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "arguments"    # [I

    .line 331
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    const/high16 v4, 0x40000

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addMethodToConstantPool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/structureWriter/Method;

    move-result-object v0

    .line 332
    .local v0, "newMethod":Lorg/ow2/asmdex/structureWriter/Method;
    invoke-static {p1, v0, p5}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeMethodInsn(ILorg/ow2/asmdex/structureWriter/Method;[I)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v1

    .line 333
    .local v1, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 335
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v2

    .line 338
    .local v2, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getOutgoingArgumentsSizeInWord()I

    move-result v3

    .line 340
    .local v3, "storedOutgoingSize":I
    const/4 v4, 0x1

    invoke-static {p4, v4}, Lorg/ow2/asmdex/structureWriter/Prototype;->getSizeOfDescriptor(Ljava/lang/String;Z)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 343
    .local v4, "outgoingSize":I
    const/16 v5, 0x71

    if-eq p1, v5, :cond_0

    const/16 v5, 0x77

    if-eq p1, v5, :cond_0

    .line 344
    add-int/lit8 v4, v4, 0x1

    .line 347
    :cond_0
    if-le v4, v3, :cond_1

    .line 348
    invoke-virtual {v2, v4}, Lorg/ow2/asmdex/structureWriter/CodeItem;->setOutgoingArgumentsSizeInWord(I)V

    .line 352
    :cond_1
    iget-object v5, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v5, p4}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addPrototypeToConstantPool(Ljava/lang/String;)Lorg/ow2/asmdex/structureWriter/Prototype;

    move-result-object v5

    .line 355
    .local v5, "prototype":Lorg/ow2/asmdex/structureWriter/Prototype;
    iget-object v6, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v5}, Lorg/ow2/asmdex/structureWriter/Prototype;->getParameterTypes()Lorg/ow2/asmdex/structureWriter/TypeList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeListToConstantPool(Lorg/ow2/asmdex/structureWriter/TypeList;)V

    .line 357
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "registers"    # [I

    .line 544
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 546
    invoke-static {p1, p2}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeMultiANewArrayInsn(Ljava/lang/String;[I)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v0

    .line 547
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 548
    return-void
.end method

.method public visitOperationInsn(IIIII)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "firstSourceRegister"    # I
    .param p4, "secondSourceRegister"    # I
    .param p5, "value"    # I

    .line 448
    invoke-static {p1, p2, p3, p4, p5}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeOperationInsn(IIIII)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v0

    .line 450
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 451
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 665
    new-instance v0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-direct {v0, p3, p2}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;-><init>(ZLjava/lang/String;)V

    .line 666
    .local v0, "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    iget-object v1, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v1, p1, v0}, Lorg/ow2/asmdex/structureWriter/Method;->addParameterAnnotationItem(ILorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 669
    iget-object v1, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v1, p2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 671
    new-instance v1, Lorg/ow2/asmdex/AnnotationWriter;

    iget-object v2, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-direct {v1, v2, v0}, Lorg/ow2/asmdex/AnnotationWriter;-><init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    return-object v1
.end method

.method public visitParameters([Ljava/lang/String;)V
    .locals 4
    .param p1, "parameters"    # [Ljava/lang/String;

    .line 373
    if-eqz p1, :cond_1

    .line 374
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 375
    .local v2, "parameter":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 376
    iget-object v3, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3, v2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 374
    .end local v2    # "parameter":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/Method;->setParameters([Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public visitStringInsn(IILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "string"    # Ljava/lang/String;

    .line 715
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 717
    invoke-static {p1, p2, p3}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeStringOperation(IILjava/lang/String;)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v0

    .line 718
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 719
    return-void
.end method

.method public visitTableSwitchInsn(IIILorg/ow2/asmdex/structureCommon/Label;[Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 5
    .param p1, "register"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "dflt"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p5, "labels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 574
    new-instance v0, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 575
    .local v0, "switchLabel":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v1

    .line 576
    .local v1, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getSize()I

    move-result v2

    invoke-static {p1, v0, v2}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeTableSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;I)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v2

    .line 577
    .local v2, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 581
    new-instance v3, Lorg/ow2/asmdex/instruction/PseudoInstructionPackedSwitch;

    move-object v4, v2

    check-cast v4, Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    invoke-direct {v3, p2, p5, v4}, Lorg/ow2/asmdex/instruction/PseudoInstructionPackedSwitch;-><init>(I[Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/instruction/IOffsetInstruction;)V

    .line 582
    .local v3, "ps":Lorg/ow2/asmdex/instruction/Instruction;
    iget-object v4, p0, Lorg/ow2/asmdex/MethodWriter;->pseudoInstructionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    return-void
.end method

.method public visitTryCatchBlock(Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;)V
    .locals 3
    .param p1, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p2, "end"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "handler"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 625
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p4}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0, p2}, Lorg/ow2/asmdex/MethodWriter;->addLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 628
    invoke-virtual {p0, p3}, Lorg/ow2/asmdex/MethodWriter;->addLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 632
    invoke-virtual {p0}, Lorg/ow2/asmdex/MethodWriter;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v0

    .line 633
    .local v0, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    new-instance v1, Lorg/ow2/asmdex/structureWriter/TryCatch;

    new-instance v2, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;

    invoke-direct {v2, p3, p4}, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;-><init>(Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;)V

    invoke-direct {v1, p1, p2, v2}, Lorg/ow2/asmdex/structureWriter/TryCatch;-><init>(Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureWriter/ExceptionHandler;)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/structureWriter/CodeItem;->addTryCatch(Lorg/ow2/asmdex/structureWriter/TryCatch;)V

    .line 634
    return-void
.end method

.method public visitTypeInsn(IIIILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "referenceBearingRegister"    # I
    .param p4, "sizeRegister"    # I
    .param p5, "type"    # Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lorg/ow2/asmdex/MethodWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p5}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 527
    invoke-static {p1, p2, p3, p4, p5}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeTypeInsn(IIIILjava/lang/String;)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v0

    .line 529
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 530
    return-void
.end method

.method public visitVarInsn(III)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # I

    .line 393
    invoke-static {p1, p2, p3}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeVarInsn(III)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v0

    .line 394
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 395
    return-void
.end method

.method public visitVarInsn(IIJ)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # J

    .line 406
    invoke-static {p1, p2, p3, p4}, Lorg/ow2/asmdex/lowLevelUtils/InstructionEncoder;->encodeVarInsn(IIJ)Lorg/ow2/asmdex/instruction/Instruction;

    move-result-object v0

    .line 407
    .local v0, "insn":Lorg/ow2/asmdex/instruction/Instruction;
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/MethodWriter;->addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V

    .line 408
    return-void
.end method
