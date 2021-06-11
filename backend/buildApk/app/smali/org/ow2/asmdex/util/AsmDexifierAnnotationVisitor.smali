.class public Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;
.super Lorg/ow2/asmdex/AnnotationVisitor;
.source "AsmDexifierAnnotationVisitor.java"


# instance fields
.field protected final id:I

.field private final pr:Lorg/ow2/asmdex/util/AsmDexPrinter;


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "id"    # I
    .param p3, "nbTabulations"    # I

    .line 58
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/AnnotationVisitor;-><init>(I)V

    .line 59
    iput p2, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->id:I

    .line 60
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-direct {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    .line 61
    iput p3, v0, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    .line 62
    return-void
.end method


# virtual methods
.method getTextComponent()Lorg/ow2/asmdex/util/TextComponent;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v0

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 72
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "av"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 74
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ".visit("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 76
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 77
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 79
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 80
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 85
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 87
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "\tAnnotationVisitor av"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->id:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 89
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "av"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->id:I

    invoke-virtual {v0, v1, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 92
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ".visitAnnotation("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 94
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 95
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 97
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 99
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;

    iget v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->api:I

    iget v3, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->id:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v4, v4, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    add-int/2addr v4, v2

    invoke-direct {v0, v1, v3, v4}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;-><init>(III)V

    .line 100
    .local v0, "av":Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTextToList(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 102
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 103
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 106
    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 117
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 119
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "\tAnnotationVisitor av"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->id:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 121
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "av"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 124
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ".visitArray("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 126
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 128
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 130
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;

    iget v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->api:I

    iget v2, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->id:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v3, v3, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;-><init>(III)V

    .line 131
    .local v0, "av":Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTextToList(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 133
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 134
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 137
    return-object v0
.end method

.method public visitClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "annotationName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 168
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "av"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 170
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ".visitClass("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 172
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 173
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 175
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 176
    return-void
.end method

.method public visitEnd()V
    .locals 3

    .line 142
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 143
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "av"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 145
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ".visitEnd();"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 147
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 148
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 153
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "av"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v1, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 155
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ".visitEnum("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 157
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 158
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p3, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 159
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 161
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 162
    return-void
.end method
