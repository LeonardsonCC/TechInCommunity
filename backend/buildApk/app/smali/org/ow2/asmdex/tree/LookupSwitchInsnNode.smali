.class public Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "LookupSwitchInsnNode.java"


# instance fields
.field public dflt:Lorg/ow2/asmdex/tree/LabelNode;

.field public keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field

.field public register:I


# direct methods
.method public constructor <init>(ILorg/ow2/asmdex/tree/LabelNode;[I[Lorg/ow2/asmdex/tree/LabelNode;)V
    .locals 3
    .param p1, "register"    # I
    .param p2, "dflt"    # Lorg/ow2/asmdex/tree/LabelNode;
    .param p3, "keys"    # [I
    .param p4, "labels"    # [Lorg/ow2/asmdex/tree/LabelNode;

    .line 85
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 86
    iput p1, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->register:I

    .line 87
    iput-object p2, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->dflt:Lorg/ow2/asmdex/tree/LabelNode;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, p3

    :goto_0
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, p4

    :goto_1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    .line 90
    if-eqz p3, :cond_2

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 92
    iget-object v1, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    aget v2, p3, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 95
    .end local v0    # "i":I
    :cond_2
    if-eqz p4, :cond_3

    .line 96
    iget-object v0, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_3
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 107
    iget-object v0, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 108
    .local v0, "keys":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 109
    iget-object v2, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/ow2/asmdex/structureCommon/Label;

    .line 112
    .local v1, "labels":[Lorg/ow2/asmdex/structureCommon/Label;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 113
    iget-object v3, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/tree/LabelNode;

    invoke-virtual {v3}, Lorg/ow2/asmdex/tree/LabelNode;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v3

    aput-object v3, v1, v2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->register:I

    iget-object v3, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->dflt:Lorg/ow2/asmdex/tree/LabelNode;

    invoke-virtual {v3}, Lorg/ow2/asmdex/tree/LabelNode;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v0, v1}, Lorg/ow2/asmdex/MethodVisitor;->visitLookupSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;[I[Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 116
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

    .line 120
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    new-instance v0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;

    iget v1, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->register:I

    iget-object v2, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->dflt:Lorg/ow2/asmdex/tree/LabelNode;

    invoke-static {v2, p1}, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->clone(Lorg/ow2/asmdex/tree/LabelNode;Ljava/util/Map;)Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v2

    iget-object v3, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    .line 121
    invoke-static {v3, p1}, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->clone(Ljava/util/List;Ljava/util/Map;)[Lorg/ow2/asmdex/tree/LabelNode;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;-><init>(ILorg/ow2/asmdex/tree/LabelNode;[I[Lorg/ow2/asmdex/tree/LabelNode;)V

    .line 122
    .local v0, "clone":Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;
    iget-object v1, v0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    iget-object v2, p0, Lorg/ow2/asmdex/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 102
    const/16 v0, 0xc

    return v0
.end method
