.class public Lorg/ow2/asmdex/tree/OperationInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "OperationInsnNode.java"


# instance fields
.field public destinationRegister:I

.field public firstSourceRegister:I

.field public secondSourceRegister:I

.field public value:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "firstSourceRegister"    # I
    .param p4, "secondSourceRegister"    # I
    .param p5, "value"    # I

    .line 81
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 82
    iput p2, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->destinationRegister:I

    .line 83
    iput p3, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->firstSourceRegister:I

    .line 84
    iput p4, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->secondSourceRegister:I

    .line 85
    iput p5, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->value:I

    .line 86
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 6
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 105
    iget v1, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->opcode:I

    iget v2, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->destinationRegister:I

    iget v3, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->firstSourceRegister:I

    iget v4, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->secondSourceRegister:I

    iget v5, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->value:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitOperationInsn(IIIII)V

    .line 106
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;)",
            "Lorg/ow2/asmdex/tree/AbstractInsnNode;"
        }
    .end annotation

    .line 110
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v6, Lorg/ow2/asmdex/tree/OperationInsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->opcode:I

    iget v2, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->destinationRegister:I

    iget v3, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->firstSourceRegister:I

    iget v4, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->secondSourceRegister:I

    iget v5, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->value:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/ow2/asmdex/tree/OperationInsnNode;-><init>(IIIII)V

    return-object v6
.end method

.method public getType()I
    .locals 1

    .line 100
    const/16 v0, 0xa

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 95
    iput p1, p0, Lorg/ow2/asmdex/tree/OperationInsnNode;->opcode:I

    .line 96
    return-void
.end method
