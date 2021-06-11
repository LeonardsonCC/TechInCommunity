.class public Lorg/ow2/asmdex/tree/StringInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "StringInsnNode.java"


# instance fields
.field public destinationRegister:I

.field public string:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "string"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 66
    iput p2, p0, Lorg/ow2/asmdex/tree/StringInsnNode;->destinationRegister:I

    .line 67
    iput-object p3, p0, Lorg/ow2/asmdex/tree/StringInsnNode;->string:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 3
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 89
    iget v0, p0, Lorg/ow2/asmdex/tree/StringInsnNode;->opcode:I

    iget v1, p0, Lorg/ow2/asmdex/tree/StringInsnNode;->destinationRegister:I

    iget-object v2, p0, Lorg/ow2/asmdex/tree/StringInsnNode;->string:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lorg/ow2/asmdex/MethodVisitor;->visitStringInsn(IILjava/lang/String;)V

    .line 90
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

    .line 95
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v0, Lorg/ow2/asmdex/tree/StringInsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/StringInsnNode;->opcode:I

    iget v2, p0, Lorg/ow2/asmdex/tree/StringInsnNode;->destinationRegister:I

    iget-object v3, p0, Lorg/ow2/asmdex/tree/StringInsnNode;->string:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/ow2/asmdex/tree/StringInsnNode;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 83
    const/16 v0, 0x9

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 77
    iput p1, p0, Lorg/ow2/asmdex/tree/StringInsnNode;->opcode:I

    .line 78
    return-void
.end method
