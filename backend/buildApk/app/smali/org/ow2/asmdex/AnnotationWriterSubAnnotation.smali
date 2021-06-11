.class public Lorg/ow2/asmdex/AnnotationWriterSubAnnotation;
.super Lorg/ow2/asmdex/AnnotationWriter;
.source "AnnotationWriterSubAnnotation.java"


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
.method public visitEnd()V
    .locals 3

    .line 58
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;

    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriterSubAnnotation;->annotationType:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "encodedAnnotation":Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;
    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriterSubAnnotation;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

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

    .line 60
    .local v2, "element":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    invoke-virtual {v0, v2}, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 61
    .end local v2    # "element":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    iget-object v2, p0, Lorg/ow2/asmdex/AnnotationWriterSubAnnotation;->currentName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;-><init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 63
    .local v1, "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    iget-object v2, p0, Lorg/ow2/asmdex/AnnotationWriterSubAnnotation;->father:Lorg/ow2/asmdex/AnnotationWriter;

    iget-object v2, v2, Lorg/ow2/asmdex/AnnotationWriter;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V

    .line 65
    invoke-virtual {p0}, Lorg/ow2/asmdex/AnnotationWriterSubAnnotation;->visitEndRegisterAnnotationItemNotDefaultAnnotation()V

    .line 66
    return-void
.end method
