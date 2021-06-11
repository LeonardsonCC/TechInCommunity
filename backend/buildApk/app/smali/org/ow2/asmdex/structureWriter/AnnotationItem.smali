.class public Lorg/ow2/asmdex/structureWriter/AnnotationItem;
.super Ljava/lang/Object;
.source "AnnotationItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ow2/asmdex/structureWriter/AnnotationItem;",
        ">;"
    }
.end annotation


# instance fields
.field private annotationElements:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationElement;",
            ">;"
        }
    .end annotation
.end field

.field private annotationElementsArray:[Lorg/ow2/asmdex/structureWriter/AnnotationElement;

.field private final annotationType:Ljava/lang/String;

.field private hashcode:I

.field private isListDirty:Z

.field private final visibility:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "visibility"    # I
    .param p2, "annotationType"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElements:Ljava/util/PriorityQueue;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->isListDirty:Z

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->hashcode:I

    .line 99
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->visibility:I

    .line 100
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationType:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "annotationType"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1, p2}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;-><init>(ILjava/lang/String;)V

    .line 109
    return-void
.end method

.method private getAnnotationElementsArray()[Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    .locals 5

    .line 172
    iget-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->isListDirty:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElementsArray:[Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElements:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "array":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 177
    array-length v1, v0

    .line 178
    .local v1, "size":I
    new-array v2, v1, [Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    iput-object v2, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElementsArray:[Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 179
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 180
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElementsArray:[Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    aget-object v4, v0, v2

    check-cast v4, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    aput-object v4, v3, v2

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElementsArray:[Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    return-object v2
.end method


# virtual methods
.method public addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V
    .locals 1
    .param p1, "annotationElement"    # Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 120
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElements:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->hashcode:I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->isListDirty:Z

    .line 123
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 59
    check-cast p1, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->compareTo(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)I
    .locals 10
    .param p1, "ai"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 236
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 237
    return v0

    .line 241
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationType:Ljava/lang/String;

    iget-object v2, p1, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, "result":I
    if-nez v1, :cond_5

    .line 244
    invoke-direct {p0}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->getAnnotationElementsArray()[Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    move-result-object v2

    .line 245
    .local v2, "ae1":[Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    invoke-direct {p1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->getAnnotationElementsArray()[Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    move-result-object v3

    .line 246
    .local v3, "ae2":[Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    array-length v4, v2

    .line 247
    .local v4, "size1":I
    array-length v5, v3

    .line 249
    .local v5, "size2":I
    const/4 v6, 0x0

    .line 250
    .local v6, "i":I
    if-ge v4, v5, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v5

    .line 251
    .local v7, "size":I
    :goto_0
    if-nez v1, :cond_2

    if-ge v6, v7, :cond_2

    .line 252
    aget-object v8, v2, v6

    aget-object v9, v3, v6

    invoke-virtual {v8, v9}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->compareTo(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)I

    move-result v1

    .line 253
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 256
    :cond_2
    if-nez v1, :cond_5

    .line 257
    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    if-ge v4, v5, :cond_4

    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 261
    .end local v2    # "ae1":[Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    .end local v3    # "ae2":[Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    .end local v4    # "size1":I
    .end local v5    # "size2":I
    .end local v6    # "i":I
    .end local v7    # "size":I
    :cond_5
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 194
    return v0

    .line 197
    :cond_0
    const/4 v1, 0x0

    .line 199
    .local v1, "result":Z
    instance-of v2, p1, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    if-eqz v2, :cond_3

    .line 200
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 201
    .local v2, "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    iget v3, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->visibility:I

    iget v4, v2, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->visibility:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationType:Ljava/lang/String;

    iget-object v4, v2, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 202
    if-eqz v1, :cond_3

    .line 203
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElements:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    .line 204
    .local v0, "size":I
    iget-object v3, v2, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElements:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 205
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElements:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 206
    .local v4, "element":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    iget-object v5, v2, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElements:Ljava/util/PriorityQueue;

    invoke-virtual {v5, v4}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 207
    if-nez v1, :cond_2

    .line 208
    goto :goto_2

    .line 210
    .end local v4    # "element":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    :cond_2
    goto :goto_1

    .line 216
    .end local v0    # "size":I
    .end local v2    # "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    :cond_3
    :goto_2
    return v1
.end method

.method public getAnnotationElements()Ljava/util/PriorityQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationElement;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElements:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method public getAnnotationType()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationType:Ljava/lang/String;

    return-object v0
.end method

.method public getNbAnnotationElements()I
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElements:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->visibility:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 221
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->hashcode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 222
    return v0

    .line 225
    :cond_0
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->visibility:I

    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 226
    .local v0, "res":I
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->annotationElements:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 227
    .local v2, "element":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 228
    .end local v2    # "element":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    goto :goto_0

    .line 230
    :cond_1
    iput v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->hashcode:I

    .line 231
    return v0
.end method
