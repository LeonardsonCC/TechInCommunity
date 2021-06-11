.class public Lorg/ow2/asmdex/encodedValue/EncodedValueString;
.super Lorg/ow2/asmdex/encodedValue/EncodedValue;
.source "EncodedValueString.java"


# instance fields
.field private type:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/16 v0, 0x17

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->type:I

    .line 59
    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->value:Ljava/lang/String;

    .line 63
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EncodedValue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 3
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 104
    if-ne p0, p1, :cond_0

    .line 105
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;

    .line 109
    .local v0, "ev":Lorg/ow2/asmdex/encodedValue/EncodedValueString;
    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->value:Ljava/lang/String;

    iget-object v2, v0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B
    .locals 2
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 67
    iget-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, "index":I
    iget v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->type:I

    invoke-static {v0, v1}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->encodeUnsignedValue(II)[B

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 83
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 84
    return v0

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 89
    .local v1, "result":Z
    instance-of v2, p1, Lorg/ow2/asmdex/encodedValue/EncodedValueString;

    if-eqz v2, :cond_2

    .line 90
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValueString;

    .line 91
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueString;
    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->type:I

    iget v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->type:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->value:Ljava/lang/String;

    iget-object v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 94
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueString;
    :cond_2
    return v1
.end method

.method public getType()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 99
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->type:I

    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
