.class public Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;
.super Lorg/ow2/asmdex/MethodVisitor;
.source "AsmDexifierMethodVisitor.java"


# instance fields
.field private labelNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pr:Lorg/ow2/asmdex/util/AsmDexPrinter;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "nbTabulations"    # I

    .line 64
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/MethodVisitor;-><init>(I)V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->labelNames:Ljava/util/HashMap;

    .line 65
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-direct {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    .line 66
    iput p2, v0, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    .line 67
    return-void
.end method

.method private declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;
    .locals 4
    .param p1, "label"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "name":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 488
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->labelNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->labelNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->labelNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Label "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = new Label();\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->labelNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 498
    :cond_1
    :goto_0
    return-object v0
.end method

.method private declareLabels([Lorg/ow2/asmdex/structureCommon/Label;)[Ljava/lang/String;
    .locals 6
    .param p1, "labels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 510
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 512
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 513
    .local v1, "i":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 514
    .local v4, "label":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-direct {p0, v4}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 515
    nop

    .end local v4    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    add-int/lit8 v1, v1, 0x1

    .line 513
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 518
    :cond_0
    return-object v0
.end method

.method private declareLabelsToList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 531
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    const/4 v0, 0x0

    .line 532
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 533
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 534
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureCommon/Label;

    .line 535
    .local v2, "label":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-direct {p0, v2}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    .end local v2    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    goto :goto_0

    .line 538
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getTextComponent()Lorg/ow2/asmdex/util/TextComponent;
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v0

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 76
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 77
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 79
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "\tav0 = mv.visitAnnotation("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 81
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addBoolean(ZZ)V

    .line 82
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v3, ");"

    invoke-virtual {v0, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 84
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 86
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;

    iget v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->api:I

    iget-object v4, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v4, v4, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    add-int/2addr v4, v1

    invoke-direct {v0, v3, v2, v4}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;-><init>(III)V

    .line 87
    .local v0, "av":Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTextToList(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 89
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 90
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 93
    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 4

    .line 98
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 99
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 101
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "\tav0 = mv.visitAnnotationDefault();"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 103
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 105
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;

    iget v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->api:I

    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v2, v2, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;-><init>(III)V

    .line 106
    .local v0, "av":Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTextToList(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 108
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 109
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 112
    return-object v0
.end method

.method public visitArrayLengthInsn(II)V
    .locals 2
    .param p1, "destinationRegister"    # I
    .param p2, "arrayReferenceBearing"    # I

    .line 117
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 118
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitArrayLengthInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 120
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 121
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 123
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 124
    return-void
.end method

.method public visitArrayOperationInsn(IIII)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "valueRegister"    # I
    .param p3, "arrayRegister"    # I
    .param p4, "indexRegister"    # I

    .line 129
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 130
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitArrayOperationInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addOpcode(IZ)V

    .line 132
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 133
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 134
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 135
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 137
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 138
    return-void
.end method

.method public visitAttribute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attr"    # Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public visitCode()V
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 148
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitCode();\n"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 150
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 155
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitEnd();\n"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 157
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "valueRegister"    # I
    .param p6, "objectRegister"    # I

    .line 162
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 163
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitFieldInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addOpcode(IZ)V

    .line 165
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 166
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 167
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p4, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 168
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p5, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 169
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 170
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 172
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 173
    return-void
.end method

.method public visitFillArrayDataInsn(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "arrayReference"    # I
    .param p2, "arrayData"    # [Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 178
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitFillArrayDataInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 180
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 181
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 183
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 184
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .line 194
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 195
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addOpcode(IZ)V

    .line 197
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 199
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 200
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "register"    # I

    .line 204
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 205
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitIntInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addOpcode(IZ)V

    .line 207
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 208
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 210
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 211
    return-void
.end method

.method public visitJumpInsn(ILorg/ow2/asmdex/structureCommon/Label;II)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "registerA"    # I
    .param p4, "registerB"    # I

    .line 216
    invoke-direct {p0, p2}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 218
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "mv.visitJumpInsn("

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addOpcode(IZ)V

    .line 220
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1, v0, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;Z)V

    .line 221
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1, p3, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 222
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v2, 0x0

    invoke-virtual {v1, p4, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 223
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 225
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 226
    return-void
.end method

.method public visitLabel(Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 4
    .param p1, "label"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 230
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 232
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mv.visitLabel("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ");\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 234
    return-void
.end method

.method public visitLineNumber(ILorg/ow2/asmdex/structureCommon/Label;)V
    .locals 4
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 238
    invoke-direct {p0, p2}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 240
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "mv.visitLineNumber("

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 242
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 244
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 245
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/util/List;Ljava/util/List;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p7, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;I)V"
        }
    .end annotation

    .line 268
    .local p5, "ends":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    .local p6, "restarts":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/Label;>;"
    invoke-direct {p0, p4}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "nameStart":Ljava/lang/String;
    invoke-direct {p0, p5}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabelsToList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 270
    .local v1, "nameEnds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p6}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabelsToList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 271
    .local v2, "nameRestarts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 272
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v4, "mv.visitLocalVariable("

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 274
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3, p2, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 275
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3, p3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 276
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3, v0, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;Z)V

    .line 277
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3, v1, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addStringArrayList(Ljava/util/List;Z)V

    .line 278
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3, v2, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addStringArrayList(Ljava/util/List;Z)V

    .line 279
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v4, 0x0

    invoke-virtual {v3, p7, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 280
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v4, ");"

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 282
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 283
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p5, "end"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p6, "index"    # I

    .line 250
    invoke-direct {p0, p4}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "nameStart":Ljava/lang/String;
    invoke-direct {p0, p5}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "nameEnd":Ljava/lang/String;
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 253
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v3, "mv.visitLocalVariable("

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 255
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2, p2, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 256
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2, p3, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 257
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2, v0, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;Z)V

    .line 258
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2, v1, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;Z)V

    .line 259
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v3, 0x0

    invoke-virtual {v2, p6, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 260
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v3, ");"

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 262
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 263
    return-void
.end method

.method public visitLookupSwitchInsn(ILorg/ow2/asmdex/structureCommon/Label;[I[Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 4
    .param p1, "register"    # I
    .param p2, "dflt"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "keys"    # [I
    .param p4, "labels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 288
    invoke-direct {p0, p2}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "nameDefault":Ljava/lang/String;
    invoke-direct {p0, p4}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabels([Lorg/ow2/asmdex/structureCommon/Label;)[Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "nameLabels":[Ljava/lang/String;
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 291
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v3, "mv.visitLookupSwitchInsn("

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 293
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2, v0, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;Z)V

    .line 294
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2, p3, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 295
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addLabelArray([Ljava/lang/String;Z)V

    .line 296
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v3, ");"

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 298
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 299
    return-void
.end method

.method public visitMaxs(II)V
    .locals 2
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 303
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 304
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitMaxs("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 306
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 307
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 309
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 310
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "arguments"    # [I

    .line 315
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 316
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitMethodInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addOpcode(IZ)V

    .line 318
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 319
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 320
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p4, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 321
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 322
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 324
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 325
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;[I)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "registers"    # [I

    .line 329
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 330
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitMultiANewArrayInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 332
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 333
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 335
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 336
    return-void
.end method

.method public visitOperationInsn(IIIII)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "firstSourceRegister"    # I
    .param p4, "secondSourceRegister"    # I
    .param p5, "value"    # I

    .line 341
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 342
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitOperationInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addOpcode(IZ)V

    .line 344
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 345
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 346
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p4, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 347
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 348
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 350
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 351
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 5
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 356
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 357
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 359
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "\tav0 = mv.visitParameterAnnotation("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 361
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 362
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addBoolean(ZZ)V

    .line 363
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v3, ");"

    invoke-virtual {v0, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 365
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 367
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;

    iget v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->api:I

    iget-object v4, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v4, v4, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    add-int/2addr v4, v1

    invoke-direct {v0, v3, v2, v4}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;-><init>(III)V

    .line 368
    .local v0, "av":Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTextToList(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 370
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 371
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 374
    return-object v0
.end method

.method public visitParameters([Ljava/lang/String;)V
    .locals 2
    .param p1, "parameters"    # [Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 380
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitParameters("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 382
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 384
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 385
    return-void
.end method

.method public visitStringInsn(IILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "string"    # Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 390
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitStringInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addOpcode(IZ)V

    .line 392
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 393
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 394
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 396
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 397
    return-void
.end method

.method public visitTableSwitchInsn(IIILorg/ow2/asmdex/structureCommon/Label;[Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 4
    .param p1, "register"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "dflt"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p5, "labels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 402
    invoke-direct {p0, p4}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "nameDefault":Ljava/lang/String;
    invoke-direct {p0, p5}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabels([Lorg/ow2/asmdex/structureCommon/Label;)[Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "nameLabels":[Ljava/lang/String;
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 405
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v3, "mv.visitTableSwitchInsn("

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 407
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2, p2, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 408
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2, p3, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 409
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2, v0, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;Z)V

    .line 410
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addLabelArray([Ljava/lang/String;Z)V

    .line 411
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v3, ");"

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 412
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 413
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 414
    return-void
.end method

.method public visitTryCatchBlock(Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;)V
    .locals 5
    .param p1, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p2, "end"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "handler"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 419
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "nameStart":Ljava/lang/String;
    invoke-direct {p0, p2}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "nameEnd":Ljava/lang/String;
    invoke-direct {p0, p3}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->declareLabel(Lorg/ow2/asmdex/structureCommon/Label;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "nameHandler":Ljava/lang/String;
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 423
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v4, "mv.visitTryCatchBlock("

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;Z)V

    .line 425
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3, v1, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;Z)V

    .line 426
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3, v2, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;Z)V

    .line 427
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v4, 0x0

    invoke-virtual {v3, p4, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 428
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v4, ");"

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 429
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 430
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 431
    return-void
.end method

.method public visitTypeInsn(IIIILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "referenceBearingRegister"    # I
    .param p4, "sizeRegister"    # I
    .param p5, "type"    # Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 437
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitTypeInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addOpcode(IZ)V

    .line 439
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 440
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 441
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p4, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 442
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 443
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 445
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 446
    return-void
.end method

.method public visitVarInsn(III)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # I

    .line 450
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 451
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitVarInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addOpcode(IZ)V

    .line 453
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 454
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 455
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 457
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 458
    return-void
.end method

.method public visitVarInsn(IIJ)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # J

    .line 462
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 463
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "mv.visitVarInsn("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addOpcode(IZ)V

    .line 465
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 466
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(JZ)V

    .line 467
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 469
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 470
    return-void
.end method
