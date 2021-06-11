.class public Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;
.super Lorg/ow2/asmdex/encodedValue/EncodedValue;
.source "EncodedValueAnnotation.java"


# instance fields
.field private annotationElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationElement;",
            ">;"
        }
    .end annotation
.end field

.field private annotationType:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "annotationType"    # Ljava/lang/Object;

    .line 79
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 53
    const/16 v0, 0x1d

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->type:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    .line 80
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationType:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "annotationType"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 53
    const/16 v0, 0x1d

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->type:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationType:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public addAnnotationElement(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)V
    .locals 1
    .param p1, "annotationElement"    # Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 88
    iget-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 9
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 163
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 164
    return v0

    .line 167
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;

    .line 169
    .local v1, "ev":Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;
    iget-object v2, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationType:Ljava/lang/String;

    iget-object v3, v1, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 170
    .local v2, "result":I
    if-nez v2, :cond_5

    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, "i":I
    iget-object v4, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 173
    .local v4, "size1":I
    iget-object v5, v1, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 174
    .local v5, "size2":I
    if-ge v4, v5, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    .line 175
    .local v6, "size":I
    :goto_0
    if-nez v2, :cond_2

    if-ge v3, v6, :cond_2

    .line 176
    iget-object v7, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    iget-object v8, v1, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    invoke-virtual {v7, v8}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->compareTo(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)I

    move-result v2

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    :cond_2
    if-nez v2, :cond_5

    .line 181
    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    if-ge v4, v5, :cond_4

    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 184
    .end local v3    # "i":I
    .end local v4    # "size1":I
    .end local v5    # "size2":I
    .end local v6    # "size":I
    :cond_5
    return v2
.end method

.method public encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B
    .locals 4
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 93
    new-instance v0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-direct {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;-><init>()V

    .line 96
    .local v0, "bv":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 98
    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 99
    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 102
    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 103
    .local v2, "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    invoke-virtual {v2, p1}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteArray([B)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 104
    .end local v2    # "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getData()[B

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 136
    return v0

    .line 139
    :cond_0
    const/4 v1, 0x0

    .line 141
    .local v1, "result":Z
    instance-of v2, p1, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;

    if-eqz v2, :cond_2

    .line 142
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;

    .line 143
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;
    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->type:I

    iget v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->type:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationType:Ljava/lang/String;

    iget-object v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 144
    if-eqz v1, :cond_2

    .line 145
    iget-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    iget-object v3, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 149
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;
    :cond_2
    return v1
.end method

.method public getAnnotationElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationElement;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAnnotationType()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 154
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->type:I

    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    .local v0, "result":I
    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 156
    .local v2, "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 157
    .end local v2    # "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    goto :goto_0

    .line 158
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const/4 v1, 0x1

    .line 192
    .local v1, "isFirst":Z
    iget-object v2, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;->annotationElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 193
    .local v3, "ae":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    if-eqz v1, :cond_0

    .line 194
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const/4 v1, 0x0

    goto :goto_1

    .line 197
    :cond_0
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .end local v3    # "ae":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    goto :goto_0

    .line 201
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
