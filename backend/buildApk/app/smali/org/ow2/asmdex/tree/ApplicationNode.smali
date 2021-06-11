.class public Lorg/ow2/asmdex/tree/ApplicationNode;
.super Lorg/ow2/asmdex/ApplicationVisitor;
.source "ApplicationNode.java"


# instance fields
.field public classes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/ClassNode;",
            ">;"
        }
    .end annotation
.end field

.field public invisibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 68
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/ApplicationVisitor;-><init>(I)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/ApplicationNode;->classes:Ljava/util/List;

    .line 69
    return-void
.end method

.method public static getStringArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 122
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 124
    .local v0, "array":[Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 125
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 126
    .local v1, "size":I
    new-array v0, v1, [Ljava/lang/String;

    .line 127
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 128
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/ApplicationVisitor;)V
    .locals 8
    .param p1, "av"    # Lorg/ow2/asmdex/ApplicationVisitor;

    .line 100
    invoke-virtual {p1}, Lorg/ow2/asmdex/ApplicationVisitor;->visit()V

    .line 102
    iget-object v0, p0, Lorg/ow2/asmdex/tree/ApplicationNode;->classes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/tree/ClassNode;

    .line 103
    .local v1, "n":Lorg/ow2/asmdex/tree/ClassNode;
    iget v3, v1, Lorg/ow2/asmdex/tree/ClassNode;->access:I

    iget-object v4, v1, Lorg/ow2/asmdex/tree/ClassNode;->name:Ljava/lang/String;

    iget-object v2, v1, Lorg/ow2/asmdex/tree/ClassNode;->signature:Ljava/util/List;

    invoke-static {v2}, Lorg/ow2/asmdex/tree/ApplicationNode;->getStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lorg/ow2/asmdex/tree/ClassNode;->superName:Ljava/lang/String;

    iget-object v2, v1, Lorg/ow2/asmdex/tree/ClassNode;->interfaces:Ljava/util/List;

    invoke-static {v2}, Lorg/ow2/asmdex/tree/ApplicationNode;->getStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/ow2/asmdex/ApplicationVisitor;->visitClass(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/ClassVisitor;

    move-result-object v2

    .line 104
    .local v2, "cv":Lorg/ow2/asmdex/ClassVisitor;
    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/tree/ClassNode;->accept(Lorg/ow2/asmdex/ClassVisitor;)V

    .line 105
    .end local v1    # "n":Lorg/ow2/asmdex/tree/ClassNode;
    .end local v2    # "cv":Lorg/ow2/asmdex/ClassVisitor;
    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Lorg/ow2/asmdex/ApplicationVisitor;->visitEnd()V

    .line 109
    return-void
.end method

.method public visit()V
    .locals 0

    .line 76
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 143
    new-instance v0, Lorg/ow2/asmdex/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/ow2/asmdex/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 145
    iget-object v2, p0, Lorg/ow2/asmdex/tree/ApplicationNode;->visibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_0

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/ow2/asmdex/tree/ApplicationNode;->visibleAnnotations:Ljava/util/List;

    .line 148
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ApplicationNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_1
    iget-object v2, p0, Lorg/ow2/asmdex/tree/ApplicationNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_2

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/ow2/asmdex/tree/ApplicationNode;->invisibleAnnotations:Ljava/util/List;

    .line 153
    :cond_2
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ApplicationNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :goto_0
    return-object v0
.end method

.method public visitClass(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/ClassVisitor;
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "signature"    # [Ljava/lang/String;
    .param p4, "superName"    # Ljava/lang/String;
    .param p5, "interfaces"    # [Ljava/lang/String;

    .line 82
    new-instance v6, Lorg/ow2/asmdex/tree/ClassNode;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/ow2/asmdex/tree/ClassNode;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    .local v0, "cn":Lorg/ow2/asmdex/tree/ClassNode;
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ApplicationNode;->classes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-object v0
.end method
