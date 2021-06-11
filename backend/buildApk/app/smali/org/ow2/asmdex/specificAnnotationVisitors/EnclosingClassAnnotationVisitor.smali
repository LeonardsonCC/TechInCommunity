.class public Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingClassAnnotationVisitor;
.super Lorg/ow2/asmdex/AnnotationVisitor;
.source "EnclosingClassAnnotationVisitor.java"


# instance fields
.field private className:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "api"    # I

    .line 50
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/AnnotationVisitor;-><init>(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingClassAnnotationVisitor;->className:Ljava/lang/String;

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "annotationName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingClassAnnotationVisitor;->className:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 72
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 74
    return-void
.end method
