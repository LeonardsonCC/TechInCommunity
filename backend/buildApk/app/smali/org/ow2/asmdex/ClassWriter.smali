.class public Lorg/ow2/asmdex/ClassWriter;
.super Lorg/ow2/asmdex/ClassVisitor;
.source "ClassWriter.java"


# instance fields
.field private applicationWriter:Lorg/ow2/asmdex/ApplicationWriter;

.field private classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

.field private constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

.field private enclosingMethod:Lorg/ow2/asmdex/structureWriter/Method;


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/ApplicationWriter;Lorg/ow2/asmdex/structureWriter/ConstantPool;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "applicationWriter"    # Lorg/ow2/asmdex/ApplicationWriter;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;
    .param p3, "access"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "signature"    # [Ljava/lang/String;
    .param p6, "superName"    # Ljava/lang/String;
    .param p7, "interfaces"    # [Ljava/lang/String;

    .line 90
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/ClassVisitor;-><init>(I)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->enclosingMethod:Lorg/ow2/asmdex/structureWriter/Method;

    .line 91
    iput-object p1, p0, Lorg/ow2/asmdex/ClassWriter;->applicationWriter:Lorg/ow2/asmdex/ApplicationWriter;

    .line 92
    iput-object p2, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 93
    move-object v0, p2

    move-object v1, p4

    move-object v2, p6

    move v3, p3

    move-object v4, p7

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addClassToConstantPool(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 95
    return-void
.end method


# virtual methods
.method public getApplicationWriter()Lorg/ow2/asmdex/ApplicationWriter;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->applicationWriter:Lorg/ow2/asmdex/ApplicationWriter;

    return-object v0
.end method

.method public getClassDefinitionItem()Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    return-object v0
.end method

.method public getConstantPool()Lorg/ow2/asmdex/structureWriter/ConstantPool;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getSignature()[Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "savedSignature":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 166
    array-length v1, v0

    .line 167
    .local v1, "size":I
    if-lez v1, :cond_1

    .line 168
    const/4 v2, 0x0

    const-string v3, "Ldalvik/annotation/Signature;"

    invoke-virtual {p0, v3, v2}, Lorg/ow2/asmdex/ClassWriter;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v3

    .line 169
    .local v3, "av":Lorg/ow2/asmdex/AnnotationVisitor;
    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v4

    .line 170
    .local v4, "subAv":Lorg/ow2/asmdex/AnnotationVisitor;
    array-length v5, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v0, v2

    .line 171
    .local v6, "string":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Lorg/ow2/asmdex/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    .end local v6    # "string":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v4}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 174
    invoke-virtual {v3}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 177
    .end local v1    # "size":I
    .end local v3    # "av":Lorg/ow2/asmdex/AnnotationVisitor;
    .end local v4    # "subAv":Lorg/ow2/asmdex/AnnotationVisitor;
    :cond_1
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 380
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/ow2/asmdex/AnnotationWriter;->createAnnotationWriter(Ljava/lang/String;ZLorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)Lorg/ow2/asmdex/AnnotationWriter;

    move-result-object v0

    .line 381
    .local v0, "annotationWriter":Lorg/ow2/asmdex/AnnotationWriter;
    iget-object v1, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/AnnotationWriter;->getAnnotationItem()Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 383
    return-object v0
.end method

.method public visitAttribute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attr"    # Ljava/lang/Object;

    .line 497
    return-void
.end method

.method public visitEnd()V
    .locals 12

    .line 196
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getMemberClassArray()Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    move-result-object v0

    .line 197
    .local v0, "array":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 198
    const-string v2, "value"

    .line 199
    .local v2, "val":Ljava/lang/String;
    iget-object v3, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3, v2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    const-string v4, "Ldalvik/annotation/MemberClasses;"

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 201
    new-instance v3, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-direct {v3, v1, v4}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;-><init>(ILjava/lang/String;)V

    .line 203
    .local v3, "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    new-instance v4, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    invoke-direct {v4, v2, v0}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;-><init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 204
    .local v4, "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 205
    iget-object v5, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v5, v3}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 207
    iget-object v5, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v5, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addAnnotationItemToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 212
    .end local v2    # "val":Ljava/lang/String;
    .end local v3    # "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    .end local v4    # "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    :cond_0
    iget-object v2, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getAnnotationItemsForDefaultAnnotation()Ljava/util/List;

    move-result-object v2

    .line 213
    .local v2, "defaultAnnotationItems":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureWriter/AnnotationItem;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 215
    const/4 v3, 0x0

    .line 217
    .local v3, "createdEncodedValueAnnotation":Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;
    const/4 v4, 0x0

    .line 218
    .local v4, "encodedAnnotationType":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 220
    .local v6, "annotationItems":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    invoke-virtual {v6}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->getAnnotationElements()Ljava/util/PriorityQueue;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 221
    .local v8, "currentElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    invoke-virtual {v8}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->getEncodedValue()Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v9

    check-cast v9, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;

    .line 222
    .local v9, "currentEncodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;
    invoke-virtual {v9}, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->getAnnotationType()Ljava/lang/String;

    move-result-object v4

    .line 224
    if-nez v3, :cond_1

    .line 225
    new-instance v10, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;

    invoke-direct {v10, v4}, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;-><init>(Ljava/lang/String;)V

    move-object v3, v10

    .line 229
    :cond_1
    invoke-virtual {v9}, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->getAnnotationElements()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 230
    .local v11, "currentAnnotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    invoke-virtual {v3, v11}, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 231
    .end local v11    # "currentAnnotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    goto :goto_2

    .line 232
    .end local v8    # "currentElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    .end local v9    # "currentEncodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;
    :cond_2
    goto :goto_1

    .line 233
    .end local v6    # "annotationItems":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    :cond_3
    goto :goto_0

    .line 236
    :cond_4
    new-instance v5, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    const-string v6, "Ldalvik/annotation/AnnotationDefault;"

    invoke-direct {v5, v1, v6}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;-><init>(ILjava/lang/String;)V

    move-object v1, v5

    .line 240
    .local v1, "createdAnnotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    new-instance v5, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    const-string v6, "value"

    invoke-direct {v5, v6, v3}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;-><init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 242
    .local v5, "createdAnnotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    invoke-virtual {v1, v5}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 245
    iget-object v6, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v6, v1}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 246
    iget-object v6, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v6, v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addAnnotationItemToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 250
    .end local v1    # "createdAnnotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    .end local v3    # "createdEncodedValueAnnotation":Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;
    .end local v4    # "encodedAnnotationType":Ljava/lang/String;
    .end local v5    # "createdAnnotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    :cond_5
    iget-object v1, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    iget-object v3, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getAnnotationSetItem()Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addAnnotationSetItemToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)V

    .line 253
    iget-object v1, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->buildAnnotationDirectoryItem()V

    .line 254
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;
    .locals 10
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 345
    new-instance v8, Lorg/ow2/asmdex/FieldWriter;

    iget-object v1, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {p0}, Lorg/ow2/asmdex/ClassWriter;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v8

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/ow2/asmdex/FieldWriter;-><init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    .local v0, "fieldWriter":Lorg/ow2/asmdex/FieldWriter;
    invoke-virtual {v0}, Lorg/ow2/asmdex/FieldWriter;->getField()Lorg/ow2/asmdex/structureWriter/Field;

    move-result-object v1

    .line 350
    .local v1, "field":Lorg/ow2/asmdex/structureWriter/Field;
    iget-object v2, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->addField(Lorg/ow2/asmdex/structureWriter/Field;)V

    .line 353
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Field;->getSignature()[Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "savedSignature":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 355
    array-length v3, v2

    .line 356
    .local v3, "size":I
    if-lez v3, :cond_1

    .line 357
    const/4 v4, 0x0

    const-string v5, "Ldalvik/annotation/Signature;"

    invoke-virtual {v0, v5, v4}, Lorg/ow2/asmdex/FieldWriter;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v5

    .line 358
    .local v5, "av":Lorg/ow2/asmdex/AnnotationVisitor;
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/ow2/asmdex/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v6

    .line 359
    .local v6, "subAv":Lorg/ow2/asmdex/AnnotationVisitor;
    array-length v7, v2

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v8, v2, v4

    .line 360
    .local v8, "string":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Lorg/ow2/asmdex/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    .end local v8    # "string":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {v6}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 363
    invoke-virtual {v5}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 367
    .end local v3    # "size":I
    .end local v5    # "av":Lorg/ow2/asmdex/AnnotationVisitor;
    .end local v6    # "subAv":Lorg/ow2/asmdex/AnnotationVisitor;
    :cond_1
    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 405
    if-nez p1, :cond_0

    .line 406
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 419
    :goto_0
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->enclosingMethod:Lorg/ow2/asmdex/structureWriter/Method;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 420
    .local v0, "isEnclosingClass":Z
    :goto_1
    if-eqz v0, :cond_2

    const-string v1, "Ldalvik/annotation/EnclosingClass;"

    goto :goto_2

    .line 421
    :cond_2
    const-string v1, "Ldalvik/annotation/EnclosingMethod;"

    :goto_2
    nop

    .line 422
    .local v1, "annotationType":Ljava/lang/String;
    const-string v2, "value"

    .line 423
    .local v2, "val":Ljava/lang/String;
    iget-object v3, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3, v2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3, v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 425
    new-instance v3, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;-><init>(ILjava/lang/String;)V

    .line 427
    .local v3, "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    if-eqz v0, :cond_3

    .line 429
    const/16 v5, 0x18

    invoke-static {p2, v5}, Lorg/ow2/asmdex/encodedValue/EncodedValueFactory;->getEncodedValue(Ljava/lang/Object;I)Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v5

    .local v5, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    goto :goto_3

    .line 432
    .end local v5    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    :cond_3
    iget-object v5, p0, Lorg/ow2/asmdex/ClassWriter;->enclosingMethod:Lorg/ow2/asmdex/structureWriter/Method;

    const/16 v6, 0x1a

    invoke-static {v5, v6}, Lorg/ow2/asmdex/encodedValue/EncodedValueFactory;->getEncodedValue(Ljava/lang/Object;I)Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v5

    .line 435
    .restart local v5    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    :goto_3
    new-instance v6, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    invoke-direct {v6, v2, v5}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;-><init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 436
    .local v6, "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    invoke-virtual {v3, v6}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 437
    iget-object v7, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v7, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addAnnotationItemToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 438
    iget-object v7, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v7, v3}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 441
    new-instance v7, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    const-string v8, "Ldalvik/annotation/InnerClass;"

    invoke-direct {v7, v4, v8}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;-><init>(ILjava/lang/String;)V

    move-object v3, v7

    .line 444
    const-string v2, "name"

    .line 445
    iget-object v4, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v4, v2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 447
    iget-object v4, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v4, v8}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 449
    if-nez p3, :cond_4

    .line 450
    invoke-static {}, Lorg/ow2/asmdex/encodedValue/EncodedValueFactory;->getEncodedNullValue()Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v4

    .end local v5    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .local v4, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    goto :goto_4

    .line 452
    .end local v4    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .restart local v5    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    :cond_4
    const/16 v4, 0x17

    invoke-static {p3, v4}, Lorg/ow2/asmdex/encodedValue/EncodedValueFactory;->getEncodedValue(Ljava/lang/Object;I)Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v4

    .line 454
    .end local v5    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .restart local v4    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    :goto_4
    new-instance v5, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    invoke-direct {v5, v2, v4}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;-><init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 455
    .end local v6    # "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    .local v5, "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 458
    const-string v2, "accessFlags"

    .line 459
    iget-object v6, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v6, v2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 460
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lorg/ow2/asmdex/encodedValue/EncodedValueFactory;->getEncodedValue(Ljava/lang/Object;I)Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v4

    .line 461
    new-instance v6, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    invoke-direct {v6, v2, v4}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;-><init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    move-object v5, v6

    .line 462
    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 464
    iget-object v6, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v6, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addAnnotationItemToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 465
    iget-object v6, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v6, v3}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 466
    return-void
.end method

.method public visitMemberClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;

    .line 471
    if-eqz p1, :cond_0

    .line 472
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 474
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    iget-object v1, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->addMemberClassValue(Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 475
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;
    .locals 13
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 277
    move-object v7, p0

    move-object/from16 v8, p5

    new-instance v9, Lorg/ow2/asmdex/MethodWriter;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/ow2/asmdex/MethodWriter;-><init>(Lorg/ow2/asmdex/ClassWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 280
    .local v0, "methodWriter":Lorg/ow2/asmdex/MethodWriter;
    invoke-virtual {v0}, Lorg/ow2/asmdex/MethodWriter;->getMethod()Lorg/ow2/asmdex/structureWriter/Method;

    move-result-object v1

    .line 281
    .local v1, "method":Lorg/ow2/asmdex/structureWriter/Method;
    iget-object v2, v7, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->addMethod(Lorg/ow2/asmdex/structureWriter/Method;)V

    .line 285
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->isUsingThis()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, v7, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    const-string v3, "this"

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->getSignature()[Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "savedSignature":[Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 292
    array-length v4, v2

    .line 293
    .local v4, "size":I
    if-lez v4, :cond_2

    .line 294
    const-string v5, "Ldalvik/annotation/Signature;"

    invoke-virtual {v0, v5, v3}, Lorg/ow2/asmdex/MethodWriter;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v5

    .line 295
    .local v5, "av":Lorg/ow2/asmdex/AnnotationVisitor;
    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/ow2/asmdex/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v6

    .line 296
    .local v6, "subAv":Lorg/ow2/asmdex/AnnotationVisitor;
    array-length v9, v2

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v2, v10

    .line 297
    .local v11, "string":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v6, v12, v11}, Lorg/ow2/asmdex/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    .end local v11    # "string":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {v6}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 300
    invoke-virtual {v5}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 306
    .end local v4    # "size":I
    .end local v5    # "av":Lorg/ow2/asmdex/AnnotationVisitor;
    .end local v6    # "subAv":Lorg/ow2/asmdex/AnnotationVisitor;
    :cond_2
    if-eqz v8, :cond_4

    array-length v4, v8

    if-lez v4, :cond_4

    .line 307
    const-string v4, "value"

    .line 308
    .local v4, "valString":Ljava/lang/String;
    iget-object v5, v7, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v5, v4}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 309
    iget-object v5, v7, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    const-string v6, "Ldalvik/annotation/Throws;"

    invoke-virtual {v5, v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 311
    new-instance v5, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v5}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    .line 312
    .local v5, "array":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    array-length v9, v8

    :goto_1
    if-ge v3, v9, :cond_3

    aget-object v10, v8, v3

    .line 313
    .local v10, "exception":Ljava/lang/String;
    iget-object v11, v7, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v11, v10}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 314
    new-instance v11, Lorg/ow2/asmdex/encodedValue/EncodedValueType;

    invoke-direct {v11, v10}, Lorg/ow2/asmdex/encodedValue/EncodedValueType;-><init>(Ljava/lang/String;)V

    .line 315
    .local v11, "value":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    invoke-virtual {v5, v11}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 312
    .end local v10    # "exception":Ljava/lang/String;
    .end local v11    # "value":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 317
    :cond_3
    new-instance v3, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    invoke-direct {v3, v4, v5}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;-><init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 318
    .local v3, "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    new-instance v9, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    const/4 v10, 0x2

    invoke-direct {v9, v10, v6}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;-><init>(ILjava/lang/String;)V

    move-object v6, v9

    .line 320
    .local v6, "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    invoke-virtual {v6, v3}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 321
    invoke-virtual {v1, v6}, Lorg/ow2/asmdex/structureWriter/Method;->addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 323
    iget-object v9, v7, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v9, v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addAnnotationItemToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 326
    .end local v3    # "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    .end local v4    # "valString":Ljava/lang/String;
    .end local v5    # "array":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    .end local v6    # "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    :cond_4
    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    const/high16 v4, 0x40000

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addMethodToConstantPool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/structureWriter/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->enclosingMethod:Lorg/ow2/asmdex/structureWriter/Method;

    .line 491
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->setSourceFileName(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lorg/ow2/asmdex/ClassWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 186
    return-void
.end method
