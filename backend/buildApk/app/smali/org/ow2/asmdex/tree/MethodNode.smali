.class public Lorg/ow2/asmdex/tree/MethodNode;
.super Lorg/ow2/asmdex/MethodVisitor;
.source "MethodNode.java"


# instance fields
.field public access:I

.field public annotationDefault:Ljava/lang/Object;

.field public desc:Ljava/lang/String;

.field public exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public instructions:Lorg/ow2/asmdex/tree/InsnList;

.field public invisibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public invisibleParameterAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/AnnotationNode;",
            ">;>;"
        }
    .end annotation
.end field

.field public localVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/LocalVariableNode;",
            ">;"
        }
    .end annotation
.end field

.field public maxStack:I

.field public name:Ljava/lang/String;

.field public parameters:[Ljava/lang/String;

.field public signature:[Ljava/lang/String;

.field public tryCatchBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/TryCatchBlockNode;",
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

.field public visibleParameterAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/AnnotationNode;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 140
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/MethodVisitor;-><init>(I)V

    .line 119
    new-instance v0, Lorg/ow2/asmdex/tree/InsnList;

    invoke-direct {v0}, Lorg/ow2/asmdex/tree/InsnList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    .line 141
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "api"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # [Ljava/lang/String;
    .param p6, "exceptions"    # [Ljava/lang/String;

    .line 162
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/tree/MethodNode;-><init>(I)V

    .line 163
    iput p2, p0, Lorg/ow2/asmdex/tree/MethodNode;->access:I

    .line 164
    iput-object p3, p0, Lorg/ow2/asmdex/tree/MethodNode;->name:Ljava/lang/String;

    .line 165
    iput-object p4, p0, Lorg/ow2/asmdex/tree/MethodNode;->desc:Ljava/lang/String;

    .line 166
    iput-object p5, p0, Lorg/ow2/asmdex/tree/MethodNode;->signature:[Ljava/lang/String;

    .line 167
    if-eqz p6, :cond_0

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->exceptions:Ljava/util/List;

    .line 169
    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    :cond_0
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 172
    .local v0, "isAbstract":Z
    :goto_0
    if-nez v0, :cond_2

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->localVariables:Ljava/util/List;

    .line 175
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    .line 176
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 193
    const/high16 v1, 0x40000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/ow2/asmdex/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private getLabelNodes(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;"
        }
    .end annotation

    .line 434
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    if-nez p1, :cond_0

    .line 435
    const/4 v0, 0x0

    return-object v0

    .line 438
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 439
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/tree/LabelNode;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureCommon/Label;

    .line 440
    .local v2, "label":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v2    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    goto :goto_0

    .line 442
    :cond_1
    return-object v0
.end method

.method private getLabelNodes([Lorg/ow2/asmdex/structureCommon/Label;)[Lorg/ow2/asmdex/tree/LabelNode;
    .locals 3
    .param p1, "l"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 422
    if-nez p1, :cond_0

    .line 423
    const/4 v0, 0x0

    return-object v0

    .line 426
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lorg/ow2/asmdex/tree/LabelNode;

    .line 427
    .local v0, "nodes":[Lorg/ow2/asmdex/tree/LabelNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 428
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v2

    aput-object v2, v0, v1

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/ClassVisitor;)V
    .locals 8
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "exceptions":[Ljava/lang/String;
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->exceptions:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 458
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 461
    :cond_0
    iget v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->access:I

    iget-object v4, p0, Lorg/ow2/asmdex/tree/MethodNode;->name:Ljava/lang/String;

    iget-object v5, p0, Lorg/ow2/asmdex/tree/MethodNode;->desc:Ljava/lang/String;

    iget-object v6, p0, Lorg/ow2/asmdex/tree/MethodNode;->signature:[Ljava/lang/String;

    move-object v2, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v1

    .line 462
    .local v1, "mv":Lorg/ow2/asmdex/MethodVisitor;
    if-eqz v1, :cond_1

    .line 463
    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/tree/MethodNode;->accept(Lorg/ow2/asmdex/MethodVisitor;)V

    .line 465
    :cond_1
    return-void
.end method

.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 8
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 476
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p1}, Lorg/ow2/asmdex/MethodVisitor;->visitAnnotationDefault()Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    .line 480
    .local v0, "av":Lorg/ow2/asmdex/AnnotationVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/ow2/asmdex/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/ow2/asmdex/tree/AnnotationNode;->accept(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 487
    .end local v0    # "av":Lorg/ow2/asmdex/AnnotationVisitor;
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->parameters:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 488
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitParameters([Ljava/lang/String;)V

    .line 492
    :cond_1
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 493
    .local v0, "n":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 494
    iget-object v4, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/tree/AnnotationNode;

    .line 495
    .local v4, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    iget-object v5, v4, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5, v3}, Lorg/ow2/asmdex/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/ow2/asmdex/tree/AnnotationNode;->accept(Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 493
    .end local v4    # "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 497
    :cond_3
    iget-object v4, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    move v0, v4

    .line 498
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_5

    .line 499
    iget-object v4, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/tree/AnnotationNode;

    .line 500
    .restart local v4    # "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    iget-object v5, v4, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/tree/AnnotationNode;->accept(Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 498
    .end local v4    # "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 504
    :cond_5
    iget-object v4, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleParameterAnnotations:Ljava/util/List;

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_4
    move v0, v4

    .line 505
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_9

    .line 506
    iget-object v4, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleParameterAnnotations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 507
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/tree/AnnotationNode;>;"
    if-nez v4, :cond_7

    .line 508
    goto :goto_7

    .line 510
    :cond_7
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 511
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ow2/asmdex/tree/AnnotationNode;

    .line 512
    .local v6, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    iget-object v7, v6, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v2, v7, v3}, Lorg/ow2/asmdex/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/ow2/asmdex/tree/AnnotationNode;->accept(Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 510
    .end local v6    # "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 505
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/tree/AnnotationNode;>;"
    .end local v5    # "j":I
    :cond_8
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 516
    :cond_9
    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleParameterAnnotations:Ljava/util/List;

    if-nez v3, :cond_a

    const/4 v3, 0x0

    goto :goto_8

    :cond_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_8
    move v0, v3

    .line 517
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_d

    .line 518
    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleParameterAnnotations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 519
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/tree/AnnotationNode;>;"
    if-nez v3, :cond_b

    .line 520
    goto :goto_b

    .line 522
    :cond_b
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 523
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ow2/asmdex/tree/AnnotationNode;

    .line 524
    .local v5, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    iget-object v6, v5, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v2, v6, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/ow2/asmdex/tree/AnnotationNode;->accept(Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 522
    .end local v5    # "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 517
    .end local v3    # "l":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/tree/AnnotationNode;>;"
    .end local v4    # "j":I
    :cond_c
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 531
    :cond_d
    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    invoke-virtual {v3}, Lorg/ow2/asmdex/tree/InsnList;->size()I

    move-result v3

    if-lez v3, :cond_12

    .line 532
    invoke-virtual {p1}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 534
    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_c

    :cond_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_c
    move v0, v3

    .line 535
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_f

    .line 536
    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/tree/TryCatchBlockNode;

    invoke-virtual {v3, p1}, Lorg/ow2/asmdex/tree/TryCatchBlockNode;->accept(Lorg/ow2/asmdex/MethodVisitor;)V

    .line 535
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 540
    :cond_f
    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    invoke-virtual {v3, p1}, Lorg/ow2/asmdex/tree/InsnList;->accept(Lorg/ow2/asmdex/MethodVisitor;)V

    .line 543
    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->localVariables:Ljava/util/List;

    if-nez v3, :cond_10

    const/4 v3, 0x0

    goto :goto_e

    :cond_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_e
    move v0, v3

    .line 544
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_11

    .line 545
    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->localVariables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/tree/LocalVariableNode;

    invoke-virtual {v3, p1}, Lorg/ow2/asmdex/tree/LocalVariableNode;->accept(Lorg/ow2/asmdex/MethodVisitor;)V

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 549
    :cond_11
    iget v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->maxStack:I

    invoke-virtual {p1, v3, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 551
    :cond_12
    invoke-virtual {p1}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 552
    return-void
.end method

.method protected getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;
    .locals 1
    .param p1, "l"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 411
    if-nez p1, :cond_0

    .line 412
    const/4 v0, 0x0

    return-object v0

    .line 415
    :cond_0
    iget-object v0, p1, Lorg/ow2/asmdex/structureCommon/Label;->info:Ljava/lang/Object;

    instance-of v0, v0, Lorg/ow2/asmdex/tree/LabelNode;

    if-nez v0, :cond_1

    .line 416
    new-instance v0, Lorg/ow2/asmdex/tree/LabelNode;

    invoke-direct {v0, p1}, Lorg/ow2/asmdex/tree/LabelNode;-><init>(Lorg/ow2/asmdex/structureCommon/Label;)V

    iput-object v0, p1, Lorg/ow2/asmdex/structureCommon/Label;->info:Ljava/lang/Object;

    .line 418
    :cond_1
    iget-object v0, p1, Lorg/ow2/asmdex/structureCommon/Label;->info:Ljava/lang/Object;

    check-cast v0, Lorg/ow2/asmdex/tree/LabelNode;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 563
    new-instance v0, Lorg/ow2/asmdex/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/ow2/asmdex/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 564
    .local v0, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 565
    iget-object v2, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_0

    .line 566
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    .line 568
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 570
    :cond_1
    iget-object v2, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_2

    .line 571
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    .line 573
    :cond_2
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :goto_0
    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3

    .line 201
    new-instance v0, Lorg/ow2/asmdex/tree/AnnotationNode;

    new-instance v1, Lorg/ow2/asmdex/tree/MethodNode$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/ow2/asmdex/tree/MethodNode$1;-><init>(Lorg/ow2/asmdex/tree/MethodNode;I)V

    invoke-direct {v0, v1}, Lorg/ow2/asmdex/tree/AnnotationNode;-><init>(Ljava/util/List;)V

    .line 212
    .local v0, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    .line 214
    return-object v0
.end method

.method public visitArrayLengthInsn(II)V
    .locals 2
    .param p1, "destinationRegister"    # I
    .param p2, "arrayReferenceBearing"    # I

    .line 220
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v1, Lorg/ow2/asmdex/tree/ArrayLengthInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/ow2/asmdex/tree/ArrayLengthInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 222
    return-void
.end method

.method public visitArrayOperationInsn(IIII)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "valueRegister"    # I
    .param p3, "arrayRegister"    # I
    .param p4, "indexRegister"    # I

    .line 227
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v1, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 228
    return-void
.end method

.method public visitCode()V
    .locals 0

    .line 232
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "valueRegister"    # I
    .param p6, "objectRegister"    # I

    .line 237
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v8, Lorg/ow2/asmdex/tree/FieldInsnNode;

    move-object v1, v8

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/ow2/asmdex/tree/FieldInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 238
    return-void
.end method

.method public visitFillArrayDataInsn(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "arrayReference"    # I
    .param p2, "arrayData"    # [Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v1, Lorg/ow2/asmdex/tree/FillArrayDataInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/ow2/asmdex/tree/FillArrayDataInsnNode;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 243
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 249
    return-void
.end method

.method public visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .line 253
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v1, Lorg/ow2/asmdex/tree/InsnNode;

    invoke-direct {v1, p1}, Lorg/ow2/asmdex/tree/InsnNode;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 254
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "register"    # I

    .line 258
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v1, Lorg/ow2/asmdex/tree/IntInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/ow2/asmdex/tree/IntInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 259
    return-void
.end method

.method public visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "registerA"    # I
    .param p4, "registerB"    # I

    .line 264
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v1, Lorg/ow2/asmdex/tree/JumpInsnNode;

    invoke-virtual {p0, p2}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3, p4}, Lorg/ow2/asmdex/tree/JumpInsnNode;-><init>(ILorg/ow2/asmdex/tree/LabelNode;II)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 266
    return-void
.end method

.method public visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 270
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 271
    return-void
.end method

.method public visitLineNumber(ILorg/ow2/asmdex/structureCommon/Label;)V
    .locals 3
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 275
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v1, Lorg/ow2/asmdex/tree/LineNumberNode;

    invoke-virtual {p0, p2}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/ow2/asmdex/tree/LineNumberNode;-><init>(ILorg/ow2/asmdex/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 276
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;I)V
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p7, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;I)V"
        }
    .end annotation

    .line 288
    .local p5, "ends":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .local p6, "restarts":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    move-object v0, p0

    iget-object v1, v0, Lorg/ow2/asmdex/tree/MethodNode;->localVariables:Ljava/util/List;

    new-instance v10, Lorg/ow2/asmdex/tree/LocalVariableNode;

    move-object/from16 v11, p4

    invoke-virtual {p0, v11}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v6

    .line 289
    move-object/from16 v12, p5

    invoke-direct {p0, v12}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNodes(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v13, p6

    invoke-direct {p0, v13}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNodes(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    move-object v2, v10

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lorg/ow2/asmdex/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/tree/LabelNode;Ljava/util/List;Ljava/util/List;I)V

    .line 288
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p5, "end"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p6, "index"    # I

    .line 281
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->localVariables:Ljava/util/List;

    new-instance v8, Lorg/ow2/asmdex/tree/LocalVariableNode;

    invoke-virtual {p0, p4}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v5

    .line 282
    invoke-virtual {p0, p5}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v6

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/ow2/asmdex/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;I)V

    .line 281
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public visitLookupSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;[I[Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 4
    .param p1, "register"    # I
    .param p2, "dflt"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "keys"    # [I
    .param p4, "labels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 295
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v1, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;

    invoke-virtual {p0, p2}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v2

    invoke-direct {p0, p4}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNodes([Lorg/ow2/asmdex/structureCommon/Label;)[Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v3

    invoke-direct {v1, p1, v2, p3, v3}, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;-><init>(ILorg/ow2/asmdex/tree/LabelNode;[I[Lorg/ow2/asmdex/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 296
    return-void
.end method

.method public visitMaxs(II)V
    .locals 0
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 301
    iput p1, p0, Lorg/ow2/asmdex/tree/MethodNode;->maxStack:I

    .line 302
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "arguments"    # [I

    .line 307
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v7, Lorg/ow2/asmdex/tree/MethodInsnNode;

    move-object v1, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/ow2/asmdex/tree/MethodInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    invoke-virtual {v0, v7}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 308
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;[I)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "registers"    # [I

    .line 312
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v1, Lorg/ow2/asmdex/tree/MultiANewArrayInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/ow2/asmdex/tree/MultiANewArrayInsnNode;-><init>(Ljava/lang/String;[I)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 313
    return-void
.end method

.method public visitOperationInsn(IIIII)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "firstSourceRegister"    # I
    .param p4, "secondSourceRegister"    # I
    .param p5, "value"    # I

    .line 318
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v7, Lorg/ow2/asmdex/tree/OperationInsnNode;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/ow2/asmdex/tree/OperationInsnNode;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 320
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 6
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 325
    new-instance v0, Lorg/ow2/asmdex/tree/AnnotationNode;

    invoke-direct {v0, p2}, Lorg/ow2/asmdex/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    .line 327
    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleParameterAnnotations:Ljava/util/List;

    if-nez v3, :cond_0

    .line 328
    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {v3}, Lorg/ow2/asmdex/structureWriter/Prototype;->getNbParametersFromTypeDescriptor(Ljava/lang/String;)I

    move-result v3

    .line 329
    .local v3, "params":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleParameterAnnotations:Ljava/util/List;

    .line 330
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 331
    iget-object v5, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleParameterAnnotations:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 334
    .end local v3    # "params":I
    .end local v4    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleParameterAnnotations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 335
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleParameterAnnotations:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_1
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->visibleParameterAnnotations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 339
    :cond_2
    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleParameterAnnotations:Ljava/util/List;

    if-nez v3, :cond_3

    .line 340
    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {v3}, Lorg/ow2/asmdex/structureWriter/Prototype;->getNbParametersFromTypeDescriptor(Ljava/lang/String;)I

    move-result v3

    .line 341
    .restart local v3    # "params":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleParameterAnnotations:Ljava/util/List;

    .line 342
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 343
    iget-object v5, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleParameterAnnotations:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 346
    .end local v3    # "params":I
    .end local v4    # "i":I
    :cond_3
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleParameterAnnotations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 347
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleParameterAnnotations:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_4
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MethodNode;->invisibleParameterAnnotations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :goto_2
    return-object v0
.end method

.method public visitParameters([Ljava/lang/String;)V
    .locals 0
    .param p1, "parameters"    # [Ljava/lang/String;

    .line 356
    iput-object p1, p0, Lorg/ow2/asmdex/tree/MethodNode;->parameters:[Ljava/lang/String;

    .line 357
    return-void
.end method

.method public visitStringInsn(IILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "string"    # Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v1, Lorg/ow2/asmdex/tree/StringInsnNode;

    invoke-direct {v1, p1, p2, p3}, Lorg/ow2/asmdex/tree/StringInsnNode;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 363
    return-void
.end method

.method public visitTableSwitchInsn(IIILorg/ow2/asmdex/structureCommon/Label;[Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 8
    .param p1, "register"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "dflt"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p5, "labels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 368
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v7, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;

    invoke-virtual {p0, p4}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v5

    .line 369
    invoke-direct {p0, p5}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNodes([Lorg/ow2/asmdex/structureCommon/Label;)[Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v6

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;-><init>(IIILorg/ow2/asmdex/tree/LabelNode;[Lorg/ow2/asmdex/tree/LabelNode;)V

    .line 368
    invoke-virtual {v0, v7}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 370
    return-void
.end method

.method public visitTryCatchBlock(Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;)V
    .locals 5
    .param p1, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p2, "end"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "handler"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    new-instance v1, Lorg/ow2/asmdex/tree/TryCatchBlockNode;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v2

    invoke-virtual {p0, p2}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v3

    .line 376
    invoke-virtual {p0, p3}, Lorg/ow2/asmdex/tree/MethodNode;->getLabelNode(Lorg/ow2/asmdex/structureCommon/Label;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p4}, Lorg/ow2/asmdex/tree/TryCatchBlockNode;-><init>(Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;Ljava/lang/String;)V

    .line 375
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method public visitTypeInsn(IIIILjava/lang/String;)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "referenceBearingRegister"    # I
    .param p4, "sizeRegister"    # I
    .param p5, "type"    # Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v7, Lorg/ow2/asmdex/tree/TypeInsnNode;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/ow2/asmdex/tree/TypeInsnNode;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 384
    return-void
.end method

.method public visitVarInsn(III)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # I

    .line 388
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v1, Lorg/ow2/asmdex/tree/VarInsnNode;

    invoke-direct {v1, p1, p2, p3}, Lorg/ow2/asmdex/tree/VarInsnNode;-><init>(III)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 389
    return-void
.end method

.method public visitVarInsn(IIJ)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # J

    .line 393
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode;->instructions:Lorg/ow2/asmdex/tree/InsnList;

    new-instance v1, Lorg/ow2/asmdex/tree/VarInsnLongNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/ow2/asmdex/tree/VarInsnLongNode;-><init>(IIJ)V

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 394
    return-void
.end method
