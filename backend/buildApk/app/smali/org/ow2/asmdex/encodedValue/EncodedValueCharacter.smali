.class public Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;
.super Lorg/ow2/asmdex/encodedValue/EncodedValue;
.source "EncodedValueCharacter.java"


# instance fields
.field private type:I

.field private value:C


# direct methods
.method public constructor <init>(C)V
    .locals 1
    .param p1, "value"    # C

    .line 58
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->type:I

    .line 59
    iput-char p1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->value:C

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 66
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->type:I

    .line 67
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    iput-char v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->value:C

    .line 68
    return-void
.end method


# virtual methods
.method compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 4
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 127
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 128
    return v0

    .line 131
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;

    .line 132
    .local v1, "ec":Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;
    iget-char v2, v1, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->value:C

    .line 133
    .local v2, "value2":C
    iget-char v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->value:C

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    if-le v3, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B
    .locals 8
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 73
    iget-char v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->value:C

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 74
    .local v0, "val":I
    const/4 v1, 0x0

    .line 75
    .local v1, "nb1":I
    const/4 v2, 0x0

    .line 76
    .local v2, "nb2":I
    const/4 v3, 0x1

    .line 77
    .local v3, "size":I
    if-eqz v0, :cond_0

    .line 78
    and-int/lit16 v1, v0, 0xff

    .line 79
    ushr-int/lit8 v0, v0, 0x8

    .line 80
    if-eqz v0, :cond_0

    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    and-int/lit16 v2, v0, 0xff

    .line 85
    :cond_0
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [B

    .line 86
    .local v4, "result":[B
    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    .line 87
    const/4 v6, 0x2

    int-to-byte v7, v2

    aput-byte v7, v4, v6

    .line 89
    :cond_1
    int-to-byte v6, v1

    aput-byte v6, v4, v5

    .line 90
    const/4 v5, 0x0

    iget v6, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->type:I

    invoke-static {v3, v6}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->encodeHeader(II)B

    move-result v6

    aput-byte v6, v4, v5

    .line 91
    return-object v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 106
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 107
    return v0

    .line 110
    :cond_0
    const/4 v1, 0x0

    .line 112
    .local v1, "result":Z
    instance-of v2, p1, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;

    if-eqz v2, :cond_2

    .line 113
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;

    .line 114
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;
    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->type:I

    iget v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->type:I

    if-ne v3, v4, :cond_1

    iget-char v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->value:C

    iget-char v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->value:C

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 117
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;
    :cond_2
    return v1
.end method

.method public getType()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 122
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->type:I

    iget-char v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->value:C

    mul-int/lit16 v1, v1, 0x2d9

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 138
    iget-char v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;->value:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
