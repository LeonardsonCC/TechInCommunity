.class public Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "ArrayOperationInsnNode.java"


# instance fields
.field public arrayRegister:I

.field public indexRegister:I

.field public valueRegister:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "valueRegister"    # I
    .param p3, "arrayRegister"    # I
    .param p4, "indexRegister"    # I

    .line 70
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 71
    iput p2, p0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;->valueRegister:I

    .line 72
    iput p3, p0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;->arrayRegister:I

    .line 73
    iput p4, p0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;->indexRegister:I

    .line 74
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 93
    iget v0, p0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;->opcode:I

    iget v1, p0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;->valueRegister:I

    iget v2, p0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;->arrayRegister:I

    iget v3, p0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;->indexRegister:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayOperationInsn(IIII)V

    .line 94
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 5
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

    .line 98
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;->opcode:I

    iget v2, p0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;->valueRegister:I

    iget v3, p0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;->arrayRegister:I

    iget v4, p0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;->indexRegister:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;-><init>(IIII)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 88
    const/16 v0, 0xf

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 83
    iput p1, p0, Lorg/ow2/asmdex/tree/ArrayOperationInsnNode;->opcode:I

    .line 84
    return-void
.end method
