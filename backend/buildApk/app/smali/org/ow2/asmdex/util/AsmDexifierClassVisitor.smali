.class public Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;
.super Lorg/ow2/asmdex/ClassVisitor;
.source "AsmDexifierClassVisitor.java"


# instance fields
.field final pr:Lorg/ow2/asmdex/util/AsmDexPrinter;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "nbTabulations"    # I

    .line 55
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/ClassVisitor;-><init>(I)V

    .line 56
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-direct {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    .line 57
    iput p2, v0, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    .line 58
    return-void
.end method


# virtual methods
.method public getTextComponent()Lorg/ow2/asmdex/util/TextComponent;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v0

    return-object v0
.end method

.method public visit(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 69
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "cv.visit(0, "

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addAccessFlags(IZ)V

    .line 71
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 72
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p4, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 73
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p5, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 74
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 75
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 77
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 78
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 82
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 83
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 85
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "av0 = cv.visitAnnotation("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 87
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addBoolean(ZZ)V

    .line 88
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v3, ");"

    invoke-virtual {v0, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 90
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 92
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;

    iget v3, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->api:I

    iget-object v4, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v4, v4, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    add-int/2addr v4, v1

    invoke-direct {v0, v3, v2, v4}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;-><init>(III)V

    .line 93
    .local v0, "av":Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTextToList(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 95
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 96
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 99
    return-object v0
.end method

.method public visitAttribute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attr"    # Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 110
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "cv.visitEnd();"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 112
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 113
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;
    .locals 4
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 118
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 120
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "\tfv = cv.visitField("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addAccessFlags(IZ)V

    .line 122
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 123
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 124
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p4, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 125
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v2, 0x0

    invoke-virtual {v0, p5, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 126
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, ");"

    invoke-virtual {v0, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 128
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 130
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;

    iget v2, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->api:I

    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v3, v3, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    add-int/2addr v3, v1

    invoke-direct {v0, v2, v3}, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;-><init>(II)V

    .line 131
    .local v0, "fv":Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTextToList(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 133
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 134
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 137
    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 142
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 143
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "cv.visitInnerClass("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 145
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 146
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 147
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addAccessFlags(IZ)V

    .line 148
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 150
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 151
    return-void
.end method

.method public visitMemberClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 157
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "cv.visitMemberClass("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 159
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 160
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 161
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 163
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 164
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;
    .locals 4
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 169
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 171
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "\tmv = cv.visitMethod("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addAccessFlags(IZ)V

    .line 173
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 174
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 175
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p4, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 176
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v2, 0x0

    invoke-virtual {v0, p5, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 177
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, ");"

    invoke-virtual {v0, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 179
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 181
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;

    iget v2, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->api:I

    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v3, v3, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    add-int/2addr v3, v1

    invoke-direct {v0, v2, v3}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;-><init>(II)V

    .line 182
    .local v0, "mv":Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexifierMethodVisitor;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTextToList(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 184
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 185
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 188
    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 194
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "cv.visitOuterClass("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 196
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 197
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 198
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 200
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 201
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 206
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "cv.visitSource("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 208
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 209
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 211
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 212
    return-void
.end method
