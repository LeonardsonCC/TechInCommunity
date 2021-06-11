.class public Lorg/ow2/asmdex/tree/LocalVariableNode;
.super Ljava/lang/Object;
.source "LocalVariableNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public ends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field

.field public index:I

.field public name:Ljava/lang/String;

.field public restarts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field

.field public signature:Ljava/lang/String;

.field public start:Lorg/ow2/asmdex/tree/LabelNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/tree/LabelNode;Ljava/util/List;Ljava/util/List;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/ow2/asmdex/tree/LabelNode;
    .param p7, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;I)V"
        }
    .end annotation

    .line 128
    .local p5, "ends":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/tree/LabelNode;>;"
    .local p6, "restarts":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/tree/LabelNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->name:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->desc:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->signature:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->start:Lorg/ow2/asmdex/tree/LabelNode;

    .line 133
    iput-object p5, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->ends:Ljava/util/List;

    .line 134
    iput-object p6, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->restarts:Ljava/util/List;

    .line 135
    iput p7, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->index:I

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/ow2/asmdex/tree/LabelNode;
    .param p5, "end"    # Lorg/ow2/asmdex/tree/LabelNode;
    .param p6, "index"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->name:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->desc:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->signature:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->start:Lorg/ow2/asmdex/tree/LabelNode;

    .line 105
    if-eqz p5, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->ends:Ljava/util/List;

    .line 107
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    iput p6, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->index:I

    .line 110
    return-void
.end method

.method private getLabels(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;"
        }
    .end annotation

    .line 153
    .local p1, "labelNodes":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/tree/LabelNode;>;"
    const/4 v0, 0x0

    .line 154
    .local v0, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    if-eqz p1, :cond_0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/tree/LabelNode;

    .line 157
    .local v2, "labelNode":Lorg/ow2/asmdex/tree/LabelNode;
    invoke-virtual {v2}, Lorg/ow2/asmdex/tree/LabelNode;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v2    # "labelNode":Lorg/ow2/asmdex/tree/LabelNode;
    goto :goto_0

    .line 160
    :cond_0
    return-object v0
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 8
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 144
    iget-object v1, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->desc:Ljava/lang/String;

    iget-object v3, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->signature:Ljava/lang/String;

    iget-object v0, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->start:Lorg/ow2/asmdex/tree/LabelNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/ow2/asmdex/tree/LabelNode;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v0

    :goto_0
    move-object v4, v0

    iget-object v0, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->ends:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/tree/LocalVariableNode;->getLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->restarts:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/tree/LocalVariableNode;->getLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lorg/ow2/asmdex/tree/LocalVariableNode;->index:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lorg/ow2/asmdex/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;I)V

    .line 145
    return-void
.end method
