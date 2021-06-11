.class public Lorg/ow2/asmdex/tree/MultiANewArrayInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "MultiANewArrayInsnNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public registers:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "registers"    # [I

    .line 66
    array-length v0, p2

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 67
    const/16 v0, 0x24

    goto :goto_0

    :cond_0
    const/16 v0, 0x25

    .line 66
    :goto_0
    invoke-direct {p0, v0}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 68
    iput-object p1, p0, Lorg/ow2/asmdex/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/ow2/asmdex/tree/MultiANewArrayInsnNode;->registers:[I

    .line 70
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 89
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    iget-object v1, p0, Lorg/ow2/asmdex/tree/MultiANewArrayInsnNode;->registers:[I

    invoke-virtual {p1, v0, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;[I)V

    .line 90
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

    .line 94
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v0, Lorg/ow2/asmdex/tree/MultiANewArrayInsnNode;

    iget-object v1, p0, Lorg/ow2/asmdex/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    iget-object v2, p0, Lorg/ow2/asmdex/tree/MultiANewArrayInsnNode;->registers:[I

    invoke-direct {v0, v1, v2}, Lorg/ow2/asmdex/tree/MultiANewArrayInsnNode;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 84
    const/16 v0, 0xd

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 79
    iput p1, p0, Lorg/ow2/asmdex/tree/MultiANewArrayInsnNode;->opcode:I

    .line 80
    return-void
.end method
