.class public Lorg/ow2/asmdex/tree/TypeInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "TypeInsnNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public destinationRegister:I

.field public referenceBearingRegister:I

.field public sizeRegister:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "referenceBearingRegister"    # I
    .param p4, "sizeRegister"    # I
    .param p5, "type"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 83
    iput p2, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->destinationRegister:I

    .line 84
    iput p3, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->referenceBearingRegister:I

    .line 85
    iput p4, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->sizeRegister:I

    .line 86
    iput-object p5, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->desc:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 6
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 108
    iget v1, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->opcode:I

    iget v2, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->destinationRegister:I

    iget v3, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->referenceBearingRegister:I

    iget v4, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->sizeRegister:I

    iget-object v5, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->desc:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitTypeInsn(IIIILjava/lang/String;)V

    .line 109
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

    .line 114
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v6, Lorg/ow2/asmdex/tree/TypeInsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->opcode:I

    iget v2, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->destinationRegister:I

    iget v3, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->referenceBearingRegister:I

    iget v4, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->sizeRegister:I

    iget-object v5, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->desc:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/ow2/asmdex/tree/TypeInsnNode;-><init>(IIIILjava/lang/String;)V

    return-object v6
.end method

.method public getType()I
    .locals 1

    .line 102
    const/4 v0, 0x4

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 96
    iput p1, p0, Lorg/ow2/asmdex/tree/TypeInsnNode;->opcode:I

    .line 97
    return-void
.end method
