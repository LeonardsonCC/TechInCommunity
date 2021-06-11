.class public Lorg/ow2/asmdex/encodedValue/EncodedValueNull;
.super Lorg/ow2/asmdex/encodedValue/EncodedValue;
.source "EncodedValueNull.java"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/16 v0, 0x1e

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;->type:I

    return-void
.end method


# virtual methods
.method compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 1
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B
    .locals 3
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 67
    return v0

    .line 70
    :cond_0
    const/4 v1, 0x0

    .line 72
    .local v1, "result":Z
    instance-of v2, p1, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;

    if-eqz v2, :cond_2

    .line 73
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;

    .line 74
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueNull;
    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;->type:I

    iget v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;->type:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 77
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueNull;
    :cond_2
    return v1
.end method

.method public getType()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "null"

    return-object v0
.end method
