.class public Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;
.super Lorg/ow2/asmdex/AnnotationWriter;
.source "AnnotationWriterDefaultAnnotation.java"


# instance fields
.field protected classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

.field subAnnotationVisitor:Lorg/ow2/asmdex/AnnotationVisitor;


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/AnnotationItem;Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)V
    .locals 1
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;
    .param p2, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    .param p3, "classDefinitionItem"    # Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/ow2/asmdex/AnnotationWriter;-><init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 62
    iput-object p3, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 63
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->currentName:Ljava/lang/String;

    const-string v1, "value"

    invoke-super {p0, v1, v0}, Lorg/ow2/asmdex/AnnotationWriter;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->subAnnotationVisitor:Lorg/ow2/asmdex/AnnotationVisitor;

    .line 69
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->currentName:Ljava/lang/String;

    const-string v1, "value"

    invoke-super {p0, v1, v0}, Lorg/ow2/asmdex/AnnotationWriter;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->subAnnotationVisitor:Lorg/ow2/asmdex/AnnotationVisitor;

    .line 94
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->currentName:Ljava/lang/String;

    const-string v1, "value"

    invoke-super {p0, v1, v0}, Lorg/ow2/asmdex/AnnotationWriter;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->subAnnotationVisitor:Lorg/ow2/asmdex/AnnotationVisitor;

    .line 88
    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "annotationName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->currentName:Ljava/lang/String;

    const-string v1, "value"

    invoke-super {p0, v1, v0}, Lorg/ow2/asmdex/AnnotationWriter;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->subAnnotationVisitor:Lorg/ow2/asmdex/AnnotationVisitor;

    .line 82
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/AnnotationVisitor;->visitClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->subAnnotationVisitor:Lorg/ow2/asmdex/AnnotationVisitor;

    invoke-virtual {v0}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 103
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->classDefinitionItem:Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    iget-object v1, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->annotationItem:Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->addAnnotationItemForDefaultAnnotation(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 104
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->currentName:Ljava/lang/String;

    const-string v1, "value"

    invoke-super {p0, v1, v0}, Lorg/ow2/asmdex/AnnotationWriter;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/AnnotationWriterDefaultAnnotation;->subAnnotationVisitor:Lorg/ow2/asmdex/AnnotationVisitor;

    .line 76
    invoke-virtual {v0, p1, p2, p3}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
