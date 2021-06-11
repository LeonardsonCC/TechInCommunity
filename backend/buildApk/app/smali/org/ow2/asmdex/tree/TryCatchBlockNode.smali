.class public Lorg/ow2/asmdex/tree/TryCatchBlockNode;
.super Ljava/lang/Object;
.source "TryCatchBlockNode.java"


# instance fields
.field public end:Lorg/ow2/asmdex/tree/LabelNode;

.field public handler:Lorg/ow2/asmdex/tree/LabelNode;

.field public start:Lorg/ow2/asmdex/tree/LabelNode;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Lorg/ow2/asmdex/tree/LabelNode;
    .param p2, "end"    # Lorg/ow2/asmdex/tree/LabelNode;
    .param p3, "handler"    # Lorg/ow2/asmdex/tree/LabelNode;
    .param p4, "type"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/ow2/asmdex/tree/TryCatchBlockNode;->start:Lorg/ow2/asmdex/tree/LabelNode;

    .line 80
    iput-object p2, p0, Lorg/ow2/asmdex/tree/TryCatchBlockNode;->end:Lorg/ow2/asmdex/tree/LabelNode;

    .line 81
    iput-object p3, p0, Lorg/ow2/asmdex/tree/TryCatchBlockNode;->handler:Lorg/ow2/asmdex/tree/LabelNode;

    .line 82
    iput-object p4, p0, Lorg/ow2/asmdex/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 91
    iget-object v0, p0, Lorg/ow2/asmdex/tree/TryCatchBlockNode;->start:Lorg/ow2/asmdex/tree/LabelNode;

    invoke-virtual {v0}, Lorg/ow2/asmdex/tree/LabelNode;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v0

    iget-object v1, p0, Lorg/ow2/asmdex/tree/TryCatchBlockNode;->end:Lorg/ow2/asmdex/tree/LabelNode;

    invoke-virtual {v1}, Lorg/ow2/asmdex/tree/LabelNode;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v1

    iget-object v2, p0, Lorg/ow2/asmdex/tree/TryCatchBlockNode;->handler:Lorg/ow2/asmdex/tree/LabelNode;

    if-nez v2, :cond_0

    .line 92
    const/4 v2, 0x0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v2}, Lorg/ow2/asmdex/tree/LabelNode;->getLabel()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lorg/ow2/asmdex/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    .line 91
    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/ow2/asmdex/MethodVisitor;->visitTryCatchBlock(Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;)V

    .line 94
    return-void
.end method
