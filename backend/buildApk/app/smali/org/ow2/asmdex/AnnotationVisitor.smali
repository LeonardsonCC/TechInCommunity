.class public abstract Lorg/ow2/asmdex/AnnotationVisitor;
.super Ljava/lang/Object;
.source "AnnotationVisitor.java"


# instance fields
.field protected final api:I

.field protected av:Lorg/ow2/asmdex/AnnotationVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "api"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lorg/ow2/asmdex/AnnotationVisitor;->api:I

    .line 71
    return-void
.end method

.method public constructor <init>(ILorg/ow2/asmdex/AnnotationVisitor;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "av"    # Lorg/ow2/asmdex/AnnotationVisitor;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lorg/ow2/asmdex/AnnotationVisitor;->api:I

    .line 81
    iput-object p2, p0, Lorg/ow2/asmdex/AnnotationVisitor;->av:Lorg/ow2/asmdex/AnnotationVisitor;

    .line 82
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationVisitor;->av:Lorg/ow2/asmdex/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationVisitor;->av:Lorg/ow2/asmdex/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationVisitor;->av:Lorg/ow2/asmdex/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "annotationName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationVisitor;->av:Lorg/ow2/asmdex/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/AnnotationVisitor;->visitClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationVisitor;->av:Lorg/ow2/asmdex/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 171
    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lorg/ow2/asmdex/AnnotationVisitor;->av:Lorg/ow2/asmdex/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1, p2, p3}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method
