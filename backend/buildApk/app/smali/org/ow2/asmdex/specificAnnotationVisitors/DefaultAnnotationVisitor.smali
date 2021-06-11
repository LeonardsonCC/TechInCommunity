.class public Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;
.super Lorg/ow2/asmdex/AnnotationVisitor;
.source "DefaultAnnotationVisitor.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/AnnotationVisitor;-><init>(I)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->infos:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->desc:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getDefaultAnnotationInformationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->infos:Ljava/util/List;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->infos:Ljava/util/List;

    new-instance v1, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;

    invoke-direct {v1, p1, p2}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 82
    new-instance v0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;

    iget v1, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->api:I

    invoke-direct {v0, v1, p2}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;-><init>(ILjava/lang/String;)V

    .line 83
    .local v0, "av":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->infos:Ljava/util/List;

    new-instance v2, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;

    invoke-direct {v2, p1, v0}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 89
    new-instance v0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;

    iget v1, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->api:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;-><init>(ILjava/lang/String;)V

    .line 90
    .local v0, "av":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->infos:Ljava/util/List;

    new-instance v2, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;

    invoke-direct {v2, p1, v0}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v0
.end method

.method public visitClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->infos:Ljava/util/List;

    new-instance v1, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;

    new-instance v2, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$ClassInfo;

    invoke-direct {v2, p2}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$ClassInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v2}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 95
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->infos:Ljava/util/List;

    new-instance v1, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;

    new-instance v2, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$EnumInfo;

    invoke-direct {v2, p2, p3}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$EnumInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p1, v2}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method
