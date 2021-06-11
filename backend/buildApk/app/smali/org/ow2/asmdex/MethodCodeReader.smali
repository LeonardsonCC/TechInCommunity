.class public Lorg/ow2/asmdex/MethodCodeReader;
.super Ljava/lang/Object;
.source "MethodCodeReader.java"


# static fields
.field private static final TRY_ITEM_STRUCTURE_SIZE:I = 0x8


# instance fields
.field protected codeOffset:I

.field protected debugAddress:I

.field protected debugCurrentOpcodeOffset:I

.field protected debugCurrentOpcodeOffsetAtInitialization:I

.field protected debugEmittedLine:I

.field protected debugEpilogueBegin:Z

.field protected debugLine:I

.field protected debugLineAtInitialization:I

.field protected debugPrologueEnd:Z

.field protected debugSourceFile:Ljava/lang/String;

.field protected dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

.field private hasReachedPseudoInstructions:Z

.field protected instructionsEndOffset:I

.field protected instructionsStartOffset:I

.field protected labels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;"
        }
    .end annotation
.end field

.field protected listTryCatchStructures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureReader/TryCatch;",
            ">;>;"
        }
    .end annotation
.end field

.field protected localVariableLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/LocalVariable;",
            ">;>;"
        }
    .end annotation
.end field

.field protected methodVisitor:Lorg/ow2/asmdex/MethodVisitor;

.field protected newDebugLineEmitted:Z

.field protected packedSwitchStructures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/ow2/asmdex/structureReader/PackedSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private registerArrayType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected skipDebug:Z

.field protected sparseSwitchStructures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/ow2/asmdex/structureReader/SparseSwitch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;Lorg/ow2/asmdex/MethodVisitor;IZ)V
    .locals 1
    .param p1, "dexFile"    # Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;
    .param p2, "methodVisitor"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p3, "codeOffset"    # I
    .param p4, "skipDebug"    # Z

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->registerArrayType:Ljava/util/HashMap;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->hasReachedPseudoInstructions:Z

    .line 202
    iput-object p1, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    .line 203
    iput-object p2, p0, Lorg/ow2/asmdex/MethodCodeReader;->methodVisitor:Lorg/ow2/asmdex/MethodVisitor;

    .line 204
    iput p3, p0, Lorg/ow2/asmdex/MethodCodeReader;->codeOffset:I

    .line 205
    iput-boolean p4, p0, Lorg/ow2/asmdex/MethodCodeReader;->skipDebug:Z

    .line 206
    return-void
.end method

.method private static getTypeFromTypeArray(Ljava/lang/String;)I
    .locals 3
    .param p0, "typeName"    # Ljava/lang/String;

    .line 1014
    const/4 v0, -0x1

    .line 1016
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1017
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1018
    .local v1, "t":C
    const/16 v2, 0x46

    if-eq v1, v2, :cond_4

    const/16 v2, 0x53

    if-eq v1, v2, :cond_3

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x49

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1041
    :pswitch_0
    const/16 v0, 0x11

    goto :goto_0

    .line 1029
    :pswitch_1
    const/4 v0, 0x3

    .line 1030
    goto :goto_0

    .line 1023
    :pswitch_2
    const/4 v0, 0x0

    .line 1024
    goto :goto_0

    .line 1035
    :cond_0
    const/4 v0, 0x6

    .line 1036
    goto :goto_0

    .line 1032
    :cond_1
    const/4 v0, 0x4

    .line 1033
    goto :goto_0

    .line 1020
    :cond_2
    const/16 v0, 0x1f

    .line 1021
    goto :goto_0

    .line 1026
    :cond_3
    const/4 v0, 0x2

    .line 1027
    goto :goto_0

    .line 1038
    :cond_4
    const/16 v0, 0x10

    .line 1046
    .end local v1    # "t":C
    :cond_5
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseCodeInstructions(Lorg/ow2/asmdex/MethodVisitor;ZZ)V
    .locals 18
    .param p1, "methodVisitor"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "skipDebug"    # Z
    .param p3, "findLabelsOnly"    # Z

    .line 317
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    const/4 v10, 0x0

    iput-boolean v10, v7, Lorg/ow2/asmdex/MethodCodeReader;->hasReachedPseudoInstructions:Z

    .line 320
    iget v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->debugCurrentOpcodeOffsetAtInitialization:I

    iput v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->debugCurrentOpcodeOffset:I

    .line 322
    iput v10, v7, Lorg/ow2/asmdex/MethodCodeReader;->debugAddress:I

    .line 323
    iget v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->debugLineAtInitialization:I

    iput v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->debugLine:I

    .line 324
    iput v10, v7, Lorg/ow2/asmdex/MethodCodeReader;->debugEmittedLine:I

    .line 325
    const/4 v0, 0x0

    iput-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->debugSourceFile:Ljava/lang/String;

    .line 326
    iput-boolean v10, v7, Lorg/ow2/asmdex/MethodCodeReader;->debugPrologueEnd:Z

    .line 327
    iput-boolean v10, v7, Lorg/ow2/asmdex/MethodCodeReader;->debugEpilogueBegin:Z

    .line 328
    iput-boolean v10, v7, Lorg/ow2/asmdex/MethodCodeReader;->newDebugLineEmitted:Z

    .line 331
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    iget v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->instructionsStartOffset:I

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 332
    :goto_0
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v0

    iget v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->instructionsEndOffset:I

    if-ge v0, v1, :cond_2d

    .line 333
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v0

    iget v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->instructionsStartOffset:I

    sub-int v11, v0, v1

    .line 334
    .local v11, "relativeOffset":I
    if-nez p2, :cond_0

    iget v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->debugCurrentOpcodeOffset:I

    if-ltz v0, :cond_0

    .line 339
    invoke-virtual {v7, v8, v11, v9}, Lorg/ow2/asmdex/MethodCodeReader;->parseDebugInformationItem(Lorg/ow2/asmdex/MethodVisitor;IZ)V

    .line 343
    :cond_0
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->labels:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->labels:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ow2/asmdex/structureCommon/Label;

    .line 347
    .local v0, "label":Lorg/ow2/asmdex/structureCommon/Label;
    iget-boolean v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->newDebugLineEmitted:Z

    if-eqz v1, :cond_1

    .line 348
    iget v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->debugEmittedLine:I

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/structureCommon/Label;->setLine(I)V

    .line 351
    :cond_1
    if-nez v9, :cond_2

    .line 352
    invoke-virtual {v8, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 358
    .end local v0    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    :cond_2
    iget-boolean v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->newDebugLineEmitted:Z

    if-eqz v0, :cond_4

    .line 359
    if-nez v9, :cond_3

    .line 360
    iget v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->debugEmittedLine:I

    .line 361
    invoke-virtual {v7, v11}, Lorg/ow2/asmdex/MethodCodeReader;->getLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v1

    .line 360
    invoke-virtual {v8, v0, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitLineNumber(ILorg/ow2/asmdex/structureCommon/Label;)V

    .line 363
    :cond_3
    iput-boolean v10, v7, Lorg/ow2/asmdex/MethodCodeReader;->newDebugLineEmitted:Z

    .line 368
    :cond_4
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->listTryCatchStructures:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 369
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->listTryCatchStructures:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 370
    .local v0, "listTryCatch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureReader/TryCatch;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureReader/TryCatch;

    .line 371
    .local v2, "tcs":Lorg/ow2/asmdex/structureReader/TryCatch;
    if-nez v9, :cond_5

    .line 372
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/TryCatch;->getStart()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v3

    .line 373
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/TryCatch;->getEnd()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v4

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/TryCatch;->getHandler()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v5

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/TryCatch;->getType()Ljava/lang/String;

    move-result-object v6

    .line 372
    invoke-virtual {v8, v3, v4, v5, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitTryCatchBlock(Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;)V

    .line 375
    .end local v2    # "tcs":Lorg/ow2/asmdex/structureReader/TryCatch;
    :cond_5
    goto :goto_1

    .line 379
    .end local v0    # "listTryCatch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureReader/TryCatch;>;"
    :cond_6
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v12

    .line 380
    .local v12, "fullOpcode":I
    and-int/lit16 v13, v12, 0xff

    .line 381
    .local v13, "shortOpcode":I
    shr-int/lit8 v0, v12, 0x8

    and-int/lit16 v14, v0, 0xff

    .line 385
    .local v14, "highOrderByte":I
    if-nez v13, :cond_b

    .line 387
    if-eqz v14, :cond_a

    const/4 v0, 0x1

    if-eq v14, v0, :cond_9

    const/4 v1, 0x2

    if-eq v14, v1, :cond_8

    const/4 v2, 0x3

    if-ne v14, v2, :cond_7

    .line 415
    iget-object v2, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v2

    .line 416
    .local v2, "elementWidth":I
    iget-object v3, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v3

    .line 417
    .local v3, "elementSize":I
    mul-int v4, v2, v3

    .line 418
    .local v4, "totalSizeInBytes":I
    add-int/lit8 v5, v4, 0x1

    div-int/2addr v5, v1

    .line 419
    .local v5, "codeUnitNumber":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v6

    mul-int/lit8 v15, v5, 0x2

    add-int/2addr v6, v15

    invoke-virtual {v1, v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 420
    iput-boolean v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->hasReachedPseudoInstructions:Z

    .line 421
    goto/16 :goto_2

    .line 424
    .end local v2    # "elementWidth":I
    .end local v3    # "elementSize":I
    .end local v4    # "totalSizeInBytes":I
    .end local v5    # "codeUnitNumber":I
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown opcode after a 0x00 : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_8
    iget-object v2, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v2

    .line 408
    .local v2, "sparseSwitchSize":I
    iget-object v3, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v4

    mul-int/lit8 v5, v2, 0x4

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 409
    iput-boolean v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->hasReachedPseudoInstructions:Z

    .line 410
    goto/16 :goto_2

    .line 399
    .end local v2    # "sparseSwitchSize":I
    :cond_9
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v1

    .line 400
    .local v1, "packedSwitchSize":I
    iget-object v2, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v3

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 401
    iput-boolean v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->hasReachedPseudoInstructions:Z

    .line 402
    goto/16 :goto_2

    .line 389
    .end local v1    # "packedSwitchSize":I
    :cond_a
    if-nez v9, :cond_2c

    iget-boolean v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->hasReachedPseudoInstructions:Z

    if-nez v0, :cond_2c

    .line 393
    invoke-virtual {v8, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_2

    .line 429
    :cond_b
    iput-boolean v10, v7, Lorg/ow2/asmdex/MethodCodeReader;->hasReachedPseudoInstructions:Z

    .line 430
    packed-switch v13, :pswitch_data_0

    .line 992
    :pswitch_0
    if-nez v9, :cond_2c

    .line 993
    invoke-virtual {v8, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_2

    .line 979
    :pswitch_1
    if-eqz v9, :cond_c

    .line 980
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 982
    :cond_c
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->getRegisterA(I)I

    move-result v6

    .line 983
    .local v6, "regA":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->getEncodedRegisterBAndLiteralC(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v15

    .line 984
    .local v15, "regBAndLitC":I
    invoke-static {v15}, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->getRegisterBFromEncodedRegisterBAndC(I)I

    move-result v16

    .line 985
    .local v16, "regB":I
    invoke-static {v15}, Lorg/ow2/asmdex/instruction/InstructionFormat22B;->getLiteralCFromEncodedRegisterBAndLiteralC(I)I

    move-result v17

    .line 986
    .local v17, "literalC":I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v6

    move/from16 v3, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 988
    .end local v6    # "regA":I
    .end local v15    # "regBAndLitC":I
    .end local v16    # "regB":I
    .end local v17    # "literalC":I
    goto/16 :goto_2

    .line 958
    :pswitch_2
    if-eqz v9, :cond_d

    .line 959
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 961
    :cond_d
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->getRegisterA(I)I

    move-result v6

    .line 962
    .restart local v6    # "regA":I
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->getRegisterB(I)I

    move-result v15

    .line 963
    .local v15, "regB":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22S;->getLiteralC(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v16

    .line 964
    .local v16, "literalC":I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v6

    move v3, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 966
    .end local v6    # "regA":I
    .end local v15    # "regB":I
    .end local v16    # "literalC":I
    goto/16 :goto_2

    .line 941
    :pswitch_3
    if-eqz v9, :cond_e

    goto/16 :goto_2

    .line 944
    :cond_e
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->getRegisterA(I)I

    move-result v6

    .line 945
    .restart local v6    # "regA":I
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->getRegisterB(I)I

    move-result v15

    .line 946
    .restart local v15    # "regB":I
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v6

    move v3, v6

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 948
    .end local v6    # "regA":I
    .end local v15    # "regB":I
    goto/16 :goto_2

    .line 898
    :pswitch_4
    if-eqz v9, :cond_f

    .line 899
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 901
    :cond_f
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->getRegisterA(I)I

    move-result v6

    .line 902
    .restart local v6    # "regA":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->getEncodedRegisterBAndC(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v15

    .line 903
    .local v15, "regBAndC":I
    invoke-static {v15}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->getRegisterBFromEncodedRegisterBAndC(I)I

    move-result v16

    .line 904
    .local v16, "regB":I
    invoke-static {v15}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->getRegisterCFromEncodedRegisterBAndC(I)I

    move-result v17

    .line 905
    .local v17, "regC":I
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v6

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 907
    .end local v6    # "regA":I
    .end local v15    # "regBAndC":I
    .end local v16    # "regB":I
    .end local v17    # "regC":I
    goto/16 :goto_2

    .line 857
    :pswitch_5
    if-eqz v9, :cond_10

    goto/16 :goto_2

    .line 860
    :cond_10
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->getRegisterA(I)I

    move-result v6

    .line 861
    .restart local v6    # "regA":I
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->getRegisterB(I)I

    move-result v15

    .line 862
    .local v15, "regB":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v6

    move v3, v15

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 864
    .end local v6    # "regA":I
    .end local v15    # "regB":I
    goto/16 :goto_2

    .line 827
    :pswitch_6
    if-eqz v9, :cond_11

    .line 828
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 830
    :cond_11
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->getIndex(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v0

    .line 831
    .local v0, "index":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1, v12}, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->getRegisters(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)[I

    move-result-object v1

    .line 832
    .local v1, "registers":[I
    invoke-virtual {v7, v8, v13, v0, v1}, Lorg/ow2/asmdex/MethodCodeReader;->visitMethodInstruction(Lorg/ow2/asmdex/MethodVisitor;II[I)V

    .line 834
    .end local v0    # "index":I
    .end local v1    # "registers":[I
    goto/16 :goto_2

    .line 813
    :pswitch_7
    if-eqz v9, :cond_12

    .line 814
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 816
    :cond_12
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->getIndex(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v0

    .line 817
    .restart local v0    # "index":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1, v12}, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->getRegisters(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)[I

    move-result-object v1

    .line 818
    .restart local v1    # "registers":[I
    invoke-virtual {v7, v8, v13, v0, v1}, Lorg/ow2/asmdex/MethodCodeReader;->visitMethodInstruction(Lorg/ow2/asmdex/MethodVisitor;II[I)V

    .line 820
    .end local v0    # "index":I
    .end local v1    # "registers":[I
    goto/16 :goto_2

    .line 799
    :pswitch_8
    if-eqz v9, :cond_13

    .line 800
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 802
    :cond_13
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->getRegisterA(I)I

    move-result v6

    .line 803
    .restart local v6    # "regA":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->getIndexB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v15

    .line 804
    .local v15, "indexC":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v6

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodCodeReader;->visitFieldInsn(Lorg/ow2/asmdex/MethodVisitor;IIII)V

    .line 806
    .end local v6    # "regA":I
    .end local v15    # "indexC":I
    goto/16 :goto_2

    .line 775
    :pswitch_9
    if-eqz v9, :cond_14

    .line 776
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 778
    :cond_14
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->getRegisterA(I)I

    move-result v6

    .line 779
    .restart local v6    # "regA":I
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->getRegisterB(I)I

    move-result v15

    .line 780
    .local v15, "regB":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->getIndexC(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v16

    .line 781
    .local v16, "indexC":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v6

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodCodeReader;->visitFieldInsn(Lorg/ow2/asmdex/MethodVisitor;IIII)V

    .line 783
    .end local v6    # "regA":I
    .end local v15    # "regB":I
    .end local v16    # "indexC":I
    goto/16 :goto_2

    .line 750
    :pswitch_a
    if-eqz v9, :cond_15

    .line 751
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 753
    :cond_15
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->getRegisterA(I)I

    move-result v0

    .line 754
    .local v0, "regA":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->getEncodedRegisterBAndC(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v1

    .line 755
    .local v1, "regBAndC":I
    invoke-static {v1}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->getRegisterBFromEncodedRegisterBAndC(I)I

    move-result v2

    .line 756
    .local v2, "regB":I
    invoke-static {v1}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->getRegisterCFromEncodedRegisterBAndC(I)I

    move-result v3

    .line 757
    .local v3, "regC":I
    invoke-virtual {v8, v13, v0, v2, v3}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 759
    .end local v0    # "regA":I
    .end local v1    # "regBAndC":I
    .end local v2    # "regB":I
    .end local v3    # "regC":I
    goto/16 :goto_2

    .line 731
    :pswitch_b
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat21T;->getRegisterA(I)I

    move-result v15

    .line 732
    .local v15, "regA":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0, v12}, Lorg/ow2/asmdex/instruction/InstructionFormat21T;->getOffset(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)I

    move-result v16

    .line 733
    .local v16, "offset":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v16

    move v3, v15

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/MethodCodeReader;->visitJumpInsn(IIIILorg/ow2/asmdex/MethodVisitor;Z)V

    .line 734
    goto/16 :goto_2

    .line 719
    .end local v15    # "regA":I
    .end local v16    # "offset":I
    :pswitch_c
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->getRegisterA(I)I

    move-result v15

    .line 720
    .restart local v15    # "regA":I
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->getRegisterB(I)I

    move-result v16

    .line 721
    .local v16, "regB":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0, v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22T;->getOffset(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)I

    move-result v17

    .line 722
    .local v17, "offset":I
    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v17

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/MethodCodeReader;->visitJumpInsn(IIIILorg/ow2/asmdex/MethodVisitor;Z)V

    .line 723
    goto/16 :goto_2

    .line 702
    .end local v15    # "regA":I
    .end local v16    # "regB":I
    .end local v17    # "offset":I
    :pswitch_d
    if-eqz v9, :cond_16

    .line 703
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 705
    :cond_16
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->getRegisterA(I)I

    move-result v6

    .line 706
    .restart local v6    # "regA":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->getEncodedRegisterBAndC(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v15

    .line 707
    .local v15, "regBAndC":I
    invoke-static {v15}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->getRegisterBFromEncodedRegisterBAndC(I)I

    move-result v16

    .line 708
    .restart local v16    # "regB":I
    invoke-static {v15}, Lorg/ow2/asmdex/instruction/InstructionFormat23X;->getRegisterCFromEncodedRegisterBAndC(I)I

    move-result v17

    .line 709
    .local v17, "regC":I
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v6

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 711
    .end local v6    # "regA":I
    .end local v15    # "regBAndC":I
    .end local v16    # "regB":I
    .end local v17    # "regC":I
    goto/16 :goto_2

    .line 694
    :pswitch_e
    invoke-virtual {v7, v8, v12, v9}, Lorg/ow2/asmdex/MethodCodeReader;->parseAndVisitSwitchCase(Lorg/ow2/asmdex/MethodVisitor;IZ)V

    .line 695
    goto/16 :goto_2

    .line 688
    :pswitch_f
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0, v12}, Lorg/ow2/asmdex/instruction/InstructionFormat30T;->getOffset(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)I

    move-result v15

    .line 689
    .local v15, "offset":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/MethodCodeReader;->visitJumpInsn(IIIILorg/ow2/asmdex/MethodVisitor;Z)V

    .line 690
    goto/16 :goto_2

    .line 683
    .end local v15    # "offset":I
    :pswitch_10
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0, v12}, Lorg/ow2/asmdex/instruction/InstructionFormat20T;->getOffset(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)I

    move-result v15

    .line 684
    .restart local v15    # "offset":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/MethodCodeReader;->visitJumpInsn(IIIILorg/ow2/asmdex/MethodVisitor;Z)V

    .line 685
    goto/16 :goto_2

    .line 678
    .end local v15    # "offset":I
    :pswitch_11
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0, v12}, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->getOffset(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)I

    move-result v15

    .line 679
    .restart local v15    # "offset":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/MethodCodeReader;->visitJumpInsn(IIIILorg/ow2/asmdex/MethodVisitor;Z)V

    .line 680
    goto/16 :goto_2

    .line 668
    .end local v15    # "offset":I
    :pswitch_12
    if-eqz v9, :cond_17

    .line 669
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 671
    :cond_17
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->getRegisterA(I)I

    move-result v0

    .line 672
    .restart local v0    # "regA":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1, v12}, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->getOffset(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)I

    move-result v1

    .line 673
    .local v1, "offset":I
    invoke-virtual {v7, v8, v0, v1}, Lorg/ow2/asmdex/MethodCodeReader;->visitFillArrayData(Lorg/ow2/asmdex/MethodVisitor;II)V

    .line 675
    .end local v0    # "regA":I
    .end local v1    # "offset":I
    goto/16 :goto_2

    .line 658
    :pswitch_13
    if-eqz v9, :cond_18

    .line 659
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 661
    :cond_18
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->getIndex(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v0

    .line 662
    .local v0, "index":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1, v12}, Lorg/ow2/asmdex/instruction/InstructionFormat3RC;->getRegisters(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)[I

    move-result-object v1

    .line 663
    .local v1, "registers":[I
    invoke-virtual {v7, v8, v0, v1}, Lorg/ow2/asmdex/MethodCodeReader;->visitMultiANewArrayInsn(Lorg/ow2/asmdex/MethodVisitor;I[I)V

    .line 665
    .end local v0    # "index":I
    .end local v1    # "registers":[I
    goto/16 :goto_2

    .line 648
    :pswitch_14
    if-eqz v9, :cond_19

    .line 649
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 651
    :cond_19
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->getIndex(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v0

    .line 652
    .restart local v0    # "index":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1, v12}, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->getRegisters(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)[I

    move-result-object v1

    .line 653
    .restart local v1    # "registers":[I
    invoke-virtual {v7, v8, v0, v1}, Lorg/ow2/asmdex/MethodCodeReader;->visitMultiANewArrayInsn(Lorg/ow2/asmdex/MethodVisitor;I[I)V

    .line 655
    .end local v0    # "index":I
    .end local v1    # "registers":[I
    goto/16 :goto_2

    .line 631
    :pswitch_15
    if-eqz v9, :cond_1a

    .line 632
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 634
    :cond_1a
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->getRegisterA(I)I

    move-result v6

    .line 635
    .local v6, "registerArray":I
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->getRegisterB(I)I

    move-result v15

    .line 636
    .local v15, "regB":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->getIndexC(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v5

    .line 637
    .local v5, "indexC":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v16

    .line 638
    .local v16, "typeName":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v6

    move v4, v15

    move/from16 v17, v5

    .end local v5    # "indexC":I
    .local v17, "indexC":I
    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 642
    invoke-static/range {v16 .. v16}, Lorg/ow2/asmdex/MethodCodeReader;->getTypeFromTypeArray(Ljava/lang/String;)I

    move-result v0

    .line 643
    .local v0, "type":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->registerArrayType:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .end local v0    # "type":I
    .end local v6    # "registerArray":I
    .end local v15    # "regB":I
    .end local v16    # "typeName":Ljava/lang/String;
    .end local v17    # "indexC":I
    goto/16 :goto_2

    .line 620
    :pswitch_16
    if-eqz v9, :cond_1b

    .line 621
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 623
    :cond_1b
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->getRegisterA(I)I

    move-result v6

    .line 624
    .local v6, "regA":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->getIndexB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v15

    .line 625
    .local v15, "indexB":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0, v15}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v16

    .line 626
    .restart local v16    # "typeName":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v6

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 628
    .end local v6    # "regA":I
    .end local v15    # "indexB":I
    .end local v16    # "typeName":Ljava/lang/String;
    goto/16 :goto_2

    .line 610
    :pswitch_17
    if-eqz v9, :cond_1c

    goto/16 :goto_2

    .line 613
    :cond_1c
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->getRegisterA(I)I

    move-result v0

    .line 614
    .local v0, "regA":I
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->getRegisterB(I)I

    move-result v1

    .line 615
    .local v1, "regB":I
    invoke-virtual {v8, v0, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayLengthInsn(II)V

    .line 617
    .end local v0    # "regA":I
    .end local v1    # "regB":I
    goto/16 :goto_2

    .line 598
    :pswitch_18
    if-eqz v9, :cond_1d

    .line 599
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 601
    :cond_1d
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->getRegisterA(I)I

    move-result v6

    .line 602
    .restart local v6    # "regA":I
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->getRegisterB(I)I

    move-result v15

    .line 603
    .local v15, "regB":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22C;->getIndexC(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v5

    .line 604
    .restart local v5    # "indexC":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v16

    .line 605
    .restart local v16    # "typeName":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v6

    move v3, v15

    move/from16 v17, v5

    .end local v5    # "indexC":I
    .restart local v17    # "indexC":I
    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 607
    .end local v6    # "regA":I
    .end local v15    # "regB":I
    .end local v16    # "typeName":Ljava/lang/String;
    .end local v17    # "indexC":I
    goto/16 :goto_2

    .line 587
    :pswitch_19
    if-eqz v9, :cond_1e

    .line 588
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 590
    :cond_1e
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->getRegisterA(I)I

    move-result v6

    .line 591
    .restart local v6    # "regA":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->getIndexB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v15

    .line 592
    .local v15, "indexB":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0, v15}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v16

    .line 593
    .restart local v16    # "typeName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v3, v6

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 595
    .end local v6    # "regA":I
    .end local v15    # "indexB":I
    .end local v16    # "typeName":Ljava/lang/String;
    goto/16 :goto_2

    .line 576
    :pswitch_1a
    if-eqz v9, :cond_1f

    .line 577
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 579
    :cond_1f
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->getRegisterA(I)I

    move-result v6

    .line 580
    .restart local v6    # "regA":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->getIndexB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v15

    .line 581
    .restart local v15    # "indexB":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0, v15}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v16

    .line 582
    .restart local v16    # "typeName":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v6

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 584
    .end local v6    # "regA":I
    .end local v15    # "indexB":I
    .end local v16    # "typeName":Ljava/lang/String;
    goto/16 :goto_2

    .line 565
    :pswitch_1b
    if-eqz v9, :cond_20

    .line 566
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat31C;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 568
    :cond_20
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat31C;->getRegisterA(I)I

    move-result v0

    .line 569
    .restart local v0    # "regA":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1}, Lorg/ow2/asmdex/instruction/InstructionFormat31C;->getIndexB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v1

    .line 570
    .local v1, "indexB":I
    iget-object v2, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v8, v13, v0, v2}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 573
    .end local v0    # "regA":I
    .end local v1    # "indexB":I
    .end local v2    # "string":Ljava/lang/String;
    goto/16 :goto_2

    .line 554
    :pswitch_1c
    if-eqz v9, :cond_21

    .line 555
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 557
    :cond_21
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->getRegisterA(I)I

    move-result v0

    .line 558
    .restart local v0    # "regA":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1}, Lorg/ow2/asmdex/instruction/InstructionFormat21C;->getIndexB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v1

    .line 559
    .restart local v1    # "indexB":I
    iget-object v2, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v2

    .line 560
    .restart local v2    # "string":Ljava/lang/String;
    invoke-virtual {v8, v13, v0, v2}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 562
    .end local v0    # "regA":I
    .end local v1    # "indexB":I
    .end local v2    # "string":Ljava/lang/String;
    goto/16 :goto_2

    .line 534
    :pswitch_1d
    if-eqz v9, :cond_22

    .line 535
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 537
    :cond_22
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->getRegisterA(I)I

    move-result v6

    .line 538
    .restart local v6    # "regA":I
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->getLiteralB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v15

    .line 539
    .local v15, "literalB":I
    int-to-long v0, v15

    const/16 v2, 0x30

    shl-long v4, v0, v2

    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v2, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodCodeReader;->visitVarInsn(ILorg/ow2/asmdex/MethodVisitor;IJ)V

    .line 541
    .end local v6    # "regA":I
    .end local v15    # "literalB":I
    goto/16 :goto_2

    .line 544
    :pswitch_1e
    if-eqz v9, :cond_23

    .line 545
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 547
    :cond_23
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->getRegisterA(I)I

    move-result v0

    .line 548
    .restart local v0    # "regA":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1}, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->getLiteralB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)J

    move-result-wide v1

    .line 549
    .local v1, "literalB":J
    invoke-virtual {v8, v13, v0, v1, v2}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(IIJ)V

    .line 551
    .end local v0    # "regA":I
    .end local v1    # "literalB":J
    goto/16 :goto_2

    .line 524
    :pswitch_1f
    if-eqz v9, :cond_24

    .line 525
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 527
    :cond_24
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->getRegisterA(I)I

    move-result v0

    .line 528
    .restart local v0    # "regA":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1}, Lorg/ow2/asmdex/instruction/InstructionFormat21H;->getLiteralB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v1

    .line 529
    .local v1, "literalB":I
    shl-int/lit8 v2, v1, 0x10

    invoke-virtual {v7, v13, v8, v0, v2}, Lorg/ow2/asmdex/MethodCodeReader;->visitVarInsn(ILorg/ow2/asmdex/MethodVisitor;II)V

    .line 531
    .end local v0    # "regA":I
    .end local v1    # "literalB":I
    goto/16 :goto_2

    .line 514
    :pswitch_20
    if-eqz v9, :cond_25

    .line 515
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 517
    :cond_25
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->getRegisterA(I)I

    move-result v0

    .line 518
    .restart local v0    # "regA":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1}, Lorg/ow2/asmdex/instruction/InstructionFormat31I;->getLiteralB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v1

    .line 519
    .restart local v1    # "literalB":I
    invoke-virtual {v7, v13, v8, v0, v1}, Lorg/ow2/asmdex/MethodCodeReader;->visitVarInsn(ILorg/ow2/asmdex/MethodVisitor;II)V

    .line 521
    .end local v0    # "regA":I
    .end local v1    # "literalB":I
    goto/16 :goto_2

    .line 503
    :pswitch_21
    if-eqz v9, :cond_26

    .line 504
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat21S;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto/16 :goto_2

    .line 506
    :cond_26
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat21S;->getRegisterA(I)I

    move-result v0

    .line 507
    .restart local v0    # "regA":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1}, Lorg/ow2/asmdex/instruction/InstructionFormat21S;->getLiteralB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v1

    .line 508
    .restart local v1    # "literalB":I
    invoke-virtual {v7, v13, v8, v0, v1}, Lorg/ow2/asmdex/MethodCodeReader;->visitVarInsn(ILorg/ow2/asmdex/MethodVisitor;II)V

    .line 510
    .end local v0    # "regA":I
    .end local v1    # "literalB":I
    goto :goto_2

    .line 492
    :pswitch_22
    if-eqz v9, :cond_27

    goto :goto_2

    .line 495
    :cond_27
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat11N;->getRegisterA(I)I

    move-result v0

    .line 496
    .restart local v0    # "regA":I
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat11N;->getLiteralB(I)I

    move-result v1

    .line 497
    .restart local v1    # "literalB":I
    invoke-virtual {v7, v13, v8, v0, v1}, Lorg/ow2/asmdex/MethodCodeReader;->visitVarInsn(ILorg/ow2/asmdex/MethodVisitor;II)V

    .line 499
    .end local v0    # "regA":I
    .end local v1    # "literalB":I
    goto :goto_2

    .line 486
    :pswitch_23
    if-nez v9, :cond_2c

    .line 487
    invoke-virtual {v8, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    goto :goto_2

    .line 477
    :pswitch_24
    if-eqz v9, :cond_28

    goto :goto_2

    .line 480
    :cond_28
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat11X;->getRegisterA(I)I

    move-result v0

    .line 481
    .restart local v0    # "regA":I
    invoke-virtual {v8, v13, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 483
    .end local v0    # "regA":I
    goto :goto_2

    .line 458
    :pswitch_25
    if-eqz v9, :cond_29

    .line 459
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto :goto_2

    .line 461
    :cond_29
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->getRegisterA(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v0

    .line 462
    .restart local v0    # "regA":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1}, Lorg/ow2/asmdex/instruction/InstructionFormat32X;->getRegisterB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v1

    .line 463
    .local v1, "regB":I
    invoke-virtual {v7, v13, v8, v0, v1}, Lorg/ow2/asmdex/MethodCodeReader;->visitVarInsn(ILorg/ow2/asmdex/MethodVisitor;II)V

    .line 465
    .end local v0    # "regA":I
    .end local v1    # "regB":I
    goto :goto_2

    .line 446
    :pswitch_26
    if-eqz v9, :cond_2a

    .line 447
    iget-object v0, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V

    goto :goto_2

    .line 449
    :cond_2a
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->getRegisterA(I)I

    move-result v0

    .line 450
    .restart local v0    # "regA":I
    iget-object v1, v7, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v1}, Lorg/ow2/asmdex/instruction/InstructionFormat22X;->getRegisterB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I

    move-result v1

    .line 451
    .restart local v1    # "regB":I
    invoke-virtual {v7, v13, v8, v0, v1}, Lorg/ow2/asmdex/MethodCodeReader;->visitVarInsn(ILorg/ow2/asmdex/MethodVisitor;II)V

    .line 453
    .end local v0    # "regA":I
    .end local v1    # "regB":I
    goto :goto_2

    .line 434
    :pswitch_27
    if-eqz v9, :cond_2b

    goto :goto_2

    .line 437
    :cond_2b
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->getRegisterA(I)I

    move-result v0

    .line 438
    .restart local v0    # "regA":I
    invoke-static {v12}, Lorg/ow2/asmdex/instruction/InstructionFormat12X;->getRegisterB(I)I

    move-result v1

    .line 439
    .restart local v1    # "regB":I
    invoke-virtual {v7, v13, v8, v0, v1}, Lorg/ow2/asmdex/MethodCodeReader;->visitVarInsn(ILorg/ow2/asmdex/MethodVisitor;II)V

    .line 999
    .end local v0    # "regA":I
    .end local v1    # "regB":I
    .end local v11    # "relativeOffset":I
    .end local v12    # "fullOpcode":I
    .end local v13    # "shortOpcode":I
    .end local v14    # "highOrderByte":I
    :cond_2c
    :goto_2
    goto/16 :goto_0

    .line 1000
    :cond_2d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_21
        :pswitch_20
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_24
        :pswitch_24
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_24
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected addEndLabelToLocalVariableLabels(ILorg/ow2/asmdex/structureCommon/Label;)V
    .locals 1
    .param p1, "registerNumber"    # I
    .param p2, "endLabel"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 1798
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/MethodCodeReader;->getLocalVariable(I)Lorg/ow2/asmdex/structureCommon/LocalVariable;

    move-result-object v0

    .line 1799
    .local v0, "localVariable":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    invoke-virtual {v0, p2}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->addEnd(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 1800
    return-void
.end method

.method protected addLabel(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/structureCommon/Label;
    .locals 4
    .param p1, "label"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 1357
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v0

    .line 1358
    .local v0, "offset":I
    move-object v1, p1

    .line 1359
    .local v1, "returnedLabel":Lorg/ow2/asmdex/structureCommon/Label;
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->labels:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1360
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->labels:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/ow2/asmdex/structureCommon/Label;

    goto :goto_0

    .line 1362
    :cond_0
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->labels:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    :goto_0
    return-object v1
.end method

.method protected addLabel(I)V
    .locals 3
    .param p1, "offset"    # I

    .line 1341
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->labels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    new-instance v0, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 1343
    .local v0, "label":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureCommon/Label;->setOffset(I)V

    .line 1344
    iget-object v1, p0, Lorg/ow2/asmdex/MethodCodeReader;->labels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    .end local v0    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    :cond_0
    return-void
.end method

.method protected addLabels([Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 3
    .param p1, "labelList"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 1372
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1373
    .local v2, "label":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/MethodCodeReader;->addLabel(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/structureCommon/Label;

    .line 1372
    .end local v2    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1375
    :cond_0
    return-void
.end method

.method protected addNewLocalVariable(ILorg/ow2/asmdex/structureCommon/LocalVariable;)V
    .locals 3
    .param p1, "registerNumber"    # I
    .param p2, "localVariable"    # Lorg/ow2/asmdex/structureCommon/LocalVariable;

    .line 1256
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->localVariableLists:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->localVariableLists:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1258
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/LocalVariable;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1259
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/LocalVariable;>;"
    goto :goto_0

    .line 1260
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1261
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/LocalVariable;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    iget-object v1, p0, Lorg/ow2/asmdex/MethodCodeReader;->localVariableLists:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/LocalVariable;>;"
    :goto_0
    return-void
.end method

.method protected addRestartLabelToLocalVariableLabels(ILorg/ow2/asmdex/structureCommon/Label;)V
    .locals 1
    .param p1, "registerNumber"    # I
    .param p2, "restartLabel"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 1808
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/MethodCodeReader;->getLocalVariable(I)Lorg/ow2/asmdex/structureCommon/LocalVariable;

    move-result-object v0

    .line 1809
    .local v0, "localVariable":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    invoke-virtual {v0, p2}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->addRestart(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 1810
    return-void
.end method

.method protected addTryCatchStructure(Lorg/ow2/asmdex/structureReader/TryCatch;I)V
    .locals 3
    .param p1, "tcs"    # Lorg/ow2/asmdex/structureReader/TryCatch;
    .param p2, "relativeOffset"    # I

    .line 1386
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->listTryCatchStructures:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1387
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureReader/TryCatch;>;"
    if-eqz v0, :cond_0

    .line 1388
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1390
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 1391
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    iget-object v1, p0, Lorg/ow2/asmdex/MethodCodeReader;->listTryCatchStructures:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    :goto_0
    return-void
.end method

.method protected createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;
    .locals 3
    .param p1, "offset"    # I

    .line 1416
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->labels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->labels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ow2/asmdex/structureCommon/Label;

    .local v0, "returnedLabel":Lorg/ow2/asmdex/structureCommon/Label;
    goto :goto_0

    .line 1419
    .end local v0    # "returnedLabel":Lorg/ow2/asmdex/structureCommon/Label;
    :cond_0
    new-instance v0, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 1420
    .restart local v0    # "returnedLabel":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureCommon/Label;->setOffset(I)V

    .line 1421
    iget-object v1, p0, Lorg/ow2/asmdex/MethodCodeReader;->labels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    :goto_0
    return-object v0
.end method

.method protected getLabel(I)Lorg/ow2/asmdex/structureCommon/Label;
    .locals 2
    .param p1, "offset"    # I

    .line 1403
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->labels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method protected getLocalVariable(I)Lorg/ow2/asmdex/structureCommon/LocalVariable;
    .locals 4
    .param p1, "registerNumber"    # I

    .line 1236
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->localVariableLists:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->localVariableLists:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1238
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/LocalVariable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/ow2/asmdex/structureCommon/LocalVariable;

    .line 1239
    .local v0, "localVariable":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    goto :goto_0

    .line 1240
    .end local v0    # "localVariable":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1241
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/LocalVariable;>;"
    new-instance v1, Lorg/ow2/asmdex/structureCommon/LocalVariable;

    invoke-direct {v1, p1}, Lorg/ow2/asmdex/structureCommon/LocalVariable;-><init>(I)V

    .line 1243
    .local v1, "localVariable":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->localVariableLists:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 1247
    .end local v1    # "localVariable":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    .local v0, "localVariable":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    :goto_0
    return-object v0
.end method

.method protected parseAndVisitSwitchCase(Lorg/ow2/asmdex/MethodVisitor;IZ)V
    .locals 11
    .param p1, "methodVisitor"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "fullOpcode"    # I
    .param p3, "findLabelsOnly"    # Z

    .line 1665
    and-int/lit16 v0, p2, 0xff

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1668
    .local v0, "isPackedSwitch":Z
    :goto_0
    iget-object v1, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 1669
    .local v1, "switchOffset":I
    invoke-static {p2}, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->getRegisterA(I)I

    move-result v8

    .line 1670
    .local v8, "regA":I
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-static {v2, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat31T;->getOffset(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)I

    move-result v9

    .line 1672
    .local v9, "structureOffset":I
    if-eqz p3, :cond_3

    .line 1673
    iget v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->instructionsStartOffset:I

    sub-int v2, v9, v2

    .line 1676
    .local v2, "relativeStructureOffset":I
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/MethodCodeReader;->addLabel(I)V

    .line 1680
    iget v3, p0, Lorg/ow2/asmdex/MethodCodeReader;->instructionsStartOffset:I

    sub-int v3, v1, v3

    .line 1681
    .local v3, "relativeSwitchOffset":I
    if-eqz v0, :cond_1

    .line 1682
    invoke-virtual {p0, v3, v9}, Lorg/ow2/asmdex/MethodCodeReader;->parsePackedSwitchFormat(II)Lorg/ow2/asmdex/structureReader/PackedSwitch;

    move-result-object v4

    goto :goto_1

    .line 1683
    :cond_1
    invoke-virtual {p0, v3, v9}, Lorg/ow2/asmdex/MethodCodeReader;->parseSparseSwitchFormat(II)Lorg/ow2/asmdex/structureReader/SparseSwitch;

    move-result-object v4

    :goto_1
    nop

    .line 1685
    .local v4, "cs":Lorg/ow2/asmdex/structureReader/ISwitchCase;
    invoke-interface {v4}, Lorg/ow2/asmdex/structureReader/ISwitchCase;->getSwitchLabels()[Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v5

    .line 1686
    .local v5, "switchLabels":[Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {p0, v5}, Lorg/ow2/asmdex/MethodCodeReader;->addLabels([Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 1687
    invoke-interface {v4}, Lorg/ow2/asmdex/structureReader/ISwitchCase;->getDefaultLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/ow2/asmdex/MethodCodeReader;->addLabel(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/structureCommon/Label;

    .line 1688
    if-eqz v0, :cond_2

    .line 1689
    iget-object v6, p0, Lorg/ow2/asmdex/MethodCodeReader;->packedSwitchStructures:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v10, v4

    check-cast v10, Lorg/ow2/asmdex/structureReader/PackedSwitch;

    invoke-virtual {v6, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1691
    :cond_2
    iget-object v6, p0, Lorg/ow2/asmdex/MethodCodeReader;->sparseSwitchStructures:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v10, v4

    check-cast v10, Lorg/ow2/asmdex/structureReader/SparseSwitch;

    invoke-virtual {v6, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    .end local v2    # "relativeStructureOffset":I
    .end local v3    # "relativeSwitchOffset":I
    .end local v4    # "cs":Lorg/ow2/asmdex/structureReader/ISwitchCase;
    .end local v5    # "switchLabels":[Lorg/ow2/asmdex/structureCommon/Label;
    :goto_2
    goto :goto_3

    .line 1696
    :cond_3
    if-eqz v0, :cond_4

    .line 1697
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->packedSwitchStructures:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/ow2/asmdex/structureReader/PackedSwitch;

    .line 1698
    .local v10, "pss":Lorg/ow2/asmdex/structureReader/PackedSwitch;
    invoke-virtual {v10}, Lorg/ow2/asmdex/structureReader/PackedSwitch;->getValueMin()I

    move-result v4

    invoke-virtual {v10}, Lorg/ow2/asmdex/structureReader/PackedSwitch;->getValueMax()I

    move-result v5

    .line 1699
    invoke-virtual {v10}, Lorg/ow2/asmdex/structureReader/PackedSwitch;->getDefaultLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v6

    invoke-virtual {v10}, Lorg/ow2/asmdex/structureReader/PackedSwitch;->getSwitchLabels()[Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v7

    .line 1698
    move-object v2, p1

    move v3, v8

    invoke-virtual/range {v2 .. v7}, Lorg/ow2/asmdex/MethodVisitor;->visitTableSwitchInsn(IIILorg/ow2/asmdex/structureCommon/Label;[Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 1700
    .end local v10    # "pss":Lorg/ow2/asmdex/structureReader/PackedSwitch;
    goto :goto_3

    .line 1701
    :cond_4
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->sparseSwitchStructures:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureReader/SparseSwitch;

    .line 1702
    .local v2, "sss":Lorg/ow2/asmdex/structureReader/SparseSwitch;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/SparseSwitch;->getDefaultLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v3

    .line 1703
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/SparseSwitch;->getKeys()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/SparseSwitch;->getSwitchLabels()[Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v5

    .line 1702
    invoke-virtual {p1, v8, v3, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitLookupSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;[I[Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 1706
    .end local v2    # "sss":Lorg/ow2/asmdex/structureReader/SparseSwitch;
    :goto_3
    return-void
.end method

.method protected parseDebugInformationItem(Lorg/ow2/asmdex/MethodVisitor;IZ)V
    .locals 9
    .param p1, "methodVisitor"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "currentBytecodeOffset"    # I
    .param p3, "findLabelsOnly"    # Z

    .line 1066
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v0

    .line 1067
    .local v0, "saveReaderPosition":I
    iget-object v1, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    iget v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugCurrentOpcodeOffset:I

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1068
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/ow2/asmdex/MethodCodeReader;->newDebugLineEmitted:Z

    .line 1072
    const/4 v2, 0x1

    .line 1073
    .local v2, "debugParsingContinue":Z
    :goto_0
    if-eqz v2, :cond_9

    .line 1074
    iget-object v3, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v3

    .line 1075
    .local v3, "debugOpcode":I
    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 1155
    add-int/lit8 v5, v3, -0xa

    .line 1156
    .local v5, "adjustedOpcode":I
    iget v6, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugAddress:I

    div-int/lit8 v7, v5, 0xf

    add-int/2addr v6, v7

    .line 1159
    .local v6, "nextDebugAddress":I
    mul-int/lit8 v7, v6, 0x2

    if-eq p2, v7, :cond_6

    .line 1160
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1142
    .end local v5    # "adjustedOpcode":I
    .end local v6    # "nextDebugAddress":I
    :pswitch_0
    iget-object v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128_p1()I

    move-result v4

    .line 1143
    .local v4, "nameIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    .line 1144
    iget-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugSourceFile:Ljava/lang/String;

    goto/16 :goto_1

    .line 1139
    .end local v4    # "nameIndex":I
    :pswitch_1
    iput-boolean v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugEpilogueBegin:Z

    .line 1140
    goto/16 :goto_1

    .line 1136
    :pswitch_2
    iput-boolean v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugPrologueEnd:Z

    .line 1137
    goto/16 :goto_1

    .line 1122
    :pswitch_3
    iget v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugAddress:I

    mul-int/lit8 v4, v4, 0x2

    if-eq v4, p2, :cond_0

    .line 1123
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1127
    :cond_0
    iget-object v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v4

    .line 1128
    .local v4, "registerNumber":I
    if-eqz p3, :cond_1

    .line 1129
    iget v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugAddress:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v5}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v5

    .line 1130
    .local v5, "restartLabel":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {p0, v4, v5}, Lorg/ow2/asmdex/MethodCodeReader;->addRestartLabelToLocalVariableLabels(ILorg/ow2/asmdex/structureCommon/Label;)V

    .line 1133
    .end local v4    # "registerNumber":I
    .end local v5    # "restartLabel":Lorg/ow2/asmdex/structureCommon/Label;
    :cond_1
    goto :goto_1

    .line 1107
    :pswitch_4
    iget v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugAddress:I

    mul-int/lit8 v4, v4, 0x2

    if-eq v4, p2, :cond_2

    .line 1108
    const/4 v2, 0x0

    goto :goto_1

    .line 1112
    :cond_2
    iget-object v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v4

    .line 1113
    .restart local v4    # "registerNumber":I
    if-eqz p3, :cond_3

    .line 1114
    iget v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugAddress:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v5}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v5

    .line 1115
    .local v5, "endLabel":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {p0, v4, v5}, Lorg/ow2/asmdex/MethodCodeReader;->addEndLabelToLocalVariableLabels(ILorg/ow2/asmdex/structureCommon/Label;)V

    .line 1118
    .end local v4    # "registerNumber":I
    .end local v5    # "endLabel":Lorg/ow2/asmdex/structureCommon/Label;
    :cond_3
    goto :goto_1

    .line 1097
    :pswitch_5
    iget v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugAddress:I

    mul-int/lit8 v5, v5, 0x2

    if-eq v5, p2, :cond_4

    .line 1098
    const/4 v2, 0x0

    goto :goto_1

    .line 1100
    :cond_4
    invoke-virtual {p0, p1, p2, v4, p3}, Lorg/ow2/asmdex/MethodCodeReader;->parseDebugStartLocalVariable(Lorg/ow2/asmdex/MethodVisitor;IZZ)V

    .line 1103
    goto :goto_1

    .line 1087
    :pswitch_6
    iget v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugAddress:I

    mul-int/lit8 v4, v4, 0x2

    if-eq v4, p2, :cond_5

    .line 1088
    const/4 v2, 0x0

    goto :goto_1

    .line 1090
    :cond_5
    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/ow2/asmdex/MethodCodeReader;->parseDebugStartLocalVariable(Lorg/ow2/asmdex/MethodVisitor;IZZ)V

    .line 1093
    goto :goto_1

    .line 1083
    :pswitch_7
    iget v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugLine:I

    iget-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sleb128()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugLine:I

    .line 1084
    goto :goto_1

    .line 1080
    :pswitch_8
    iget v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugAddress:I

    iget-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugAddress:I

    .line 1081
    goto :goto_1

    .line 1077
    :pswitch_9
    const/4 v2, 0x0

    .line 1078
    goto :goto_1

    .line 1162
    .local v5, "adjustedOpcode":I
    .restart local v6    # "nextDebugAddress":I
    :cond_6
    iput-boolean v1, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugEpilogueBegin:Z

    .line 1163
    iput-boolean v1, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugPrologueEnd:Z

    .line 1165
    iget v7, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugLine:I

    rem-int/lit8 v8, v5, 0xf

    add-int/lit8 v8, v8, -0x4

    add-int/2addr v7, v8

    iput v7, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugLine:I

    .line 1168
    iput-boolean v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->newDebugLineEmitted:Z

    .line 1169
    iput v7, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugEmittedLine:I

    .line 1170
    iput v6, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugAddress:I

    .line 1174
    mul-int/lit8 v4, v6, 0x2

    invoke-virtual {p0, v4}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    .line 1181
    .end local v5    # "adjustedOpcode":I
    .end local v6    # "nextDebugAddress":I
    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    .line 1182
    iget-object v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v4

    iput v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->debugCurrentOpcodeOffset:I

    .line 1184
    .end local v3    # "debugOpcode":I
    :cond_8
    goto/16 :goto_0

    .line 1186
    :cond_9
    iget-object v1, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1187
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseDebugStartLocalVariable(Lorg/ow2/asmdex/MethodVisitor;IZZ)V
    .locals 16
    .param p1, "methodVisitor"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "currentBytecodeOffset"    # I
    .param p3, "isLocalExtended"    # Z
    .param p4, "findLabelsOnly"    # Z

    .line 1200
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v1

    .line 1201
    .local v1, "registerNumber":I
    iget-object v2, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128_p1()I

    move-result v10

    .line 1202
    .local v10, "variableNameIndex":I
    iget-object v2, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128_p1()I

    move-result v11

    .line 1203
    .local v11, "variableTypeIndex":I
    const/4 v2, 0x0

    .line 1204
    .local v2, "variableSignatureIndex":I
    if-eqz p3, :cond_0

    .line 1205
    iget-object v3, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128_p1()I

    move-result v2

    move v12, v2

    goto :goto_0

    .line 1204
    :cond_0
    move v12, v2

    .line 1207
    .end local v2    # "variableSignatureIndex":I
    .local v12, "variableSignatureIndex":I
    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v10, v2, :cond_1

    .line 1208
    move-object v4, v3

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v4, v10}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v4

    .line 1209
    .local v4, "variableName":Ljava/lang/String;
    :goto_1
    if-ne v11, v2, :cond_2

    .line 1210
    move-object v5, v3

    goto :goto_2

    :cond_2
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5, v11}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v5

    .line 1211
    .local v5, "variableType":Ljava/lang/String;
    :goto_2
    if-eqz p3, :cond_4

    .line 1212
    if-ne v12, v2, :cond_3

    .line 1213
    move-object v6, v3

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, v12}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_3

    .line 1214
    :cond_4
    move-object v6, v3

    :goto_3
    nop

    .line 1216
    .local v6, "variableSignature":Ljava/lang/String;
    move/from16 v13, p2

    invoke-virtual {v0, v13}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v14

    .line 1221
    .local v14, "startLabel":Lorg/ow2/asmdex/structureCommon/Label;
    if-eqz p4, :cond_5

    .line 1222
    new-instance v15, Lorg/ow2/asmdex/structureCommon/LocalVariable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v15

    move v3, v1

    move-object v7, v14

    invoke-direct/range {v2 .. v9}, Lorg/ow2/asmdex/structureCommon/LocalVariable;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;)V

    .line 1224
    .local v2, "localVariable":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/MethodCodeReader;->addNewLocalVariable(ILorg/ow2/asmdex/structureCommon/LocalVariable;)V

    .line 1226
    .end local v2    # "localVariable":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    :cond_5
    return-void
.end method

.method protected parsePackedSwitchFormat(II)Lorg/ow2/asmdex/structureReader/PackedSwitch;
    .locals 8
    .param p1, "relativeSwitchOffset"    # I
    .param p2, "packedSwitchOffset"    # I

    .line 1721
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v0

    .line 1723
    .local v0, "savedReaderPosition":I
    new-instance v1, Lorg/ow2/asmdex/structureReader/PackedSwitch;

    invoke-direct {v1}, Lorg/ow2/asmdex/structureReader/PackedSwitch;-><init>()V

    .line 1724
    .local v1, "pss":Lorg/ow2/asmdex/structureReader/PackedSwitch;
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1726
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->skipShort()V

    .line 1727
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v2

    .line 1728
    .local v2, "nbEntries":I
    iget-object v3, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sint()I

    move-result v3

    .line 1731
    .local v3, "valueMin":I
    new-array v4, v2, [Lorg/ow2/asmdex/structureCommon/Label;

    .line 1732
    .local v4, "switchLabels":[Lorg/ow2/asmdex/structureCommon/Label;
    const/4 v5, 0x0

    .local v5, "entryIndex":I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 1734
    iget-object v6, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sint()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p1

    .line 1735
    .local v6, "labelOffset":I
    invoke-virtual {p0, v6}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v7

    .line 1736
    .local v7, "label":Lorg/ow2/asmdex/structureCommon/Label;
    aput-object v7, v4, v5

    .line 1732
    .end local v6    # "labelOffset":I
    .end local v7    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1739
    .end local v5    # "entryIndex":I
    :cond_0
    invoke-virtual {v1, v4}, Lorg/ow2/asmdex/structureReader/PackedSwitch;->setSwitchLabels([Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 1741
    add-int/lit8 v5, p1, 0x6

    invoke-virtual {p0, v5}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/ow2/asmdex/structureReader/PackedSwitch;->setDefaultLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 1742
    invoke-virtual {v1, v3}, Lorg/ow2/asmdex/structureReader/PackedSwitch;->setValueMin(I)V

    .line 1743
    add-int v5, v3, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Lorg/ow2/asmdex/structureReader/PackedSwitch;->setValueMax(I)V

    .line 1744
    iget-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1745
    return-object v1
.end method

.method protected parseSparseSwitchFormat(II)Lorg/ow2/asmdex/structureReader/SparseSwitch;
    .locals 8
    .param p1, "relativeSwitchOffset"    # I
    .param p2, "sparseSwitchOffset"    # I

    .line 1760
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v0

    .line 1762
    .local v0, "savedReaderPosition":I
    new-instance v1, Lorg/ow2/asmdex/structureReader/SparseSwitch;

    invoke-direct {v1}, Lorg/ow2/asmdex/structureReader/SparseSwitch;-><init>()V

    .line 1763
    .local v1, "sss":Lorg/ow2/asmdex/structureReader/SparseSwitch;
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1765
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->skipShort()V

    .line 1766
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v2

    .line 1768
    .local v2, "nbEntries":I
    new-array v3, v2, [I

    .line 1769
    .local v3, "keys":[I
    const/4 v4, 0x0

    .local v4, "entryIndex":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1770
    iget-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sint()I

    move-result v5

    aput v5, v3, v4

    .line 1769
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1774
    .end local v4    # "entryIndex":I
    :cond_0
    new-array v4, v2, [Lorg/ow2/asmdex/structureCommon/Label;

    .line 1775
    .local v4, "switchLabels":[Lorg/ow2/asmdex/structureCommon/Label;
    const/4 v5, 0x0

    .local v5, "entryIndex":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 1777
    iget-object v6, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sint()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p1

    .line 1778
    .local v6, "labelOffset":I
    invoke-virtual {p0, v6}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v7

    .line 1779
    .local v7, "label":Lorg/ow2/asmdex/structureCommon/Label;
    aput-object v7, v4, v5

    .line 1775
    .end local v6    # "labelOffset":I
    .end local v7    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1782
    .end local v5    # "entryIndex":I
    :cond_1
    invoke-virtual {v1, v4}, Lorg/ow2/asmdex/structureReader/SparseSwitch;->setSwitchLabels([Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 1783
    invoke-virtual {v1, v3}, Lorg/ow2/asmdex/structureReader/SparseSwitch;->setKeys([I)V

    .line 1786
    add-int/lit8 v5, p1, 0x6

    invoke-virtual {p0, v5}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/ow2/asmdex/structureReader/SparseSwitch;->setDefaultLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 1788
    iget-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1789
    return-object v1
.end method

.method protected parseTryItemsFormat(II)V
    .locals 17
    .param p1, "tryItemOffset"    # I
    .param p2, "triesSize"    # I

    .line 1276
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1278
    const/4 v3, 0x0

    .local v3, "tryItemIndex":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1279
    iget-object v4, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    .line 1280
    .local v4, "startAddress":I
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    .line 1281
    .local v5, "instructionCount":I
    iget-object v6, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v6

    .line 1286
    .local v6, "handlerOffset":I
    iget-object v7, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v7

    .line 1288
    .local v7, "saveReaderPositionInTryItem":I
    iget-object v8, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    mul-int/lit8 v9, v2, 0x8

    add-int/2addr v9, v1

    add-int/2addr v9, v6

    invoke-virtual {v8, v9}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1291
    iget-object v8, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v8}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sleb128()I

    move-result v8

    .line 1292
    .local v8, "nbCatchTypesRead":I
    if-gtz v8, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 1293
    .local v9, "isCatchAll":Z
    :goto_1
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1298
    .local v10, "nbCatchTypes":I
    const/4 v11, 0x0

    .local v11, "typeAddrPairIndex":I
    :goto_2
    if-ge v11, v10, :cond_1

    .line 1299
    iget-object v12, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v12}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v12

    .line 1300
    .local v12, "typeIndex":I
    iget-object v13, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v13}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    .line 1303
    .local v13, "addr":I
    invoke-virtual {v0, v4}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v14

    .line 1304
    .local v14, "startLabel":Lorg/ow2/asmdex/structureCommon/Label;
    add-int v15, v4, v5

    invoke-virtual {v0, v15}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v15

    .line 1305
    .local v15, "endLabel":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v0, v13}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v1

    .line 1307
    .local v1, "handlerLabel":Lorg/ow2/asmdex/structureCommon/Label;
    new-instance v2, Lorg/ow2/asmdex/structureReader/TryCatch;

    move/from16 v16, v6

    .end local v6    # "handlerOffset":I
    .local v16, "handlerOffset":I
    iget-object v6, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    .line 1308
    invoke-virtual {v6, v12}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v14, v15, v1, v6}, Lorg/ow2/asmdex/structureReader/TryCatch;-><init>(Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;)V

    .line 1314
    .local v2, "tcs":Lorg/ow2/asmdex/structureReader/TryCatch;
    invoke-virtual {v0, v2, v4}, Lorg/ow2/asmdex/MethodCodeReader;->addTryCatchStructure(Lorg/ow2/asmdex/structureReader/TryCatch;I)V

    .line 1298
    .end local v1    # "handlerLabel":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v2    # "tcs":Lorg/ow2/asmdex/structureReader/TryCatch;
    .end local v12    # "typeIndex":I
    .end local v13    # "addr":I
    .end local v14    # "startLabel":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v15    # "endLabel":Lorg/ow2/asmdex/structureCommon/Label;
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, v16

    goto :goto_2

    .end local v16    # "handlerOffset":I
    .restart local v6    # "handlerOffset":I
    :cond_1
    move/from16 v16, v6

    .line 1318
    .end local v6    # "handlerOffset":I
    .end local v11    # "typeAddrPairIndex":I
    .restart local v16    # "handlerOffset":I
    if-eqz v9, :cond_2

    .line 1319
    iget-object v1, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 1321
    .local v1, "catchAllAddress":I
    invoke-virtual {v0, v4}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v2

    .line 1322
    .local v2, "startLabel":Lorg/ow2/asmdex/structureCommon/Label;
    add-int v6, v4, v5

    invoke-virtual {v0, v6}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v6

    .line 1323
    .local v6, "endLabel":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/MethodCodeReader;->createAndAddLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v11

    .line 1325
    .local v11, "handlerLabel":Lorg/ow2/asmdex/structureCommon/Label;
    new-instance v12, Lorg/ow2/asmdex/structureReader/TryCatch;

    const/4 v13, 0x0

    invoke-direct {v12, v2, v6, v11, v13}, Lorg/ow2/asmdex/structureReader/TryCatch;-><init>(Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;)V

    .line 1327
    .local v12, "tcs":Lorg/ow2/asmdex/structureReader/TryCatch;
    invoke-virtual {v0, v12, v4}, Lorg/ow2/asmdex/MethodCodeReader;->addTryCatchStructure(Lorg/ow2/asmdex/structureReader/TryCatch;I)V

    .line 1330
    .end local v1    # "catchAllAddress":I
    .end local v2    # "startLabel":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v6    # "endLabel":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v11    # "handlerLabel":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v12    # "tcs":Lorg/ow2/asmdex/structureReader/TryCatch;
    :cond_2
    iget-object v1, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1278
    .end local v4    # "startAddress":I
    .end local v5    # "instructionCount":I
    .end local v7    # "saveReaderPositionInTryItem":I
    .end local v8    # "nbCatchTypesRead":I
    .end local v9    # "isCatchAll":Z
    .end local v10    # "nbCatchTypes":I
    .end local v16    # "handlerOffset":I
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_0

    .line 1332
    .end local v3    # "tryItemIndex":I
    :cond_3
    return-void
.end method

.method protected visitFieldInsn(Lorg/ow2/asmdex/MethodVisitor;IIII)V
    .locals 16
    .param p1, "methodVisitor"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "opcode"    # I
    .param p3, "registerA"    # I
    .param p4, "registerB"    # I
    .param p5, "index"    # I

    .line 1515
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v1

    .line 1517
    .local v1, "savePosReader":I
    iget-object v2, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    move/from16 v3, p5

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getOffsetFieldIdItem(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1518
    iget-object v2, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v2

    .line 1519
    .local v2, "classIndex":I
    iget-object v4, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v4

    .line 1520
    .local v4, "typeIndex":I
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v5

    .line 1521
    .local v5, "nameIndex":I
    iget-object v6, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v6

    .line 1522
    .local v6, "fieldOwner":Ljava/lang/String;
    iget-object v7, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v14

    .line 1523
    .local v14, "fieldDescriptor":Ljava/lang/String;
    iget-object v7, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7, v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v15

    .line 1525
    .local v15, "fieldName":Ljava/lang/String;
    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object v9, v6

    move-object v10, v15

    move-object v11, v14

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual/range {v7 .. v13}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1526
    iget-object v7, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1527
    return-void
.end method

.method protected visitFillArrayData(Lorg/ow2/asmdex/MethodVisitor;II)V
    .locals 8
    .param p1, "methodVisitor"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "register"    # I
    .param p3, "offset"    # I

    .line 1550
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v0

    .line 1553
    .local v0, "saveReaderPosition":I
    const/4 v1, -0x1

    .line 1554
    .local v1, "type":I
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->registerArrayType:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1555
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->registerArrayType:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1559
    :cond_0
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, p3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1561
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->skipShort()V

    .line 1562
    const/4 v2, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v2, :cond_5

    .line 1563
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sshort()S

    move-result v2

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    const/16 v6, 0x8

    if-eq v2, v6, :cond_1

    .line 1575
    goto :goto_0

    .line 1574
    :cond_1
    const/4 v1, 0x6

    .line 1575
    :goto_0
    goto :goto_1

    .line 1571
    :cond_2
    const/4 v1, 0x4

    .line 1572
    goto :goto_1

    .line 1568
    :cond_3
    const/4 v1, 0x2

    .line 1569
    goto :goto_1

    .line 1565
    :cond_4
    const/4 v1, 0x0

    .line 1566
    goto :goto_1

    .line 1579
    :cond_5
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->skipShort()V

    .line 1581
    :goto_1
    iget-object v2, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v2

    .line 1585
    .local v2, "elementSize":I
    if-eqz v1, :cond_15

    const/4 v6, 0x6

    const/4 v7, 0x7

    if-eq v1, v6, :cond_13

    const/16 v6, 0x1f

    if-eq v1, v6, :cond_10

    if-eq v1, v4, :cond_e

    const/4 v4, 0x3

    if-eq v1, v4, :cond_c

    if-eq v1, v3, :cond_a

    const/16 v3, 0x10

    if-eq v1, v3, :cond_8

    const/16 v3, 0x11

    if-ne v1, v3, :cond_7

    .line 1622
    new-array v3, v2, [Ljava/lang/Double;

    .line 1623
    .local v3, "elements":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_6

    .line 1624
    iget-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5, v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1623
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1626
    .end local v4    # "i":I
    :cond_6
    goto/16 :goto_b

    .line 1643
    .end local v3    # "elements":[Ljava/lang/Object;
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") can\'t be encoded in an Array of primitive."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1615
    :cond_8
    new-array v3, v2, [Ljava/lang/Float;

    .line 1616
    .restart local v3    # "elements":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v2, :cond_9

    .line 1617
    iget-object v6, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1616
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1619
    .end local v5    # "i":I
    :cond_9
    goto/16 :goto_b

    .line 1608
    .end local v3    # "elements":[Ljava/lang/Object;
    :cond_a
    new-array v3, v2, [Ljava/lang/Integer;

    .line 1609
    .restart local v3    # "elements":[Ljava/lang/Object;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v2, :cond_b

    .line 1610
    iget-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sint()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1609
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1612
    .end local v4    # "i":I
    :cond_b
    goto/16 :goto_b

    .line 1601
    .end local v3    # "elements":[Ljava/lang/Object;
    :cond_c
    new-array v3, v2, [Ljava/lang/Character;

    .line 1602
    .restart local v3    # "elements":[Ljava/lang/Object;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    if-ge v4, v2, :cond_d

    .line 1603
    iget-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sshort()S

    move-result v5

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1602
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1605
    .end local v4    # "i":I
    :cond_d
    goto :goto_b

    .line 1594
    .end local v3    # "elements":[Ljava/lang/Object;
    :cond_e
    new-array v3, v2, [Ljava/lang/Short;

    .line 1595
    .restart local v3    # "elements":[Ljava/lang/Object;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    if-ge v4, v2, :cond_f

    .line 1596
    iget-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sshort()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1595
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1598
    .end local v4    # "i":I
    :cond_f
    goto :goto_b

    .line 1636
    .end local v3    # "elements":[Ljava/lang/Object;
    :cond_10
    new-array v3, v2, [Ljava/lang/Boolean;

    .line 1637
    .restart local v3    # "elements":[Ljava/lang/Object;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    if-ge v4, v2, :cond_12

    .line 1638
    iget-object v6, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sbyte()B

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x1

    goto :goto_8

    :cond_11
    const/4 v6, 0x0

    :goto_8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1637
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1640
    .end local v4    # "i":I
    :cond_12
    goto :goto_b

    .line 1629
    .end local v3    # "elements":[Ljava/lang/Object;
    :cond_13
    new-array v3, v2, [Ljava/lang/Long;

    .line 1630
    .restart local v3    # "elements":[Ljava/lang/Object;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_9
    if-ge v4, v2, :cond_14

    .line 1631
    iget-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5, v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1630
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1633
    .end local v4    # "i":I
    :cond_14
    goto :goto_b

    .line 1587
    .end local v3    # "elements":[Ljava/lang/Object;
    :cond_15
    new-array v3, v2, [Ljava/lang/Byte;

    .line 1588
    .restart local v3    # "elements":[Ljava/lang/Object;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_a
    if-ge v4, v2, :cond_16

    .line 1589
    iget-object v5, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sbyte()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1588
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1591
    .end local v4    # "i":I
    :cond_16
    nop

    .line 1646
    :goto_b
    invoke-virtual {p1, p2, v3}, Lorg/ow2/asmdex/MethodVisitor;->visitFillArrayDataInsn(I[Ljava/lang/Object;)V

    .line 1648
    iget-object v4, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v4, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1649
    return-void
.end method

.method protected visitJumpInsn(IIIILorg/ow2/asmdex/MethodVisitor;Z)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "offset"    # I
    .param p3, "firstRegister"    # I
    .param p4, "secondRegister"    # I
    .param p5, "methodVisitor"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p6, "findLabelsOnly"    # Z

    .line 1495
    iget v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->instructionsStartOffset:I

    sub-int v0, p2, v0

    .line 1496
    .local v0, "relativeOffset":I
    if-eqz p6, :cond_0

    .line 1498
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/MethodCodeReader;->addLabel(I)V

    goto :goto_0

    .line 1500
    :cond_0
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/MethodCodeReader;->getLabel(I)Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v1

    invoke-virtual {p5, p1, v1, p3, p4}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 1502
    :goto_0
    return-void
.end method

.method public visitMethodCode()V
    .locals 17

    .line 214
    move-object/from16 v0, p0

    iget v1, v0, Lorg/ow2/asmdex/MethodCodeReader;->codeOffset:I

    if-eqz v1, :cond_7

    .line 216
    iget-object v2, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 218
    iget-object v1, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v1

    .line 220
    .local v1, "registerSize":I
    iget-object v2, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->skipShort()V

    .line 221
    iget-object v2, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->skipShort()V

    .line 222
    iget-object v2, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v2

    .line 223
    .local v2, "triesSize":I
    iget-object v3, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v3

    .line 224
    .local v3, "debugInfoOffset":I
    iget-object v4, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v4

    .line 226
    .local v4, "instructionsSizeInUShort":I
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v5

    iput v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->instructionsStartOffset:I

    .line 227
    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    iput v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->instructionsEndOffset:I

    .line 229
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->labels:Ljava/util/HashMap;

    .line 230
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->packedSwitchStructures:Ljava/util/HashMap;

    .line 231
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->sparseSwitchStructures:Ljava/util/HashMap;

    .line 232
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->listTryCatchStructures:Ljava/util/HashMap;

    .line 233
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->localVariableLists:Ljava/util/HashMap;

    .line 236
    iget-boolean v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->skipDebug:Z

    if-nez v5, :cond_3

    if-eqz v3, :cond_3

    .line 239
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5, v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 241
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v5

    iput v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->debugLineAtInitialization:I

    .line 242
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v5

    .line 245
    .local v5, "debugParametersSize":I
    if-lez v5, :cond_2

    .line 246
    new-array v6, v5, [Ljava/lang/String;

    .line 247
    .local v6, "parameters":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "indexParameter":I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 248
    iget-object v8, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v8}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128_p1()I

    move-result v8

    .line 250
    .local v8, "stringIndex":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 251
    const-string v9, ""

    .local v9, "paramName":Ljava/lang/String;
    goto :goto_1

    .line 253
    .end local v9    # "paramName":Ljava/lang/String;
    :cond_0
    iget-object v9, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v9, v8}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v9

    .line 255
    .restart local v9    # "paramName":Ljava/lang/String;
    :goto_1
    aput-object v9, v6, v7

    .line 247
    .end local v8    # "stringIndex":I
    .end local v9    # "paramName":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 257
    .end local v7    # "indexParameter":I
    :cond_1
    iget-object v7, v0, Lorg/ow2/asmdex/MethodCodeReader;->methodVisitor:Lorg/ow2/asmdex/MethodVisitor;

    invoke-virtual {v7, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitParameters([Ljava/lang/String;)V

    .line 260
    .end local v6    # "parameters":[Ljava/lang/String;
    :cond_2
    iget-object v6, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v6

    iput v6, v0, Lorg/ow2/asmdex/MethodCodeReader;->debugCurrentOpcodeOffsetAtInitialization:I

    .line 263
    .end local v5    # "debugParametersSize":I
    :cond_3
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->methodVisitor:Lorg/ow2/asmdex/MethodVisitor;

    invoke-virtual {v5}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 266
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->methodVisitor:Lorg/ow2/asmdex/MethodVisitor;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 270
    if-eqz v2, :cond_5

    .line 271
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    iget v7, v0, Lorg/ow2/asmdex/MethodCodeReader;->instructionsEndOffset:I

    invoke-virtual {v5, v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 273
    rem-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_4

    .line 274
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    .line 276
    :cond_4
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v5

    invoke-virtual {v0, v5, v2}, Lorg/ow2/asmdex/MethodCodeReader;->parseTryItemsFormat(II)V

    .line 282
    :cond_5
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->methodVisitor:Lorg/ow2/asmdex/MethodVisitor;

    iget-boolean v7, v0, Lorg/ow2/asmdex/MethodCodeReader;->skipDebug:Z

    const/4 v8, 0x1

    invoke-direct {v0, v5, v7, v8}, Lorg/ow2/asmdex/MethodCodeReader;->parseCodeInstructions(Lorg/ow2/asmdex/MethodVisitor;ZZ)V

    .line 284
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->methodVisitor:Lorg/ow2/asmdex/MethodVisitor;

    iget-boolean v7, v0, Lorg/ow2/asmdex/MethodCodeReader;->skipDebug:Z

    invoke-direct {v0, v5, v7, v6}, Lorg/ow2/asmdex/MethodCodeReader;->parseCodeInstructions(Lorg/ow2/asmdex/MethodVisitor;ZZ)V

    .line 287
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->localVariableLists:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 288
    .local v6, "localVariableList":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/LocalVariable;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/ow2/asmdex/structureCommon/LocalVariable;

    .line 289
    .local v8, "localVariable":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    iget-object v9, v0, Lorg/ow2/asmdex/MethodCodeReader;->methodVisitor:Lorg/ow2/asmdex/MethodVisitor;

    invoke-virtual {v8}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getType()Ljava/lang/String;

    move-result-object v11

    .line 290
    invoke-virtual {v8}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getSignature()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getStart()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v13

    .line 291
    invoke-virtual {v8}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getEnds()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v8}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getRestarts()Ljava/util/List;

    move-result-object v15

    .line 292
    invoke-virtual {v8}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->getRegister()I

    move-result v16

    .line 289
    invoke-virtual/range {v9 .. v16}, Lorg/ow2/asmdex/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;I)V

    .line 293
    .end local v8    # "localVariable":Lorg/ow2/asmdex/structureCommon/LocalVariable;
    goto :goto_3

    .line 294
    .end local v6    # "localVariableList":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/LocalVariable;>;"
    :cond_6
    goto :goto_2

    .line 298
    .end local v1    # "registerSize":I
    .end local v2    # "triesSize":I
    .end local v3    # "debugInfoOffset":I
    .end local v4    # "instructionsSizeInUShort":I
    :cond_7
    return-void
.end method

.method protected visitMethodInstruction(Lorg/ow2/asmdex/MethodVisitor;II[I)V
    .locals 15
    .param p1, "methodVisitor"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "opcodeByte"    # I
    .param p3, "methodIndex"    # I
    .param p4, "registers"    # [I

    .line 1469
    move-object v0, p0

    iget-object v1, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v1

    .line 1471
    .local v1, "savePosReader":I
    iget-object v2, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getOffsetMethodIdItem(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1472
    iget-object v2, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v2

    .line 1473
    .local v2, "classIndex":I
    iget-object v4, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v4

    .line 1474
    .local v4, "protoIndex":I
    iget-object v5, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v5

    .line 1475
    .local v5, "nameIndex":I
    iget-object v6, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v6

    .line 1476
    .local v6, "methodOwner":Ljava/lang/String;
    iget-object v7, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getDescriptorFromPrototypeIndex(I)Ljava/lang/String;

    move-result-object v13

    .line 1477
    .local v13, "methodDescriptor":Ljava/lang/String;
    iget-object v7, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7, v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v14

    .line 1479
    .local v14, "methodName":Ljava/lang/String;
    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object v9, v6

    move-object v10, v14

    move-object v11, v13

    move-object/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 1480
    iget-object v7, v0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1481
    return-void
.end method

.method protected visitMultiANewArrayInsn(Lorg/ow2/asmdex/MethodVisitor;I[I)V
    .locals 1
    .param p1, "methodVisitor"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "index"    # I
    .param p3, "registers"    # [I

    .line 1537
    iget-object v0, p0, Lorg/ow2/asmdex/MethodCodeReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 1538
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {p1, v0, p3}, Lorg/ow2/asmdex/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;[I)V

    .line 1539
    return-void
.end method

.method protected visitVarInsn(ILorg/ow2/asmdex/MethodVisitor;II)V
    .locals 0
    .param p1, "opcodeByte"    # I
    .param p2, "methodVisitor"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p3, "destinationRegister"    # I
    .param p4, "var"    # I

    .line 1438
    invoke-virtual {p2, p1, p3, p4}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 1439
    return-void
.end method

.method protected visitVarInsn(ILorg/ow2/asmdex/MethodVisitor;IJ)V
    .locals 0
    .param p1, "opcodeByte"    # I
    .param p2, "methodVisitor"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p3, "destinationRegister"    # I
    .param p4, "var"    # J

    .line 1451
    invoke-virtual {p2, p1, p3, p4, p5}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(IIJ)V

    .line 1452
    return-void
.end method
