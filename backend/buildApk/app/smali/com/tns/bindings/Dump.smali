.class public Lcom/tns/bindings/Dump;
.super Ljava/lang/Object;
.source "Dump.java"


# static fields
.field public static final CLASS_NAME_LOCATION_SEPARATOR:C = '_'

.field private static final LCOM_TNS:Ljava/lang/String; = "Lcom/tns/gen/"

.field private static final LCOM_TNS_RUNTIME:Ljava/lang/String; = "Lcom/tns/Runtime;"

.field private static final booleanTypeDescriptor:Ljava/lang/String; = "Ljava/lang/Boolean;"

.field private static final byteTypeDescriptor:Ljava/lang/String; = "Ljava/lang/Byte;"

.field static final callJSMethodName:Ljava/lang/String; = "callJSMethod"

.field private static final callJsMethodSignatureCtor:Ljava/lang/String; = "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;"

.field private static final callJsMethodSignatureMethod:Ljava/lang/String; = "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;"

.field private static final characterTypeDescriptor:Ljava/lang/String; = "Ljava/lang/Character;"

.field static final classImplentedInterfaces:[Ljava/lang/String;

.field private static final doubleTypeDescriptor:Ljava/lang/String; = "Ljava/lang/Double;"

.field private static final floatTypeDescriptor:Ljava/lang/String; = "Ljava/lang/Float;"

.field static final initInstanceMethodName:Ljava/lang/String; = "initInstance"

.field private static final integerTypeDescriptor:Ljava/lang/String; = "Ljava/lang/Integer;"

.field static final interfaceImplementedInterfaces:[Ljava/lang/String;

.field private static final longTypeDescriptor:Ljava/lang/String; = "Ljava/lang/Long;"

.field static final methodDescriptorBuilder:Ljava/lang/StringBuffer;

.field static final objectClass:Ljava/lang/String; = "Ljava/lang/Object;"

.field static final runtimeClass:Ljava/lang/String; = "Lcom/tns/Runtime;"

.field private static final shortTypeDescriptor:Ljava/lang/String; = "Ljava/lang/Short;"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/tns/bindings/Dump;->methodDescriptorBuilder:Ljava/lang/StringBuffer;

    .line 809
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Lcom/tns/NativeScriptHashCodeProvider;"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/tns/bindings/Dump;->classImplentedInterfaces:[Ljava/lang/String;

    .line 810
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, ""

    aput-object v2, v1, v0

    sput-object v1, Lcom/tns/bindings/Dump;->interfaceImplementedInterfaces:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areMethodSignaturesEqual(Lcom/tns/bindings/desc/MethodDescriptor;Lcom/tns/bindings/desc/MethodDescriptor;)Z
    .locals 6
    .param p0, "x"    # Lcom/tns/bindings/desc/MethodDescriptor;
    .param p1, "y"    # Lcom/tns/bindings/desc/MethodDescriptor;

    .line 380
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const/4 v0, 0x1

    return v0

    .line 384
    :cond_0
    invoke-interface {p0}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 385
    return v1

    .line 388
    :cond_1
    invoke-interface {p0}, Lcom/tns/bindings/desc/MethodDescriptor;->getParameterTypes()[Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v0

    .line 389
    .local v0, "xParams":[Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-interface {p1}, Lcom/tns/bindings/desc/MethodDescriptor;->getParameterTypes()[Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v2

    .line 391
    .local v2, "yParams":[Lcom/tns/bindings/desc/ClassDescriptor;
    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_2

    .line 392
    return v1

    .line 395
    :cond_2
    const/4 v1, 0x1

    .line 397
    .local v1, "result":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 398
    aget-object v4, v0, v3

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 399
    const/4 v1, 0x0

    .line 400
    goto :goto_1

    .line 397
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    .end local v3    # "i":I
    :cond_4
    :goto_1
    return v1
.end method

.method private collectAbstractMethods(Lcom/tns/bindings/desc/ClassDescriptor;Ljava/util/List;)V
    .locals 13
    .param p1, "clazz"    # Lcom/tns/bindings/desc/ClassDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tns/bindings/desc/ClassDescriptor;",
            "Ljava/util/List<",
            "Lcom/tns/bindings/desc/MethodDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/tns/bindings/desc/MethodDescriptor;>;"
    invoke-interface {p1}, Lcom/tns/bindings/desc/ClassDescriptor;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 228
    .local v0, "alreadyAddedMethods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tns/bindings/desc/MethodDescriptor;

    .line 229
    .local v2, "md":Lcom/tns/bindings/desc/MethodDescriptor;
    invoke-direct {p0, v2}, Lcom/tns/bindings/Dump;->getMethodSignature(Lcom/tns/bindings/desc/MethodDescriptor;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "sig":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v2    # "md":Lcom/tns/bindings/desc/MethodDescriptor;
    .end local v3    # "sig":Ljava/lang/String;
    goto :goto_0

    .line 233
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 235
    .local v1, "concreteMethods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/tns/bindings/desc/ClassDescriptor;->isInterface()Z

    move-result v2

    .line 236
    .local v2, "isInterfaceClass":Z
    if-eqz v2, :cond_2

    new-instance v3, Lcom/tns/bindings/desc/reflection/ClassInfo;

    const-class v4, Ljava/lang/Object;

    invoke-direct {v3, v4}, Lcom/tns/bindings/desc/reflection/ClassInfo;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    :cond_2
    move-object v3, p1

    .line 237
    .local v3, "startingConcreteClassDesc":Lcom/tns/bindings/desc/ClassDescriptor;
    :goto_1
    invoke-interface {v3}, Lcom/tns/bindings/desc/ClassDescriptor;->getDeclaredMethods()[Lcom/tns/bindings/desc/MethodDescriptor;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_4

    aget-object v8, v4, v7

    .line 238
    .local v8, "objMethod":Lcom/tns/bindings/desc/MethodDescriptor;
    invoke-interface {v8}, Lcom/tns/bindings/desc/MethodDescriptor;->isStatic()Z

    move-result v9

    if-nez v9, :cond_3

    .line 239
    invoke-direct {p0, v8}, Lcom/tns/bindings/Dump;->getMethodSignature(Lcom/tns/bindings/desc/MethodDescriptor;)Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, "sig":Ljava/lang/String;
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v8    # "objMethod":Lcom/tns/bindings/desc/MethodDescriptor;
    .end local v9    # "sig":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 244
    :cond_4
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 245
    .local v4, "typesToProcess":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/tns/bindings/desc/ClassDescriptor;>;"
    invoke-interface {v4, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface {p1}, Lcom/tns/bindings/desc/ClassDescriptor;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 247
    invoke-interface {v4, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 251
    invoke-interface {v4}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tns/bindings/desc/ClassDescriptor;

    .line 252
    .local v5, "currentType":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-interface {v5}, Lcom/tns/bindings/desc/ClassDescriptor;->getDeclaredMethods()[Lcom/tns/bindings/desc/MethodDescriptor;

    move-result-object v7

    .line 253
    .local v7, "methods":[Lcom/tns/bindings/desc/MethodDescriptor;
    array-length v8, v7

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_a

    aget-object v10, v7, v9

    .line 254
    .local v10, "m":Lcom/tns/bindings/desc/MethodDescriptor;
    invoke-interface {v10}, Lcom/tns/bindings/desc/MethodDescriptor;->isStatic()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 255
    goto :goto_5

    .line 257
    :cond_6
    invoke-direct {p0, v10}, Lcom/tns/bindings/Dump;->getMethodSignature(Lcom/tns/bindings/desc/MethodDescriptor;)Ljava/lang/String;

    move-result-object v11

    .line 258
    .local v11, "sig":Ljava/lang/String;
    invoke-interface {v10}, Lcom/tns/bindings/desc/MethodDescriptor;->isAbstract()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 259
    invoke-interface {v1, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 260
    if-eqz v2, :cond_7

    .line 261
    invoke-interface {v10}, Lcom/tns/bindings/desc/MethodDescriptor;->setAsInterfaceMethod()V

    .line 263
    :cond_7
    invoke-interface {p2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 266
    :cond_8
    invoke-interface {v1, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 267
    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v10    # "m":Lcom/tns/bindings/desc/MethodDescriptor;
    .end local v11    # "sig":Ljava/lang/String;
    :cond_9
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 271
    :cond_a
    invoke-interface {v5}, Lcom/tns/bindings/desc/ClassDescriptor;->isInterface()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-interface {v5}, Lcom/tns/bindings/desc/ClassDescriptor;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "java.lang.Object"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 272
    invoke-interface {v5}, Lcom/tns/bindings/desc/ClassDescriptor;->getSuperclass()Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 275
    :cond_b
    invoke-interface {v5}, Lcom/tns/bindings/desc/ClassDescriptor;->getInterfaces()[Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_c

    aget-object v11, v8, v10

    .line 276
    .local v11, "iface":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-interface {v4, v11}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v11    # "iface":Lcom/tns/bindings/desc/ClassDescriptor;
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 278
    .end local v5    # "currentType":Lcom/tns/bindings/desc/ClassDescriptor;
    .end local v7    # "methods":[Lcom/tns/bindings/desc/MethodDescriptor;
    :cond_c
    goto :goto_3

    .line 279
    :cond_d
    return-void
.end method

.method private generateArgsArray(IILcom/tns/bindings/desc/MethodDescriptor;)[I
    .locals 7
    .param p1, "thisRegister"    # I
    .param p2, "argCount"    # I
    .param p3, "ctor"    # Lcom/tns/bindings/desc/MethodDescriptor;

    .line 623
    invoke-interface {p3}, Lcom/tns/bindings/desc/MethodDescriptor;->getParameterTypes()[Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v0

    .line 624
    .local v0, "paramTypes":[Lcom/tns/bindings/desc/ClassDescriptor;
    array-length v1, v0

    .line 625
    .local v1, "argumentsCount":I
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 627
    .local v2, "argsForSuper":[I
    const/4 v3, 0x0

    .line 628
    .local v3, "argsForSuperIndex":I
    aput p1, v2, v3

    .line 629
    add-int/lit8 v3, v3, 0x1

    .line 631
    const/4 v4, 0x0

    .line 632
    .local v4, "arrayIndex":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 633
    aget-object v5, v0, v4

    .line 634
    .local v5, "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    sget-object v6, Lcom/tns/bindings/desc/ClassDescriptor;->LONG:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/tns/bindings/desc/ClassDescriptor;->DOUBLE:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 640
    :cond_0
    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v3

    .line 641
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 635
    :cond_1
    :goto_1
    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v3

    .line 636
    add-int/lit8 v3, v3, 0x1

    .line 637
    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x2

    aput v6, v2, v3

    .line 638
    add-int/lit8 v3, v3, 0x1

    .line 645
    :goto_2
    nop

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    add-int/lit8 v4, v4, 0x1

    .line 646
    goto :goto_0

    .line 648
    :cond_2
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    return-object v5
.end method

.method private generateArrayForCallJsArguments(Lorg/ow2/asmdex/MethodVisitor;[Lcom/tns/bindings/desc/ClassDescriptor;ILjava/lang/String;Ljava/lang/String;)I
    .locals 27
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "paramTypes"    # [Lcom/tns/bindings/desc/ClassDescriptor;
    .param p3, "thisRegister"    # I
    .param p4, "classSignature"    # Ljava/lang/String;
    .param p5, "tnsClassSignature"    # Ljava/lang/String;

    .line 655
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    array-length v8, v7

    .line 657
    .local v8, "argumentsCount":I
    const/4 v9, 0x0

    if-nez v8, :cond_0

    .line 658
    const/16 v0, 0x12

    invoke-virtual {v6, v0, v9, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 659
    return v9

    .line 662
    :cond_0
    const/16 v10, 0x13

    const/4 v11, 0x2

    invoke-virtual {v6, v10, v11, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 663
    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "[Ljava/lang/Object;"

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "arrayIndex":I
    const/4 v1, 0x4

    .line 667
    .local v1, "argNumber":I
    const/4 v2, 0x0

    move v12, v0

    move v13, v1

    move v14, v2

    .line 668
    .end local v0    # "arrayIndex":I
    .end local v1    # "argNumber":I
    .local v12, "arrayIndex":I
    .local v13, "argNumber":I
    .local v14, "numberOfDoubleRegisterArguments":I
    :goto_0
    add-int/lit8 v0, v8, 0x4

    add-int/2addr v0, v14

    if-ge v13, v0, :cond_a

    .line 669
    const/4 v15, 0x1

    invoke-virtual {v6, v10, v15, v12}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 671
    aget-object v5, v7, v12

    .line 672
    .local v5, "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-interface {v5}, Lcom/tns/bindings/desc/ClassDescriptor;->isPrimitive()Z

    move-result v0

    const/16 v4, 0x4d

    if-eqz v0, :cond_9

    .line 673
    sget-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->INT:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0xc

    if-eqz v0, :cond_1

    .line 675
    const/16 v1, 0x77

    new-array v2, v15, [I

    aput v13, v2, v9

    const-string v16, "Ljava/lang/Integer;"

    const-string v17, "valueOf"

    const-string v18, "Ljava/lang/Integer;I"

    move-object/from16 v0, p1

    move-object/from16 v19, v2

    move-object/from16 v2, v16

    const/16 v10, 0xc

    move-object/from16 v3, v17

    const/16 v9, 0x4d

    move-object/from16 v4, v18

    move-object/from16 v20, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .local v20, "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 678
    invoke-virtual {v6, v10, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 681
    const/4 v0, 0x0

    invoke-virtual {v6, v9, v11, v0, v15}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    move-object/from16 v18, v20

    goto/16 :goto_1

    .line 682
    .end local v20    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    :cond_1
    move-object/from16 v20, v5

    const/4 v0, 0x0

    const/16 v9, 0x4d

    const/16 v10, 0xc

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v20    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    sget-object v1, Lcom/tns/bindings/desc/ClassDescriptor;->CHAR:Lcom/tns/bindings/desc/ClassDescriptor;

    .end local v20    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    const/16 v1, 0x77

    new-array v4, v15, [I

    aput v13, v4, v0

    const-string v2, "Ljava/lang/Character;"

    const-string v3, "valueOf"

    const-string v18, "Ljava/lang/Character;C"

    move-object/from16 v0, p1

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move-object/from16 v21, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .local v21, "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 684
    invoke-virtual {v6, v10, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 685
    const/4 v0, 0x0

    invoke-virtual {v6, v9, v11, v0, v15}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    move-object/from16 v18, v21

    goto/16 :goto_1

    .line 687
    .end local v21    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    :cond_2
    move-object/from16 v21, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v21    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    sget-object v1, Lcom/tns/bindings/desc/ClassDescriptor;->BYTE:Lcom/tns/bindings/desc/ClassDescriptor;

    .end local v21    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 688
    const/16 v1, 0x77

    new-array v4, v15, [I

    aput v13, v4, v0

    const-string v2, "Ljava/lang/Byte;"

    const-string v3, "valueOf"

    const-string v18, "Ljava/lang/Byte;B"

    move-object/from16 v0, p1

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move-object/from16 v22, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .local v22, "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 689
    invoke-virtual {v6, v10, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 690
    const/4 v0, 0x0

    invoke-virtual {v6, v9, v11, v0, v15}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    move-object/from16 v18, v22

    goto/16 :goto_1

    .line 692
    .end local v22    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    :cond_3
    move-object/from16 v22, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v22    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    sget-object v1, Lcom/tns/bindings/desc/ClassDescriptor;->SHORT:Lcom/tns/bindings/desc/ClassDescriptor;

    .end local v22    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 693
    const/16 v1, 0x77

    new-array v4, v15, [I

    aput v13, v4, v0

    const-string v2, "Ljava/lang/Short;"

    const-string v3, "valueOf"

    const-string v18, "Ljava/lang/Short;S"

    move-object/from16 v0, p1

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move-object/from16 v23, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .local v23, "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 694
    invoke-virtual {v6, v10, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 695
    const/4 v0, 0x0

    invoke-virtual {v6, v9, v11, v0, v15}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    move-object/from16 v18, v23

    goto/16 :goto_1

    .line 697
    .end local v23    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    :cond_4
    move-object/from16 v23, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v23    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    sget-object v1, Lcom/tns/bindings/desc/ClassDescriptor;->BOOLEAN:Lcom/tns/bindings/desc/ClassDescriptor;

    .end local v23    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 698
    const/16 v1, 0x77

    new-array v4, v15, [I

    aput v13, v4, v0

    const-string v2, "Ljava/lang/Boolean;"

    const-string v3, "valueOf"

    const-string v18, "Ljava/lang/Boolean;Z"

    move-object/from16 v0, p1

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move-object/from16 v24, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .local v24, "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 699
    invoke-virtual {v6, v10, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 700
    const/4 v0, 0x0

    invoke-virtual {v6, v9, v11, v0, v15}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    move-object/from16 v18, v24

    goto/16 :goto_1

    .line 701
    .end local v24    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    :cond_5
    move-object/from16 v24, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v24    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    sget-object v1, Lcom/tns/bindings/desc/ClassDescriptor;->LONG:Lcom/tns/bindings/desc/ClassDescriptor;

    .end local v24    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 702
    const/16 v1, 0x77

    new-array v4, v11, [I

    aput v13, v4, v0

    add-int/lit8 v0, v13, 0x1

    aput v0, v4, v15

    const-string v2, "Ljava/lang/Long;"

    const-string v3, "valueOf"

    const-string v18, "Ljava/lang/Long;J"

    move-object/from16 v0, p1

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move-object/from16 v25, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .local v25, "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 703
    invoke-virtual {v6, v10, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 704
    const/4 v0, 0x0

    invoke-virtual {v6, v9, v11, v0, v15}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 705
    add-int/lit8 v13, v13, 0x1

    .line 706
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v18, v25

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 707
    .end local v25    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    :cond_6
    move-object/from16 v25, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v25    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    sget-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->FLOAT:Lcom/tns/bindings/desc/ClassDescriptor;

    .end local v25    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 708
    const/16 v1, 0x77

    new-array v4, v15, [I

    const/4 v0, 0x0

    aput v13, v4, v0

    const-string v2, "Ljava/lang/Float;"

    const-string v3, "valueOf"

    const-string v18, "Ljava/lang/Float;F"

    move-object/from16 v0, p1

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move-object/from16 v26, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .local v26, "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 709
    invoke-virtual {v6, v10, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 710
    const/4 v0, 0x0

    invoke-virtual {v6, v9, v11, v0, v15}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    move-object/from16 v18, v26

    goto :goto_1

    .line 712
    .end local v26    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    :cond_7
    move-object/from16 v26, v5

    const/4 v0, 0x0

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v26    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    sget-object v1, Lcom/tns/bindings/desc/ClassDescriptor;->DOUBLE:Lcom/tns/bindings/desc/ClassDescriptor;

    .end local v26    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 713
    const/16 v1, 0x77

    new-array v4, v11, [I

    aput v13, v4, v0

    add-int/lit8 v0, v13, 0x1

    aput v0, v4, v15

    const-string v2, "Ljava/lang/Double;"

    const-string v3, "valueOf"

    const-string v18, "Ljava/lang/Double;D"

    move-object/from16 v0, p1

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move-object/from16 v18, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .local v18, "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 714
    invoke-virtual {v6, v10, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 715
    const/4 v0, 0x0

    invoke-virtual {v6, v9, v11, v0, v15}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 716
    add-int/lit8 v13, v13, 0x1

    .line 717
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 712
    .end local v18    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    :cond_8
    move-object/from16 v18, v5

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v18    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    goto :goto_1

    .line 723
    .end local v18    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    :cond_9
    move-object/from16 v18, v5

    const/4 v0, 0x0

    const/16 v9, 0x4d

    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    .restart local v18    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-virtual {v6, v9, v13, v0, v15}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 732
    :goto_1
    add-int/2addr v13, v15

    .line 733
    nop

    .end local v18    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    add-int/lit8 v12, v12, 0x1

    .line 734
    const/4 v9, 0x0

    const/16 v10, 0x13

    goto/16 :goto_0

    .line 736
    :cond_a
    return v8
.end method

.method private generateCallOverrideBlock(Lorg/ow2/asmdex/MethodVisitor;Lcom/tns/bindings/desc/MethodDescriptor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "method"    # Lcom/tns/bindings/desc/MethodDescriptor;
    .param p3, "thisRegister"    # I
    .param p4, "classSignature"    # Ljava/lang/String;
    .param p5, "tnsClassSignature"    # Ljava/lang/String;

    .line 605
    invoke-interface {p2}, Lcom/tns/bindings/desc/MethodDescriptor;->getParameterTypes()[Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tns/bindings/Dump;->generateArrayForCallJsArguments(Lorg/ow2/asmdex/MethodVisitor;[Lcom/tns/bindings/desc/ClassDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 606
    .local v0, "argCount":I
    invoke-interface {p2}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x1a

    move-object v11, p1

    invoke-virtual {p1, v3, v2, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 608
    invoke-interface {p2}, Lcom/tns/bindings/desc/MethodDescriptor;->getReturnType()Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v1

    .line 609
    .local v1, "returnType":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-interface {v1}, Lcom/tns/bindings/desc/ClassDescriptor;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    const/16 v5, 0x62

    invoke-static {v1}, Lcom/tns/bindings/Dump;->getClassSignatureOfType(Lcom/tns/bindings/desc/ClassDescriptor;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-string v7, "TYPE"

    const-string v8, "Ljava/lang/Class;"

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 613
    :cond_0
    const/16 v5, 0x1c

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1}, Lcom/tns/bindings/Dump;->getClassSignatureOfType(Lcom/tns/bindings/desc/ClassDescriptor;)Ljava/lang/String;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 616
    :goto_0
    const/16 v5, 0x71

    const/4 v3, 0x4

    new-array v9, v3, [I

    const/4 v3, 0x0

    aput p3, v9, v3

    aput v2, v9, v2

    const/4 v2, 0x2

    aput v2, v9, v2

    const/4 v2, 0x3

    aput v3, v9, v2

    const-string v6, "Lcom/tns/Runtime;"

    const-string v7, "callJSMethod"

    const-string v8, "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;"

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 620
    return-void
.end method

.method private generateClass(Lorg/ow2/asmdex/ApplicationWriter;Lcom/tns/bindings/desc/ClassDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;[Lcom/tns/bindings/AnnotationDescriptor;)Lorg/ow2/asmdex/ClassVisitor;
    .locals 16
    .param p1, "aw"    # Lorg/ow2/asmdex/ApplicationWriter;
    .param p2, "classTo"    # Lcom/tns/bindings/desc/ClassDescriptor;
    .param p3, "classSignature"    # Ljava/lang/String;
    .param p4, "tnsClassSignature"    # Ljava/lang/String;
    .param p6, "annotations"    # [Lcom/tns/bindings/AnnotationDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ow2/asmdex/ApplicationWriter;",
            "Lcom/tns/bindings/desc/ClassDescriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/tns/bindings/desc/ClassDescriptor;",
            ">;[",
            "Lcom/tns/bindings/AnnotationDescriptor;",
            ")",
            "Lorg/ow2/asmdex/ClassVisitor;"
        }
    .end annotation

    .line 815
    .local p5, "implementedInterfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/tns/bindings/desc/ClassDescriptor;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lcom/tns/bindings/Dump;->getDexModifiers(Lcom/tns/bindings/desc/Descriptor;)I

    move-result v10

    .line 817
    .local v10, "classModifiers":I
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lcom/tns/bindings/Dump;->classImplentedInterfaces:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v3

    .line 819
    .local v11, "interfacesToImplement":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Lcom/tns/bindings/desc/ClassDescriptor;->isInterface()Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_2

    .line 820
    sget-object v3, Lcom/tns/bindings/Dump;->interfaceImplementedInterfaces:[Ljava/lang/String;

    const/4 v4, 0x1

    aput-object p3, v3, v4

    .line 821
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 822
    .local v6, "interfaceToImpl":Ljava/lang/String;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 823
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    .end local v6    # "interfaceToImpl":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 827
    :cond_1
    const-string v3, "Ljava/lang/Object;"

    move-object v13, v3

    .end local p3    # "classSignature":Ljava/lang/String;
    .local v3, "classSignature":Ljava/lang/String;
    goto :goto_2

    .line 829
    .end local v3    # "classSignature":Ljava/lang/String;
    .restart local p3    # "classSignature":Ljava/lang/String;
    :cond_2
    if-eqz p5, :cond_3

    .line 830
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tns/bindings/desc/ClassDescriptor;

    .line 831
    .local v4, "interfaceToImpl":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-static {v4}, Lcom/tns/bindings/Dump;->getAsmDescriptor(Lcom/tns/bindings/desc/ClassDescriptor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    .end local v4    # "interfaceToImpl":Lcom/tns/bindings/desc/ClassDescriptor;
    goto :goto_1

    .line 836
    :cond_3
    move-object/from16 v13, p3

    .end local p3    # "classSignature":Ljava/lang/String;
    .local v13, "classSignature":Ljava/lang/String;
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 837
    .local v3, "interfacesToImplementArr":[Ljava/lang/String;
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, [Ljava/lang/String;

    .line 839
    .end local v3    # "interfacesToImplementArr":[Ljava/lang/String;
    .local v14, "interfacesToImplementArr":[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v3, p1

    move v4, v10

    move-object/from16 v5, p4

    move-object v7, v13

    move-object v8, v14

    invoke-virtual/range {v3 .. v8}, Lorg/ow2/asmdex/ApplicationWriter;->visitClass(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/ClassVisitor;

    move-result-object v15

    .line 840
    .local v15, "cv":Lorg/ow2/asmdex/ClassVisitor;
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, v15

    move v5, v10

    move-object/from16 v6, p4

    move-object v8, v13

    move-object v9, v14

    invoke-virtual/range {v3 .. v9}, Lorg/ow2/asmdex/ClassVisitor;->visit(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 841
    if-eqz v1, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    .line 842
    array-length v3, v1

    :goto_3
    if-ge v12, v3, :cond_4

    aget-object v4, v1, v12

    .line 843
    .local v4, "ad":Lcom/tns/bindings/AnnotationDescriptor;
    invoke-virtual {v4}, Lcom/tns/bindings/AnnotationDescriptor;->getAnnotationClassname()Ljava/lang/String;

    move-result-object v5

    .line 844
    .local v5, "annotationClassname":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/tns/bindings/AnnotationDescriptor;->isRuntimeVisible()Z

    move-result v6

    .line 845
    .local v6, "isVisible":Z
    invoke-virtual {v15, v5, v6}, Lorg/ow2/asmdex/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v7

    .line 846
    .local v7, "av":Lorg/ow2/asmdex/AnnotationVisitor;
    invoke-direct {v0, v7, v4}, Lcom/tns/bindings/Dump;->setAnnotationFields(Lorg/ow2/asmdex/AnnotationVisitor;Lcom/tns/bindings/AnnotationDescriptor;)V

    .line 847
    invoke-virtual {v7}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 842
    .end local v4    # "ad":Lcom/tns/bindings/AnnotationDescriptor;
    .end local v5    # "annotationClassname":Ljava/lang/String;
    .end local v6    # "isVisible":Z
    .end local v7    # "av":Lorg/ow2/asmdex/AnnotationVisitor;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 850
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/tns/bindings/desc/ClassDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".java"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Lorg/ow2/asmdex/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-object v15
.end method

.method private generateCtor(Lorg/ow2/asmdex/ClassVisitor;Lcom/tns/bindings/desc/ClassDescriptor;Lcom/tns/bindings/desc/MethodDescriptor;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;
    .param p2, "classTo"    # Lcom/tns/bindings/desc/ClassDescriptor;
    .param p3, "ctor"    # Lcom/tns/bindings/desc/MethodDescriptor;
    .param p4, "classSignature"    # Ljava/lang/String;
    .param p5, "tnsClassSignature"    # Ljava/lang/String;
    .param p6, "hasOverridenCtor"    # Z

    .line 429
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    invoke-virtual {v6, v7}, Lcom/tns/bindings/Dump;->getDexConstructorDescriptor(Lcom/tns/bindings/desc/MethodDescriptor;)Ljava/lang/String;

    move-result-object v8

    .line 433
    .local v8, "ctorSignature":Ljava/lang/String;
    invoke-direct {v6, v7}, Lcom/tns/bindings/Dump;->getDexModifiers(Lcom/tns/bindings/desc/Descriptor;)I

    move-result v9

    .line 437
    .local v9, "ctorModifiers":I
    const/high16 v0, 0x10000

    add-int v1, v9, v0

    const-string v2, "<init>"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v3, v8

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v10

    .line 438
    .local v10, "mv":Lorg/ow2/asmdex/MethodVisitor;
    invoke-virtual {v10}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 441
    invoke-direct {v6, v10, v7}, Lcom/tns/bindings/Dump;->generateMaxStackSize(Lorg/ow2/asmdex/MethodVisitor;Lcom/tns/bindings/desc/MethodDescriptor;)I

    move-result v11

    .line 443
    .local v11, "thisRegister":I
    invoke-interface/range {p3 .. p3}, Lcom/tns/bindings/desc/MethodDescriptor;->getParameterTypes()[Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v0

    array-length v12, v0

    .line 444
    .local v12, "argCount":I
    invoke-direct {v6, v11, v12, v7}, Lcom/tns/bindings/Dump;->generateArgsArray(IILcom/tns/bindings/desc/MethodDescriptor;)[I

    move-result-object v13

    .line 446
    .local v13, "args":[I
    invoke-interface/range {p2 .. p2}, Lcom/tns/bindings/desc/ClassDescriptor;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    const/16 v1, 0x76

    const-string v3, "<init>"

    move-object v0, v10

    move-object/from16 v2, p4

    move-object v4, v8

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_0

    .line 449
    :cond_0
    const/16 v1, 0x76

    const-string v2, "Ljava/lang/Object;"

    const-string v3, "<init>"

    move-object v0, v10

    move-object v4, v8

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 452
    :goto_0
    move-object/from16 v14, p2

    invoke-direct {v6, v14}, Lcom/tns/bindings/Dump;->isApplicationClass(Lcom/tns/bindings/desc/ClassDescriptor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    move-object/from16 v15, p4

    move-object/from16 v5, p5

    invoke-direct {v6, v10, v11, v15, v5}, Lcom/tns/bindings/Dump;->generateInitializedBlock(Lorg/ow2/asmdex/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 452
    :cond_1
    move-object/from16 v15, p4

    move-object/from16 v5, p5

    .line 456
    :goto_1
    if-eqz p6, :cond_2

    .line 457
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tns/bindings/Dump;->generateCtorOverridenBlock(Lorg/ow2/asmdex/MethodVisitor;ILcom/tns/bindings/desc/MethodDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_2
    invoke-direct {v6, v10}, Lcom/tns/bindings/Dump;->generateReturnVoid(Lorg/ow2/asmdex/MethodVisitor;)V

    .line 461
    return-void
.end method

.method private generateCtorOverridenBlock(Lorg/ow2/asmdex/MethodVisitor;ILcom/tns/bindings/desc/MethodDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "thisRegister"    # I
    .param p3, "ctor"    # Lcom/tns/bindings/desc/MethodDescriptor;
    .param p4, "classSignature"    # Ljava/lang/String;
    .param p5, "tnsClassSignature"    # Ljava/lang/String;

    .line 469
    invoke-interface {p3}, Lcom/tns/bindings/desc/MethodDescriptor;->getParameterTypes()[Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tns/bindings/Dump;->generateArrayForCallJsArguments(Lorg/ow2/asmdex/MethodVisitor;[Lcom/tns/bindings/desc/ClassDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 470
    .local v0, "argCount":I
    const/4 v1, 0x1

    const/16 v2, 0x1a

    const-string v3, "init"

    invoke-virtual {p1, v2, v1, v3}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 471
    const/16 v2, 0x12

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 472
    const/4 v1, 0x4

    new-array v7, v1, [I

    fill-array-data v7, :array_0

    const/16 v3, 0x71

    const-string v4, "Lcom/tns/Runtime;"

    const-string v5, "callJSMethod"

    const-string v6, "Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Object;"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 474
    return-void

    :array_0
    .array-data 4
        0x3
        0x1
        0x2
        0x0
    .end array-data
.end method

.method private generateCtors(Lorg/ow2/asmdex/ClassVisitor;Lcom/tns/bindings/desc/ClassDescriptor;[Lcom/tns/bindings/desc/MethodDescriptor;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;
    .param p2, "classTo"    # Lcom/tns/bindings/desc/ClassDescriptor;
    .param p3, "ctors"    # [Lcom/tns/bindings/desc/MethodDescriptor;
    .param p4, "classSignature"    # Ljava/lang/String;
    .param p5, "tnsClassSignature"    # Ljava/lang/String;
    .param p6, "hasOverridenCtor"    # Z

    .line 408
    move-object v1, p3

    invoke-interface {p2}, Lcom/tns/bindings/desc/ClassDescriptor;->isInterface()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 411
    :try_start_0
    new-instance v6, Lcom/tns/bindings/desc/reflection/MethodInfo;

    const-class v0, Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/tns/bindings/desc/reflection/MethodInfo;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 412
    .local v6, "defaultCtor":Lcom/tns/bindings/desc/MethodDescriptor;
    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/tns/bindings/Dump;->generateCtor(Lorg/ow2/asmdex/ClassVisitor;Lcom/tns/bindings/desc/ClassDescriptor;Lcom/tns/bindings/desc/MethodDescriptor;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "defaultCtor":Lcom/tns/bindings/desc/MethodDescriptor;
    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_2

    .line 420
    :cond_1
    array-length v0, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v10, v1, v2

    .line 421
    .local v10, "ctor":Lcom/tns/bindings/desc/MethodDescriptor;
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v10

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/tns/bindings/Dump;->generateCtor(Lorg/ow2/asmdex/ClassVisitor;Lcom/tns/bindings/desc/ClassDescriptor;Lcom/tns/bindings/desc/MethodDescriptor;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 420
    .end local v10    # "ctor":Lcom/tns/bindings/desc/MethodDescriptor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 424
    :cond_2
    :goto_2
    return-void
.end method

.method private generateEqualsSuper(Lorg/ow2/asmdex/ClassVisitor;)V
    .locals 12
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 499
    const/4 v1, 0x1

    const-string v2, "equals__super"

    const-string v3, "ZLjava/lang/Object;"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v0

    .line 500
    .local v0, "mv":Lorg/ow2/asmdex/MethodVisitor;
    invoke-virtual {v0}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 501
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 502
    const/4 v2, 0x2

    new-array v11, v2, [I

    fill-array-data v11, :array_0

    const/16 v7, 0x6f

    const-string v8, "Ljava/lang/Object;"

    const-string v9, "equals"

    const-string v10, "ZLjava/lang/Object;"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 503
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 504
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 505
    invoke-virtual {v0}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 506
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private generateFields(Lorg/ow2/asmdex/ClassVisitor;)V
    .locals 6
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 805
    const/4 v1, 0x2

    const-string v2, "__initialized"

    const-string v3, "Z"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;

    move-result-object v0

    .line 806
    .local v0, "fv":Lorg/ow2/asmdex/FieldVisitor;
    invoke-virtual {v0}, Lorg/ow2/asmdex/FieldVisitor;->visitEnd()V

    .line 807
    return-void
.end method

.method private generateHashCodeSuper(Lorg/ow2/asmdex/ClassVisitor;)V
    .locals 12
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 509
    const/4 v1, 0x1

    const-string v2, "hashCode__super"

    const-string v3, "I"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v0

    .line 510
    .local v0, "mv":Lorg/ow2/asmdex/MethodVisitor;
    invoke-virtual {v0}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 511
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 512
    const/4 v2, 0x1

    new-array v11, v2, [I

    aput v2, v11, v1

    const/16 v7, 0x6f

    const-string v8, "Ljava/lang/Object;"

    const-string v9, "hashCode"

    const-string v10, "I"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 513
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 514
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 515
    invoke-virtual {v0}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 516
    return-void
.end method

.method private generateInitializedBlock(Lorg/ow2/asmdex/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "thisRegister"    # I
    .param p3, "classSignature"    # Ljava/lang/String;
    .param p4, "tnsClassSignature"    # Ljava/lang/String;

    .line 477
    add-int/lit8 v5, p2, -0x2

    const/16 v1, 0x55

    const-string v3, "__initialized"

    const-string v4, "Z"

    move-object v0, p1

    move-object v2, p4

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 478
    new-instance v0, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    move-object v7, v0

    .line 479
    .local v7, "label":Lorg/ow2/asmdex/structureCommon/Label;
    add-int/lit8 v0, p2, -0x2

    const/4 v8, 0x0

    const/16 v1, 0x39

    invoke-virtual {p1, v1, v7, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 480
    add-int/lit8 v0, p2, -0x1

    const/4 v9, 0x1

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0, v9}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 481
    add-int/lit8 v5, p2, -0x1

    const/16 v1, 0x5c

    const-string v3, "__initialized"

    const-string v4, "Z"

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 482
    new-array v5, v9, [I

    aput p2, v5, v8

    const/16 v1, 0x71

    const-string v2, "Lcom/tns/Runtime;"

    const-string v3, "initInstance"

    const-string v4, "VLjava/lang/Object;"

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 483
    invoke-virtual {p1, v7}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 484
    return-void
.end method

.method private generateMaxStackSize(Lorg/ow2/asmdex/MethodVisitor;Lcom/tns/bindings/desc/MethodDescriptor;)I
    .locals 7
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "method"    # Lcom/tns/bindings/desc/MethodDescriptor;

    .line 582
    const/4 v0, 0x4

    .line 583
    .local v0, "registersCount":I
    add-int/lit8 v1, v0, -0x1

    .line 585
    .local v1, "thisRegister":I
    invoke-interface {p2}, Lcom/tns/bindings/desc/MethodDescriptor;->getParameterTypes()[Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v2

    .line 586
    .local v2, "paramTypes":[Lcom/tns/bindings/desc/ClassDescriptor;
    array-length v3, v2

    .line 588
    .local v3, "paramCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 589
    aget-object v5, v2, v4

    .line 591
    .local v5, "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    sget-object v6, Lcom/tns/bindings/desc/ClassDescriptor;->LONG:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/tns/bindings/desc/ClassDescriptor;->DOUBLE:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 592
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x2

    .line 588
    .end local v5    # "paramType":Lcom/tns/bindings/desc/ClassDescriptor;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 598
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 600
    return v1
.end method

.method private generateMethod(Lorg/ow2/asmdex/ClassVisitor;Lcom/tns/bindings/desc/ClassDescriptor;Lcom/tns/bindings/desc/MethodDescriptor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;
    .param p2, "classTo"    # Lcom/tns/bindings/desc/ClassDescriptor;
    .param p3, "method"    # Lcom/tns/bindings/desc/MethodDescriptor;
    .param p4, "methodNumber"    # I
    .param p5, "classSignature"    # Ljava/lang/String;
    .param p6, "tnsClassSignature"    # Ljava/lang/String;

    .line 519
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    sget-boolean v0, Lcom/tns/bindings/ProxyGenerator;->IsLogEnabled:Z

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generator: generatingMethod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    :cond_0
    invoke-virtual {v7, v9}, Lcom/tns/bindings/Dump;->getDexMethodDescriptor(Lcom/tns/bindings/desc/MethodDescriptor;)Ljava/lang/String;

    move-result-object v16

    .line 525
    .local v16, "methodDexSignature":Ljava/lang/String;
    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    .line 527
    .local v6, "exceptions":[Ljava/lang/String;
    invoke-direct {v7, v9}, Lcom/tns/bindings/Dump;->getDexModifiers(Lcom/tns/bindings/desc/Descriptor;)I

    move-result v17

    .line 529
    .local v17, "methodModifiers":I
    invoke-interface/range {p3 .. p3}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move/from16 v11, v17

    move-object/from16 v13, v16

    move-object v15, v6

    invoke-virtual/range {v10 .. v15}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v10

    .line 530
    .local v10, "mv":Lorg/ow2/asmdex/MethodVisitor;
    invoke-virtual {v10}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 532
    invoke-direct {v7, v10, v9}, Lcom/tns/bindings/Dump;->generateMaxStackSize(Lorg/ow2/asmdex/MethodVisitor;Lcom/tns/bindings/desc/MethodDescriptor;)I

    move-result v11

    .line 534
    .local v11, "thisRegister":I
    invoke-interface/range {p2 .. p2}, Lcom/tns/bindings/desc/ClassDescriptor;->isInterface()Z

    move-result v0

    const-string v12, "onCreate"

    if-nez v0, :cond_3

    .line 535
    invoke-direct {v7, v8}, Lcom/tns/bindings/Dump;->isApplicationClass(Lcom/tns/bindings/desc/ClassDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface/range {p3 .. p3}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    invoke-interface/range {p2 .. p2}, Lcom/tns/bindings/desc/ClassDescriptor;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p3

    move v3, v11

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v14, v6

    .end local v6    # "exceptions":[Ljava/lang/String;
    .local v14, "exceptions":[Ljava/lang/String;
    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/tns/bindings/Dump;->generateRuntimeInitializedBlock(Lorg/ow2/asmdex/MethodVisitor;Lcom/tns/bindings/desc/MethodDescriptor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, p5

    move-object/from16 v13, p6

    goto :goto_0

    .line 535
    .end local v14    # "exceptions":[Ljava/lang/String;
    .restart local v6    # "exceptions":[Ljava/lang/String;
    :cond_1
    move-object v14, v6

    .line 538
    .end local v6    # "exceptions":[Ljava/lang/String;
    .restart local v14    # "exceptions":[Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/tns/bindings/desc/MethodDescriptor;->isInterfaceMethod()Z

    move-result v0

    if-nez v0, :cond_2

    .line 539
    move-object/from16 v6, p5

    move-object/from16 v13, p6

    invoke-direct {v7, v10, v11, v6, v13}, Lcom/tns/bindings/Dump;->generateInitializedBlock(Lorg/ow2/asmdex/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_2
    move-object/from16 v6, p5

    move-object/from16 v13, p6

    goto :goto_0

    .line 534
    .end local v14    # "exceptions":[Ljava/lang/String;
    .restart local v6    # "exceptions":[Ljava/lang/String;
    :cond_3
    move-object/from16 v13, p6

    move-object v14, v6

    move-object/from16 v6, p5

    .line 544
    .end local v6    # "exceptions":[Ljava/lang/String;
    .restart local v14    # "exceptions":[Ljava/lang/String;
    :goto_0
    invoke-direct {v7, v8}, Lcom/tns/bindings/Dump;->isApplicationClass(Lcom/tns/bindings/desc/ClassDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface/range {p3 .. p3}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 545
    :cond_4
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p3

    move v3, v11

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/tns/bindings/Dump;->generateCallOverrideBlock(Lorg/ow2/asmdex/MethodVisitor;Lcom/tns/bindings/desc/MethodDescriptor;ILjava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_5
    invoke-interface/range {p3 .. p3}, Lcom/tns/bindings/desc/MethodDescriptor;->getReturnType()Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v7, v10, v0, v11, v1}, Lcom/tns/bindings/Dump;->generateReturnFromObject(Lorg/ow2/asmdex/MethodVisitor;Lcom/tns/bindings/desc/ClassDescriptor;II)V

    .line 549
    invoke-virtual {v10}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 550
    return-void
.end method

.method private generateMethods(Lorg/ow2/asmdex/ClassVisitor;Lcom/tns/bindings/desc/ClassDescriptor;[Lcom/tns/bindings/desc/MethodDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;
    .param p2, "classTo"    # Lcom/tns/bindings/desc/ClassDescriptor;
    .param p3, "methods"    # [Lcom/tns/bindings/desc/MethodDescriptor;
    .param p4, "classSignature"    # Ljava/lang/String;
    .param p5, "tnsClassSignature"    # Ljava/lang/String;

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 489
    aget-object v8, p3, v0

    .line 491
    .local v8, "sourceMethod":Lcom/tns/bindings/desc/MethodDescriptor;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    move v5, v0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/tns/bindings/Dump;->generateMethod(Lorg/ow2/asmdex/ClassVisitor;Lcom/tns/bindings/desc/ClassDescriptor;Lcom/tns/bindings/desc/MethodDescriptor;ILjava/lang/String;Ljava/lang/String;)V

    .line 488
    .end local v8    # "sourceMethod":Lcom/tns/bindings/desc/MethodDescriptor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/tns/bindings/Dump;->generateEqualsSuper(Lorg/ow2/asmdex/ClassVisitor;)V

    .line 495
    invoke-direct {p0, p1}, Lcom/tns/bindings/Dump;->generateHashCodeSuper(Lorg/ow2/asmdex/ClassVisitor;)V

    .line 496
    return-void
.end method

.method private generateReturnFromObject(Lorg/ow2/asmdex/MethodVisitor;Lcom/tns/bindings/desc/ClassDescriptor;II)V
    .locals 15
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "targetReturnType"    # Lcom/tns/bindings/desc/ClassDescriptor;
    .param p3, "thisRegister"    # I
    .param p4, "valueRegister"    # I

    .line 749
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    sget-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->VOID:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 751
    return-void

    .line 754
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {v6, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 755
    invoke-interface/range {p2 .. p2}, Lcom/tns/bindings/desc/ClassDescriptor;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 756
    sget-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->BOOLEAN:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v9, 0xf

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    .line 757
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "Ljava/lang/Boolean;"

    move-object/from16 v0, p1

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 758
    const/16 v1, 0x6e

    new-array v5, v12, [I

    aput v8, v5, v11

    const-string v2, "Ljava/lang/Boolean;"

    const-string v3, "booleanValue"

    const-string v4, "Z"

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 759
    invoke-virtual {v6, v10, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 760
    invoke-virtual {v6, v9, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    goto/16 :goto_0

    .line 761
    :cond_1
    sget-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->CHAR:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "Ljava/lang/Character;"

    move-object/from16 v0, p1

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 763
    const/16 v1, 0x6e

    new-array v5, v12, [I

    aput v8, v5, v11

    const-string v2, "Ljava/lang/Character;"

    const-string v3, "charValue"

    const-string v4, "C"

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 764
    invoke-virtual {v6, v10, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 765
    invoke-virtual {v6, v9, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    goto/16 :goto_0

    .line 766
    :cond_2
    sget-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->BYTE:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 767
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "Ljava/lang/Byte;"

    move-object/from16 v0, p1

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 768
    const/16 v1, 0x6e

    new-array v5, v12, [I

    aput v8, v5, v11

    const-string v2, "Ljava/lang/Byte;"

    const-string v3, "byteValue"

    const-string v4, "B"

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 769
    invoke-virtual {v6, v10, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 770
    invoke-virtual {v6, v9, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    goto/16 :goto_0

    .line 771
    :cond_3
    sget-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->SHORT:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 772
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "Ljava/lang/Short;"

    move-object/from16 v0, p1

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 773
    const/16 v1, 0x6e

    new-array v5, v12, [I

    aput v8, v5, v11

    const-string v2, "Ljava/lang/Short;"

    const-string v3, "shortValue"

    const-string v4, "S"

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 774
    invoke-virtual {v6, v10, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 775
    invoke-virtual {v6, v9, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    goto/16 :goto_0

    .line 776
    :cond_4
    sget-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->INT:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 777
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "Ljava/lang/Integer;"

    move-object/from16 v0, p1

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 778
    const/16 v1, 0x6e

    new-array v5, v12, [I

    aput v8, v5, v11

    const-string v2, "Ljava/lang/Integer;"

    const-string v3, "intValue"

    const-string v4, "I"

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 779
    invoke-virtual {v6, v10, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 780
    invoke-virtual {v6, v9, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    goto/16 :goto_0

    .line 781
    :cond_5
    sget-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->LONG:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v13, 0x10

    const/16 v14, 0xb

    if-eqz v0, :cond_6

    .line 782
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "Ljava/lang/Long;"

    move-object/from16 v0, p1

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 783
    const/16 v1, 0x6e

    new-array v5, v12, [I

    aput v8, v5, v11

    const-string v2, "Ljava/lang/Long;"

    const-string v3, "longValue"

    const-string v4, "J"

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 784
    invoke-virtual {v6, v14, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 785
    invoke-virtual {v6, v13, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    .line 786
    :cond_6
    sget-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->FLOAT:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 787
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "Ljava/lang/Float;"

    move-object/from16 v0, p1

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 788
    const/16 v1, 0x6e

    new-array v5, v12, [I

    aput v8, v5, v11

    const-string v2, "Ljava/lang/Float;"

    const-string v3, "floatValue"

    const-string v4, "F"

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 789
    invoke-virtual {v6, v10, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 790
    invoke-virtual {v6, v9, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    .line 791
    :cond_7
    sget-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->DOUBLE:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 792
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "Ljava/lang/Double;"

    move-object/from16 v0, p1

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 793
    const/16 v1, 0x6e

    new-array v5, v12, [I

    aput v8, v5, v11

    const-string v2, "Ljava/lang/Double;"

    const-string v3, "doubleValue"

    const-string v4, "D"

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 794
    invoke-virtual {v6, v14, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 795
    invoke-virtual {v6, v13, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    .line 798
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/tns/bindings/Dump;->getAsmDescriptor(Lcom/tns/bindings/desc/ClassDescriptor;)Ljava/lang/String;

    move-result-object v9

    .line 799
    .local v9, "returnTypeDescriptor":Ljava/lang/String;
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v3, p4

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 800
    const/16 v0, 0x11

    invoke-virtual {v6, v0, v8}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 802
    .end local v9    # "returnTypeDescriptor":Ljava/lang/String;
    :cond_9
    :goto_0
    return-void
.end method

.method private generateReturnVoid(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 464
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 465
    invoke-virtual {p1}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 466
    return-void
.end method

.method private generateRuntimeInitializedBlock(Lorg/ow2/asmdex/MethodVisitor;Lcom/tns/bindings/desc/MethodDescriptor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p2, "method"    # Lcom/tns/bindings/desc/MethodDescriptor;
    .param p3, "thisRegister"    # I
    .param p4, "classSignature"    # Ljava/lang/String;
    .param p5, "tnsClassSignature"    # Ljava/lang/String;
    .param p6, "superClassname"    # Ljava/lang/String;

    .line 567
    move-object v6, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    move-object/from16 v7, p6

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 569
    .local v8, "name":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v5, v9, [I

    const/4 v10, 0x0

    aput p3, v5, v10

    const/16 v1, 0x6f

    const-string v3, "onCreate"

    const-string v4, "V"

    move-object v0, p1

    move-object v2, v8

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 570
    new-array v5, v9, [I

    aput p3, v5, v10

    const/16 v1, 0x71

    const-string v2, "Lcom/tns/RuntimeHelper;"

    const-string v3, "initRuntime"

    const-string v4, "Lcom/tns/Runtime;Landroid/app/Application;"

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 571
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v10}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 572
    new-instance v0, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    move-object v11, v0

    .line 573
    .local v11, "label":Lorg/ow2/asmdex/structureCommon/Label;
    const/16 v0, 0x38

    invoke-virtual {p1, v0, v11, v10, v10}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 574
    new-array v5, v9, [I

    aput v10, v5, v10

    const/16 v1, 0x6e

    const-string v2, "Lcom/tns/Runtime;"

    const-string v3, "run"

    const-string v4, "V"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 575
    invoke-direct/range {p0 .. p5}, Lcom/tns/bindings/Dump;->generateCallOverrideBlock(Lorg/ow2/asmdex/MethodVisitor;Lcom/tns/bindings/desc/MethodDescriptor;ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1, v11}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 577
    return-void
.end method

.method public static getAsmDescriptor(Lcom/tns/bindings/desc/ClassDescriptor;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Lcom/tns/bindings/desc/ClassDescriptor;

    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lcom/tns/bindings/Dump;->getAsmDescriptor(Ljava/lang/StringBuffer;Lcom/tns/bindings/desc/ClassDescriptor;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAsmDescriptor(Ljava/lang/StringBuffer;Lcom/tns/bindings/desc/ClassDescriptor;)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "c"    # Lcom/tns/bindings/desc/ClassDescriptor;

    .line 122
    move-object v0, p1

    .line 124
    .local v0, "d":Lcom/tns/bindings/desc/ClassDescriptor;
    :goto_0
    invoke-interface {v0}, Lcom/tns/bindings/desc/ClassDescriptor;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-interface {v0}, Lcom/tns/bindings/desc/ClassDescriptor;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "sig":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    return-void

    .line 128
    .end local v1    # "sig":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Lcom/tns/bindings/desc/ClassDescriptor;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    invoke-interface {v0}, Lcom/tns/bindings/desc/ClassDescriptor;->getComponentType()Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    const/16 v1, 0x4c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    invoke-interface {v0}, Lcom/tns/bindings/desc/ClassDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    return-void
.end method

.method private static getClassSignatureOfType(Lcom/tns/bindings/desc/ClassDescriptor;)Ljava/lang/String;
    .locals 4
    .param p0, "c"    # Lcom/tns/bindings/desc/ClassDescriptor;

    .line 147
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lcom/tns/bindings/desc/ClassDescriptor;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-static {p0}, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;->getBoxedTypeName(Lcom/tns/bindings/desc/ClassDescriptor;)Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Lcom/tns/bindings/desc/ClassDescriptor;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    const-string v1, "java.lang.Object"

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Lcom/tns/bindings/desc/ClassDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    .line 158
    .restart local v1    # "name":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x4c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDexDescriptor(Ljava/lang/StringBuffer;Lcom/tns/bindings/desc/ClassDescriptor;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "c"    # Lcom/tns/bindings/desc/ClassDescriptor;

    .line 81
    move-object v0, p2

    .line 83
    .local v0, "d":Lcom/tns/bindings/desc/ClassDescriptor;
    :goto_0
    invoke-interface {v0}, Lcom/tns/bindings/desc/ClassDescriptor;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/tns/bindings/desc/ClassDescriptor;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "sig":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    return-void

    .line 87
    .end local v1    # "sig":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Lcom/tns/bindings/desc/ClassDescriptor;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    invoke-interface {v0}, Lcom/tns/bindings/desc/ClassDescriptor;->getComponentType()Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    const/16 v1, 0x4c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    invoke-interface {v0}, Lcom/tns/bindings/desc/ClassDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    return-void
.end method

.method private getDexModifiers(Lcom/tns/bindings/desc/Descriptor;)I
    .locals 1
    .param p1, "descriptor"    # Lcom/tns/bindings/desc/Descriptor;

    .line 864
    invoke-interface {p1}, Lcom/tns/bindings/desc/Descriptor;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    const/4 v0, 0x1

    return v0

    .line 868
    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method private getMethodSignature(Lcom/tns/bindings/desc/MethodDescriptor;)Ljava/lang/String;
    .locals 5
    .param p1, "m"    # Lcom/tns/bindings/desc/MethodDescriptor;

    .line 215
    invoke-interface {p1}, Lcom/tns/bindings/desc/MethodDescriptor;->toGenericString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "sig":Ljava/lang/String;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 218
    .local v1, "nameIdx":I
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 220
    .local v2, "endSigIdx":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSupportedMethods(Lcom/tns/bindings/desc/ClassDescriptor;Ljava/util/HashSet;Ljava/util/HashSet;)[Lcom/tns/bindings/desc/MethodDescriptor;
    .locals 9
    .param p1, "clazz"    # Lcom/tns/bindings/desc/ClassDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tns/bindings/desc/ClassDescriptor;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/tns/bindings/desc/ClassDescriptor;",
            ">;)[",
            "Lcom/tns/bindings/desc/MethodDescriptor;"
        }
    .end annotation

    .line 282
    .local p2, "methodOverrides":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "interfacesToImplement":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/tns/bindings/desc/ClassDescriptor;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tns/bindings/desc/MethodDescriptor;>;"
    invoke-direct {p0, p1, v0}, Lcom/tns/bindings/Dump;->collectAbstractMethods(Lcom/tns/bindings/desc/ClassDescriptor;Ljava/util/List;)V

    .line 286
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tns/bindings/desc/ClassDescriptor;

    .line 287
    .local v2, "iface":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-direct {p0, v2, v0}, Lcom/tns/bindings/Dump;->collectAbstractMethods(Lcom/tns/bindings/desc/ClassDescriptor;Ljava/util/List;)V

    .line 288
    .end local v2    # "iface":Lcom/tns/bindings/desc/ClassDescriptor;
    goto :goto_0

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Lcom/tns/bindings/Dump;->isApplicationClass(Lcom/tns/bindings/desc/ClassDescriptor;)Z

    move-result v1

    .line 292
    .local v1, "isApplicationClass":Z
    invoke-interface {p1}, Lcom/tns/bindings/desc/ClassDescriptor;->isInterface()Z

    move-result v2

    if-nez v2, :cond_6

    .line 293
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v2, "finalMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tns/bindings/desc/MethodDescriptor;>;"
    :goto_1
    if-eqz p1, :cond_6

    .line 295
    invoke-interface {p1}, Lcom/tns/bindings/desc/ClassDescriptor;->getDeclaredMethods()[Lcom/tns/bindings/desc/MethodDescriptor;

    move-result-object v3

    .line 297
    .local v3, "methods":[Lcom/tns/bindings/desc/MethodDescriptor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v4, "methodz":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tns/bindings/desc/MethodDescriptor;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 300
    aget-object v6, v3, v5

    .line 301
    .local v6, "candidateMethod":Lcom/tns/bindings/desc/MethodDescriptor;
    if-eqz v1, :cond_1

    invoke-interface {v6}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "attachBaseContext"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 303
    goto :goto_3

    .line 305
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {v6}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 306
    goto :goto_3

    .line 309
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v6    # "candidateMethod":Lcom/tns/bindings/desc/MethodDescriptor;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 312
    .end local v5    # "i":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 313
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tns/bindings/desc/MethodDescriptor;

    .line 315
    .local v6, "method":Lcom/tns/bindings/desc/MethodDescriptor;
    invoke-static {v6, v2}, Lcom/tns/bindings/Dump;->isMethodSupported(Lcom/tns/bindings/desc/MethodDescriptor;Ljava/util/HashMap;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 316
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v6    # "method":Lcom/tns/bindings/desc/MethodDescriptor;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 320
    .end local v5    # "i":I
    :cond_5
    invoke-interface {p1}, Lcom/tns/bindings/desc/ClassDescriptor;->getSuperclass()Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object p1

    .line 321
    .end local v3    # "methods":[Lcom/tns/bindings/desc/MethodDescriptor;
    .end local v4    # "methodz":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tns/bindings/desc/MethodDescriptor;>;"
    goto :goto_1

    .line 324
    .end local v2    # "finalMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tns/bindings/desc/MethodDescriptor;>;"
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/tns/bindings/desc/MethodDescriptor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tns/bindings/desc/MethodDescriptor;

    return-object v2
.end method

.method private groupMethodsByNameAndSignature([Lcom/tns/bindings/desc/MethodDescriptor;)[Lcom/tns/bindings/desc/MethodDescriptor;
    .locals 7
    .param p1, "methods"    # [Lcom/tns/bindings/desc/MethodDescriptor;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tns/bindings/desc/MethodDescriptor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 202
    aget-object v2, p1, v1

    .line 203
    .local v2, "method":Lcom/tns/bindings/desc/MethodDescriptor;
    invoke-interface {v2}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "methodName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/tns/bindings/Dump;->getMethodOverloadDescriptor(Lcom/tns/bindings/desc/MethodDescriptor;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "methodOverLoadDescriptor":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v2    # "method":Lcom/tns/bindings/desc/MethodDescriptor;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v4    # "methodOverLoadDescriptor":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/tns/bindings/desc/MethodDescriptor;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tns/bindings/desc/MethodDescriptor;

    return-object v1
.end method

.method private isApplicationClass(Lcom/tns/bindings/desc/ClassDescriptor;)Z
    .locals 4
    .param p1, "clazz"    # Lcom/tns/bindings/desc/ClassDescriptor;

    .line 553
    const/4 v0, 0x0

    .line 555
    .local v0, "isApplicationClass":Z
    const-string v1, "android.app.Application"

    .line 556
    .local v1, "applicationClassName":Ljava/lang/String;
    move-object v2, p1

    .line 557
    .local v2, "currentClass":Lcom/tns/bindings/desc/ClassDescriptor;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 558
    invoke-interface {v2}, Lcom/tns/bindings/desc/ClassDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 559
    if-nez v0, :cond_0

    .line 560
    invoke-interface {v2}, Lcom/tns/bindings/desc/ClassDescriptor;->getSuperclass()Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v2

    goto :goto_0

    .line 563
    :cond_1
    return v0
.end method

.method private static isMethodMarkedAsFinalInClassHierarchy(Lcom/tns/bindings/desc/MethodDescriptor;Ljava/util/HashMap;)Z
    .locals 3
    .param p0, "method"    # Lcom/tns/bindings/desc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tns/bindings/desc/MethodDescriptor;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tns/bindings/desc/MethodDescriptor;",
            ">;)Z"
        }
    .end annotation

    .line 366
    .local p1, "finalMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tns/bindings/desc/MethodDescriptor;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {p0}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tns/bindings/desc/MethodDescriptor;

    .line 368
    .local v0, "finalMethod":Lcom/tns/bindings/desc/MethodDescriptor;
    if-eqz v0, :cond_0

    .line 369
    invoke-static {v0, p0}, Lcom/tns/bindings/Dump;->areMethodSignaturesEqual(Lcom/tns/bindings/desc/MethodDescriptor;Lcom/tns/bindings/desc/MethodDescriptor;)Z

    move-result v1

    .line 370
    .local v1, "isSameFinalMethod":Z
    if-eqz v1, :cond_0

    .line 371
    const/4 v2, 0x1

    return v2

    .line 376
    .end local v0    # "finalMethod":Lcom/tns/bindings/desc/MethodDescriptor;
    .end local v1    # "isSameFinalMethod":Z
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isMethodSupported(Lcom/tns/bindings/desc/MethodDescriptor;Ljava/util/HashMap;)Z
    .locals 4
    .param p0, "method"    # Lcom/tns/bindings/desc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tns/bindings/desc/MethodDescriptor;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tns/bindings/desc/MethodDescriptor;",
            ">;)Z"
        }
    .end annotation

    .line 331
    .local p1, "finalMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tns/bindings/desc/MethodDescriptor;>;"
    invoke-interface {p0}, Lcom/tns/bindings/desc/MethodDescriptor;->isSynthetic()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-interface {p0}, Lcom/tns/bindings/desc/MethodDescriptor;->isStatic()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p0}, Lcom/tns/bindings/desc/MethodDescriptor;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    invoke-interface {p0}, Lcom/tns/bindings/desc/MethodDescriptor;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-interface {p0}, Lcom/tns/bindings/desc/MethodDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return v1

    .line 340
    :cond_1
    invoke-interface {p0}, Lcom/tns/bindings/desc/MethodDescriptor;->isPrivate()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/tns/bindings/desc/MethodDescriptor;->isPublic()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/tns/bindings/desc/MethodDescriptor;->isProtected()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 341
    .local v0, "isPackagePrivate":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 342
    return v1

    .line 345
    :cond_3
    invoke-static {p0, p1}, Lcom/tns/bindings/Dump;->isMethodMarkedAsFinalInClassHierarchy(Lcom/tns/bindings/desc/MethodDescriptor;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 346
    return v1

    .line 362
    :cond_4
    return v2

    .line 332
    .end local v0    # "isPackagePrivate":Z
    :cond_5
    :goto_1
    return v1
.end method

.method private setAnnotationFields(Lorg/ow2/asmdex/AnnotationVisitor;Lcom/tns/bindings/AnnotationDescriptor;)V
    .locals 6
    .param p1, "av"    # Lorg/ow2/asmdex/AnnotationVisitor;
    .param p2, "ad"    # Lcom/tns/bindings/AnnotationDescriptor;

    .line 855
    invoke-virtual {p2}, Lcom/tns/bindings/AnnotationDescriptor;->getParams()[Lcom/tns/bindings/AnnotationDescriptor$Parameter;

    move-result-object v0

    .line 856
    .local v0, "params":[Lcom/tns/bindings/AnnotationDescriptor$Parameter;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 857
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 858
    .local v3, "p":Lcom/tns/bindings/AnnotationDescriptor$Parameter;
    invoke-virtual {v3}, Lcom/tns/bindings/AnnotationDescriptor$Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tns/bindings/AnnotationDescriptor$Parameter;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/ow2/asmdex/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 857
    .end local v3    # "p":Lcom/tns/bindings/AnnotationDescriptor$Parameter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 861
    :cond_0
    return-void
.end method


# virtual methods
.method public generateProxy(Lorg/ow2/asmdex/ApplicationWriter;Ljava/lang/String;Lcom/tns/bindings/desc/ClassDescriptor;Ljava/util/HashSet;Ljava/util/HashSet;[Lcom/tns/bindings/AnnotationDescriptor;)V
    .locals 18
    .param p1, "aw"    # Lorg/ow2/asmdex/ApplicationWriter;
    .param p2, "proxyName"    # Ljava/lang/String;
    .param p3, "classTo"    # Lcom/tns/bindings/desc/ClassDescriptor;
    .param p6, "annotations"    # [Lcom/tns/bindings/AnnotationDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ow2/asmdex/ApplicationWriter;",
            "Ljava/lang/String;",
            "Lcom/tns/bindings/desc/ClassDescriptor;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/tns/bindings/desc/ClassDescriptor;",
            ">;[",
            "Lcom/tns/bindings/AnnotationDescriptor;",
            ")V"
        }
    .end annotation

    .line 166
    .local p4, "methodOverrides":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p5, "implementedInterfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/tns/bindings/desc/ClassDescriptor;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-static/range {p3 .. p3}, Lcom/tns/bindings/Dump;->getAsmDescriptor(Lcom/tns/bindings/desc/ClassDescriptor;)Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, "classSignature":Ljava/lang/String;
    const-string v0, "."

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ";"

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .local v0, "tnsClassSignature":Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v0    # "tnsClassSignature":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lcom/tns/gen/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {v10, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .restart local v0    # "tnsClassSignature":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/tns/bindings/desc/ClassDescriptor;->isInterface()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 182
    .end local v0    # "tnsClassSignature":Ljava/lang/String;
    .local v12, "tnsClassSignature":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v3, v10

    move-object v4, v12

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tns/bindings/Dump;->generateClass(Lorg/ow2/asmdex/ApplicationWriter;Lcom/tns/bindings/desc/ClassDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;[Lcom/tns/bindings/AnnotationDescriptor;)Lorg/ow2/asmdex/ClassVisitor;

    move-result-object v13

    .line 183
    .local v13, "cv":Lorg/ow2/asmdex/ClassVisitor;
    move-object/from16 v14, p3

    move-object/from16 v15, p5

    invoke-direct {v7, v14, v9, v15}, Lcom/tns/bindings/Dump;->getSupportedMethods(Lcom/tns/bindings/desc/ClassDescriptor;Ljava/util/HashSet;Ljava/util/HashSet;)[Lcom/tns/bindings/desc/MethodDescriptor;

    move-result-object v0

    .line 185
    .local v0, "methods":[Lcom/tns/bindings/desc/MethodDescriptor;
    invoke-direct {v7, v0}, Lcom/tns/bindings/Dump;->groupMethodsByNameAndSignature([Lcom/tns/bindings/desc/MethodDescriptor;)[Lcom/tns/bindings/desc/MethodDescriptor;

    move-result-object v16

    .line 187
    .end local v0    # "methods":[Lcom/tns/bindings/desc/MethodDescriptor;
    .local v16, "methods":[Lcom/tns/bindings/desc/MethodDescriptor;
    invoke-direct {v7, v13}, Lcom/tns/bindings/Dump;->generateFields(Lorg/ow2/asmdex/ClassVisitor;)V

    .line 190
    invoke-interface/range {p3 .. p3}, Lcom/tns/bindings/desc/ClassDescriptor;->getConstructors()[Lcom/tns/bindings/desc/MethodDescriptor;

    move-result-object v17

    .line 191
    .local v17, "ctors":[Lcom/tns/bindings/desc/MethodDescriptor;
    if-eqz v9, :cond_2

    const-string v0, "init"

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 192
    .local v6, "hasOverridenCtor":Z
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    move-object v4, v10

    move-object v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/tns/bindings/Dump;->generateCtors(Lorg/ow2/asmdex/ClassVisitor;Lcom/tns/bindings/desc/ClassDescriptor;[Lcom/tns/bindings/desc/MethodDescriptor;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lcom/tns/bindings/Dump;->generateMethods(Lorg/ow2/asmdex/ClassVisitor;Lcom/tns/bindings/desc/ClassDescriptor;[Lcom/tns/bindings/desc/MethodDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v13}, Lorg/ow2/asmdex/ClassVisitor;->visitEnd()V

    .line 197
    return-void
.end method

.method public getDexConstructorDescriptor(Lcom/tns/bindings/desc/MethodDescriptor;)Ljava/lang/String;
    .locals 4
    .param p1, "constructor"    # Lcom/tns/bindings/desc/MethodDescriptor;

    .line 71
    invoke-interface {p1}, Lcom/tns/bindings/desc/MethodDescriptor;->getParameterTypes()[Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v0

    .line 72
    .local v0, "parameters":[Lcom/tns/bindings/desc/ClassDescriptor;
    sget-object v1, Lcom/tns/bindings/Dump;->methodDescriptorBuilder:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 73
    sget-object v1, Lcom/tns/bindings/Dump;->methodDescriptorBuilder:Ljava/lang/StringBuffer;

    sget-object v2, Lcom/tns/bindings/desc/ClassDescriptor;->VOID:Lcom/tns/bindings/desc/ClassDescriptor;

    invoke-direct {p0, v1, v2}, Lcom/tns/bindings/Dump;->getDexDescriptor(Ljava/lang/StringBuffer;Lcom/tns/bindings/desc/ClassDescriptor;)V

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 75
    sget-object v2, Lcom/tns/bindings/Dump;->methodDescriptorBuilder:Ljava/lang/StringBuffer;

    aget-object v3, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/tns/bindings/Dump;->getDexDescriptor(Ljava/lang/StringBuffer;Lcom/tns/bindings/desc/ClassDescriptor;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lcom/tns/bindings/Dump;->methodDescriptorBuilder:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDexMethodDescriptor(Lcom/tns/bindings/desc/MethodDescriptor;)Ljava/lang/String;
    .locals 4
    .param p1, "method"    # Lcom/tns/bindings/desc/MethodDescriptor;

    .line 38
    invoke-interface {p1}, Lcom/tns/bindings/desc/MethodDescriptor;->getParameterTypes()[Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v0

    .line 39
    .local v0, "parameters":[Lcom/tns/bindings/desc/ClassDescriptor;
    sget-object v1, Lcom/tns/bindings/Dump;->methodDescriptorBuilder:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 40
    sget-object v1, Lcom/tns/bindings/Dump;->methodDescriptorBuilder:Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lcom/tns/bindings/desc/MethodDescriptor;->getReturnType()Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/tns/bindings/Dump;->getDexDescriptor(Ljava/lang/StringBuffer;Lcom/tns/bindings/desc/ClassDescriptor;)V

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 42
    sget-object v2, Lcom/tns/bindings/Dump;->methodDescriptorBuilder:Ljava/lang/StringBuffer;

    aget-object v3, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/tns/bindings/Dump;->getDexDescriptor(Ljava/lang/StringBuffer;Lcom/tns/bindings/desc/ClassDescriptor;)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lcom/tns/bindings/Dump;->methodDescriptorBuilder:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMethodOverloadDescriptor(Lcom/tns/bindings/desc/MethodDescriptor;)Ljava/lang/String;
    .locals 4
    .param p1, "method"    # Lcom/tns/bindings/desc/MethodDescriptor;

    .line 55
    invoke-interface {p1}, Lcom/tns/bindings/desc/MethodDescriptor;->getParameterTypes()[Lcom/tns/bindings/desc/ClassDescriptor;

    move-result-object v0

    .line 56
    .local v0, "parameters":[Lcom/tns/bindings/desc/ClassDescriptor;
    sget-object v1, Lcom/tns/bindings/Dump;->methodDescriptorBuilder:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 58
    sget-object v2, Lcom/tns/bindings/Dump;->methodDescriptorBuilder:Ljava/lang/StringBuffer;

    aget-object v3, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/tns/bindings/Dump;->getDexDescriptor(Ljava/lang/StringBuffer;Lcom/tns/bindings/desc/ClassDescriptor;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lcom/tns/bindings/Dump;->methodDescriptorBuilder:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
