.class public Lorg/ow2/asmdex/tree/ClassNode;
.super Lorg/ow2/asmdex/ClassVisitor;
.source "ClassNode.java"


# instance fields
.field public access:I

.field public fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/FieldNode;",
            ">;"
        }
    .end annotation
.end field

.field public innerClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/InnerClassNode;",
            ">;"
        }
    .end annotation
.end field

.field public interfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

.field public memberClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/MemberClassNode;",
            ">;"
        }
    .end annotation
.end field

.field public methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/MethodNode;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public outerClass:Ljava/lang/String;

.field public outerMethod:Ljava/lang/String;

.field public outerMethodDesc:Ljava/lang/String;

.field public signature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sourceFile:Ljava/lang/String;

.field public superName:Ljava/lang/String;

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

    .line 136
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/ClassVisitor;-><init>(I)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->innerClasses:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->memberClasses:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->fields:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->methods:Ljava/util/List;

    .line 137
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 143
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/ClassVisitor;-><init>(I)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->innerClasses:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->memberClasses:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->fields:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->methods:Ljava/util/List;

    .line 144
    iput p2, p0, Lorg/ow2/asmdex/tree/ClassNode;->access:I

    .line 145
    iput-object p3, p0, Lorg/ow2/asmdex/tree/ClassNode;->name:Ljava/lang/String;

    .line 146
    if-eqz p4, :cond_0

    .line 147
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->signature:Ljava/util/List;

    .line 149
    :cond_0
    iput-object p5, p0, Lorg/ow2/asmdex/tree/ClassNode;->superName:Ljava/lang/String;

    .line 150
    if-eqz p6, :cond_1

    .line 151
    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->interfaces:Ljava/util/List;

    .line 153
    :cond_1
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "signature"    # [Ljava/lang/String;
    .param p4, "superName"    # Ljava/lang/String;
    .param p5, "interfaces"    # [Ljava/lang/String;

    .line 159
    const/high16 v1, 0x40000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/ow2/asmdex/tree/ClassNode;-><init>(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 160
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/ClassVisitor;)V
    .locals 7
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 228
    iget v2, p0, Lorg/ow2/asmdex/tree/ClassNode;->access:I

    iget-object v3, p0, Lorg/ow2/asmdex/tree/ClassNode;->name:Ljava/lang/String;

    iget-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->signature:Ljava/util/List;

    invoke-static {v0}, Lorg/ow2/asmdex/tree/ApplicationNode;->getStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/ow2/asmdex/tree/ClassNode;->superName:Ljava/lang/String;

    iget-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->interfaces:Ljava/util/List;

    .line 229
    invoke-static {v0}, Lorg/ow2/asmdex/tree/ApplicationNode;->getStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v6

    .line 228
    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/ClassVisitor;->visit(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->sourceFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/ow2/asmdex/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->outerClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 238
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ClassNode;->outerMethod:Ljava/lang/String;

    iget-object v2, p0, Lorg/ow2/asmdex/tree/ClassNode;->outerMethodDesc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lorg/ow2/asmdex/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    iget-object v0, p0, Lorg/ow2/asmdex/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 244
    .local v0, "n":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 245
    iget-object v3, p0, Lorg/ow2/asmdex/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/tree/AnnotationNode;

    .line 246
    .local v3, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    iget-object v4, v3, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Lorg/ow2/asmdex/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/tree/AnnotationNode;->accept(Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 244
    .end local v3    # "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 248
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lorg/ow2/asmdex/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    move v0, v2

    .line 249
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_5

    .line 250
    iget-object v3, p0, Lorg/ow2/asmdex/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/tree/AnnotationNode;

    .line 251
    .restart local v3    # "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    iget-object v4, v3, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Lorg/ow2/asmdex/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/tree/AnnotationNode;->accept(Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 249
    .end local v3    # "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 255
    .end local v2    # "i":I
    :cond_5
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ClassNode;->innerClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/tree/InnerClassNode;

    .line 256
    .local v2, "icn":Lorg/ow2/asmdex/tree/InnerClassNode;
    invoke-virtual {v2, p1}, Lorg/ow2/asmdex/tree/InnerClassNode;->accept(Lorg/ow2/asmdex/ClassVisitor;)V

    .line 257
    .end local v2    # "icn":Lorg/ow2/asmdex/tree/InnerClassNode;
    goto :goto_4

    .line 260
    :cond_6
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ClassNode;->memberClasses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/tree/MemberClassNode;

    .line 261
    .local v2, "icn":Lorg/ow2/asmdex/tree/MemberClassNode;
    invoke-virtual {v2, p1}, Lorg/ow2/asmdex/tree/MemberClassNode;->accept(Lorg/ow2/asmdex/ClassVisitor;)V

    .line 262
    .end local v2    # "icn":Lorg/ow2/asmdex/tree/MemberClassNode;
    goto :goto_5

    .line 265
    :cond_7
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/tree/FieldNode;

    .line 266
    .local v2, "fn":Lorg/ow2/asmdex/tree/FieldNode;
    invoke-virtual {v2, p1}, Lorg/ow2/asmdex/tree/FieldNode;->accept(Lorg/ow2/asmdex/ClassVisitor;)V

    .line 267
    .end local v2    # "fn":Lorg/ow2/asmdex/tree/FieldNode;
    goto :goto_6

    .line 270
    :cond_8
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/tree/MethodNode;

    .line 271
    .local v2, "mn":Lorg/ow2/asmdex/tree/MethodNode;
    invoke-virtual {v2, p1}, Lorg/ow2/asmdex/tree/MethodNode;->accept(Lorg/ow2/asmdex/ClassVisitor;)V

    .line 272
    .end local v2    # "mn":Lorg/ow2/asmdex/tree/MethodNode;
    goto :goto_7

    .line 275
    :cond_9
    invoke-virtual {p1}, Lorg/ow2/asmdex/ClassVisitor;->visitEnd()V

    .line 276
    return-void
.end method

.method public visit(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 171
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 287
    new-instance v0, Lorg/ow2/asmdex/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/ow2/asmdex/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 289
    iget-object v2, p0, Lorg/ow2/asmdex/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_0

    .line 290
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/ow2/asmdex/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    .line 292
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_1
    iget-object v2, p0, Lorg/ow2/asmdex/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_2

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/ow2/asmdex/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    .line 297
    :cond_2
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :goto_0
    return-object v0
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 176
    new-instance v6, Lorg/ow2/asmdex/tree/FieldNode;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/ow2/asmdex/tree/FieldNode;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    .local v0, "n":Lorg/ow2/asmdex/tree/FieldNode;
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 184
    new-instance v0, Lorg/ow2/asmdex/tree/InnerClassNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/ow2/asmdex/tree/InnerClassNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    .local v0, "n":Lorg/ow2/asmdex/tree/InnerClassNode;
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ClassNode;->innerClasses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method public visitMemberClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;

    .line 191
    new-instance v0, Lorg/ow2/asmdex/tree/MemberClassNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/ow2/asmdex/tree/MemberClassNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v0, "n":Lorg/ow2/asmdex/tree/MemberClassNode;
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ClassNode;->memberClasses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;
    .locals 8
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 198
    new-instance v7, Lorg/ow2/asmdex/tree/MethodNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/ClassNode;->api:I

    move-object v0, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/ow2/asmdex/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 199
    .local v0, "n":Lorg/ow2/asmdex/tree/MethodNode;
    iget-object v1, p0, Lorg/ow2/asmdex/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lorg/ow2/asmdex/tree/ClassNode;->outerClass:Ljava/lang/String;

    .line 206
    iput-object p2, p0, Lorg/ow2/asmdex/tree/ClassNode;->outerMethod:Ljava/lang/String;

    .line 207
    iput-object p3, p0, Lorg/ow2/asmdex/tree/ClassNode;->outerMethodDesc:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 213
    iput-object p1, p0, Lorg/ow2/asmdex/tree/ClassNode;->sourceFile:Ljava/lang/String;

    .line 214
    return-void
.end method
