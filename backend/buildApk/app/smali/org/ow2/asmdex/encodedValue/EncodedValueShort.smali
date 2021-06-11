.class public Lorg/ow2/asmdex/encodedValue/EncodedValueShort;
.super Lorg/ow2/asmdex/encodedValue/EncodedValue;
.source "EncodedValueShort.java"


# instance fields
.field private type:I

.field private value:S


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 66
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->type:I

    .line 67
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->value:S

    .line 68
    return-void
.end method

.method public constructor <init>(S)V
    .locals 1
    .param p1, "value"    # S

    .line 58
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->type:I

    .line 59
    iput-short p1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->value:S

    .line 60
    return-void
.end method


# virtual methods
.method compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 4
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 108
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 109
    return v0

    .line 112
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;

    .line 113
    .local v1, "es":Lorg/ow2/asmdex/encodedValue/EncodedValueShort;
    iget-short v2, v1, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->value:S

    .line 114
    .local v2, "value2":S
    iget-short v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->value:S

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
    .locals 2
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 72
    iget-short v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->value:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iget v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->type:I

    invoke-static {v0, v1}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->encodeSignedValue(II)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 88
    return v0

    .line 91
    :cond_0
    const/4 v1, 0x0

    .line 93
    .local v1, "result":Z
    instance-of v2, p1, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;

    if-eqz v2, :cond_2

    .line 94
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;

    .line 95
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueShort;
    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->type:I

    iget v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->type:I

    if-ne v3, v4, :cond_1

    iget-short v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->value:S

    iget-short v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->value:S

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 98
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueShort;
    :cond_2
    return v1
.end method

.method public getType()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 103
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->type:I

    iget-short v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->value:S

    mul-int/lit16 v1, v1, 0x3db4

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 119
    iget-short v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;->value:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
