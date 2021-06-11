.class public Lorg/ow2/asmdex/encodedValue/EncodedValueLong;
.super Lorg/ow2/asmdex/encodedValue/EncodedValue;
.source "EncodedValueLong.java"


# instance fields
.field private type:I

.field private value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .line 58
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/4 v0, 0x6

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->type:I

    .line 59
    iput-wide p1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->value:J

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 66
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/4 v0, 0x6

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->type:I

    .line 67
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->value:J

    .line 68
    return-void
.end method


# virtual methods
.method compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 7
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 108
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 109
    return v0

    .line 112
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;

    .line 113
    .local v1, "el":Lorg/ow2/asmdex/encodedValue/EncodedValueLong;
    iget-wide v2, v1, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->value:J

    .line 114
    .local v2, "value2":J
    iget-wide v4, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->value:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    cmp-long v0, v4, v2

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
    iget-wide v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->type:I

    invoke-static {v0, v1, v2}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->encodeSignedValue(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
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
    instance-of v2, p1, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;

    if-eqz v2, :cond_2

    .line 94
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;

    .line 95
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueLong;
    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->type:I

    iget v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->type:I

    if-ne v3, v4, :cond_1

    iget-wide v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->value:J

    iget-wide v5, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->value:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 98
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueLong;
    :cond_2
    return v1
.end method

.method public getType()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 103
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->type:I

    iget-wide v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->value:J

    long-to-int v2, v1

    mul-int/lit16 v2, v2, 0x22ef

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    iget-wide v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
