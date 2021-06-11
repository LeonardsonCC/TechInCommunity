.class public Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;
.super Lorg/ow2/asmdex/encodedValue/EncodedValue;
.source "EncodedValueFloat.java"


# instance fields
.field private type:I

.field private value:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "value"    # F

    .line 58
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/16 v0, 0x10

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->type:I

    .line 59
    iput p1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->value:F

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 66
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/16 v0, 0x10

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->type:I

    .line 67
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->value:F

    .line 68
    return-void
.end method


# virtual methods
.method compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 5
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 108
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 109
    return v0

    .line 112
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;

    .line 113
    .local v1, "ef":Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;
    iget v2, v1, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->value:F

    .line 114
    .local v2, "value2":F
    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->value:F

    cmpl-float v4, v3, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float v0, v3, v2

    if-lez v0, :cond_2

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
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->type:I

    invoke-static {v0, v1, v2}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->encodeZeroExtendedToRightValue(JI)[B

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
    instance-of v2, p1, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;

    if-eqz v2, :cond_2

    .line 94
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;

    .line 95
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;
    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->type:I

    iget v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->type:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->value:F

    iget v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->value:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 98
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;
    :cond_2
    return v1
.end method

.method public getType()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 103
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->type:I

    iget v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->value:F

    float-to-int v1, v1

    mul-int/lit16 v1, v1, 0x62b

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 119
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;->value:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
