.class public Lorg/ow2/asmdex/tree/JumpInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "JumpInsnNode.java"


# instance fields
.field public label:Lorg/ow2/asmdex/tree/LabelNode;

.field public registerA:I

.field public registerB:I


# direct methods
.method public constructor <init>(ILorg/ow2/asmdex/tree/LabelNode;II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/ow2/asmdex/tree/LabelNode;
    .param p3, "registerA"    # I
    .param p4, "registerB"    # I

    .line 77
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 78
    iput-object p2, p0, Lorg/ow2/asmdex/tree/JumpInsnNode;->label:Lorg/ow2/asmdex/tree/LabelNode;

    .line 79
    iput p3, p0, Lorg/ow2/asmdex/tree/JumpInsnNode;->registerA:I

    .line 80
    iput p4, p0, Lorg/ow2/asmdex/tree/JumpInsnNode;->registerB:I

    .line 81
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 101
    iget v0, p0, Lorg/ow2/asmdex/tree/JumpInsnNode;->opcode:I

    iget-object v1, p0, Lorg/ow2/asmdex/tree/JumpInsnNode;->label:Lorg/ow2/asmdex/tree/LabelNode;

    invoke-virtual {v1}, Lorg/ow2/asmdex/tree/LabelNode;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v1

    iget v2, p0, Lorg/ow2/asmdex/tree/JumpInsnNode;->registerA:I

    iget v3, p0, Lorg/ow2/asmdex/tree/JumpInsnNode;->registerB:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/ow2/asmdex/MethodVisitor;->visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V

    .line 102
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

    .line 106
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v0, Lorg/ow2/asmdex/tree/JumpInsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/JumpInsnNode;->opcode:I

    iget-object v2, p0, Lorg/ow2/asmdex/tree/JumpInsnNode;->label:Lorg/ow2/asmdex/tree/LabelNode;

    invoke-static {v2, p1}, Lorg/ow2/asmdex/tree/JumpInsnNode;->clone(Lorg/ow2/asmdex/tree/LabelNode;Ljava/util/Map;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v2

    iget v3, p0, Lorg/ow2/asmdex/tree/JumpInsnNode;->registerA:I

    iget v4, p0, Lorg/ow2/asmdex/tree/JumpInsnNode;->registerB:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ow2/asmdex/tree/JumpInsnNode;-><init>(ILorg/ow2/asmdex/tree/LabelNode;II)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 96
    const/4 v0, 0x7

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 91
    iput p1, p0, Lorg/ow2/asmdex/tree/JumpInsnNode;->opcode:I

    .line 92
    return-void
.end method
