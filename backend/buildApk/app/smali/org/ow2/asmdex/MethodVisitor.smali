.class public abstract Lorg/ow2/asmdex/MethodVisitor;
.super Ljava/lang/Object;
.source "MethodVisitor.java"


# instance fields
.field protected final api:I

.field protected mv:Lorg/ow2/asmdex/MethodVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "api"    # I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lorg/ow2/asmdex/MethodVisitor;->api:I

    .line 100
    return-void
.end method

.method public constructor <init>(ILorg/ow2/asmdex/MethodVisitor;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lorg/ow2/asmdex/MethodVisitor;->api:I

    .line 110
    iput-object p2, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    .line 111
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 143
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lorg/ow2/asmdex/MethodVisitor;->visitAnnotationDefault()Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArrayLengthInsn(II)V
    .locals 1
    .param p1, "destinationRegister"    # I
    .param p2, "arrayReferenceBearing"    # I

    .line 497
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayLengthInsn(II)V

    .line 500
    :cond_0
    return-void
.end method

.method public visitArrayOperationInsn(IIII)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "valueRegister"    # I
    .param p3, "arrayRegister"    # I
    .param p4, "indexRegister"    # I

    .line 393
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 396
    :cond_0
    return-void
.end method

.method public visitAttribute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "attr"    # Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/MethodVisitor;->visitAttribute(Ljava/lang/Object;)V

    .line 178
    :cond_0
    return-void
.end method

.method public visitCode()V
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lorg/ow2/asmdex/MethodVisitor;->visitCode()V

    .line 187
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 625
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    .line 628
    :cond_0
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "valueRegister"    # I
    .param p6, "objectRegister"    # I

    .line 323
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 324
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 326
    :cond_0
    return-void
.end method

.method public visitFillArrayDataInsn(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "arrayReference"    # I
    .param p2, "arrayData"    # [Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/MethodVisitor;->visitFillArrayDataInsn(I[Ljava/lang/Object;)V

    .line 408
    :cond_0
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 217
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 219
    :cond_0
    return-void
.end method

.method public visitInsn(I)V
    .locals 1
    .param p1, "opcode"    # I

    .line 232
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 235
    :cond_0
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "register"    # I

    .line 248
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 251
    :cond_0
    return-void
.end method

.method public visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "registerA"    # I
    .param p4, "registerB"    # I

    .line 425
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 428
    :cond_0
    return-void
.end method

.method public visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 437
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 440
    :cond_0
    return-void
.end method

.method public visitLineNumber(ILorg/ow2/asmdex/structureCommon/Label;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 600
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/MethodVisitor;->visitLineNumber(ILorg/ow2/asmdex/structureCommon/Label;)V

    .line 603
    :cond_0
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;I)V
    .locals 8
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

    .line 584
    .local p5, "ends":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .local p6, "restarts":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 585
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/ow2/asmdex/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;I)V

    .line 587
    :cond_0
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p5, "end"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p6, "index"    # I

    .line 550
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 551
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;I)V

    .line 553
    :cond_0
    return-void
.end method

.method public visitLookupSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;[I[Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 1
    .param p1, "register"    # I
    .param p2, "dflt"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "keys"    # [I
    .param p4, "labels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 473
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ow2/asmdex/MethodVisitor;->visitLookupSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;[I[Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 476
    :cond_0
    return-void
.end method

.method public visitMaxs(II)V
    .locals 1
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 614
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 617
    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "arguments"    # [I

    .line 342
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 343
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 345
    :cond_0
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "registers"    # [I

    .line 485
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;[I)V

    .line 488
    :cond_0
    return-void
.end method

.method public visitOperationInsn(IIIII)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "firstSourceRegister"    # I
    .param p4, "secondSourceRegister"    # I
    .param p5, "value"    # I

    .line 378
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 379
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 381
    :cond_0
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 162
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1, p2, p3}, Lorg/ow2/asmdex/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitParameters([Ljava/lang/String;)V
    .locals 1
    .param p1, "parameters"    # [Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/MethodVisitor;->visitParameters([Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method public visitStringInsn(IILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "string"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p1, p2, p3}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 360
    :cond_0
    return-void
.end method

.method public visitTableSwitchInsn(IIILorg/ow2/asmdex/structureCommon/Label;[Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 6
    .param p1, "register"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "dflt"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p5, "labels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 458
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 459
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTableSwitchInsn(IIILorg/ow2/asmdex/structureCommon/Label;[Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 461
    :cond_0
    return-void
.end method

.method public visitTryCatchBlock(Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;)V
    .locals 1
    .param p1, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p2, "end"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "handler"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ow2/asmdex/MethodVisitor;->visitTryCatchBlock(Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;)V

    .line 524
    :cond_0
    return-void
.end method

.method public visitTypeInsn(IIIILjava/lang/String;)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "referenceBearingRegister"    # I
    .param p4, "sizeRegister"    # I
    .param p5, "type"    # Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 305
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method

.method public visitVarInsn(III)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # I

    .line 267
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p1, p2, p3}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 270
    :cond_0
    return-void
.end method

.method public visitVarInsn(IIJ)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # J

    .line 283
    iget-object v0, p0, Lorg/ow2/asmdex/MethodVisitor;->mv:Lorg/ow2/asmdex/MethodVisitor;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(IIJ)V

    .line 286
    :cond_0
    return-void
.end method
