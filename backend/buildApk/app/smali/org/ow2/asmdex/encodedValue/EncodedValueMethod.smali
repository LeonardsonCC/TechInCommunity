.class public Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;
.super Lorg/ow2/asmdex/encodedValue/EncodedValue;
.source "EncodedValueMethod.java"


# instance fields
.field private type:I

.field private value:Lorg/ow2/asmdex/structureWriter/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 67
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 48
    const/16 v0, 0x1a

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->type:I

    .line 68
    move-object v0, p1

    check-cast v0, Lorg/ow2/asmdex/structureWriter/Method;

    iput-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->value:Lorg/ow2/asmdex/structureWriter/Method;

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/ow2/asmdex/structureWriter/Method;)V
    .locals 1
    .param p1, "value"    # Lorg/ow2/asmdex/structureWriter/Method;

    .line 59
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 48
    const/16 v0, 0x1a

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->type:I

    .line 60
    iput-object p1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->value:Lorg/ow2/asmdex/structureWriter/Method;

    .line 61
    return-void
.end method


# virtual methods
.method compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 3
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 110
    if-ne p0, p1, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;

    .line 115
    .local v0, "em":Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;
    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->value:Lorg/ow2/asmdex/structureWriter/Method;

    iget-object v2, v0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->value:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/structureWriter/Method;->compareTo(Lorg/ow2/asmdex/structureWriter/Method;)I

    move-result v1

    return v1
.end method

.method public encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B
    .locals 2
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 73
    iget-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->value:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getMethodIndex(Lorg/ow2/asmdex/structureWriter/Method;)I

    move-result v0

    .line 74
    .local v0, "index":I
    iget v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->type:I

    invoke-static {v0, v1}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->encodeUnsignedValue(II)[B

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 90
    return v0

    .line 93
    :cond_0
    const/4 v1, 0x0

    .line 95
    .local v1, "result":Z
    instance-of v2, p1, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;

    if-eqz v2, :cond_2

    .line 96
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;

    .line 97
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;
    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->type:I

    iget v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->type:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->value:Lorg/ow2/asmdex/structureWriter/Method;

    iget-object v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->value:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureWriter/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 100
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;
    :cond_2
    return v1
.end method

.method public getType()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 105
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->type:I

    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;->value:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->hashCode()I

    move-result v1

    const v2, 0x620a9

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method
