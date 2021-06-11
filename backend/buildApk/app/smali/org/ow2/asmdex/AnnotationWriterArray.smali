.class public Lorg/ow2/asmdex/AnnotationWriterArray;
.super Lorg/ow2/asmdex/AnnotationWriter;
.source "AnnotationWriterArray.java"


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V
    .locals 0
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;
    .param p2, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/ow2/asmdex/AnnotationWriter;-><init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 53
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/ow2/asmdex/AnnotationWriterArray;->visitManageNonDefaultAnnotation(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 58
    return-void
.end method

.method public visitEnd()V
    .locals 4

    .line 64
    iget-boolean v0, p0, Lorg/ow2/asmdex/AnnotationWriterArray;->mustSortArray:Z

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    .line 66
    .local v0, "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriterArray;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->getAnnotationElements()Ljava/util/PriorityQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 67
    .local v2, "element":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->getEncodedValue()Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 68
    .end local v2    # "element":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    goto :goto_0

    .line 69
    :cond_0
    new-instance v1, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    iget-object v2, p0, Lorg/ow2/asmdex/AnnotationWriterArray;->currentName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;-><init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    move-object v0, v1

    .line 70
    .local v0, "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    goto :goto_1

    .line 73
    .end local v0    # "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    :cond_1
    new-instance v0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriterArray;->currentName:Ljava/lang/String;

    iget-object v2, p0, Lorg/ow2/asmdex/AnnotationWriterArray;->unsortedArray:Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0, v1, v2}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;-><init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 75
    .restart local v0    # "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    :goto_1
    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriterArray;->father:Lorg/ow2/asmdex/AnnotationWriter;

    iget-object v1, v1, Lorg/ow2/asmdex/AnnotationWriter;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-virtual {v1, v0}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 77
    invoke-virtual {p0}, Lorg/ow2/asmdex/AnnotationWriterArray;->visitEndRegisterAnnotationItemNotDefaultAnnotation()V

    .line 78
    return-void
.end method
