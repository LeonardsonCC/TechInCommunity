.class public Lorg/ow2/asmdex/tree/VarInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "VarInsnNode.java"


# instance fields
.field public destinationRegister:I

.field public var:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # I

    .line 70
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 71
    iput p2, p0, Lorg/ow2/asmdex/tree/VarInsnNode;->destinationRegister:I

    .line 72
    iput p3, p0, Lorg/ow2/asmdex/tree/VarInsnNode;->var:I

    .line 73
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 3
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 98
    iget v0, p0, Lorg/ow2/asmdex/tree/VarInsnNode;->opcode:I

    iget v1, p0, Lorg/ow2/asmdex/tree/VarInsnNode;->destinationRegister:I

    iget v2, p0, Lorg/ow2/asmdex/tree/VarInsnNode;->var:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(III)V

    .line 99
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 4
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

    .line 104
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v0, Lorg/ow2/asmdex/tree/VarInsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/VarInsnNode;->opcode:I

    iget v2, p0, Lorg/ow2/asmdex/tree/VarInsnNode;->destinationRegister:I

    iget v3, p0, Lorg/ow2/asmdex/tree/VarInsnNode;->var:I

    invoke-direct {v0, v1, v2, v3}, Lorg/ow2/asmdex/tree/VarInsnNode;-><init>(III)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 92
    const/4 v0, 0x2

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 86
    iput p1, p0, Lorg/ow2/asmdex/tree/VarInsnNode;->opcode:I

    .line 87
    return-void
.end method
