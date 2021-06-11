.class public Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;
.super Lorg/ow2/asmdex/AnnotationVisitor;
.source "InnerClassAnnotationVisitor.java"


# instance fields
.field private access:I

.field private simpleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "api"    # I

    .line 52
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/AnnotationVisitor;-><init>(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public getAccess()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;->access:I

    return v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;->simpleName:Ljava/lang/String;

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 72
    if-nez p1, :cond_0

    .line 73
    return-void

    .line 74
    :cond_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;->simpleName:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "accessFlags"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 77
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;->access:I

    .line 79
    :cond_2
    :goto_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "annotationName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 94
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 90
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 92
    return-void
.end method
