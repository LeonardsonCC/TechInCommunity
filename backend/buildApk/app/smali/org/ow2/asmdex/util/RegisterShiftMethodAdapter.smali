.class public Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;
.super Lorg/ow2/asmdex/MethodVisitor;
.source "RegisterShiftMethodAdapter.java"


# instance fields
.field private nbRegistersToShift:I


# direct methods
.method public constructor <init>(ILorg/ow2/asmdex/MethodVisitor;I)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "mv"    # Lorg/ow2/asmdex/MethodVisitor;
    .param p3, "nbRegistersToShift"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/ow2/asmdex/MethodVisitor;-><init>(ILorg/ow2/asmdex/MethodVisitor;)V

    .line 57
    iput p3, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    .line 58
    return-void
.end method

.method private static cloneAndShift([II)[I
    .locals 4
    .param p0, "sourceArray"    # [I
    .param p1, "shift"    # I

    .line 182
    array-length v0, p0

    .line 183
    .local v0, "size":I
    new-array v1, v0, [I

    .line 184
    .local v1, "destArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 185
    aget v3, p0, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public visitArrayLengthInsn(II)V
    .locals 2
    .param p1, "destinationRegister"    # I
    .param p2, "arrayReferenceBearing"    # I

    .line 67
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int v1, p1, v0

    add-int/2addr v0, p2

    invoke-super {p0, v1, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayLengthInsn(II)V

    .line 69
    return-void
.end method

.method public visitArrayOperationInsn(IIII)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "valueRegister"    # I
    .param p3, "arrayRegister"    # I
    .param p4, "indexRegister"    # I

    .line 109
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int v1, p2, v0

    add-int v2, p3, v0

    add-int/2addr v0, p4

    invoke-super {p0, p1, v1, v2, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 111
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "valueRegister"    # I
    .param p6, "objectRegister"    # I

    .line 74
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int v6, p5, v0

    add-int v7, p6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-super/range {v1 .. v7}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 76
    return-void
.end method

.method public visitFillArrayDataInsn(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "arrayReference"    # I
    .param p2, "arrayData"    # [Ljava/lang/Object;

    .line 103
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int/2addr v0, p1

    invoke-super {p0, v0, p2}, Lorg/ow2/asmdex/MethodVisitor;->visitFillArrayDataInsn(I[Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "register"    # I

    .line 80
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int/2addr v0, p2

    invoke-super {p0, p1, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 81
    return-void
.end method

.method public visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "registerA"    # I
    .param p4, "registerB"    # I

    .line 86
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int v1, p3, v0

    add-int/2addr v0, p4

    invoke-super {p0, p1, p2, v1, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 87
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;I)V
    .locals 9
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

    .line 98
    .local p5, "ends":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .local p6, "restarts":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    move-object v8, p0

    iget v0, v8, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int v7, p7, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-super/range {v0 .. v7}, Lorg/ow2/asmdex/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;I)V

    .line 99
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;I)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p5, "end"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p6, "index"    # I

    .line 92
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int v7, p6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v1 .. v7}, Lorg/ow2/asmdex/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;I)V

    .line 93
    return-void
.end method

.method public visitLookupSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;[I[Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 1
    .param p1, "register"    # I
    .param p2, "dflt"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "keys"    # [I
    .param p4, "labels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 116
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int/2addr v0, p1

    invoke-super {p0, v0, p2, p3, p4}, Lorg/ow2/asmdex/MethodVisitor;->visitLookupSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;[I[Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 117
    return-void
.end method

.method public visitMaxs(II)V
    .locals 1
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 62
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int/2addr v0, p1

    invoke-super {p0, v0, p2}, Lorg/ow2/asmdex/MethodVisitor;->visitMaxs(II)V

    .line 63
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "arguments"    # [I

    .line 135
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    invoke-static {p5, v0}, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->cloneAndShift([II)[I

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-super/range {v1 .. v6}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 136
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "registers"    # [I

    .line 127
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    invoke-static {p2, v0}, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->cloneAndShift([II)[I

    move-result-object v0

    .line 129
    .local v0, "registersCopy":[I
    invoke-super {p0, p1, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;[I)V

    .line 130
    return-void
.end method

.method public visitOperationInsn(IIIII)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "firstSourceRegister"    # I
    .param p4, "secondSourceRegister"    # I
    .param p5, "value"    # I

    .line 141
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int v3, p2, v0

    add-int v4, p3, v0

    add-int v5, p4, v0

    move-object v1, p0

    move v2, p1

    move v6, p5

    invoke-super/range {v1 .. v6}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 144
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 149
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int/2addr v0, p1

    invoke-super {p0, v0, p2, p3}, Lorg/ow2/asmdex/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitStringInsn(IILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "string"    # Ljava/lang/String;

    .line 155
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int/2addr v0, p2

    invoke-super {p0, p1, v0, p3}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 156
    return-void
.end method

.method public visitTableSwitchInsn(IIILorg/ow2/asmdex/structureCommon/Label;[Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 7
    .param p1, "register"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "dflt"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p5, "labels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 122
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int v2, p1, v0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v1 .. v6}, Lorg/ow2/asmdex/MethodVisitor;->visitTableSwitchInsn(IIILorg/ow2/asmdex/structureCommon/Label;[Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 123
    return-void
.end method

.method public visitTypeInsn(IIIILjava/lang/String;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "referenceBearingRegister"    # I
    .param p4, "sizeRegister"    # I
    .param p5, "type"    # Ljava/lang/String;

    .line 161
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int v3, p2, v0

    add-int v4, p3, v0

    add-int v5, p4, v0

    move-object v1, p0

    move v2, p1

    move-object v6, p5

    invoke-super/range {v1 .. v6}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 163
    return-void
.end method

.method public visitVarInsn(III)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # I

    .line 167
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int/2addr v0, p2

    invoke-super {p0, p1, v0, p3}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 168
    return-void
.end method

.method public visitVarInsn(IIJ)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # J

    .line 172
    iget v0, p0, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;->nbRegistersToShift:I

    add-int/2addr v0, p2

    invoke-super {p0, p1, v0, p3, p4}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(IIJ)V

    .line 173
    return-void
.end method
