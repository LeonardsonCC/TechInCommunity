.class public Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
.super Lorg/ow2/asmdex/encodedValue/EncodedValue;
.source "EncodedValueArray.java"


# instance fields
.field private encodedValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/encodedValue/EncodedValue;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 50
    const/16 v0, 0x1c

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->type:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V
    .locals 1
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 92
    iget-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 13
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 142
    move-object v0, p1

    check-cast v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    .line 144
    .local v0, "ea":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 145
    .local v1, "size1":I
    iget-object v2, v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 146
    .local v2, "size2":I
    if-ge v1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 147
    .local v3, "size":I
    :goto_0
    const/4 v4, 0x0

    .line 148
    .local v4, "result":I
    const/4 v5, 0x0

    .line 149
    .local v5, "i":I
    :goto_1
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v4, :cond_4

    if-ge v5, v3, :cond_4

    .line 150
    iget-object v9, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 151
    .local v9, "v1":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    iget-object v10, v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 152
    .local v10, "v2":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    invoke-virtual {v9}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->getType()I

    move-result v11

    .line 153
    .local v11, "v1Type":I
    invoke-virtual {v10}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->getType()I

    move-result v12

    .line 154
    .local v12, "v2Type":I
    if-ne v11, v12, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    if-ge v11, v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    :goto_2
    move v4, v6

    .line 157
    if-nez v4, :cond_3

    .line 158
    iget-object v6, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ow2/asmdex/encodedValue/EncodedValue;

    iget-object v7, v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/ow2/asmdex/encodedValue/EncodedValue;

    invoke-virtual {v6, v7}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->compareTo(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I

    move-result v4

    .line 159
    add-int/lit8 v5, v5, 0x1

    .line 161
    .end local v9    # "v1":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .end local v10    # "v2":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .end local v11    # "v1Type":I
    .end local v12    # "v2Type":I
    :cond_3
    goto :goto_1

    .line 163
    :cond_4
    if-nez v4, :cond_7

    .line 164
    if-ne v1, v2, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    if-ge v1, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x1

    :goto_3
    move v4, v6

    .line 166
    :cond_7
    return v4
.end method

.method public encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B
    .locals 4
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 97
    new-instance v0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-direct {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;-><init>()V

    .line 100
    .local v0, "out":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 103
    invoke-virtual {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->getNbEncodedValues()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 106
    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 107
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    invoke-virtual {v2, p1}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteArray([B)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 108
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getData()[B

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 119
    if-ne p0, p1, :cond_0

    .line 120
    const/4 v0, 0x1

    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 124
    .local v0, "result":Z
    instance-of v1, p1, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    if-eqz v1, :cond_1

    .line 125
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    .line 126
    .local v1, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    iget-object v2, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    iget-object v3, v1, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    .end local v1    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    :cond_1
    return v0
.end method

.method public getEncodedValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/encodedValue/EncodedValue;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNbEncodedValues()I
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 133
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->type:I

    .line 134
    .local v0, "result":I
    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 135
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 136
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    goto :goto_0

    .line 137
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 173
    .local v1, "isFirst":Z
    iget-object v2, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->encodedValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 174
    .local v3, "ev":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    if-eqz v1, :cond_0

    .line 175
    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/4 v1, 0x0

    goto :goto_1

    .line 178
    :cond_0
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .end local v3    # "ev":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    goto :goto_0

    .line 182
    :cond_1
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
