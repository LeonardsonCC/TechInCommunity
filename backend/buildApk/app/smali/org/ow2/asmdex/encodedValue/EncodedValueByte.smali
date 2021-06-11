.class public Lorg/ow2/asmdex/encodedValue/EncodedValueByte;
.super Lorg/ow2/asmdex/encodedValue/EncodedValue;
.source "EncodedValueByte.java"


# instance fields
.field private type:I

.field private value:B


# direct methods
.method public constructor <init>(B)V
    .locals 1
    .param p1, "value"    # B

    .line 58
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->type:I

    .line 59
    iput-byte p1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->value:B

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 66
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->type:I

    .line 67
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->value:B

    .line 68
    return-void
.end method


# virtual methods
.method compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 4
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 111
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 112
    return v0

    .line 115
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;

    .line 116
    .local v1, "eb":Lorg/ow2/asmdex/encodedValue/EncodedValueByte;
    iget-byte v2, v1, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->value:B

    .line 117
    .local v2, "value2":B
    iget-byte v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->value:B

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
    .locals 3
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 73
    .local v0, "result":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 74
    iget-byte v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->value:B

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 75
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 91
    return v0

    .line 94
    :cond_0
    const/4 v1, 0x0

    .line 96
    .local v1, "result":Z
    instance-of v2, p1, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;

    if-eqz v2, :cond_2

    .line 97
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;

    .line 98
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueByte;
    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->type:I

    iget v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->type:I

    if-ne v3, v4, :cond_1

    iget-byte v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->value:B

    iget-byte v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->value:B

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 101
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueByte;
    :cond_2
    return v1
.end method

.method public getType()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 106
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->type:I

    iget-byte v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->value:B

    mul-int/lit16 v1, v1, 0x119

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 122
    iget-byte v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;->value:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
