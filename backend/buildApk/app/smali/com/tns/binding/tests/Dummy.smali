.class Lcom/tns/binding/tests/Dummy;
.super Ljava/lang/Object;
.source "Dummy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callDummyGenMethod()V
    .locals 4

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "someName"

    invoke-static {v0, v3, v1, v2}, Lcom/tns/binding/tests/Dummy;->dummyGenMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    .line 41
    .local v0, "val":Ljava/util/Random;
    return-void
.end method

.method public static callDummyMethod()V
    .locals 4

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "someName"

    invoke-static {v0, v2, v1}, Lcom/tns/binding/tests/Dummy;->dummyMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public static calldummyMethodParams()V
    .locals 6

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-string v1, "paramsName"

    const-string v5, "some string param"

    invoke-static/range {v0 .. v5}, Lcom/tns/binding/tests/Dummy;->dummyMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public static doMethod()Ljava/lang/Object;
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public static dummyGenMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "thiz"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;TT1;)TT2;"
        }
    .end annotation

    .line 27
    .local p2, "arg1":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TT1;"
    invoke-static {}, Lcom/tns/binding/tests/Dummy;->doMethod()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static dummyMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "thiz"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public static varargs dummyMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "thiz"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public static dumpBuildConfig(Lorg/ow2/asmdex/ApplicationWriter;)V
    .locals 45
    .param p0, "aw"    # Lorg/ow2/asmdex/ApplicationWriter;

    .line 49
    const/16 v1, 0x11

    const-string v2, "Ltelerik/kimera/kimeraskeleton/BuildConfig;"

    const/4 v3, 0x0

    const-string v4, "Ljava/lang/Object;"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/ApplicationWriter;->visitClass(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/ClassVisitor;

    move-result-object v0

    .line 50
    .local v0, "cv":Lorg/ow2/asmdex/ClassVisitor;
    const/4 v7, 0x0

    const/16 v8, 0x11

    const-string v9, "Ltelerik/kimera/kimeraskeleton/BuildConfig;"

    const/4 v10, 0x0

    const-string v11, "Ljava/lang/Object;"

    const/4 v12, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v12}, Lorg/ow2/asmdex/ClassVisitor;->visit(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 51
    const-string v1, "BuildConfig.java"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/16 v7, 0x19

    const-string v8, "DEBUG"

    const-string v9, "Z"

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;

    move-result-object v2

    .line 54
    .local v2, "fv":Lorg/ow2/asmdex/FieldVisitor;
    invoke-virtual {v2}, Lorg/ow2/asmdex/FieldVisitor;->visitEnd()V

    .line 57
    const v7, 0x10001

    const-string v8, "<init>"

    const-string v9, "V"

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 58
    .local v3, "mv":Lorg/ow2/asmdex/MethodVisitor;
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 59
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 60
    new-array v6, v1, [I

    aput v1, v6, v5

    const/16 v13, 0x70

    const-string v14, "Ljava/lang/Object;"

    const-string v15, "<init>"

    const-string v16, "V"

    move-object v12, v3

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 61
    const/16 v13, 0x22

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "Ljava/lang/Object;"

    invoke-virtual/range {v12 .. v17}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 62
    new-array v6, v1, [I

    aput v5, v6, v5

    const/16 v13, 0x70

    const-string v14, "Ljava/lang/Object;"

    const-string v15, "<init>"

    const-string v16, "V"

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 63
    const/16 v13, 0x5b

    const-string v14, "Ldummy;"

    const-string v15, "arg1"

    const-string v16, "Ljava/lang/Object;"

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 64
    const/16 v13, 0x22

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "Ljava/lang/Object;"

    invoke-virtual/range {v12 .. v17}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 65
    new-array v6, v1, [I

    aput v5, v6, v5

    const/16 v13, 0x70

    const-string v14, "Ljava/lang/Object;"

    const-string v15, "<init>"

    const-string v16, "V"

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 66
    const/16 v13, 0x5b

    const-string v14, "Ldummy;"

    const-string v15, "arg2"

    const-string v16, "Ljava/lang/Object;"

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v18}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 67
    const/16 v13, 0x22

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "Ljava/lang/Object;"

    invoke-virtual/range {v12 .. v17}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 68
    new-array v6, v1, [I

    aput v5, v6, v5

    const/16 v13, 0x70

    const-string v14, "Ljava/lang/Object;"

    const-string v15, "<init>"

    const-string v16, "V"

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 69
    const/16 v13, 0x5b

    const-string v14, "Ldummy;"

    const-string v15, "arg3"

    const-string v16, "Ljava/lang/Object;"

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v18}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 70
    const/16 v11, 0x1a

    const-string v6, "some string param"

    invoke-virtual {v3, v11, v5, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 71
    const-string v14, "Ldummy;"

    const-string v15, "arg4"

    const-string v16, "Ljava/lang/String;"

    invoke-virtual/range {v12 .. v18}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 72
    const/16 v12, 0xe

    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 73
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 76
    const/4 v7, 0x1

    const-string v8, "callDummyGenMethod"

    const-string v9, "V"

    const/4 v13, 0x0

    move-object v6, v0

    const/16 v14, 0x1a

    move-object v11, v13

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 78
    const/4 v13, 0x6

    invoke-virtual {v3, v13, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 79
    const/16 v16, 0x22

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "Ljava/lang/Object;"

    move-object v15, v3

    invoke-virtual/range {v15 .. v20}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 80
    new-array v6, v1, [I

    aput v1, v6, v5

    const/16 v16, 0x70

    const-string v17, "Ljava/lang/Object;"

    const-string v18, "<init>"

    const-string v19, "V"

    move-object/from16 v20, v6

    invoke-virtual/range {v15 .. v20}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 81
    const-string v6, "someName"

    invoke-virtual {v3, v14, v4, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 82
    const/16 v16, 0x22

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "Ljava/lang/Object;"

    invoke-virtual/range {v15 .. v20}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 83
    new-array v6, v1, [I

    const/4 v11, 0x3

    aput v11, v6, v5

    const/16 v16, 0x70

    const-string v17, "Ljava/lang/Object;"

    const-string v18, "<init>"

    const-string v19, "V"

    move-object/from16 v20, v6

    invoke-virtual/range {v15 .. v20}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 84
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/16 v8, 0x12

    invoke-virtual {v3, v8, v9, v10}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 85
    new-array v6, v1, [I

    aput v9, v6, v5

    const/16 v16, 0x71

    const-string v17, "Ljava/lang/Integer;"

    const-string v18, "valueOf"

    const-string v19, "Ljava/lang/Integer;I"

    move-object/from16 v20, v6

    invoke-virtual/range {v15 .. v20}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 86
    const/16 v7, 0xc

    invoke-virtual {v3, v7, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 87
    new-array v6, v10, [I

    fill-array-data v6, :array_0

    const/16 v16, 0x6e

    const-string v17, "Ldummy;"

    const-string v18, "dummyGenMethod"

    const-string v19, "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;"

    move-object/from16 v20, v6

    invoke-virtual/range {v15 .. v20}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 88
    invoke-virtual {v3, v7, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 89
    const/16 v16, 0x1f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "Ljava/util/Random;"

    invoke-virtual/range {v15 .. v20}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 90
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 91
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 94
    const/4 v15, 0x1

    const-string v16, "callJsMethodsWithArgs"

    const-string v17, "VLjava/lang/String;[Ljava/lang/Object;"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v6, v0

    move v7, v15

    const/16 v15, 0x12

    move-object/from16 v8, v16

    const/4 v15, 0x4

    move-object/from16 v9, v17

    const/4 v13, 0x5

    move-object/from16 v10, v18

    const/4 v13, 0x3

    move-object/from16 v11, v19

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 96
    invoke-virtual {v3, v13, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 97
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 98
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 101
    const/4 v7, 0x1

    const-string v8, "calldummyMethodWith0Args"

    const-string v9, "V"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 103
    invoke-virtual {v3, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 104
    new-array v6, v1, [I

    aput v1, v6, v5

    const/16 v23, 0x6e

    const-string v24, "Ljava/lang/Object;"

    const-string v25, "toString"

    const-string v26, "Ljava/lang/String;"

    move-object/from16 v22, v3

    move-object/from16 v27, v6

    invoke-virtual/range {v22 .. v27}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 105
    const-string v11, "paramsName"

    invoke-virtual {v3, v14, v5, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 106
    new-array v6, v13, [I

    fill-array-data v6, :array_1

    const-string v24, "Ldummy;"

    const-string v25, "dummyMethod0"

    const-string v26, "VLjava/lang/Object;Ljava/lang/String;"

    move-object/from16 v27, v6

    invoke-virtual/range {v22 .. v27}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 107
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 108
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 111
    const-string v8, "calldummyMethodWith1Args"

    const-string v9, "VLjava/lang/Object;"

    move-object v6, v0

    move-object v4, v11

    move-object/from16 v11, v19

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 113
    invoke-virtual {v3, v13, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 114
    new-array v6, v1, [I

    aput v1, v6, v5

    const-string v24, "Ljava/lang/Object;"

    const-string v25, "toString"

    const-string v26, "Ljava/lang/String;"

    move-object/from16 v22, v3

    move-object/from16 v27, v6

    invoke-virtual/range {v22 .. v27}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 115
    invoke-virtual {v3, v14, v5, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 116
    new-array v6, v15, [I

    fill-array-data v6, :array_2

    const-string v24, "Ldummy;"

    const-string v25, "dummyMethod1"

    const-string v26, "VLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;"

    move-object/from16 v27, v6

    invoke-virtual/range {v22 .. v27}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 117
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 118
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 121
    const-string v8, "calldummyMethodWith20Args"

    const-string v9, "VLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;"

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 123
    const/16 v6, 0x2c

    invoke-virtual {v3, v6, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 124
    new-array v6, v1, [I

    const/16 v11, 0x17

    aput v11, v6, v5

    const/16 v23, 0x74

    const-string v24, "Ljava/lang/Object;"

    const-string v25, "toString"

    const-string v26, "Ljava/lang/String;"

    move-object/from16 v22, v3

    move-object/from16 v27, v6

    invoke-virtual/range {v22 .. v27}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 125
    const/4 v6, 0x2

    invoke-virtual {v3, v14, v6, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 126
    const/16 v10, 0x8

    invoke-virtual {v3, v10, v5, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 127
    invoke-virtual {v3, v10, v1, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 128
    const/16 v6, 0x18

    invoke-virtual {v3, v10, v13, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 129
    const/16 v6, 0x19

    invoke-virtual {v3, v10, v15, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 130
    const/4 v6, 0x5

    invoke-virtual {v3, v10, v6, v14}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 131
    const/16 v6, 0x1b

    const/4 v7, 0x6

    invoke-virtual {v3, v10, v7, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 132
    const/4 v9, 0x7

    const/16 v6, 0x1c

    invoke-virtual {v3, v10, v9, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 133
    const/16 v6, 0x1d

    invoke-virtual {v3, v10, v10, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 134
    const/16 v8, 0x9

    const/16 v6, 0x1e

    invoke-virtual {v3, v10, v8, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 135
    const/16 v7, 0xa

    const/16 v6, 0x1f

    invoke-virtual {v3, v10, v7, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 136
    const/16 v6, 0xb

    const/16 v7, 0x20

    invoke-virtual {v3, v10, v6, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 137
    const/16 v6, 0x21

    const/16 v7, 0xc

    invoke-virtual {v3, v10, v7, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 138
    const/16 v6, 0xd

    const/16 v7, 0x22

    invoke-virtual {v3, v10, v6, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 139
    const/16 v6, 0x23

    invoke-virtual {v3, v10, v12, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 140
    const/16 v6, 0xf

    const/16 v7, 0x24

    invoke-virtual {v3, v10, v6, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 141
    const/16 v6, 0x10

    const/16 v7, 0x25

    invoke-virtual {v3, v10, v6, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 142
    const/16 v7, 0x11

    const/16 v6, 0x26

    invoke-virtual {v3, v10, v7, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 143
    const/16 v6, 0x27

    const/16 v7, 0x12

    invoke-virtual {v3, v10, v7, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 144
    const/16 v7, 0x28

    const/16 v6, 0x13

    invoke-virtual {v3, v10, v6, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 145
    const/16 v6, 0x14

    const/16 v7, 0x29

    invoke-virtual {v3, v10, v6, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 146
    const/16 v6, 0x15

    const/16 v7, 0x2a

    invoke-virtual {v3, v10, v6, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 147
    const/16 v6, 0x16

    const/16 v7, 0x2b

    invoke-virtual {v3, v10, v6, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 148
    new-array v6, v11, [I

    fill-array-data v6, :array_3

    const-string v24, "Ldummy;"

    const-string v25, "dummyMethod20"

    const-string v26, "VLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;"

    move-object/from16 v27, v6

    invoke-virtual/range {v22 .. v27}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 149
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 150
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 153
    const/4 v7, 0x1

    const-string v22, "calldummyMethodWith2Args"

    const-string v23, "VLjava/lang/Object;Ljava/lang/Object;"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v6, v0

    const/16 v13, 0xc

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 155
    invoke-virtual {v3, v15, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 156
    new-array v6, v1, [I

    aput v1, v6, v5

    const/16 v33, 0x6e

    const-string v34, "Ljava/lang/Object;"

    const-string v35, "toString"

    const-string v36, "Ljava/lang/String;"

    move-object/from16 v32, v3

    move-object/from16 v37, v6

    invoke-virtual/range {v32 .. v37}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 157
    invoke-virtual {v3, v14, v5, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 158
    const/4 v6, 0x5

    new-array v7, v6, [I

    fill-array-data v7, :array_4

    const-string v34, "Ldummy;"

    const-string v35, "dummyMethod2"

    const-string v36, "VLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;"

    move-object/from16 v37, v7

    invoke-virtual/range {v32 .. v37}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 159
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 160
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 163
    const/4 v7, 0x1

    const-string v8, "calldummyMethodWith4Args"

    const-string v9, "VLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 165
    invoke-virtual {v3, v13, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 166
    new-array v6, v1, [I

    const/4 v11, 0x7

    aput v11, v6, v5

    const/16 v22, 0x6e

    const-string v23, "Ljava/lang/Object;"

    const-string v24, "toString"

    const-string v25, "Ljava/lang/String;"

    move-object/from16 v21, v3

    move-object/from16 v26, v6

    invoke-virtual/range {v21 .. v26}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 167
    const/4 v6, 0x2

    invoke-virtual {v3, v14, v6, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 168
    invoke-virtual {v3, v11, v5, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 169
    invoke-virtual {v3, v11, v1, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 170
    const/4 v6, 0x3

    const/16 v10, 0x8

    invoke-virtual {v3, v11, v6, v10}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 171
    const/16 v9, 0x9

    invoke-virtual {v3, v11, v15, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 172
    const/4 v6, 0x5

    const/16 v8, 0xa

    invoke-virtual {v3, v11, v6, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 173
    const/16 v6, 0xb

    const/4 v7, 0x6

    invoke-virtual {v3, v11, v7, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 174
    new-array v6, v11, [I

    fill-array-data v6, :array_5

    const/16 v22, 0x74

    const-string v23, "Ldummy;"

    const-string v24, "dummyMethod"

    const-string v25, "VLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;"

    move-object/from16 v26, v6

    invoke-virtual/range {v21 .. v26}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 175
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 176
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 179
    const/4 v7, 0x1

    const-string v21, "calldummyMethodWithParams"

    const-string v22, "V"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v6, v0

    const/16 v13, 0xa

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    const/16 v15, 0x8

    move-object/from16 v10, v23

    const/4 v13, 0x7

    move-object/from16 v11, v24

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 181
    invoke-virtual {v3, v15, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 182
    const/4 v6, 0x2

    invoke-virtual {v3, v14, v6, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 183
    const/16 v39, 0x54

    const-string v40, "Ldummy;"

    const-string v41, "arg1"

    const-string v42, "Ljava/lang/Object;"

    const/16 v43, 0x3

    const/16 v44, 0x7

    move-object/from16 v38, v3

    invoke-virtual/range {v38 .. v44}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 184
    const-string v40, "Ldummy;"

    const-string v41, "arg2"

    const-string v42, "Ljava/lang/Object;"

    const/16 v43, 0x4

    invoke-virtual/range {v38 .. v44}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 185
    const-string v40, "Ldummy;"

    const-string v41, "arg3"

    const-string v42, "Ljava/lang/Object;"

    const/16 v43, 0x5

    invoke-virtual/range {v38 .. v44}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 186
    const-string v40, "Ldummy;"

    const-string v41, "arg4"

    const-string v42, "Ljava/lang/String;"

    const/16 v43, 0x6

    invoke-virtual/range {v38 .. v44}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 187
    invoke-virtual {v3, v13, v5, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 188
    invoke-virtual {v3, v13, v1, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 189
    new-array v4, v13, [I

    fill-array-data v4, :array_6

    const/16 v33, 0x74

    const-string v34, "Ldummy;"

    const-string v35, "dummyMethod"

    const-string v36, "VLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;"

    move-object/from16 v32, v3

    move-object/from16 v37, v4

    invoke-virtual/range {v32 .. v37}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 190
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 191
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 194
    const-string v8, "doMethod"

    const-string v9, "Ljava/lang/Object;"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 195
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 196
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 197
    const/16 v33, 0x22

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string v37, "Ljava/lang/Object;"

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v37}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 198
    new-array v4, v1, [I

    aput v5, v4, v5

    const/16 v33, 0x70

    const-string v34, "Ljava/lang/Object;"

    const-string v35, "<init>"

    const-string v36, "V"

    move-object/from16 v37, v4

    invoke-virtual/range {v32 .. v37}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 199
    const/16 v4, 0x11

    invoke-virtual {v3, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 200
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 203
    const/16 v6, 0xa

    new-array v10, v6, [Ljava/lang/String;

    const-string v6, "<T:"

    aput-object v6, v10, v5

    const-string v6, "Ljava/lang/Object;"

    aput-object v6, v10, v1

    const-string v6, "T1:"

    const/4 v7, 0x2

    aput-object v6, v10, v7

    const-string v6, "Ljava/lang/Object;"

    const/4 v7, 0x3

    aput-object v6, v10, v7

    const-string v6, "T2:"

    const/4 v7, 0x4

    aput-object v6, v10, v7

    const-string v6, "Ljava/lang/Object;"

    const/4 v7, 0x5

    aput-object v6, v10, v7

    const-string v6, ">("

    const/4 v7, 0x6

    aput-object v6, v10, v7

    const-string v6, "Ljava/lang/Object;"

    aput-object v6, v10, v13

    const-string v6, "Ljava/lang/String;"

    aput-object v6, v10, v15

    const-string v6, "TT;TT1;)TT2;"

    const/16 v11, 0x9

    aput-object v6, v10, v11

    const/4 v7, 0x1

    const-string v8, "dummyGenMethod"

    const-string v9, "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;"

    const/16 v22, 0x0

    move-object v6, v0

    move-object/from16 v11, v22

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 205
    const/4 v6, 0x6

    invoke-virtual {v3, v6, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 206
    new-array v6, v1, [I

    aput v1, v6, v5

    const/16 v33, 0x6e

    const-string v34, "Ldummy;"

    const-string v35, "doMethod"

    const-string v36, "Ljava/lang/Object;"

    move-object/from16 v32, v3

    move-object/from16 v37, v6

    invoke-virtual/range {v32 .. v37}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 207
    const/16 v6, 0xc

    invoke-virtual {v3, v6, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 208
    invoke-virtual {v3, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 209
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 212
    const-string v8, "dummyMethod"

    const-string v9, "VLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 214
    invoke-virtual {v3, v13, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 215
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 216
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 219
    const-string v8, "dummyMethod0"

    const-string v9, "VLjava/lang/Object;Ljava/lang/String;"

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 221
    invoke-virtual {v3, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 222
    const/16 v6, 0x12

    invoke-virtual {v3, v6, v1, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 223
    const/16 v6, 0xa

    const/4 v7, 0x2

    const/16 v11, 0x13

    invoke-virtual {v3, v11, v7, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 224
    const/16 v6, 0x80

    invoke-virtual {v3, v11, v5, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 225
    new-array v6, v1, [I

    aput v5, v6, v5

    const/16 v33, 0x71

    const-string v34, "Ljava/lang/Integer;"

    const-string v35, "valueOf"

    const-string v36, "Ljava/lang/Integer;I"

    move-object/from16 v32, v3

    move-object/from16 v37, v6

    invoke-virtual/range {v32 .. v37}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 226
    const/4 v6, 0x3

    const/16 v7, 0xc

    invoke-virtual {v3, v7, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 227
    const/16 v7, 0x61

    const/4 v8, 0x4

    invoke-virtual {v3, v11, v8, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 228
    const/4 v7, 0x5

    const/16 v9, 0x12

    invoke-virtual {v3, v9, v7, v6}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 229
    const/4 v6, 0x6

    invoke-virtual {v3, v9, v6, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 230
    invoke-virtual {v3, v9, v13, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 231
    const/16 v6, 0x16

    const/16 v7, 0x59

    invoke-virtual {v3, v6, v15, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 232
    const/16 v6, 0x15

    const/high16 v7, 0x41100000    # 9.0f

    const/16 v8, 0xa

    invoke-virtual {v3, v6, v8, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 233
    const/16 v6, 0x18

    const/16 v7, 0xb

    const-wide v8, 0x4058c00000000000L    # 99.0

    invoke-virtual {v3, v6, v7, v8, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(IIJ)V

    .line 234
    const/16 v6, 0xd

    const-string v7, "astring"

    invoke-virtual {v3, v14, v6, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 235
    invoke-virtual {v3, v13, v5, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 236
    new-array v6, v12, [I

    fill-array-data v6, :array_7

    const/16 v33, 0x74

    const-string v34, "Ldummy;"

    const-string v35, "dummyMethodWithAllTypesOfArgs"

    const-string v36, "VLjava/lang/Object;ILjava/lang/Integer;CBSZJFDLjava/lang/String;"

    move-object/from16 v37, v6

    invoke-virtual/range {v32 .. v37}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 237
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 238
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 241
    const/4 v7, 0x1

    const-string v8, "dummyMethod1"

    const-string v9, "VLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;"

    move-object v6, v0

    const/16 v14, 0x13

    move-object/from16 v11, v22

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 242
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 243
    const/4 v6, 0x4

    invoke-virtual {v3, v6, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 244
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 245
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 248
    const-string v8, "dummyMethod2"

    const-string v9, "VLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;"

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 249
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 250
    const/4 v6, 0x5

    invoke-virtual {v3, v6, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 251
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 252
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 255
    const-string v8, "dummyMethod20"

    const-string v9, "VLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 256
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 257
    const/16 v6, 0x17

    invoke-virtual {v3, v6, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 258
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 259
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 262
    const-string v8, "dummyMethodWithAllTypesOfArgs"

    const-string v9, "VLjava/lang/Object;ILjava/lang/Integer;CBSZJFDLjava/lang/String;"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 263
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 264
    invoke-virtual {v3, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 265
    const/16 v4, 0xb

    invoke-virtual {v3, v14, v1, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 266
    const/16 v27, 0x23

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v31, "[Ljava/lang/Object;"

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 267
    const/16 v4, 0x12

    invoke-virtual {v3, v4, v1, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 268
    const/16 v6, 0x4d

    const/4 v7, 0x4

    invoke-virtual {v3, v6, v7, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 269
    invoke-virtual {v3, v4, v1, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 270
    new-array v4, v1, [I

    const/4 v7, 0x5

    aput v7, v4, v5

    const/16 v27, 0x71

    const-string v28, "Ljava/lang/Integer;"

    const-string v29, "valueOf"

    const-string v30, "Ljava/lang/Integer;I"

    move-object/from16 v31, v4

    invoke-virtual/range {v26 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 271
    const/16 v4, 0xc

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 272
    invoke-virtual {v3, v6, v7, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 273
    const/16 v4, 0x12

    invoke-virtual {v3, v4, v1, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 274
    const/4 v7, 0x6

    invoke-virtual {v3, v6, v7, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 275
    const/4 v7, 0x3

    invoke-virtual {v3, v4, v1, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 276
    new-array v4, v1, [I

    aput v13, v4, v5

    const-string v28, "Ljava/lang/Character;"

    const-string v29, "valueOf"

    const-string v30, "Ljava/lang/Character;C"

    move-object/from16 v31, v4

    invoke-virtual/range {v26 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 277
    const/16 v4, 0xc

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 278
    invoke-virtual {v3, v6, v7, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 279
    const/4 v4, 0x4

    const/16 v7, 0x12

    invoke-virtual {v3, v7, v1, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 280
    new-array v4, v1, [I

    aput v15, v4, v5

    const-string v28, "Ljava/lang/Byte;"

    const-string v29, "valueOf"

    const-string v30, "Ljava/lang/Byte;B"

    move-object/from16 v31, v4

    invoke-virtual/range {v26 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 281
    const/16 v4, 0xc

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 282
    invoke-virtual {v3, v6, v7, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 283
    const/4 v4, 0x5

    const/16 v7, 0x12

    invoke-virtual {v3, v7, v1, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 284
    new-array v4, v1, [I

    const/16 v7, 0x9

    aput v7, v4, v5

    const-string v28, "Ljava/lang/Short;"

    const-string v29, "valueOf"

    const-string v30, "Ljava/lang/Short;S"

    move-object/from16 v31, v4

    invoke-virtual/range {v26 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 285
    const/16 v4, 0xc

    const/4 v8, 0x2

    invoke-virtual {v3, v4, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 286
    invoke-virtual {v3, v6, v8, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 287
    const/4 v4, 0x6

    const/16 v8, 0x12

    invoke-virtual {v3, v8, v1, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 288
    new-array v4, v1, [I

    const/16 v8, 0xa

    aput v8, v4, v5

    const-string v28, "Ljava/lang/Boolean;"

    const-string v29, "valueOf"

    const-string v30, "Ljava/lang/Boolean;Z"

    move-object/from16 v31, v4

    invoke-virtual/range {v26 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 289
    const/16 v4, 0xc

    const/4 v8, 0x2

    invoke-virtual {v3, v4, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 290
    invoke-virtual {v3, v6, v8, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 291
    const/16 v4, 0x12

    invoke-virtual {v3, v4, v1, v13}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 292
    new-array v4, v8, [I

    fill-array-data v4, :array_8

    const-string v28, "Ljava/lang/Long;"

    const-string v29, "valueOf"

    const-string v30, "Ljava/lang/Long;J"

    move-object/from16 v31, v4

    invoke-virtual/range {v26 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 293
    const/16 v4, 0xc

    const/4 v8, 0x2

    invoke-virtual {v3, v4, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 294
    invoke-virtual {v3, v6, v8, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 295
    invoke-virtual {v3, v14, v1, v15}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 296
    new-array v4, v1, [I

    const/16 v8, 0xd

    aput v8, v4, v5

    const-string v28, "Ljava/lang/Float;"

    const-string v29, "valueOf"

    const-string v30, "Ljava/lang/Float;F"

    move-object/from16 v31, v4

    invoke-virtual/range {v26 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 297
    const/16 v4, 0xc

    const/4 v8, 0x2

    invoke-virtual {v3, v4, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 298
    invoke-virtual {v3, v6, v8, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 299
    invoke-virtual {v3, v14, v1, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 300
    new-array v4, v8, [I

    fill-array-data v4, :array_9

    const-string v28, "Ljava/lang/Double;"

    const-string v29, "valueOf"

    const-string v30, "Ljava/lang/Double;D"

    move-object/from16 v31, v4

    invoke-virtual/range {v26 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 301
    const/16 v4, 0xc

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 302
    invoke-virtual {v3, v6, v7, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 303
    const/16 v4, 0xa

    invoke-virtual {v3, v14, v1, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 304
    const/16 v4, 0x10

    invoke-virtual {v3, v6, v4, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 305
    const-string v4, "none"

    const/16 v6, 0x1a

    invoke-virtual {v3, v6, v1, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 306
    const/4 v4, 0x3

    new-array v6, v4, [I

    fill-array-data v6, :array_a

    const/16 v27, 0x6e

    const-string v28, "Ldummy;"

    const-string v29, "callJsMethodsWithArgs"

    const-string v30, "VLjava/lang/String;[Ljava/lang/Object;"

    move-object/from16 v31, v6

    invoke-virtual/range {v26 .. v31}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 307
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 308
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 311
    const/4 v7, 0x1

    const-string v8, "setNativeScriptOverride"

    const-string v9, "VLjava/lang/String;"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v3

    .line 312
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 313
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 314
    const-string v4, "init"

    const/16 v6, 0x1a

    invoke-virtual {v3, v6, v5, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 315
    const/4 v4, 0x2

    new-array v6, v4, [I

    fill-array-data v6, :array_b

    const/16 v25, 0x6e

    const-string v26, "Ljava/lang/String;"

    const-string v27, "equals"

    const-string v28, "ZLjava/lang/Object;"

    move-object/from16 v24, v3

    move-object/from16 v29, v6

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 316
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 317
    new-instance v4, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v4}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 318
    .local v4, "l0":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v6, 0x38

    invoke-virtual {v3, v6, v4, v5, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 319
    const/16 v7, 0x12

    invoke-virtual {v3, v7, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 320
    const/16 v25, 0x5c

    const-string v26, "Ldummy;"

    const-string v27, "__ctorOverridden"

    const-string v28, "Z"

    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 321
    new-instance v1, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v1}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 322
    .local v1, "l1":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v3, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 323
    invoke-virtual {v3, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 324
    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 325
    const-string v7, "clone"

    const/16 v8, 0x1a

    invoke-virtual {v3, v8, v5, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 326
    const/4 v7, 0x2

    new-array v8, v7, [I

    fill-array-data v8, :array_c

    const/16 v25, 0x6e

    const-string v26, "Ljava/lang/String;"

    const-string v27, "equals"

    const-string v28, "ZLjava/lang/Object;"

    move-object/from16 v29, v8

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 327
    const/16 v7, 0xa

    invoke-virtual {v3, v7, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 328
    new-instance v7, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v7}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 329
    .local v7, "l2":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v3, v6, v7, v5, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 330
    const/16 v25, 0x56

    const-string v26, "Ldummy;"

    const-string v27, "__ho0"

    const-string v28, "B"

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 331
    const/16 v25, 0xde

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 332
    const/16 v25, 0x8d

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 333
    const/16 v25, 0x5d

    const-string v26, "Ldummy;"

    const-string v27, "__ho0"

    const-string v28, "B"

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 334
    const/16 v8, 0x28

    invoke-virtual {v3, v8, v1, v5, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 335
    invoke-virtual {v3, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 336
    const-string v9, "equals"

    const/16 v10, 0x1a

    invoke-virtual {v3, v10, v5, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 337
    const/4 v9, 0x2

    new-array v10, v9, [I

    fill-array-data v10, :array_d

    const/16 v25, 0x6e

    const-string v26, "Ljava/lang/String;"

    const-string v27, "equals"

    const-string v28, "ZLjava/lang/Object;"

    move-object/from16 v29, v10

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 338
    const/16 v9, 0xa

    invoke-virtual {v3, v9, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 339
    new-instance v9, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v9}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 340
    .local v9, "l3":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v3, v6, v9, v5, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 341
    const/16 v25, 0x56

    const-string v26, "Ldummy;"

    const-string v27, "__ho0"

    const-string v28, "B"

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 342
    const/16 v25, 0xde

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x2

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 343
    const/16 v25, 0x8d

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 344
    const/16 v25, 0x5d

    const-string v26, "Ldummy;"

    const-string v27, "__ho0"

    const-string v28, "B"

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 345
    invoke-virtual {v3, v8, v1, v5, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 346
    invoke-virtual {v3, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 347
    const-string v10, "finalize"

    const/16 v11, 0x1a

    invoke-virtual {v3, v11, v5, v10}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 348
    const/4 v10, 0x2

    new-array v11, v10, [I

    fill-array-data v11, :array_e

    const/16 v25, 0x6e

    const-string v26, "Ljava/lang/String;"

    const-string v27, "equals"

    const-string v28, "ZLjava/lang/Object;"

    move-object/from16 v29, v11

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 349
    const/16 v10, 0xa

    invoke-virtual {v3, v10, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 350
    new-instance v10, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v10}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 351
    .local v10, "l4":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v3, v6, v10, v5, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 352
    const/16 v25, 0x56

    const-string v26, "Ldummy;"

    const-string v27, "__ho0"

    const-string v28, "B"

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 353
    const/16 v25, 0xde

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x4

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 354
    const/16 v25, 0x8d

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 355
    const/16 v25, 0x5d

    const-string v26, "Ldummy;"

    const-string v27, "__ho0"

    const-string v28, "B"

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 356
    invoke-virtual {v3, v8, v1, v5, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 357
    invoke-virtual {v3, v10}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 358
    const-string v11, "hashCode"

    const/16 v12, 0x1a

    invoke-virtual {v3, v12, v5, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 359
    const/4 v11, 0x2

    new-array v12, v11, [I

    fill-array-data v12, :array_f

    const/16 v25, 0x6e

    const-string v26, "Ljava/lang/String;"

    const-string v27, "equals"

    const-string v28, "ZLjava/lang/Object;"

    move-object/from16 v29, v12

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 360
    const/16 v11, 0xa

    invoke-virtual {v3, v11, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 361
    new-instance v11, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v11}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    .line 362
    .local v11, "l5":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v3, v6, v11, v5, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 363
    const/16 v25, 0x56

    const-string v26, "Ldummy;"

    const-string v27, "__ho0"

    const-string v28, "B"

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 364
    const/16 v25, 0xde

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x8

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 365
    const/16 v25, 0x8d

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 366
    const/16 v25, 0x5d

    const-string v26, "Ldummy;"

    const-string v27, "__ho0"

    const-string v28, "B"

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 367
    invoke-virtual {v3, v8, v1, v5, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 368
    invoke-virtual {v3, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 369
    const-string v12, "toString"

    const/16 v13, 0x1a

    invoke-virtual {v3, v13, v5, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 370
    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_10

    const/16 v25, 0x6e

    const-string v26, "Ljava/lang/String;"

    const-string v27, "equals"

    const-string v28, "ZLjava/lang/Object;"

    move-object/from16 v29, v12

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 371
    const/16 v12, 0xa

    invoke-virtual {v3, v12, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 372
    invoke-virtual {v3, v6, v1, v5, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 373
    const/16 v25, 0x56

    const-string v26, "Ldummy;"

    const-string v27, "__ho0"

    const-string v28, "B"

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 374
    const/16 v25, 0xde

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x10

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 375
    const/16 v25, 0x8d

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 376
    const/16 v25, 0x5d

    const-string v26, "Ldummy;"

    const-string v27, "__ho0"

    const-string v28, "B"

    invoke-virtual/range {v24 .. v30}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 377
    invoke-virtual {v3, v8, v1, v5, v5}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 378
    invoke-virtual {v3}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 380
    .end local v1    # "l1":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v4    # "l0":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v7    # "l2":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v9    # "l3":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v10    # "l4":Lorg/ow2/asmdex/structureCommon/Label;
    .end local v11    # "l5":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v0}, Lorg/ow2/asmdex/ClassVisitor;->visitEnd()V

    .line 381
    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x0
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x0
        0x2
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data

    :array_8
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_9
    .array-data 4
        0xe
        0xf
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x0
    .end array-data
.end method
