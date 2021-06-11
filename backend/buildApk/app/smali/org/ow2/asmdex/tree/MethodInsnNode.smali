.class public Lorg/ow2/asmdex/tree/MethodInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "MethodInsnNode.java"


# instance fields
.field public arguments:[I

.field public desc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public owner:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "arguments"    # [I

    .line 80
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 81
    iput-object p2, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->owner:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->name:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->desc:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->arguments:[I

    .line 85
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 6
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 104
    iget v1, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->opcode:I

    iget-object v2, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->owner:Ljava/lang/String;

    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->desc:Ljava/lang/String;

    iget-object v5, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->arguments:[I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 105
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

    .line 109
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v6, Lorg/ow2/asmdex/tree/MethodInsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->opcode:I

    iget-object v2, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->owner:Ljava/lang/String;

    iget-object v3, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->desc:Ljava/lang/String;

    iget-object v5, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->arguments:[I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/ow2/asmdex/tree/MethodInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    return-object v6
.end method

.method public getType()I
    .locals 1

    .line 99
    const/4 v0, 0x6

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 94
    iput p1, p0, Lorg/ow2/asmdex/tree/MethodInsnNode;->opcode:I

    .line 95
    return-void
.end method
