.class public Lorg/ow2/asmdex/tree/LineNumberNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "LineNumberNode.java"


# instance fields
.field public line:I

.field public start:Lorg/ow2/asmdex/tree/LabelNode;


# direct methods
.method public constructor <init>(ILorg/ow2/asmdex/tree/LabelNode;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/ow2/asmdex/tree/LabelNode;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 66
    iput p1, p0, Lorg/ow2/asmdex/tree/LineNumberNode;->line:I

    .line 67
    iput-object p2, p0, Lorg/ow2/asmdex/tree/LineNumberNode;->start:Lorg/ow2/asmdex/tree/LabelNode;

    .line 68
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 77
    iget v0, p0, Lorg/ow2/asmdex/tree/LineNumberNode;->line:I

    iget-object v1, p0, Lorg/ow2/asmdex/tree/LineNumberNode;->start:Lorg/ow2/asmdex/tree/LabelNode;

    invoke-virtual {v1}, Lorg/ow2/asmdex/tree/LabelNode;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitLineNumber(ILorg/ow2/asmdex/structureCommon/Label;)V

    .line 78
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

    .line 82
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v0, Lorg/ow2/asmdex/tree/LineNumberNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/LineNumberNode;->line:I

    iget-object v2, p0, Lorg/ow2/asmdex/tree/LineNumberNode;->start:Lorg/ow2/asmdex/tree/LabelNode;

    invoke-static {v2, p1}, Lorg/ow2/asmdex/tree/LineNumberNode;->clone(Lorg/ow2/asmdex/tree/LabelNode;Ljava/util/Map;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ow2/asmdex/tree/LineNumberNode;-><init>(ILorg/ow2/asmdex/tree/LabelNode;)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 72
    const/16 v0, 0x11

    return v0
.end method
