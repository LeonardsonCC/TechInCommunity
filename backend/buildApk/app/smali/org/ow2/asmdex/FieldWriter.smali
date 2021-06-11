.class public Lorg/ow2/asmdex/FieldWriter;
.super Lorg/ow2/asmdex/FieldVisitor;
.source "FieldWriter.java"


# instance fields
.field private constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

.field private field:Lorg/ow2/asmdex/structureWriter/Field;


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;
    .param p2, "classOwningName"    # Ljava/lang/String;
    .param p3, "access"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "desc"    # Ljava/lang/String;
    .param p6, "signature"    # [Ljava/lang/String;
    .param p7, "value"    # Ljava/lang/Object;

    .line 63
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/FieldVisitor;-><init>(I)V

    .line 64
    iput-object p1, p0, Lorg/ow2/asmdex/FieldWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 67
    move-object v0, p1

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addFieldToConstantPool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/structureWriter/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/FieldWriter;->field:Lorg/ow2/asmdex/structureWriter/Field;

    .line 69
    return-void
.end method


# virtual methods
.method public getField()Lorg/ow2/asmdex/structureWriter/Field;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/ow2/asmdex/FieldWriter;->field:Lorg/ow2/asmdex/structureWriter/Field;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 100
    iget-object v0, p0, Lorg/ow2/asmdex/FieldWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/ow2/asmdex/AnnotationWriter;->createAnnotationWriter(Ljava/lang/String;ZLorg/ow2/asmdex/structureWriter/ConstantPool;Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)Lorg/ow2/asmdex/AnnotationWriter;

    move-result-object v0

    .line 101
    .local v0, "annotationWriter":Lorg/ow2/asmdex/AnnotationWriter;
    iget-object v1, p0, Lorg/ow2/asmdex/FieldWriter;->field:Lorg/ow2/asmdex/structureWriter/Field;

    invoke-virtual {v0}, Lorg/ow2/asmdex/AnnotationWriter;->getAnnotationItem()Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/structureWriter/Field;->addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 103
    return-object v0
.end method

.method public visitAttribute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attr"    # Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/ow2/asmdex/FieldWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    iget-object v1, p0, Lorg/ow2/asmdex/FieldWriter;->field:Lorg/ow2/asmdex/structureWriter/Field;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Field;->getAnnotationSetItem()Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addAnnotationSetItemToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)V

    .line 115
    return-void
.end method
