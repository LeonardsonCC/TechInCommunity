.class public Lorg/ow2/asmdex/tree/InsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "InsnNode.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 52
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 57
    iget v0, p0, Lorg/ow2/asmdex/tree/InsnNode;->opcode:I

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitInsn(I)V

    .line 58
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 2
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

    .line 62
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v0, Lorg/ow2/asmdex/tree/InsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/InsnNode;->opcode:I

    invoke-direct {v0, v1}, Lorg/ow2/asmdex/tree/InsnNode;-><init>(I)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method
