.class public Lorg/ow2/asmdex/tree/AnnotationNode;
.super Lorg/ow2/asmdex/AnnotationVisitor;
.source "AnnotationNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ow2/asmdex/tree/AnnotationNode$ClassString;
    }
.end annotation


# instance fields
.field public desc:Ljava/lang/String;

.field public values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/AnnotationVisitor;-><init>(I)V

    .line 89
    iput-object p2, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "api"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/AnnotationVisitor;-><init>(I)V

    .line 109
    iput-object p2, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    .line 98
    const/high16 v0, 0x40000

    invoke-direct {p0, v0, p1}, Lorg/ow2/asmdex/tree/AnnotationNode;-><init>(ILjava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/high16 v0, 0x40000

    invoke-direct {p0, v0, p1}, Lorg/ow2/asmdex/tree/AnnotationNode;-><init>(ILjava/util/List;)V

    .line 119
    return-void
.end method

.method static accept(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p0, "av"    # Lorg/ow2/asmdex/AnnotationVisitor;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 214
    if-eqz p0, :cond_5

    .line 215
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 216
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    .line 217
    .local v0, "typeconst":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v0    # "typeconst":[Ljava/lang/String;
    goto :goto_1

    :cond_0
    instance-of v0, p2, Lorg/ow2/asmdex/tree/AnnotationNode;

    if-eqz v0, :cond_1

    .line 219
    move-object v0, p2

    check-cast v0, Lorg/ow2/asmdex/tree/AnnotationNode;

    .line 220
    .local v0, "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    iget-object v1, v0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lorg/ow2/asmdex/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/AnnotationNode;->accept(Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 221
    .end local v0    # "an":Lorg/ow2/asmdex/tree/AnnotationNode;
    goto :goto_1

    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 222
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    .line 223
    .local v0, "v":Lorg/ow2/asmdex/AnnotationVisitor;
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    .line 224
    .local v1, "array":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 225
    const/4 v3, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/ow2/asmdex/tree/AnnotationNode;->accept(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "j":I
    :cond_2
    invoke-virtual {v0}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 228
    .end local v0    # "v":Lorg/ow2/asmdex/AnnotationVisitor;
    .end local v1    # "array":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_1

    :cond_3
    instance-of v0, p2, Lorg/ow2/asmdex/tree/AnnotationNode$ClassString;

    if-eqz v0, :cond_4

    .line 229
    move-object v0, p2

    check-cast v0, Lorg/ow2/asmdex/tree/AnnotationNode$ClassString;

    iget-object v0, v0, Lorg/ow2/asmdex/tree/AnnotationNode$ClassString;->value:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/ow2/asmdex/AnnotationVisitor;->visitClass(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/ow2/asmdex/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/AnnotationVisitor;)V
    .locals 4
    .param p1, "av"    # Lorg/ow2/asmdex/AnnotationVisitor;

    .line 194
    if-eqz p1, :cond_1

    .line 195
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 197
    iget-object v1, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 199
    .local v2, "value":Ljava/lang/Object;
    invoke-static {p1, v1, v2}, Lorg/ow2/asmdex/tree/AnnotationNode;->accept(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 204
    :cond_1
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    .line 130
    :cond_1
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_2
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_2
    new-instance v0, Lorg/ow2/asmdex/tree/AnnotationNode;

    invoke-direct {v0, p2}, Lorg/ow2/asmdex/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "annotation":Lorg/ow2/asmdex/tree/AnnotationNode;
    iget-object v1, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v1, Lorg/ow2/asmdex/tree/AnnotationNode;

    invoke-direct {v1, v0}, Lorg/ow2/asmdex/tree/AnnotationNode;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public visitClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "annotationName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    .line 178
    :cond_1
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    new-instance v1, Lorg/ow2/asmdex/tree/AnnotationNode$ClassString;

    invoke-direct {v1, p2}, Lorg/ow2/asmdex/tree/AnnotationNode$ClassString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    .line 141
    :cond_1
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_2
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AnnotationNode;->values:Ljava/util/List;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p3, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method
