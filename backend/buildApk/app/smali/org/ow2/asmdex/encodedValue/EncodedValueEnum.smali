.class public Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;
.super Lorg/ow2/asmdex/encodedValue/EncodedValue;
.source "EncodedValueEnum.java"


# instance fields
.field private type:I

.field private value:Lorg/ow2/asmdex/structureWriter/Field;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 66
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/16 v0, 0x1b

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->type:I

    .line 67
    move-object v0, p1

    check-cast v0, Lorg/ow2/asmdex/structureWriter/Field;

    iput-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->value:Lorg/ow2/asmdex/structureWriter/Field;

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/ow2/asmdex/structureWriter/Field;)V
    .locals 1
    .param p1, "value"    # Lorg/ow2/asmdex/structureWriter/Field;

    .line 58
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/16 v0, 0x1b

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->type:I

    .line 59
    iput-object p1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->value:Lorg/ow2/asmdex/structureWriter/Field;

    .line 60
    return-void
.end method


# virtual methods
.method compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 3
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 109
    if-ne p0, p1, :cond_0

    .line 110
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;

    .line 114
    .local v0, "ee":Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;
    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->value:Lorg/ow2/asmdex/structureWriter/Field;

    iget-object v2, v0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->value:Lorg/ow2/asmdex/structureWriter/Field;

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/structureWriter/Field;->compareTo(Lorg/ow2/asmdex/structureWriter/Field;)I

    move-result v1

    return v1
.end method

.method public encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B
    .locals 2
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 72
    iget-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->value:Lorg/ow2/asmdex/structureWriter/Field;

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getFieldIndex(Lorg/ow2/asmdex/structureWriter/Field;)I

    move-result v0

    .line 73
    .local v0, "index":I
    iget v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->type:I

    invoke-static {v0, v1}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->encodeUnsignedValue(II)[B

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 89
    return v0

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 94
    .local v1, "result":Z
    instance-of v2, p1, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;

    if-eqz v2, :cond_2

    .line 95
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;

    .line 96
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;
    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->type:I

    iget v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->type:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->value:Lorg/ow2/asmdex/structureWriter/Field;

    iget-object v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->value:Lorg/ow2/asmdex/structureWriter/Field;

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureWriter/Field;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 99
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;
    :cond_2
    return v1
.end method

.method public getType()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 104
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->type:I

    iget-object v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->value:Lorg/ow2/asmdex/structureWriter/Field;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Field;->hashCode()I

    move-result v1

    mul-int/lit16 v1, v1, 0x25c0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;->value:Lorg/ow2/asmdex/structureWriter/Field;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
