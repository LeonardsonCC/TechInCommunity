.class public Lorg/ow2/asmdex/tree/IntInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "IntInsnNode.java"


# instance fields
.field public operand:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 59
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 60
    iput p2, p0, Lorg/ow2/asmdex/tree/IntInsnNode;->operand:I

    .line 61
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 81
    iget v0, p0, Lorg/ow2/asmdex/tree/IntInsnNode;->opcode:I

    iget v1, p0, Lorg/ow2/asmdex/tree/IntInsnNode;->operand:I

    invoke-virtual {p1, v0, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitIntInsn(II)V

    .line 82
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 3
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

    .line 86
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v0, Lorg/ow2/asmdex/tree/IntInsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/IntInsnNode;->opcode:I

    iget v2, p0, Lorg/ow2/asmdex/tree/IntInsnNode;->operand:I

    invoke-direct {v0, v1, v2}, Lorg/ow2/asmdex/tree/IntInsnNode;-><init>(II)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 71
    iput p1, p0, Lorg/ow2/asmdex/tree/IntInsnNode;->opcode:I

    .line 72
    return-void
.end method
