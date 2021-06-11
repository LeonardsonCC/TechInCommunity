.class public Lorg/ow2/asmdex/specificAnnotationVisitors/ExceptionAnnotationVisitor;
.super Lorg/ow2/asmdex/AnnotationVisitor;
.source "ExceptionAnnotationVisitor.java"


# instance fields
.field private classNames:Ljava/util/List;
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

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/ExceptionAnnotationVisitor;->classNames:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method public getClassNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/ExceptionAnnotationVisitor;->classNames:Ljava/util/List;

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public visitClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "annotationName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/ExceptionAnnotationVisitor;->classNames:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 77
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 79
    return-void
.end method
