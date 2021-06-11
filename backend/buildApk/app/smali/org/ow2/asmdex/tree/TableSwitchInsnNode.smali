.class public Lorg/ow2/asmdex/tree/TableSwitchInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "TableSwitchInsnNode.java"


# instance fields
.field public dflt:Lorg/ow2/asmdex/tree/LabelNode;

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field

.field public max:I

.field public min:I

.field public register:I


# direct methods
.method public constructor <init>(IIILorg/ow2/asmdex/tree/LabelNode;[Lorg/ow2/asmdex/tree/LabelNode;)V
    .locals 2
    .param p1, "register"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "dflt"    # Lorg/ow2/asmdex/tree/LabelNode;
    .param p5, "labels"    # [Lorg/ow2/asmdex/tree/LabelNode;

    .line 89
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 90
    iput p1, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->register:I

    .line 91
    iput p2, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->min:I

    .line 92
    iput p3, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->max:I

    .line 93
    iput-object p4, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->dflt:Lorg/ow2/asmdex/tree/LabelNode;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    .line 95
    if-eqz p5, :cond_0

    .line 96
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 7
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 107
    iget-object v0, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/ow2/asmdex/structureCommon/Label;

    .line 108
    .local v0, "labels":[Lorg/ow2/asmdex/structureCommon/Label;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 109
    iget-object v2, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/tree/LabelNode;

    invoke-virtual {v2}, Lorg/ow2/asmdex/tree/LabelNode;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v2

    aput-object v2, v0, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->register:I

    iget v3, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->min:I

    iget v4, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->max:I

    iget-object v1, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->dflt:Lorg/ow2/asmdex/tree/LabelNode;

    invoke-virtual {v1}, Lorg/ow2/asmdex/tree/LabelNode;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v5

    move-object v1, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/ow2/asmdex/MethodVisitor;->visitTableSwitchInsn(IIILorg/ow2/asmdex/structureCommon/Label;[Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 112
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

    .line 116
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v6, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->register:I

    iget v2, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->min:I

    iget v3, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->max:I

    iget-object v0, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->dflt:Lorg/ow2/asmdex/tree/LabelNode;

    invoke-static {v0, p1}, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->clone(Lorg/ow2/asmdex/tree/LabelNode;Ljava/util/Map;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v4

    iget-object v0, p0, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;->clone(Ljava/util/List;Ljava/util/Map;)[Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/ow2/asmdex/tree/TableSwitchInsnNode;-><init>(IIILorg/ow2/asmdex/tree/LabelNode;[Lorg/ow2/asmdex/tree/LabelNode;)V

    return-object v6
.end method

.method public getType()I
    .locals 1

    .line 102
    const/16 v0, 0xb

    return v0
.end method
