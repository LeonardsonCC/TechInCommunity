.class public Lorg/ow2/asmdex/tree/VarInsnLongNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "VarInsnLongNode.java"


# instance fields
.field public destinationRegister:I

.field public var:J


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # J

    .line 67
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 68
    iput p2, p0, Lorg/ow2/asmdex/tree/VarInsnLongNode;->destinationRegister:I

    .line 69
    iput-wide p3, p0, Lorg/ow2/asmdex/tree/VarInsnLongNode;->var:J

    .line 70
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 89
    iget v0, p0, Lorg/ow2/asmdex/tree/VarInsnLongNode;->opcode:I

    iget v1, p0, Lorg/ow2/asmdex/tree/VarInsnLongNode;->destinationRegister:I

    iget-wide v2, p0, Lorg/ow2/asmdex/tree/VarInsnLongNode;->var:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/ow2/asmdex/MethodVisitor;->visitVarInsn(IIJ)V

    .line 90
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

    .line 94
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v0, Lorg/ow2/asmdex/tree/VarInsnLongNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/VarInsnLongNode;->opcode:I

    iget v2, p0, Lorg/ow2/asmdex/tree/VarInsnLongNode;->destinationRegister:I

    iget-wide v3, p0, Lorg/ow2/asmdex/tree/VarInsnLongNode;->var:J

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ow2/asmdex/tree/VarInsnLongNode;-><init>(IIJ)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 84
    const/4 v0, 0x3

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 79
    iput p1, p0, Lorg/ow2/asmdex/tree/VarInsnLongNode;->opcode:I

    .line 80
    return-void
.end method
