.class public Lorg/ow2/asmdex/structureCommon/LocalVariable;
.super Ljava/lang/Object;
.source "LocalVariable.java"


# instance fields
.field private ends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private register:I

.field private restarts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;"
        }
    .end annotation
.end field

.field private signature:Ljava/lang/String;

.field private start:Lorg/ow2/asmdex/structureCommon/Label;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "register"    # I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->register:I

    .line 109
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "register"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p6, "ends":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .local p7, "restarts":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->register:I

    .line 95
    iput-object p2, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->name:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->type:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->signature:Ljava/lang/String;

    .line 98
    iput-object p5, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->start:Lorg/ow2/asmdex/structureCommon/Label;

    .line 99
    iput-object p6, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->ends:Ljava/util/List;

    .line 100
    iput-object p7, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->restarts:Ljava/util/List;

    .line 101
    return-void
.end method

.method private addLabel(Ljava/util/List;Lorg/ow2/asmdex/structureCommon/Label;)Ljava/util/List;
    .locals 2
    .param p2, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ")",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;"
        }
    .end annotation

    .line 227
    .local p1, "labelList":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    move-object v0, p1

    .line 228
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    if-nez v0, :cond_0

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 231
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-object v0
.end method


# virtual methods
.method public addEnd(Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 1
    .param p1, "end"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 209
    iget-object v0, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->ends:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->addLabel(Ljava/util/List;Lorg/ow2/asmdex/structureCommon/Label;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->ends:Ljava/util/List;

    .line 210
    return-void
.end method

.method public addRestart(Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 1
    .param p1, "restart"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 217
    iget-object v0, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->restarts:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/ow2/asmdex/structureCommon/LocalVariable;->addLabel(Ljava/util/List;Lorg/ow2/asmdex/structureCommon/Label;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->restarts:Ljava/util/List;

    .line 218
    return-void
.end method

.method public getEnds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->ends:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegister()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->register:I

    return v0
.end method

.method public getRestarts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->restarts:Ljava/util/List;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->start:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->name:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->signature:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setStart(Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 0
    .param p1, "start"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 185
    iput-object p1, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->start:Lorg/ow2/asmdex/structureCommon/Label;

    .line 186
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lorg/ow2/asmdex/structureCommon/LocalVariable;->type:Ljava/lang/String;

    .line 154
    return-void
.end method
