.class public Lorg/ow2/asmdex/structureWriter/Method;
.super Ljava/lang/Object;
.source "Method.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ow2/asmdex/structureWriter/Method;",
        ">;",
        "Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;"
    }
.end annotation


# instance fields
.field private access:I

.field private annotatedParameterSetRefList:Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

.field private annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

.field private final className:Ljava/lang/String;

.field private codeItem:Lorg/ow2/asmdex/structureWriter/CodeItem;

.field private exceptionNames:[Ljava/lang/String;

.field private final hashcode:I

.field private localVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/LocalVariable;",
            ">;"
        }
    .end annotation
.end field

.field private final methodName:Ljava/lang/String;

.field private parameters:[Ljava/lang/String;

.field private final prototype:Lorg/ow2/asmdex/structureWriter/Prototype;

.field private signature:[Ljava/lang/String;

.field private startBytecodeToCopy:I

.field private startDebugInfoToCopy:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/Prototype;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodDescriptor"    # Lorg/ow2/asmdex/structureWriter/Prototype;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->localVariables:Ljava/util/List;

    .line 142
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/Method;->methodName:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/Method;->className:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lorg/ow2/asmdex/structureWriter/Method;->prototype:Lorg/ow2/asmdex/structureWriter/Prototype;

    .line 145
    invoke-static {p1, p2, p3}, Lorg/ow2/asmdex/structureWriter/Method;->calculateHashCode(Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/Prototype;)I

    move-result v0

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->hashcode:I

    .line 146
    return-void
.end method

.method public static calculateHashCode(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "prototypeHashCode"    # I

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method public static calculateHashCode(Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/Prototype;)I
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "prototype"    # Lorg/ow2/asmdex/structureWriter/Prototype;

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lorg/ow2/asmdex/structureWriter/Prototype;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V
    .locals 1
    .param p1, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 289
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 290
    return-void
.end method

.method public addLocalVariable(Lorg/ow2/asmdex/structureCommon/LocalVariable;)V
    .locals 1
    .param p1, "localVariable"    # Lorg/ow2/asmdex/structureCommon/LocalVariable;

    .line 177
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->localVariables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public addParameterAnnotationItem(ILorg/ow2/asmdex/structureWriter/AnnotationItem;)V
    .locals 1
    .param p1, "parameterIndex"    # I
    .param p2, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 298
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->annotatedParameterSetRefList:Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->addAnnotationItem(ILorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 299
    return-void
.end method

.method public closeAnnotations(Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 307
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->annotatedParameterSetRefList:Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->close()V

    .line 309
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addAnnotationSetItemToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)V

    .line 312
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->annotatedParameterSetRefList:Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addAnnotationSetRefListToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;)V

    .line 313
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 58
    check-cast p1, Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/Method;->compareTo(Lorg/ow2/asmdex/structureWriter/Method;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ow2/asmdex/structureWriter/Method;)I
    .locals 3
    .param p1, "method"    # Lorg/ow2/asmdex/structureWriter/Method;

    .line 576
    if-ne p0, p1, :cond_0

    .line 577
    const/4 v0, 0x0

    return v0

    .line 581
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->className:Ljava/lang/String;

    iget-object v1, p1, Lorg/ow2/asmdex/structureWriter/Method;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 582
    .local v0, "compare":I
    if-eqz v0, :cond_1

    .line 583
    return v0

    .line 587
    :cond_1
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/Method;->methodName:Ljava/lang/String;

    iget-object v2, p1, Lorg/ow2/asmdex/structureWriter/Method;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 588
    if-eqz v0, :cond_2

    .line 589
    return v0

    .line 593
    :cond_2
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/Method;->prototype:Lorg/ow2/asmdex/structureWriter/Prototype;

    iget-object v2, p1, Lorg/ow2/asmdex/structureWriter/Method;->prototype:Lorg/ow2/asmdex/structureWriter/Prototype;

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/structureWriter/Prototype;->compareTo(Lorg/ow2/asmdex/structureWriter/Prototype;)I

    move-result v1

    return v1
.end method

.method public completeInformation(I[Ljava/lang/String;[Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "access"    # I
    .param p2, "exceptionNames"    # [Ljava/lang/String;
    .param p3, "signature"    # [Ljava/lang/String;
    .param p4, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 186
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/Method;->access:I

    .line 187
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/Method;->exceptionNames:[Ljava/lang/String;

    .line 188
    iput-object p3, p0, Lorg/ow2/asmdex/structureWriter/Method;->signature:[Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->codeItem:Lorg/ow2/asmdex/structureWriter/CodeItem;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/Method;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/Method;->supportsCodeItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Lorg/ow2/asmdex/structureWriter/CodeItem;

    invoke-direct {v0, p0, p4}, Lorg/ow2/asmdex/structureWriter/CodeItem;-><init>(Lorg/ow2/asmdex/structureWriter/Method;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->codeItem:Lorg/ow2/asmdex/structureWriter/CodeItem;

    .line 193
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 561
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 562
    return v0

    .line 565
    :cond_0
    instance-of v1, p1, Lorg/ow2/asmdex/structureWriter/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 566
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/Method;

    .line 567
    .local v1, "mii":Lorg/ow2/asmdex/structureWriter/Method;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/Method;->methodName:Ljava/lang/String;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/Method;->methodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/Method;->className:Ljava/lang/String;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/Method;->className:Ljava/lang/String;

    .line 568
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/Method;->prototype:Lorg/ow2/asmdex/structureWriter/Prototype;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/Method;->prototype:Lorg/ow2/asmdex/structureWriter/Prototype;

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureWriter/Prototype;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 567
    :goto_0
    return v0

    .line 571
    .end local v1    # "mii":Lorg/ow2/asmdex/structureWriter/Method;
    :cond_2
    return v2
.end method

.method public free()V
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->codeItem:Lorg/ow2/asmdex/structureWriter/CodeItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->free()V

    .line 335
    return-void
.end method

.method public generateCodeItemCode()V
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->codeItem:Lorg/ow2/asmdex/structureWriter/CodeItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->generateCodeItemCode()V

    .line 326
    return-void
.end method

.method public getAccess()I
    .locals 1

    .line 443
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->access:I

    return v0
.end method

.method public getAnnotatedParameterSetRefList()Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
    .locals 1

    .line 487
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->annotatedParameterSetRefList:Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    return-object v0
.end method

.method public getAnnotationSetItem()Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->codeItem:Lorg/ow2/asmdex/structureWriter/CodeItem;

    return-object v0
.end method

.method public getCodeItemCode()Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->codeItem:Lorg/ow2/asmdex/structureWriter/CodeItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getCodeItemCode()Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v0

    return-object v0
.end method

.method public getCodeItemTryCatch()Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->codeItem:Lorg/ow2/asmdex/structureWriter/CodeItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getCodeItemTryCatch()Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionNames()[Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->exceptionNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getLocalVariables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/LocalVariable;",
            ">;"
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->localVariables:Ljava/util/List;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getNbAnnotations()I
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->getNbAnnotationItems()I

    move-result v0

    return v0
.end method

.method public getNbParameterAnnotations()I
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->annotatedParameterSetRefList:Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->getNbAnnotationSetItemsUsed()I

    move-result v0

    return v0
.end method

.method public getNbParameters()I
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->prototype:Lorg/ow2/asmdex/structureWriter/Prototype;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/Prototype;->getNbParameters()I

    move-result v0

    return v0
.end method

.method public getParameters()[Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->parameters:[Ljava/lang/String;

    return-object v0
.end method

.method public getPrototype()Lorg/ow2/asmdex/structureWriter/Prototype;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->prototype:Lorg/ow2/asmdex/structureWriter/Prototype;

    return-object v0
.end method

.method public getSignature()[Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->signature:[Ljava/lang/String;

    return-object v0
.end method

.method public getStartBytecodeToCopy()I
    .locals 1

    .line 384
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->startBytecodeToCopy:I

    return v0
.end method

.method public getStartDebugInfoToCopy()I
    .locals 1

    .line 406
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->startDebugInfoToCopy:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 556
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->hashcode:I

    return v0
.end method

.method public init(I[Ljava/lang/String;[Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "access"    # I
    .param p2, "signature"    # [Ljava/lang/String;
    .param p3, "exceptionNames"    # [Ljava/lang/String;
    .param p4, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 157
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/Method;->access:I

    .line 158
    iput-object p3, p0, Lorg/ow2/asmdex/structureWriter/Method;->exceptionNames:[Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/Method;->signature:[Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/Method;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/Method;->supportsCodeItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lorg/ow2/asmdex/structureWriter/CodeItem;

    invoke-direct {v0, p0, p4}, Lorg/ow2/asmdex/structureWriter/CodeItem;-><init>(Lorg/ow2/asmdex/structureWriter/Method;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->codeItem:Lorg/ow2/asmdex/structureWriter/CodeItem;

    .line 164
    :cond_0
    new-instance v0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/Method;->prototype:Lorg/ow2/asmdex/structureWriter/Prototype;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Prototype;->getNbParameters()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;-><init>(ILorg/ow2/asmdex/structureWriter/Method;)V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->annotatedParameterSetRefList:Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    .line 165
    return-void
.end method

.method public isAbstractOrInterface()Z
    .locals 2

    .line 247
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->access:I

    and-int/lit16 v1, v0, 0x400

    and-int/lit16 v0, v0, 0x200

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 231
    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/Method;->isVirtual()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isNative()Z
    .locals 1

    .line 255
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->access:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 239
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->access:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnknown()Z
    .locals 2

    .line 263
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->access:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsingThis()Z
    .locals 2

    .line 281
    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/Method;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->access:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/Method;->supportsCodeItem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVirtual()Z
    .locals 3

    .line 222
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->access:I

    and-int/lit8 v1, v0, 0x8

    and-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    add-int/2addr v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFirstLineNumberIfNeeded(I)V
    .locals 1
    .param p1, "firstLineNumber"    # I

    .line 530
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->codeItem:Lorg/ow2/asmdex/structureWriter/CodeItem;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/CodeItem;->setFirstLineNumber(I)V

    .line 531
    return-void
.end method

.method public setParameters([Ljava/lang/String;)V
    .locals 0
    .param p1, "parameters"    # [Ljava/lang/String;

    .line 522
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/Method;->parameters:[Ljava/lang/String;

    .line 523
    return-void
.end method

.method public setStartBytecodeToCopy(I)V
    .locals 0
    .param p1, "start"    # I

    .line 373
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/Method;->startBytecodeToCopy:I

    .line 374
    return-void
.end method

.method public setStartDebugInfoToCopy(I)V
    .locals 0
    .param p1, "start"    # I

    .line 395
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/Method;->startDebugInfoToCopy:I

    .line 396
    return-void
.end method

.method public supportsCodeItem()Z
    .locals 1

    .line 271
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Method;->access:I

    and-int/lit16 v0, v0, 0x700

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
