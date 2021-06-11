.class public Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
.super Ljava/lang/Object;
.source "AnnotationSetRefList.java"


# static fields
.field private static emptyAnnotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;


# instance fields
.field private annotationSetItems:[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

.field private final method:Lorg/ow2/asmdex/structureWriter/Method;

.field private nbAnnotationSetItemsUsed:I

.field private final nbParameters:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->emptyAnnotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    return-void
.end method

.method public constructor <init>(ILorg/ow2/asmdex/structureWriter/Method;)V
    .locals 1
    .param p1, "nbParameters"    # I
    .param p2, "method"    # Lorg/ow2/asmdex/structureWriter/Method;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->nbAnnotationSetItemsUsed:I

    .line 79
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->nbParameters:I

    .line 80
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->method:Lorg/ow2/asmdex/structureWriter/Method;

    .line 81
    new-array v0, p1, [Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->annotationSetItems:[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 82
    return-void
.end method

.method private static getEmptyAnnotationSetItem()Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    .locals 1

    .line 143
    sget-object v0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->emptyAnnotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;-><init>()V

    sput-object v0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->emptyAnnotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 146
    :cond_0
    sget-object v0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->emptyAnnotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    return-object v0
.end method


# virtual methods
.method public addAnnotationItem(ILorg/ow2/asmdex/structureWriter/AnnotationItem;)V
    .locals 2
    .param p1, "parameterIndex"    # I
    .param p2, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 100
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->nbParameters:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Annotation Parameter index >= Parameter count of this method."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "parameterIndex":I
    .end local p2    # "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->annotationSetItems:[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    aget-object v1, v0, p1

    if-nez v1, :cond_2

    .line 113
    new-instance v0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;-><init>()V

    .line 114
    .local v0, "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    iget v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->nbAnnotationSetItemsUsed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->nbAnnotationSetItemsUsed:I

    goto :goto_1

    .line 116
    .end local v0    # "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    :cond_2
    aget-object v0, v0, p1

    .line 119
    .restart local v0    # "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    :goto_1
    invoke-virtual {v0, p2}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 120
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->annotationSetItems:[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    aput-object v0, v1, p1

    .line 121
    return-void
.end method

.method public close()V
    .locals 4

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->annotationSetItems:[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    array-length v1, v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 129
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->annotationSetItems:[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    .line 130
    invoke-static {}, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->getEmptyAnnotationSetItem()Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    move-result-object v3

    aput-object v3, v2, v0

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 209
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 210
    return v0

    .line 213
    :cond_0
    instance-of v1, p1, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 214
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    .line 216
    .local v1, "asr":Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->method:Lorg/ow2/asmdex/structureWriter/Method;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureWriter/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->annotationSetItems:[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->annotationSetItems:[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 219
    .end local v1    # "asr":Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
    :cond_2
    return v2
.end method

.method public getAnnotationSetItem(I)Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    .locals 1
    .param p1, "parameterIndex"    # I

    .line 168
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->annotationSetItems:[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAnnotationSetItems()[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->annotationSetItems:[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    return-object v0
.end method

.method public getMethod()Lorg/ow2/asmdex/structureWriter/Method;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->method:Lorg/ow2/asmdex/structureWriter/Method;

    return-object v0
.end method

.method public getNbAnnotationSetItem()I
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->annotationSetItems:[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    array-length v0, v0

    return v0
.end method

.method public getNbAnnotationSetItemsUsed()I
    .locals 1

    .line 185
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->nbAnnotationSetItemsUsed:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->annotationSetItems:[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
