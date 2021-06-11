.class public Lorg/ow2/asmdex/tree/FieldInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "FieldInsnNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public objectRegister:I

.field public owner:Ljava/lang/String;

.field public valueRegister:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "valueRegister"    # I
    .param p6, "objectRegister"    # I

    .line 85
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 86
    iput-object p2, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->owner:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->name:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->desc:Ljava/lang/String;

    .line 89
    iput p5, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->valueRegister:I

    .line 90
    iput p6, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->objectRegister:I

    .line 91
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 7
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 110
    iget v1, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->opcode:I

    iget-object v2, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->owner:Ljava/lang/String;

    iget-object v3, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->desc:Ljava/lang/String;

    iget v5, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->valueRegister:I

    iget v6, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->objectRegister:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 111
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 8
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

    .line 115
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v7, Lorg/ow2/asmdex/tree/FieldInsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->opcode:I

    iget-object v2, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->owner:Ljava/lang/String;

    iget-object v3, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->desc:Ljava/lang/String;

    iget v5, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->valueRegister:I

    iget v6, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->objectRegister:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ow2/asmdex/tree/FieldInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v7
.end method

.method public getType()I
    .locals 1

    .line 105
    const/4 v0, 0x5

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 100
    iput p1, p0, Lorg/ow2/asmdex/tree/FieldInsnNode;->opcode:I

    .line 101
    return-void
.end method
