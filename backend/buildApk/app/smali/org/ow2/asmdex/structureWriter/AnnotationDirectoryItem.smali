.class public Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;
.super Ljava/lang/Object;
.source "AnnotationDirectoryItem.java"


# static fields
.field public static final ANNOTATED_METHODS_SIZE_OFFSET:I = 0x8

.field public static final ANNOTATED_PARAMETERS_SIZE_OFFSET:I = 0xc

.field public static final CLASS_ANNOTATIONS_OFF_OFFSET:I = 0x0

.field public static final FIELDS_SIZE_OFFSET:I = 0x4


# instance fields
.field private annotatedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            ">;"
        }
    .end annotation
.end field

.field private annotatedMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            ">;"
        }
    .end annotation
.end field

.field private annotatedParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;",
            ">;"
        }
    .end annotation
.end field

.field private classAnnotationSetItems:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

.field private hashcode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedFields:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedMethods:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedParameters:Ljava/util/List;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->hashcode:I

    return-void
.end method


# virtual methods
.method public addAnnotatedField(Lorg/ow2/asmdex/structureWriter/Field;)V
    .locals 1
    .param p1, "field"    # Lorg/ow2/asmdex/structureWriter/Field;

    .line 173
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->hashcode:I

    .line 175
    return-void
.end method

.method public addAnnotatedMethods(Lorg/ow2/asmdex/structureWriter/Method;)V
    .locals 1
    .param p1, "method"    # Lorg/ow2/asmdex/structureWriter/Method;

    .line 181
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedMethods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->hashcode:I

    .line 183
    return-void
.end method

.method public addAnnotatedParameter(Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;)V
    .locals 1
    .param p1, "parameter"    # Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    .line 189
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->hashcode:I

    .line 191
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 200
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 201
    return v0

    .line 204
    :cond_0
    const/4 v1, 0x0

    .line 206
    .local v1, "result":Z
    instance-of v2, p1, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    if-eqz v2, :cond_2

    .line 207
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    .line 208
    .local v2, "adi":Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->classAnnotationSetItems:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    iget-object v4, v2, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->classAnnotationSetItems:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedFields:Ljava/util/List;

    iget-object v4, v2, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedFields:Ljava/util/List;

    .line 209
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedMethods:Ljava/util/List;

    iget-object v4, v2, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedMethods:Ljava/util/List;

    .line 210
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedParameters:Ljava/util/List;

    iget-object v4, v2, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedParameters:Ljava/util/List;

    .line 211
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 214
    .end local v2    # "adi":Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;
    :cond_2
    return v1
.end method

.method public getAnnotatedFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedFields:Ljava/util/List;

    return-object v0
.end method

.method public getAnnotatedMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedMethods:Ljava/util/List;

    return-object v0
.end method

.method public getAnnotatedParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedParameters:Ljava/util/List;

    return-object v0
.end method

.method public getClassAnnotationSetItem()Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->classAnnotationSetItems:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    return-object v0
.end method

.method public getNbAnnotatedFields()I
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNbAnnotatedMethods()I
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNbAnnotatedParameters()I
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 220
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->hashcode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 221
    return v0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->classAnnotationSetItems:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->hashCode()I

    move-result v0

    .line 225
    .local v0, "result":I
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/Field;

    .line 226
    .local v2, "field":Lorg/ow2/asmdex/structureWriter/Field;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/Field;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 227
    .end local v2    # "field":Lorg/ow2/asmdex/structureWriter/Field;
    goto :goto_0

    .line 228
    :cond_1
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedMethods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/Method;

    .line 229
    .local v2, "method":Lorg/ow2/asmdex/structureWriter/Method;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/Method;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 230
    .end local v2    # "method":Lorg/ow2/asmdex/structureWriter/Method;
    goto :goto_1

    .line 231
    :cond_2
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->annotatedParameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    .line 232
    .local v2, "parameter":Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 233
    .end local v2    # "parameter":Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
    goto :goto_2

    .line 235
    :cond_3
    iput v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->hashcode:I

    .line 236
    return v0
.end method

.method public setClassAnnotationSetItem(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)V
    .locals 0
    .param p1, "classAnnotations"    # Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 105
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->classAnnotationSetItems:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 106
    return-void
.end method
