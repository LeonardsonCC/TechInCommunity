.class public Lorg/ow2/asmdex/tree/ArrayLengthInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "ArrayLengthInsnNode.java"


# instance fields
.field public arrayReferenceBearing:I

.field public destinationRegister:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "destinationRegister"    # I
    .param p2, "arrayReferenceBearing"    # I

    .line 63
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 64
    iput p1, p0, Lorg/ow2/asmdex/tree/ArrayLengthInsnNode;->destinationRegister:I

    .line 65
    iput p2, p0, Lorg/ow2/asmdex/tree/ArrayLengthInsnNode;->arrayReferenceBearing:I

    .line 66
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 85
    iget v0, p0, Lorg/ow2/asmdex/tree/ArrayLengthInsnNode;->destinationRegister:I

    iget v1, p0, Lorg/ow2/asmdex/tree/ArrayLengthInsnNode;->arrayReferenceBearing:I

    invoke-virtual {p1, v0, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitArrayLengthInsn(II)V

    .line 86
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

    .line 90
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v0, Lorg/ow2/asmdex/tree/ArrayLengthInsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/ArrayLengthInsnNode;->destinationRegister:I

    iget v2, p0, Lorg/ow2/asmdex/tree/ArrayLengthInsnNode;->arrayReferenceBearing:I

    invoke-direct {v0, v1, v2}, Lorg/ow2/asmdex/tree/ArrayLengthInsnNode;-><init>(II)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 80
    const/16 v0, 0xe

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 75
    iput p1, p0, Lorg/ow2/asmdex/tree/ArrayLengthInsnNode;->opcode:I

    .line 76
    return-void
.end method
