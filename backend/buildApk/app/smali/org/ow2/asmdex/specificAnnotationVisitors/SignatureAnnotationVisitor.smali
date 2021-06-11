.class public Lorg/ow2/asmdex/specificAnnotationVisitors/SignatureAnnotationVisitor;
.super Lorg/ow2/asmdex/AnnotationVisitor;
.source "SignatureAnnotationVisitor.java"


# instance fields
.field private signature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 53
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/AnnotationVisitor;-><init>(I)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/SignatureAnnotationVisitor;->signature:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method public getSignature()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/SignatureAnnotationVisitor;->signature:Ljava/util/List;

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/SignatureAnnotationVisitor;->signature:Ljava/util/List;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
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
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public visitClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "annotationName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 85
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 79
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 82
    return-void
.end method
