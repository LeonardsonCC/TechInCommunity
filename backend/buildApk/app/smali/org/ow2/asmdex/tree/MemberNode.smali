.class public abstract Lorg/ow2/asmdex/tree/MemberNode;
.super Ljava/lang/Object;
.source "MemberNode.java"


# instance fields
.field public invisibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public visibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 71
    new-instance v0, Lorg/ow2/asmdex/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/ow2/asmdex/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 73
    iget-object v2, p0, Lorg/ow2/asmdex/tree/MemberNode;->visibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/ow2/asmdex/tree/MemberNode;->visibleAnnotations:Ljava/util/List;

    .line 76
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MemberNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    iget-object v2, p0, Lorg/ow2/asmdex/tree/MemberNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v2, :cond_2

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/ow2/asmdex/tree/MemberNode;->invisibleAnnotations:Ljava/util/List;

    .line 81
    :cond_2
    iget-object v1, p0, Lorg/ow2/asmdex/tree/MemberNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_0
    return-object v0
.end method

.method public visitAttribute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "attr"    # Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 100
    return-void
.end method
