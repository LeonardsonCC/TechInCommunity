.class public Lorg/ow2/asmdex/tree/LabelNode;
.super Lorg/ow2/asmdex/tree/AbstractInsnNode;
.source "LabelNode.java"


# instance fields
.field private label:Lorg/ow2/asmdex/structureCommon/Label;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 60
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/tree/AbstractInsnNode;-><init>(I)V

    .line 61
    iput-object p1, p0, Lorg/ow2/asmdex/tree/LabelNode;->label:Lorg/ow2/asmdex/structureCommon/Label;

    .line 62
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 1
    .param p1, "cv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 82
    invoke-virtual {p0}, Lorg/ow2/asmdex/tree/LabelNode;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/MethodVisitor;->visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 83
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 1
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

    .line 87
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getLabel()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/ow2/asmdex/tree/LabelNode;->label:Lorg/ow2/asmdex/structureCommon/Label;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureCommon/Label;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/LabelNode;->label:Lorg/ow2/asmdex/structureCommon/Label;

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/tree/LabelNode;->label:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 66
    const/16 v0, 0x8

    return v0
.end method

.method public resetLabel()V
    .locals 1

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/tree/LabelNode;->label:Lorg/ow2/asmdex/structureCommon/Label;

    .line 95
    return-void
.end method
