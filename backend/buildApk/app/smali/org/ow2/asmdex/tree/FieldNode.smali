.class public Lorg/ow2/asmdex/tree/FieldNode;
.super Lorg/ow2/asmdex/FieldVisitor;
.source "FieldNode.java"


# instance fields
.field public access:I

.field public desc:Ljava/lang/String;

.field public invisibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public signature:[Ljava/lang/String;

.field public value:Ljava/lang/Object;

.field public visibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # [Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/Object;

    .line 110
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/FieldVisitor;-><init>(I)V

    .line 111
    iput p2, p0, Lorg/ow2/asmdex/tree/FieldNode;->access:I

    .line 112
    iput-object p3, p0, Lorg/ow2/asmdex/tree/FieldNode;->name:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lorg/ow2/asmdex/tree/FieldNode;->desc:Ljava/lang/String;

    .line 114
    iput-object p5, p0, Lorg/ow2/asmdex/tree/FieldNode;->signature:[Ljava/lang/String;

    .line 115
    iput-object p6, p0, Lorg/ow2/asmdex/tree/FieldNode;->value:Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 138
    const/high16 v1, 0x40000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/ow2/asmdex/tree/FieldNode;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/ClassVisitor;)V
    .locals 7
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 151
    iget v1, p0, Lorg/ow2/asmdex/tree/FieldNode;->access:I

    iget-object v2, p0, Lorg/ow2/asmdex/tree/FieldNode;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/ow2/asmdex/tree/FieldNode;->desc:Ljava/lang/String;

    iget-object v4, p0, Lorg/ow2/asmdex/tree/FieldNode;->signature:[Ljava/lang/String;

    iget-object v5, p0, Lorg/ow2/asmdex/tree/FieldNode;->value:Ljava/lang/Object;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;

    move-result-object v0

    .line 152
    .local v0, "fv":Lorg/ow2/asmdex/FieldVisitor;
    if-nez v0, :cond_0

    .line 153
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 157
    .local v1, "n":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 158
    iget-object v4, p0, Lorg/ow2/asmdex/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/tree/AnnotationNode;

    .line 159
    .local v4, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    iget-object v5, v4, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lorg/ow2/asmdex/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/tree/AnnotationNode;->accept(Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 157
    .end local v4    # "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 161
    :cond_2
    iget-object v4, p0, Lorg/ow2/asmdex/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    move v1, v4

    .line 162
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    .line 163
    iget-object v4, p0, Lorg/ow2/asmdex/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/tree/AnnotationNode;

    .line 164
    .restart local v4    # "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    iget-object v5, v4, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Lorg/ow2/asmdex/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/tree/AnnotationNode;->accept(Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 162
    .end local v4    # "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 167
    :cond_4
    invoke-virtual {v0}, Lorg/ow2/asmdex/FieldVisitor;->visitEnd()V

    .line 168
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 179
    new-instance v0, Lorg/ow2/asmdex/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/ow2/asmdex/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 181
    iget-object v2, p0, Lorg/ow2/asmdex/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_0

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/ow2/asmdex/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    .line 184
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_1
    iget-object v2, p0, Lorg/ow2/asmdex/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_2

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/ow2/asmdex/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    .line 189
    :cond_2
    iget-object v1, p0, Lorg/ow2/asmdex/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :goto_0
    return-object v0
.end method
