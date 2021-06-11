.class public Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;
.super Lorg/ow2/asmdex/FieldVisitor;
.source "AsmDexifierFieldVisitor.java"


# instance fields
.field private final pr:Lorg/ow2/asmdex/util/AsmDexPrinter;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "nbTabulations"    # I

    .line 55
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/FieldVisitor;-><init>(I)V

    .line 56
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-direct {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    .line 57
    iput p2, v0, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    .line 58
    return-void
.end method


# virtual methods
.method public getTextComponent()Lorg/ow2/asmdex/util/TextComponent;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v0

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 67
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 68
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 70
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "\tav0 = fv.visitAnnotation("

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 72
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addBoolean(ZZ)V

    .line 73
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v3, ");"

    invoke-virtual {v0, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 75
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 77
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;

    iget v3, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->api:I

    iget-object v4, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget v4, v4, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    add-int/2addr v4, v1

    invoke-direct {v0, v3, v2, v4}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;-><init>(III)V

    .line 78
    .local v0, "av":Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexifierAnnotationVisitor;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTextToList(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 80
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 81
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 84
    return-object v0
.end method

.method public visitAttribute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attr"    # Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTabulation()V

    .line 95
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "fv.visitEnd();"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 97
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierFieldVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 98
    return-void
.end method
