.class public Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;
.super Lorg/ow2/asmdex/encodedValue/EncodedValue;
.source "EncodedValueBoolean.java"


# instance fields
.field private type:I

.field private value:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 66
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/16 v0, 0x1f

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->type:I

    .line 67
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->value:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 58
    invoke-direct {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;-><init>()V

    .line 47
    const/16 v0, 0x1f

    iput v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->type:I

    .line 59
    iput-boolean p1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->value:Z

    .line 60
    return-void
.end method


# virtual methods
.method compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 3
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 108
    move-object v0, p1

    check-cast v0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;

    .line 110
    .local v0, "eb":Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;
    iget-boolean v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->value:Z

    iget-boolean v2, v0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->value:Z

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B
    .locals 3
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [B

    iget-boolean v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    aput-byte v1, v0, v2

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
    instance-of v2, p1, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;

    if-eqz v2, :cond_2

    .line 94
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;

    .line 95
    .local v2, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;
    iget v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->type:I

    iget v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->type:I

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->value:Z

    iget-boolean v4, v2, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->value:Z

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 98
    .end local v2    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;
    :cond_2
    return v1
.end method

.method public getType()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 103
    iget v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->type:I

    iget-boolean v1, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->value:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 115
    iget-boolean v0, p0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
