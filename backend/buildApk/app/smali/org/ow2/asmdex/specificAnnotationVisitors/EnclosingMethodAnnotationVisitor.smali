.class public Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingMethodAnnotationVisitor;
.super Lorg/ow2/asmdex/AnnotationVisitor;
.source "EnclosingMethodAnnotationVisitor.java"


# instance fields
.field methodId:I


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
.method public getClassId()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingMethodAnnotationVisitor;->methodId:I

    return v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 64
    if-eqz p2, :cond_0

    .line 65
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingMethodAnnotationVisitor;->methodId:I

    .line 67
    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "annotationName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 82
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 78
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 80
    return-void
.end method
