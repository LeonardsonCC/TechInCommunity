.class public Lcom/tns/binding/tests/DumpObject;
.super Ljava/lang/Object;
.source "DumpObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Lorg/ow2/asmdex/ApplicationWriter;)V
    .locals 47
    .param p0, "aw"    # Lorg/ow2/asmdex/ApplicationWriter;

    .line 18
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const-string v7, "Lcom/tns/NativeScriptHashCodeProvider;"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v2, 0x1

    const-string v3, "Lcom/tns/java/lang/Object;"

    const/4 v4, 0x0

    const-string v5, "Ljava/lang/Object;"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/ow2/asmdex/ApplicationWriter;->visitClass(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/ClassVisitor;

    move-result-object v1

    .line 19
    .local v1, "cv":Lorg/ow2/asmdex/ClassVisitor;
    new-array v15, v0, [Ljava/lang/String;

    aput-object v7, v15, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "Lcom/tns/java/lang/Object;"

    const/4 v13, 0x0

    const-string v14, "Ljava/lang/Object;"

    move-object v9, v1

    invoke-virtual/range {v9 .. v15}, Lorg/ow2/asmdex/ClassVisitor;->visit(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 20
    const-string v2, "Object.java"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/ow2/asmdex/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v10, 0x2

    const-string v11, "__ctorOverridden"

    const-string v12, "Z"

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;

    move-result-object v2

    .line 23
    .local v2, "fv":Lorg/ow2/asmdex/FieldVisitor;
    invoke-virtual {v2}, Lorg/ow2/asmdex/FieldVisitor;->visitEnd()V

    .line 26
    const-string v11, "__ho0"

    const-string v12, "B"

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lorg/ow2/asmdex/FieldVisitor;->visitEnd()V

    .line 30
    const-string v11, "__ho1"

    const-string v12, "B"

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lorg/ow2/asmdex/FieldVisitor;->visitEnd()V

    .line 34
    const-string v11, "__initialized"

    const-string v12, "Z"

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lorg/ow2/asmdex/FieldVisitor;->visitEnd()V

    .line 37
    const-string v3, "Lcom/tns/Runtime;"

    .line 39
    .local v3, "runtimeClass":Ljava/lang/String;
    const v10, 0x10001

    const-string v11, "<init>"

    const-string v12, "V"

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v4

    .line 40
    .local v4, "mv":Lorg/ow2/asmdex/MethodVisitor;
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 41
    const/4 v5, 0x4

    invoke-virtual {v4, v5, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 42
    const/16 v6, 0x12

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 43
    new-array v9, v0, [I

    const/4 v14, 0x3

    aput v14, v9, v8

    const/16 v16, 0x70

    const-string v17, "Ljava/lang/Object;"

    const-string v18, "<init>"

    const-string v19, "V"

    move-object v15, v4

    move-object/from16 v20, v9

    invoke-virtual/range {v15 .. v20}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 44
    const/16 v16, 0x55

    const-string v17, "Lcom/tns/java/lang/Object;"

    const-string v18, "__initialized"

    const-string v19, "Z"

    const/16 v20, 0x1

    const/16 v21, 0x3

    invoke-virtual/range {v15 .. v21}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 45
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    move-object v13, v9

    .line 46
    .local v13, "l0":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v12, 0x39

    invoke-virtual {v4, v12, v13, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 47
    const/16 v16, 0x5c

    const-string v17, "Lcom/tns/java/lang/Object;"

    const-string v18, "__initialized"

    const-string v19, "Z"

    const/16 v20, 0x2

    invoke-virtual/range {v15 .. v21}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 48
    new-array v15, v0, [I

    aput v14, v15, v8

    const/16 v10, 0x71

    const-string v16, "initInstance"

    const-string v17, "VLjava/lang/Object;"

    move-object v9, v4

    move-object v11, v3

    const/16 v7, 0x39

    move-object/from16 v12, v16

    move-object v7, v13

    .end local v13    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    .local v7, "l0":Lorg/ow2/asmdex/structureCommon/Label;
    move-object/from16 v13, v17

    move-object v14, v15

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 49
    invoke-virtual {v4, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 50
    const/16 v16, 0x55

    const-string v17, "Lcom/tns/java/lang/Object;"

    const-string v18, "__ctorOverridden"

    const-string v19, "Z"

    const/16 v20, 0x1

    move-object v15, v4

    invoke-virtual/range {v15 .. v21}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 51
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    move-object v15, v9

    .line 52
    .local v15, "l1":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v14, 0x38

    invoke-virtual {v4, v14, v15, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 53
    invoke-virtual {v4, v6, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 54
    const-string v13, "init"

    const/16 v12, 0x1a

    invoke-virtual {v4, v12, v0, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 55
    new-array v11, v5, [I

    fill-array-data v11, :array_0

    const-string v16, "callJSMethod"

    const-string v17, "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;"

    move-object v9, v4

    move-object/from16 v18, v11

    move-object v11, v3

    const/16 v5, 0x1a

    move-object/from16 v12, v16

    move-object/from16 v22, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 56
    invoke-virtual {v4, v15}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 57
    const/16 v14, 0xe

    invoke-virtual {v4, v14}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 58
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 61
    .end local v7    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v15    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    new-array v7, v0, [Ljava/lang/String;

    const-string v15, "Ljava/lang/CloneNotSupportedException;"

    aput-object v15, v7, v8

    const/4 v10, 0x4

    const-string v11, "clone"

    const-string v12, "Ljava/lang/Object;"

    const/4 v13, 0x0

    move-object v9, v1

    move-object v14, v7

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 63
    const/4 v7, 0x3

    invoke-virtual {v4, v7, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 64
    const/16 v25, 0x55

    const-string v26, "Lcom/tns/java/lang/Object;"

    const-string v27, "__initialized"

    const-string v28, "Z"

    const/16 v29, 0x1

    const/16 v30, 0x2

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 65
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    move-object v14, v9

    .line 66
    .local v14, "l0":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v9, 0x39

    invoke-virtual {v4, v9, v14, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 67
    invoke-virtual {v4, v6, v0, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 68
    const/16 v25, 0x5c

    const-string v26, "Lcom/tns/java/lang/Object;"

    const-string v27, "__initialized"

    const-string v28, "Z"

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 69
    new-array v13, v0, [I

    const/4 v9, 0x2

    aput v9, v13, v8

    const/16 v10, 0x71

    const-string v12, "initInstance"

    const-string v16, "VLjava/lang/Object;"

    move-object v9, v4

    move-object v11, v3

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    move-object v7, v14

    .end local v14    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    .restart local v7    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    move-object/from16 v14, v17

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 70
    invoke-virtual {v4, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 71
    const/16 v25, 0x56

    const-string v26, "Lcom/tns/java/lang/Object;"

    const-string v27, "__ho0"

    const-string v28, "B"

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 72
    const/16 v25, 0xdd

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 73
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    move-object v14, v9

    .line 74
    .local v14, "l1":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v13, 0x3d

    invoke-virtual {v4, v13, v14, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 75
    invoke-virtual {v4, v6, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 76
    const-string v12, "clone"

    invoke-virtual {v4, v5, v0, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 77
    const/4 v9, 0x3

    new-array v11, v9, [I

    fill-array-data v11, :array_1

    const-string v16, "callJSMethod"

    const-string v17, "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;"

    move-object v9, v4

    move-object/from16 v18, v11

    move-object v11, v3

    move-object/from16 v31, v12

    move-object/from16 v12, v16

    const/16 v5, 0x3d

    move-object/from16 v13, v17

    move-object v5, v14

    .end local v14    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    .local v5, "l1":Lorg/ow2/asmdex/structureCommon/Label;
    move-object/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 78
    const/16 v14, 0xc

    invoke-virtual {v4, v14, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 79
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 80
    .local v9, "l2":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v4, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 81
    const/16 v13, 0x11

    invoke-virtual {v4, v13, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 82
    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 83
    new-array v10, v0, [I

    const/4 v11, 0x2

    aput v11, v10, v8

    const/16 v25, 0x6f

    const-string v26, "Ljava/lang/Object;"

    const-string v27, "clone"

    const-string v28, "Ljava/lang/Object;"

    move-object/from16 v29, v10

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 84
    invoke-virtual {v4, v14, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 85
    const/16 v12, 0x28

    invoke-virtual {v4, v12, v9, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 86
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 89
    .end local v5    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v7    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v9    # "l2":Lorg/ow2/asmdex/structureCommon/Label;
    new-array v5, v0, [Ljava/lang/String;

    aput-object v15, v5, v8

    const/4 v10, 0x1

    const-string v11, "clone__super"

    const-string v7, "Ljava/lang/Object;"

    const/4 v15, 0x0

    move-object v9, v1

    move-object v12, v7

    const/16 v7, 0x11

    move-object v13, v15

    const/16 v15, 0xc

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v4

    .line 90
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 91
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 92
    new-array v5, v0, [I

    aput v0, v5, v8

    const-string v26, "Ljava/lang/Object;"

    const-string v27, "clone"

    const-string v28, "Ljava/lang/Object;"

    move-object/from16 v24, v4

    move-object/from16 v29, v5

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 93
    invoke-virtual {v4, v15, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 94
    invoke-virtual {v4, v7, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 95
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 98
    const-string v11, "equals"

    const-string v12, "ZLjava/lang/Object;"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 100
    const/4 v5, 0x5

    invoke-virtual {v4, v5, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 101
    const/4 v5, 0x2

    invoke-virtual {v4, v6, v5, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 102
    const/16 v25, 0x55

    const-string v26, "Lcom/tns/java/lang/Object;"

    const-string v27, "__initialized"

    const-string v28, "Z"

    const/16 v29, 0x1

    const/16 v30, 0x3

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 103
    new-instance v5, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v5}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 104
    .local v5, "l0":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v9, 0x39

    invoke-virtual {v4, v9, v5, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 105
    const/16 v25, 0x5c

    const-string v26, "Lcom/tns/java/lang/Object;"

    const-string v27, "__initialized"

    const-string v28, "Z"

    const/16 v29, 0x2

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 106
    new-array v14, v0, [I

    const/4 v9, 0x3

    aput v9, v14, v8

    const/16 v10, 0x71

    const-string v12, "initInstance"

    const-string v13, "VLjava/lang/Object;"

    move-object v9, v4

    move-object v11, v3

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 107
    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 108
    const/16 v25, 0x56

    const-string v26, "Lcom/tns/java/lang/Object;"

    const-string v27, "__ho0"

    const-string v28, "B"

    const/16 v29, 0x1

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 109
    const/16 v25, 0xdd

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x2

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 110
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    move-object v14, v9

    .line 111
    .restart local v14    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v9, 0x3d

    invoke-virtual {v4, v9, v14, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 112
    const/16 v25, 0x23

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x2

    const-string v29, "[Lcom/tns/java/lang/Object;"

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 113
    invoke-virtual {v4, v6, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 114
    const/16 v9, 0x4d

    const/4 v10, 0x4

    invoke-virtual {v4, v9, v10, v8, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 115
    const-string v13, "equals"

    const/16 v9, 0x1a

    invoke-virtual {v4, v9, v0, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 116
    const/4 v9, 0x3

    new-array v12, v9, [I

    fill-array-data v12, :array_2

    const/16 v10, 0x71

    const-string v18, "callJSMethod"

    const-string v20, "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;"

    move-object v9, v4

    move-object/from16 v21, v12

    move-object/from16 v12, v18

    move-object v7, v13

    move-object/from16 v13, v20

    move-object v6, v14

    .end local v14    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    .local v6, "l1":Lorg/ow2/asmdex/structureCommon/Label;
    move-object/from16 v14, v21

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 117
    invoke-virtual {v4, v15, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 118
    const/16 v25, 0x1f

    const/16 v27, 0x1

    const/16 v28, 0x0

    const-string v29, "Ljava/lang/Boolean;"

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 119
    new-array v9, v0, [I

    aput v0, v9, v8

    const/16 v25, 0x6e

    const-string v26, "Ljava/lang/Boolean;"

    const-string v27, "booleanValue"

    const-string v28, "Z"

    move-object/from16 v29, v9

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 120
    const/16 v14, 0xa

    invoke-virtual {v4, v14, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 121
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 122
    .restart local v9    # "l2":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v4, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 123
    const/16 v13, 0xf

    invoke-virtual {v4, v13, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 124
    invoke-virtual {v4, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 125
    const/4 v10, 0x2

    new-array v11, v10, [I

    fill-array-data v11, :array_3

    const/16 v25, 0x6f

    const-string v26, "Ljava/lang/Object;"

    const-string v27, "equals"

    const-string v28, "ZLjava/lang/Object;"

    move-object/from16 v29, v11

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 126
    invoke-virtual {v4, v14, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 127
    const/16 v12, 0x28

    invoke-virtual {v4, v12, v9, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 128
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 131
    .end local v5    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v6    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v9    # "l2":Lorg/ow2/asmdex/structureCommon/Label;
    const/4 v10, 0x1

    const-string v11, "equals__super"

    const-string v5, "ZLjava/lang/Object;"

    const/4 v6, 0x0

    const/16 v21, 0x0

    move-object v9, v1

    const/16 v15, 0x28

    move-object v12, v5

    const/16 v5, 0xf

    move-object v13, v6

    const/16 v6, 0xa

    move-object/from16 v14, v21

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v4

    .line 132
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 133
    const/4 v9, 0x3

    invoke-virtual {v4, v9, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 134
    const/4 v9, 0x2

    new-array v10, v9, [I

    fill-array-data v10, :array_4

    const/16 v26, 0x6f

    const-string v27, "Ljava/lang/Object;"

    const-string v28, "equals"

    const-string v29, "ZLjava/lang/Object;"

    move-object/from16 v25, v4

    move-object/from16 v30, v10

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 135
    invoke-virtual {v4, v6, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 136
    invoke-virtual {v4, v5, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 137
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 140
    new-array v14, v0, [Ljava/lang/String;

    const-string v21, "Ljava/lang/Throwable;"

    aput-object v21, v14, v8

    const/4 v10, 0x4

    const-string v11, "finalize"

    const-string v12, "V"

    const/4 v13, 0x0

    move-object v9, v1

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v4

    .line 141
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 142
    const/4 v9, 0x3

    invoke-virtual {v4, v9, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 143
    const/16 v33, 0x55

    const-string v34, "Lcom/tns/java/lang/Object;"

    const-string v35, "__initialized"

    const-string v36, "Z"

    const/16 v37, 0x1

    const/16 v38, 0x2

    move-object/from16 v32, v4

    invoke-virtual/range {v32 .. v38}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 144
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    move-object v14, v9

    .line 145
    .local v14, "l0":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v9, 0x39

    invoke-virtual {v4, v9, v14, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 146
    const/16 v9, 0x12

    invoke-virtual {v4, v9, v0, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 147
    const/16 v33, 0x5c

    const-string v34, "Lcom/tns/java/lang/Object;"

    const-string v35, "__initialized"

    const-string v36, "Z"

    invoke-virtual/range {v32 .. v38}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 148
    new-array v13, v0, [I

    const/4 v9, 0x2

    aput v9, v13, v8

    const/16 v10, 0x71

    const-string v12, "initInstance"

    const-string v25, "VLjava/lang/Object;"

    move-object v9, v4

    move-object v11, v3

    move-object/from16 v26, v13

    move-object/from16 v13, v25

    move-object v5, v14

    .end local v14    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    .restart local v5    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    move-object/from16 v14, v26

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 149
    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 150
    const/16 v33, 0x56

    const-string v34, "Lcom/tns/java/lang/Object;"

    const-string v35, "__ho0"

    const-string v36, "B"

    invoke-virtual/range {v32 .. v38}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 151
    const/16 v26, 0xdd

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x4

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 152
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    move-object v14, v9

    .line 153
    .local v14, "l1":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v9, 0x3d

    invoke-virtual {v4, v9, v14, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 154
    const/16 v9, 0x12

    invoke-virtual {v4, v9, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 155
    const-string v9, "finalize"

    const/16 v10, 0x1a

    invoke-virtual {v4, v10, v0, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 156
    const/4 v9, 0x3

    new-array v13, v9, [I

    fill-array-data v13, :array_5

    const/16 v10, 0x71

    const-string v12, "callJSMethod"

    const-string v25, "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;"

    move-object v9, v4

    move-object/from16 v26, v13

    move-object/from16 v13, v25

    move-object v6, v14

    .end local v14    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    .restart local v6    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    move-object/from16 v14, v26

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 157
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 158
    .restart local v9    # "l2":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v4, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 159
    const/16 v14, 0xe

    invoke-virtual {v4, v14}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 160
    invoke-virtual {v4, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 161
    new-array v10, v0, [I

    const/4 v11, 0x2

    aput v11, v10, v8

    const/16 v26, 0x6f

    const-string v27, "Ljava/lang/Object;"

    const-string v28, "finalize"

    const-string v29, "V"

    move-object/from16 v25, v4

    move-object/from16 v30, v10

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 162
    invoke-virtual {v4, v15, v9, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 163
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 166
    .end local v5    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v6    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v9    # "l2":Lorg/ow2/asmdex/structureCommon/Label;
    new-array v5, v0, [Ljava/lang/String;

    aput-object v21, v5, v8

    const/4 v10, 0x1

    const-string v11, "finalize__super"

    const-string v12, "V"

    const/4 v13, 0x0

    move-object v9, v1

    const/16 v6, 0xe

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v4

    .line 167
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 168
    invoke-virtual {v4, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 169
    new-array v5, v0, [I

    aput v8, v5, v8

    const-string v27, "Ljava/lang/Object;"

    const-string v28, "finalize"

    const-string v29, "V"

    move-object/from16 v25, v4

    move-object/from16 v30, v5

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 170
    invoke-virtual {v4, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 171
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 174
    const-string v11, "hashCode"

    const-string v12, "I"

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 176
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 177
    const/16 v41, 0x55

    const-string v42, "Lcom/tns/java/lang/Object;"

    const-string v43, "__initialized"

    const-string v44, "Z"

    const/16 v45, 0x1

    const/16 v46, 0x2

    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v46}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 178
    new-instance v5, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v5}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 179
    .restart local v5    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v9, 0x39

    invoke-virtual {v4, v9, v5, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 180
    const/16 v9, 0x12

    invoke-virtual {v4, v9, v0, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 181
    const/16 v41, 0x5c

    const-string v42, "Lcom/tns/java/lang/Object;"

    const-string v43, "__initialized"

    const-string v44, "Z"

    invoke-virtual/range {v40 .. v46}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 182
    new-array v14, v0, [I

    const/4 v9, 0x2

    aput v9, v14, v8

    const/16 v10, 0x71

    const-string v12, "initInstance"

    const-string v13, "VLjava/lang/Object;"

    move-object v9, v4

    move-object v11, v3

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 183
    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 184
    const/16 v41, 0x56

    const-string v42, "Lcom/tns/java/lang/Object;"

    const-string v43, "__ho0"

    const-string v44, "B"

    invoke-virtual/range {v40 .. v46}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 185
    const/16 v26, 0xdd

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x8

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 186
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    move-object v14, v9

    .line 187
    .restart local v14    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v9, 0x3d

    invoke-virtual {v4, v9, v14, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 188
    const/16 v9, 0x12

    invoke-virtual {v4, v9, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 189
    const-string v9, "hashCode"

    const/16 v10, 0x1a

    invoke-virtual {v4, v10, v0, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 190
    const/4 v9, 0x3

    new-array v13, v9, [I

    fill-array-data v13, :array_6

    const/16 v10, 0x71

    const-string v12, "callJSMethod"

    const-string v21, "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;"

    move-object v9, v4

    move-object/from16 v23, v13

    move-object/from16 v13, v21

    move-object v6, v14

    .end local v14    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    .restart local v6    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    move-object/from16 v14, v23

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 191
    const/16 v9, 0xc

    invoke-virtual {v4, v9, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 192
    const/16 v26, 0x1f

    const/16 v27, 0x0

    const-string v30, "Ljava/lang/Integer;"

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 193
    new-array v9, v0, [I

    aput v0, v9, v8

    const/16 v26, 0x6e

    const-string v27, "Ljava/lang/Integer;"

    const-string v28, "intValue"

    const-string v29, "I"

    move-object/from16 v30, v9

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 194
    const/16 v9, 0xa

    invoke-virtual {v4, v9, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 195
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 196
    .restart local v9    # "l2":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v4, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 197
    const/16 v10, 0xf

    invoke-virtual {v4, v10, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 198
    invoke-virtual {v4, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 199
    new-array v10, v0, [I

    const/4 v11, 0x2

    aput v11, v10, v8

    const/16 v26, 0x6f

    const-string v27, "Ljava/lang/Object;"

    const-string v28, "hashCode"

    const-string v29, "I"

    move-object/from16 v30, v10

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 200
    const/16 v10, 0xa

    invoke-virtual {v4, v10, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 201
    invoke-virtual {v4, v15, v9, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 202
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 205
    .end local v5    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v6    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v9    # "l2":Lorg/ow2/asmdex/structureCommon/Label;
    const/4 v10, 0x1

    const-string v11, "hashCode__super"

    const-string v12, "I"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v4

    .line 206
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 207
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 208
    new-array v5, v0, [I

    aput v0, v5, v8

    const-string v27, "Ljava/lang/Object;"

    const-string v28, "hashCode"

    const-string v29, "I"

    move-object/from16 v25, v4

    move-object/from16 v30, v5

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 209
    const/16 v5, 0xa

    invoke-virtual {v4, v5, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 210
    const/16 v5, 0xf

    invoke-virtual {v4, v5, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 211
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 214
    const-string v11, "setNativeScriptOverrides"

    const-string v12, "V[Ljava/lang/String;"

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v4

    .line 215
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 216
    const/4 v5, 0x7

    invoke-virtual {v4, v5, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 217
    const/4 v6, 0x6

    invoke-virtual {v4, v5, v8, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 218
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayLengthInsn(II)V

    .line 219
    const/16 v5, 0x12

    invoke-virtual {v4, v5, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 220
    new-instance v5, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v5}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 221
    .restart local v5    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 222
    new-instance v6, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v6}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 223
    .restart local v6    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v9, 0x35

    const/4 v10, 0x2

    invoke-virtual {v4, v9, v6, v0, v10}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 224
    const/16 v9, 0x46

    const/4 v11, 0x3

    invoke-virtual {v4, v9, v11, v8, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 225
    move-object/from16 v9, v22

    const/16 v11, 0x1a

    const/4 v12, 0x4

    invoke-virtual {v4, v11, v12, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 226
    new-array v9, v10, [I

    fill-array-data v9, :array_7

    const/16 v26, 0x6e

    const-string v27, "Ljava/lang/String;"

    const-string v28, "equals"

    const-string v29, "ZLjava/lang/Object;"

    move-object/from16 v25, v4

    move-object/from16 v30, v9

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 227
    const/16 v9, 0xa

    const/4 v10, 0x4

    invoke-virtual {v4, v9, v10}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 228
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 229
    .restart local v9    # "l2":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v11, 0x38

    invoke-virtual {v4, v11, v9, v10, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 230
    const/16 v12, 0x12

    invoke-virtual {v4, v12, v10, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 231
    const/16 v34, 0x5c

    const-string v35, "Lcom/tns/java/lang/Object;"

    const-string v36, "__ctorOverridden"

    const-string v37, "Z"

    const/16 v38, 0x4

    const/16 v39, 0x5

    move-object/from16 v33, v4

    invoke-virtual/range {v33 .. v39}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 232
    invoke-virtual {v4, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 233
    move-object/from16 v10, v31

    const/16 v12, 0x1a

    const/4 v13, 0x4

    invoke-virtual {v4, v12, v13, v10}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 234
    const/4 v10, 0x2

    new-array v12, v10, [I

    fill-array-data v12, :array_8

    const-string v27, "Ljava/lang/String;"

    const-string v28, "equals"

    const-string v29, "ZLjava/lang/Object;"

    move-object/from16 v30, v12

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 235
    const/16 v10, 0xa

    const/4 v12, 0x4

    invoke-virtual {v4, v10, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 236
    new-instance v10, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v10}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 237
    .local v10, "l3":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v4, v11, v10, v12, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 238
    const/16 v34, 0x56

    const-string v35, "Lcom/tns/java/lang/Object;"

    const-string v36, "__ho0"

    const-string v37, "B"

    invoke-virtual/range {v33 .. v39}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 239
    const/16 v26, 0xde

    const/16 v27, 0x4

    const/16 v28, 0x4

    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 240
    const/16 v26, 0x8d

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 241
    const/16 v34, 0x5d

    const-string v35, "Lcom/tns/java/lang/Object;"

    const-string v36, "__ho0"

    const-string v37, "B"

    invoke-virtual/range {v33 .. v39}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 242
    new-instance v12, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v12}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 243
    .local v12, "l4":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v4, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 244
    const/16 v26, 0xd8

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v30, 0x1

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 245
    invoke-virtual {v4, v15, v5, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 246
    invoke-virtual {v4, v10}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 247
    const/16 v13, 0x1a

    const/4 v14, 0x4

    invoke-virtual {v4, v13, v14, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 248
    const/4 v7, 0x2

    new-array v13, v7, [I

    fill-array-data v13, :array_9

    const/16 v26, 0x6e

    const-string v27, "Ljava/lang/String;"

    const-string v28, "equals"

    const-string v29, "ZLjava/lang/Object;"

    move-object/from16 v30, v13

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 249
    const/16 v7, 0xa

    const/4 v13, 0x4

    invoke-virtual {v4, v7, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 250
    new-instance v7, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v7}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 251
    .local v7, "l5":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v4, v11, v7, v13, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 252
    const/16 v34, 0x56

    const-string v35, "Lcom/tns/java/lang/Object;"

    const-string v36, "__ho0"

    const-string v37, "B"

    invoke-virtual/range {v33 .. v39}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 253
    const/16 v26, 0xde

    const/16 v27, 0x4

    const/16 v28, 0x4

    const/16 v29, 0x0

    const/16 v30, 0x2

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 254
    const/16 v26, 0x8d

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 255
    const/16 v34, 0x5d

    const-string v35, "Lcom/tns/java/lang/Object;"

    const-string v36, "__ho0"

    const-string v37, "B"

    invoke-virtual/range {v33 .. v39}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 256
    invoke-virtual {v4, v15, v12, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 257
    invoke-virtual {v4, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 258
    const-string v13, "finalize"

    const/4 v0, 0x4

    const/16 v14, 0x1a

    invoke-virtual {v4, v14, v0, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 259
    const/4 v0, 0x2

    new-array v13, v0, [I

    fill-array-data v13, :array_a

    const/16 v26, 0x6e

    const-string v27, "Ljava/lang/String;"

    const-string v28, "equals"

    const-string v29, "ZLjava/lang/Object;"

    move-object/from16 v30, v13

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 260
    const/16 v0, 0xa

    const/4 v13, 0x4

    invoke-virtual {v4, v0, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 261
    new-instance v0, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 262
    .local v0, "l6":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v4, v11, v0, v13, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 263
    const/16 v34, 0x56

    const-string v35, "Lcom/tns/java/lang/Object;"

    const-string v36, "__ho0"

    const-string v37, "B"

    invoke-virtual/range {v33 .. v39}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 264
    const/16 v26, 0xde

    const/16 v27, 0x4

    const/16 v28, 0x4

    const/16 v29, 0x0

    const/16 v30, 0x4

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 265
    const/16 v26, 0x8d

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 266
    const/16 v34, 0x5d

    const-string v35, "Lcom/tns/java/lang/Object;"

    const-string v36, "__ho0"

    const-string v37, "B"

    invoke-virtual/range {v33 .. v39}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 267
    invoke-virtual {v4, v15, v12, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 268
    invoke-virtual {v4, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 269
    const-string v13, "hashCode"

    const/16 v14, 0x1a

    const/4 v15, 0x4

    invoke-virtual {v4, v14, v15, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 270
    const/4 v13, 0x2

    new-array v14, v13, [I

    fill-array-data v14, :array_b

    const/16 v26, 0x6e

    const-string v27, "Ljava/lang/String;"

    const-string v28, "equals"

    const-string v29, "ZLjava/lang/Object;"

    move-object/from16 v30, v14

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 271
    const/16 v13, 0xa

    const/4 v14, 0x4

    invoke-virtual {v4, v13, v14}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 272
    new-instance v13, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v13}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 273
    .local v13, "l7":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v4, v11, v13, v14, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 274
    const/16 v34, 0x56

    const-string v35, "Lcom/tns/java/lang/Object;"

    const-string v36, "__ho0"

    const-string v37, "B"

    invoke-virtual/range {v33 .. v39}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 275
    const/16 v26, 0xde

    const/16 v27, 0x4

    const/16 v28, 0x4

    const/16 v29, 0x0

    const/16 v30, 0x8

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 276
    const/16 v26, 0x8d

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 277
    const/16 v34, 0x5d

    const-string v35, "Lcom/tns/java/lang/Object;"

    const-string v36, "__ho0"

    const-string v37, "B"

    invoke-virtual/range {v33 .. v39}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 278
    const/16 v14, 0x28

    invoke-virtual {v4, v14, v12, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 279
    invoke-virtual {v4, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 280
    const-string v14, "toString"

    const/4 v8, 0x4

    const/16 v15, 0x1a

    invoke-virtual {v4, v15, v8, v14}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 281
    const/4 v8, 0x2

    new-array v14, v8, [I

    fill-array-data v14, :array_c

    const/16 v26, 0x6e

    const-string v27, "Ljava/lang/String;"

    const-string v28, "equals"

    const-string v29, "ZLjava/lang/Object;"

    move-object/from16 v30, v14

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 282
    const/16 v8, 0xa

    const/4 v14, 0x4

    invoke-virtual {v4, v8, v14}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 283
    const/4 v8, 0x0

    invoke-virtual {v4, v11, v12, v14, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 284
    const/16 v34, 0x56

    const-string v35, "Lcom/tns/java/lang/Object;"

    const-string v36, "__ho0"

    const-string v37, "B"

    invoke-virtual/range {v33 .. v39}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 285
    const/16 v26, 0xde

    const/16 v27, 0x4

    const/16 v28, 0x4

    const/16 v29, 0x0

    const/16 v30, 0x10

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 286
    const/16 v26, 0x8d

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 287
    const/16 v34, 0x5d

    const-string v35, "Lcom/tns/java/lang/Object;"

    const-string v36, "__ho0"

    const-string v37, "B"

    invoke-virtual/range {v33 .. v39}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 288
    const/16 v8, 0x28

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v12, v11, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 289
    invoke-virtual {v4, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 290
    const/16 v8, 0xe

    invoke-virtual {v4, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 291
    invoke-virtual {v4}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 294
    .end local v0    # "l6":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v5    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v6    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v7    # "l5":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v9    # "l2":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v10    # "l3":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v12    # "l4":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v13    # "l7":Lorg/ow2/asmdex/structureCommon/Label;
    const/4 v10, 0x1

    const-string v11, "toString"

    const-string v12, "Ljava/lang/String;"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v0

    .line 295
    .end local v4    # "mv":Lorg/ow2/asmdex/MethodVisitor;
    .local v0, "mv":Lorg/ow2/asmdex/MethodVisitor;
    invoke-virtual {v0}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 296
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 297
    const/16 v26, 0x55

    const-string v27, "Lcom/tns/java/lang/Object;"

    const-string v28, "__initialized"

    const-string v29, "Z"

    const/16 v30, 0x1

    const/16 v31, 0x2

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 298
    new-instance v4, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v4}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 299
    .local v4, "l0":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v5, 0x39

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v4, v6, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 300
    const/16 v5, 0x12

    invoke-virtual {v0, v5, v6, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 301
    const/16 v26, 0x5c

    const-string v27, "Lcom/tns/java/lang/Object;"

    const-string v28, "__initialized"

    const-string v29, "Z"

    invoke-virtual/range {v25 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 302
    const/4 v5, 0x1

    new-array v14, v5, [I

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v5, v14, v6

    const/16 v10, 0x71

    const-string v12, "initInstance"

    const-string v13, "VLjava/lang/Object;"

    move-object v9, v0

    move-object v11, v3

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 303
    invoke-virtual {v0, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 304
    const/16 v26, 0x56

    const-string v27, "Lcom/tns/java/lang/Object;"

    const-string v28, "__ho0"

    const-string v29, "B"

    invoke-virtual/range {v25 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 305
    const/16 v26, 0xdd

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x10

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 306
    new-instance v5, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v5}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 307
    .local v5, "l1":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v6, 0x3d

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v5, v7, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 308
    const/16 v6, 0x12

    invoke-virtual {v0, v6, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 309
    const-string v6, "toString"

    const/16 v8, 0x1a

    invoke-virtual {v0, v8, v7, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 310
    const/4 v6, 0x3

    new-array v14, v6, [I

    fill-array-data v14, :array_d

    const-string v12, "callJSMethod"

    const-string v13, "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;"

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 311
    const/16 v6, 0xc

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 312
    const/16 v26, 0x1f

    const/16 v27, 0x0

    const-string v30, "Ljava/lang/String;"

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 313
    new-instance v6, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v6}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 314
    .local v6, "l2":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v0, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 315
    const/16 v7, 0x11

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 316
    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 317
    new-array v7, v8, [I

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput v8, v7, v9

    const/16 v26, 0x6f

    const-string v27, "Ljava/lang/Object;"

    const-string v28, "toString"

    const-string v29, "Ljava/lang/String;"

    move-object/from16 v30, v7

    invoke-virtual/range {v25 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 318
    const/16 v7, 0xc

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 319
    const/16 v7, 0x28

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v6, v8, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 320
    invoke-virtual {v0}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 323
    .end local v4    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v5    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v6    # "l2":Lorg/ow2/asmdex/structureCommon/Label;
    const/4 v10, 0x1

    const-string v11, "toString__super"

    const-string v12, "Ljava/lang/String;"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 325
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 326
    const/4 v4, 0x1

    new-array v9, v4, [I

    aput v4, v9, v5

    const/16 v5, 0x6f

    const-string v6, "Ljava/lang/Object;"

    const-string v7, "toString"

    const-string v8, "Ljava/lang/String;"

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 327
    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 328
    const/16 v4, 0x11

    invoke-virtual {v0, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 329
    invoke-virtual {v0}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 331
    invoke-virtual {v1}, Lorg/ow2/asmdex/ClassVisitor;->visitEnd()V

    .line 332
    return-void

    :array_0
    .array-data 4
        0x3
        0x1
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data
.end method
