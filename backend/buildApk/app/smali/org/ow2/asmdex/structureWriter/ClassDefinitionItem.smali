.class public Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
.super Ljava/lang/Object;
.source "ClassDefinitionItem.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;",
        ">;",
        "Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;"
    }
.end annotation


# static fields
.field public static final ACCESS_FLAGS_OFFSET:I = 0x4

.field public static final ANNOTATIONS_OFF_OFFSET:I = 0x14

.field public static final CLASS_DATA_OFF_OFFSET:I = 0x18

.field public static final INTERFACES_OFFSET:I = 0xc

.field public static final SOURCE_FILE_IDX_OFFSET:I = 0x10

.field public static final SUPERCLASS_IDX_OFFSET:I = 0x8


# instance fields
.field private final accessFlags:I

.field private annotationDirectoryItem:Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

.field private annotationItemsForDefaultAnnotation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationItem;",
            ">;"
        }
    .end annotation
.end field

.field private annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

.field private final className:Ljava/lang/String;

.field private final constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

.field private directMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final hashCode:I

.field private instanceFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceNames:Lorg/ow2/asmdex/structureWriter/TypeList;

.field private memberClassArray:Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

.field private final signature:[Ljava/lang/String;

.field private sourceFileName:Ljava/lang/String;

.field private staticFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final superClassName:Ljava/lang/String;

.field private virtualMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/ow2/asmdex/structureWriter/TypeList;[Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "superClassName"    # Ljava/lang/String;
    .param p3, "accessFlags"    # I
    .param p4, "interfaceNames"    # Lorg/ow2/asmdex/structureWriter/TypeList;
    .param p5, "signature"    # [Ljava/lang/String;
    .param p6, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->staticFields:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->instanceFields:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->directMethods:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->virtualMethods:Ljava/util/ArrayList;

    .line 177
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->className:Ljava/lang/String;

    .line 178
    iput p3, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->accessFlags:I

    .line 179
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->superClassName:Ljava/lang/String;

    .line 180
    iput-object p4, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->interfaceNames:Lorg/ow2/asmdex/structureWriter/TypeList;

    .line 181
    iput-object p5, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->signature:[Ljava/lang/String;

    .line 182
    iput-object p6, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->hashCode:I

    .line 185
    return-void
.end method

.method private buildAnnotationDirectoryItemForMethods(Ljava/util/List;Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;)Z
    .locals 4
    .param p2, "adi"    # Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            ">;",
            "Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;",
            ")Z"
        }
    .end annotation

    .line 499
    .local p1, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureWriter/Method;>;"
    const/4 v0, 0x0

    .line 500
    .local v0, "foundAnnotation":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/Method;

    .line 501
    .local v2, "method":Lorg/ow2/asmdex/structureWriter/Method;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/Method;->getNbAnnotations()I

    move-result v3

    if-lez v3, :cond_0

    .line 502
    invoke-virtual {p2, v2}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->addAnnotatedMethods(Lorg/ow2/asmdex/structureWriter/Method;)V

    .line 503
    const/4 v0, 0x1

    .line 505
    :cond_0
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/Method;->getNbParameterAnnotations()I

    move-result v3

    if-lez v3, :cond_1

    .line 506
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/Method;->getAnnotatedParameterSetRefList()Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->addAnnotatedParameter(Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;)V

    .line 507
    const/4 v0, 0x1

    .line 509
    .end local v2    # "method":Lorg/ow2/asmdex/structureWriter/Method;
    :cond_1
    goto :goto_0

    .line 511
    :cond_2
    return v0
.end method


# virtual methods
.method public addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V
    .locals 1
    .param p1, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 425
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 426
    return-void
.end method

.method public addAnnotationItemForDefaultAnnotation(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V
    .locals 2
    .param p1, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 452
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationItemsForDefaultAnnotation:Ljava/util/List;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationItemsForDefaultAnnotation:Ljava/util/List;

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationItemsForDefaultAnnotation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    return-void
.end method

.method public addField(Lorg/ow2/asmdex/structureWriter/Field;)V
    .locals 1
    .param p1, "field"    # Lorg/ow2/asmdex/structureWriter/Field;

    .line 414
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/Field;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    :goto_0
    return-void
.end method

.method public addMemberClassValue(Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "memberClassType"    # Ljava/lang/String;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 435
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->memberClassArray:Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->memberClassArray:Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    .line 439
    :cond_0
    invoke-virtual {p2, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 442
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueFactory;->getEncodedValue(Ljava/lang/Object;I)Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v0

    .line 443
    .local v0, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->memberClassArray:Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-virtual {v1, v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 444
    return-void
.end method

.method public addMethod(Lorg/ow2/asmdex/structureWriter/Method;)V
    .locals 1
    .param p1, "method"    # Lorg/ow2/asmdex/structureWriter/Method;

    .line 402
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/Method;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :goto_0
    return-void
.end method

.method public buildAnnotationDirectoryItem()V
    .locals 5

    .line 463
    new-instance v0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;-><init>()V

    .line 464
    .local v0, "adi":Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->setClassAnnotationSetItem(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)V

    .line 466
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->getNbAnnotationItems()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 468
    .local v1, "foundAnnotation":Z
    :goto_0
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->directMethods:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->buildAnnotationDirectoryItemForMethods(Ljava/util/List;Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 469
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->buildAnnotationDirectoryItemForMethods(Ljava/util/List;Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 471
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/structureWriter/Field;

    .line 472
    .local v3, "field":Lorg/ow2/asmdex/structureWriter/Field;
    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/Field;->getNbAnnotations()I

    move-result v4

    if-lez v4, :cond_1

    .line 473
    invoke-virtual {v0, v3}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->addAnnotatedField(Lorg/ow2/asmdex/structureWriter/Field;)V

    .line 474
    const/4 v1, 0x1

    .line 476
    .end local v3    # "field":Lorg/ow2/asmdex/structureWriter/Field;
    :cond_1
    goto :goto_1

    .line 478
    :cond_2
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/structureWriter/Field;

    .line 479
    .restart local v3    # "field":Lorg/ow2/asmdex/structureWriter/Field;
    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/Field;->getNbAnnotations()I

    move-result v4

    if-lez v4, :cond_3

    .line 480
    invoke-virtual {v0, v3}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->addAnnotatedField(Lorg/ow2/asmdex/structureWriter/Field;)V

    .line 481
    const/4 v1, 0x1

    .line 483
    .end local v3    # "field":Lorg/ow2/asmdex/structureWriter/Field;
    :cond_3
    goto :goto_2

    .line 485
    :cond_4
    if-eqz v1, :cond_5

    .line 486
    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationDirectoryItem:Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    .line 487
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addAnnotationDirectoryItem(Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;)V

    .line 489
    :cond_5
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 57
    check-cast p1, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->compareTo(Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)I
    .locals 2
    .param p1, "cdi"    # Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 539
    if-ne p0, p1, :cond_0

    .line 540
    const/4 v0, 0x0

    return v0

    .line 546
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->className:Ljava/lang/String;

    iget-object v1, p1, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 525
    if-ne p0, p1, :cond_0

    .line 526
    const/4 v0, 0x1

    return v0

    .line 529
    :cond_0
    instance-of v0, p1, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    if-eqz v0, :cond_1

    .line 530
    move-object v0, p1

    check-cast v0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 531
    .local v0, "cdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->className:Ljava/lang/String;

    iget-object v2, v0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 534
    .end local v0    # "cdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessFlags()I
    .locals 1

    .line 221
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->accessFlags:I

    return v0
.end method

.method public getAnnotationDirectoryItem()Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationDirectoryItem:Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    return-object v0
.end method

.method public getAnnotationItemsForDefaultAnnotation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationItem;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationItemsForDefaultAnnotation:Ljava/util/List;

    return-object v0
.end method

.method public getAnnotationSetItem()Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectMethods()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->directMethods:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInstanceFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->instanceFields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInterfaces()Lorg/ow2/asmdex/structureWriter/TypeList;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->interfaceNames:Lorg/ow2/asmdex/structureWriter/TypeList;

    return-object v0
.end method

.method public getMemberClassArray()Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->memberClassArray:Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    return-object v0
.end method

.method public getNbAnnotatedFields()I
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationDirectoryItem:Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getNbAnnotatedFields()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNbAnnotatedMethods()I
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationDirectoryItem:Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getNbAnnotatedMethods()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNbAnnotations()I
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->getNbAnnotationItems()I

    move-result v0

    return v0
.end method

.method public getNbDirectMethods()I
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNbInstanceFields()I
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNbMethodWithAnnotatedParameters()I
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->annotationDirectoryItem:Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getNbAnnotatedParameters()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNbStaticFields()I
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNbVirtualMethods()I
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSignature()[Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->signature:[Ljava/lang/String;

    return-object v0
.end method

.method public getSourceFileName()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->sourceFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->staticFields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSuperClassName()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->superClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualMethods()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->virtualMethods:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 520
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->hashCode:I

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 394
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->accessFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSourceFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceFileName"    # Ljava/lang/String;

    .line 237
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->sourceFileName:Ljava/lang/String;

    .line 238
    return-void
.end method
