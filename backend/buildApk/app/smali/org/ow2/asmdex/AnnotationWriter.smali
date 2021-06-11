.class public Lorg/ow2/asmdex/AnnotationWriter;
.super Lorg/ow2/asmdex/AnnotationVisitor;
.source "AnnotationWriter.java"


# instance fields
.field protected annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

.field protected annotationType:Ljava/lang/String;

.field private constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

.field protected currentName:Ljava/lang/String;

.field protected father:Lorg/ow2/asmdex/AnnotationWriter;

.field protected mustSortArray:Z

.field protected unsortedArray:Lorg/ow2/asmdex/encodedValue/EncodedValueArray;


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V
    .locals 1
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;
    .param p2, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 115
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/AnnotationVisitor;-><init>(I)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->mustSortArray:Z

    .line 116
    iput-object p1, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 117
    iput-object p2, p0, Lorg/ow2/asmdex/AnnotationWriter;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 118
    return-void
.end method

.method public static createAnnotationWriter(Ljava/lang/String;ZLorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)Lorg/ow2/asmdex/AnnotationWriter;
    .locals 5
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "visible"    # Z
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;
    .param p3, "classDefinitionItem"    # Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 366
    invoke-virtual {p2, p0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x2

    .line 373
    .local v0, "visibility":I
    const/4 v1, 0x0

    .line 374
    .local v1, "isSignature":Z
    const-string v2, "Ldalvik/annotation/Signature;"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    const/4 v1, 0x1

    goto :goto_0

    .line 377
    :cond_0
    const-string v2, "Ldalvik/annotation/AnnotationDefault;"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 378
    move v0, p1

    .line 382
    :cond_1
    :goto_0
    new-instance v2, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-direct {v2, v0, p0}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;-><init>(ILjava/lang/String;)V

    .line 387
    .local v2, "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    if-eqz p3, :cond_2

    .line 390
    new-instance v3, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;

    invoke-direct {v3, p2, v2, p3}, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;-><init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/AnnotationItem;Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)V

    .line 391
    .local v3, "annotationWriter":Lorg/ow2/asmdex/AnnotationWriter;
    invoke-virtual {p3}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/ow2/asmdex/AnnotationWriter;->currentName:Ljava/lang/String;

    goto :goto_1

    .line 393
    .end local v3    # "annotationWriter":Lorg/ow2/asmdex/AnnotationWriter;
    :cond_2
    new-instance v3, Lorg/ow2/asmdex/AnnotationWriter;

    invoke-direct {v3, p2, v2}, Lorg/ow2/asmdex/AnnotationWriter;-><init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 398
    .restart local v3    # "annotationWriter":Lorg/ow2/asmdex/AnnotationWriter;
    :goto_1
    if-eqz v1, :cond_3

    .line 399
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/AnnotationWriter;->setMustSortArray(Z)V

    .line 401
    :cond_3
    return-object v3
.end method


# virtual methods
.method public getAnnotationItem()Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    return-object v0
.end method

.method public setMustSortArray(Z)V
    .locals 1
    .param p1, "mustSortArray"    # Z

    .line 138
    iput-boolean p1, p0, Lorg/ow2/asmdex/AnnotationWriter;->mustSortArray:Z

    .line 139
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->unsortedArray:Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->unsortedArray:Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    .line 142
    :cond_0
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/ow2/asmdex/AnnotationWriter;->visitManageNonDefaultAnnotation(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 157
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 292
    if-nez p1, :cond_0

    .line 293
    iget-object p1, p0, Lorg/ow2/asmdex/AnnotationWriter;->currentName:Ljava/lang/String;

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 301
    new-instance v0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriter;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lorg/ow2/asmdex/AnnotationWriter;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 302
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->getAnnotationType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;-><init>(ILjava/lang/String;)V

    .line 303
    .local v0, "childAnnotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    new-instance v1, Lorg/ow2/asmdex/AnnotationWriterSubAnnotation;

    iget-object v2, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-direct {v1, v2, v0}, Lorg/ow2/asmdex/AnnotationWriterSubAnnotation;-><init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 304
    .local v1, "childAnnotationWriter":Lorg/ow2/asmdex/AnnotationWriter;
    iput-object p0, v1, Lorg/ow2/asmdex/AnnotationWriter;->father:Lorg/ow2/asmdex/AnnotationWriter;

    .line 305
    iput-object p1, v1, Lorg/ow2/asmdex/AnnotationWriter;->currentName:Ljava/lang/String;

    .line 306
    iput-object p2, v1, Lorg/ow2/asmdex/AnnotationWriter;->annotationType:Ljava/lang/String;

    .line 308
    return-object v1
.end method

.method public visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 273
    new-instance v0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriter;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lorg/ow2/asmdex/AnnotationWriter;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 274
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->getAnnotationType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;-><init>(ILjava/lang/String;)V

    .line 275
    .local v0, "childAnnotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    new-instance v1, Lorg/ow2/asmdex/AnnotationWriterArray;

    iget-object v2, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-direct {v1, v2, v0}, Lorg/ow2/asmdex/AnnotationWriterArray;-><init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 276
    .local v1, "childAnnotationWriter":Lorg/ow2/asmdex/AnnotationWriter;
    iput-object p0, v1, Lorg/ow2/asmdex/AnnotationWriter;->father:Lorg/ow2/asmdex/AnnotationWriter;

    .line 277
    iput-object p1, v1, Lorg/ow2/asmdex/AnnotationWriter;->currentName:Ljava/lang/String;

    .line 278
    iget-boolean v2, p0, Lorg/ow2/asmdex/AnnotationWriter;->mustSortArray:Z

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/AnnotationWriter;->setMustSortArray(Z)V

    .line 280
    return-object v1
.end method

.method public visitClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "annotationName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 321
    if-nez p1, :cond_0

    .line 322
    iget-object p1, p0, Lorg/ow2/asmdex/AnnotationWriter;->currentName:Ljava/lang/String;

    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/AnnotationWriter;->setMustSortArray(Z)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 331
    :goto_0
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 333
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueType;

    invoke-direct {v0, p2}, Lorg/ow2/asmdex/encodedValue/EncodedValueType;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    iget-boolean v1, p0, Lorg/ow2/asmdex/AnnotationWriter;->mustSortArray:Z

    if-eqz v1, :cond_1

    .line 337
    new-instance v1, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    invoke-direct {v1, p1, v0}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;-><init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 339
    .local v1, "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    iget-object v2, p0, Lorg/ow2/asmdex/AnnotationWriter;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 340
    .end local v1    # "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    goto :goto_1

    .line 342
    :cond_1
    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriter;->unsortedArray:Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-virtual {v1, v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 344
    :goto_1
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 213
    invoke-virtual {p0}, Lorg/ow2/asmdex/AnnotationWriter;->visitEndRegisterAnnotationItemNotDefaultAnnotation()V

    .line 214
    return-void
.end method

.method protected visitEndRegisterAnnotationItemNotDefaultAnnotation()V
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->father:Lorg/ow2/asmdex/AnnotationWriter;

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriter;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addAnnotationItemToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 225
    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 238
    if-nez p1, :cond_0

    .line 239
    iget-object p1, p0, Lorg/ow2/asmdex/AnnotationWriter;->currentName:Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/AnnotationWriter;->setMustSortArray(Z)V

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    const/high16 v5, 0x40000

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p2

    invoke-virtual/range {v1 .. v7}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addFieldToConstantPool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/structureWriter/Field;

    move-result-object v0

    .line 250
    .local v0, "field":Lorg/ow2/asmdex/structureWriter/Field;
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;

    invoke-direct {v1, v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;-><init>(Lorg/ow2/asmdex/structureWriter/Field;)V

    .line 252
    .local v1, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    iget-boolean v2, p0, Lorg/ow2/asmdex/AnnotationWriter;->mustSortArray:Z

    if-eqz v2, :cond_1

    .line 254
    new-instance v2, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    invoke-direct {v2, p1, v1}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;-><init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 256
    .local v2, "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    iget-object v3, p0, Lorg/ow2/asmdex/AnnotationWriter;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-virtual {v3, v2}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 257
    .end local v2    # "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    goto :goto_0

    .line 259
    :cond_1
    iget-object v2, p0, Lorg/ow2/asmdex/AnnotationWriter;->unsortedArray:Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 261
    :goto_0
    return-void
.end method

.method protected visitManageNonDefaultAnnotation(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "isArrayAnnotation"    # Z

    .line 168
    if-nez p1, :cond_0

    .line 169
    iget-object p1, p0, Lorg/ow2/asmdex/AnnotationWriter;->currentName:Ljava/lang/String;

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 175
    invoke-static {p2}, Lorg/ow2/asmdex/encodedValue/EncodedValueFactory;->getEncodedValue(Ljava/lang/Object;)Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v0

    .line 180
    .local v0, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->getType()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 181
    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 185
    iget-boolean v1, p0, Lorg/ow2/asmdex/AnnotationWriter;->mustSortArray:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 186
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/AnnotationWriter;->setMustSortArray(Z)V

    .line 193
    :cond_1
    iget-boolean v1, p0, Lorg/ow2/asmdex/AnnotationWriter;->mustSortArray:Z

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 194
    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriter;->unsortedArray:Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-virtual {v1, v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    goto :goto_0

    .line 196
    :cond_2
    new-instance v1, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    invoke-direct {v1, p1, v0}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;-><init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 198
    .local v1, "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    iget-object v2, p0, Lorg/ow2/asmdex/AnnotationWriter;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 201
    .end local v1    # "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    :goto_0
    return-void
.end method
