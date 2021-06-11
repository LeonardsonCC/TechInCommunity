.class public Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;
.super Ljava/lang/Object;
.source "EncodedValueUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeHeader(II)B
    .locals 1
    .param p0, "size"    # I
    .param p1, "type"    # I

    .line 51
    if-eqz p1, :cond_1

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    add-int/lit8 v0, p0, -0x1

    shl-int/lit8 v0, v0, 0x5

    or-int/2addr v0, p1

    int-to-byte v0, v0

    return v0

    .line 52
    :cond_1
    :goto_0
    int-to-byte v0, p1

    return v0
.end method

.method public static encodeSignedValue(II)[B
    .locals 4
    .param p0, "val"    # I
    .param p1, "type"    # I

    .line 114
    invoke-static {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->getNbBytesInSignedValue(I)I

    move-result v0

    .line 115
    .local v0, "nbBytes":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 116
    .local v1, "bytes":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_0

    .line 117
    int-to-byte v3, p0

    aput-byte v3, v1, v2

    .line 118
    shr-int/lit8 p0, p0, 0x8

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, p1}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->encodeHeader(II)B

    move-result v3

    aput-byte v3, v1, v2

    .line 121
    return-object v1
.end method

.method public static encodeSignedValue(JI)[B
    .locals 4
    .param p0, "val"    # J
    .param p2, "type"    # I

    .line 131
    invoke-static {p0, p1}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->getNbBytesInSignedValue(J)I

    move-result v0

    .line 132
    .local v0, "nbBytes":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 133
    .local v1, "bytes":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_0

    .line 134
    long-to-int v3, p0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 135
    const/16 v3, 0x8

    shr-long/2addr p0, v3

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, p2}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->encodeHeader(II)B

    move-result v3

    aput-byte v3, v1, v2

    .line 138
    return-object v1
.end method

.method public static encodeUnsignedValue(II)[B
    .locals 9
    .param p0, "val"    # I
    .param p1, "type"    # I

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "nb1":I
    const/4 v1, 0x0

    .line 68
    .local v1, "nb2":I
    const/4 v2, 0x0

    .line 69
    .local v2, "nb3":I
    const/4 v3, 0x0

    .line 71
    .local v3, "nb4":I
    const/4 v4, 0x1

    .line 72
    .local v4, "size":I
    if-eqz p0, :cond_0

    .line 73
    and-int/lit16 v0, p0, 0xff

    .line 74
    ushr-int/lit8 p0, p0, 0x8

    .line 75
    if-eqz p0, :cond_0

    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    and-int/lit16 v1, p0, 0xff

    .line 78
    ushr-int/lit8 p0, p0, 0x8

    .line 79
    if-eqz p0, :cond_0

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    and-int/lit16 v2, p0, 0xff

    .line 82
    ushr-int/lit8 p0, p0, 0x8

    .line 83
    if-eqz p0, :cond_0

    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 85
    and-int/lit16 v3, p0, 0xff

    .line 91
    :cond_0
    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [B

    .line 92
    .local v5, "result":[B
    const/4 v6, 0x3

    if-le v4, v6, :cond_1

    .line 93
    const/4 v7, 0x4

    int-to-byte v8, v3

    aput-byte v8, v5, v7

    .line 95
    :cond_1
    const/4 v7, 0x2

    if-le v4, v7, :cond_2

    .line 96
    int-to-byte v8, v2

    aput-byte v8, v5, v6

    .line 98
    :cond_2
    const/4 v6, 0x1

    if-le v4, v6, :cond_3

    .line 99
    int-to-byte v8, v1

    aput-byte v8, v5, v7

    .line 101
    :cond_3
    int-to-byte v7, v0

    aput-byte v7, v5, v6

    .line 103
    const/4 v6, 0x0

    invoke-static {v4, p1}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->encodeHeader(II)B

    move-result v7

    aput-byte v7, v5, v6

    .line 104
    return-object v5
.end method

.method public static encodeZeroExtendedToRightValue(JI)[B
    .locals 4
    .param p0, "val"    # J
    .param p2, "type"    # I

    .line 148
    invoke-static {p0, p1}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->getNbBytesForRightZeroExtendedValue(J)I

    move-result v0

    .line 149
    .local v0, "nbBytes":I
    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x40

    shr-long/2addr p0, v1

    .line 150
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 151
    .local v1, "bytes":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_0

    .line 152
    long-to-int v3, p0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 153
    const/16 v3, 0x8

    shr-long/2addr p0, v3

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, p2}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->encodeHeader(II)B

    move-result v3

    aput-byte v3, v1, v2

    .line 156
    return-object v1
.end method

.method public static getNbBytesForRightZeroExtendedValue(J)I
    .locals 2
    .param p0, "value"    # J

    .line 187
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 188
    .local v0, "requiredBits":I
    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_0
    add-int/lit8 v1, v0, 0x7

    shr-int/lit8 v1, v1, 0x3

    return v1
.end method

.method public static getNbBytesInSignedValue(I)I
    .locals 2
    .param p0, "value"    # I

    .line 176
    shr-int/lit8 v0, p0, 0x1f

    xor-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x21

    .line 177
    .local v0, "nbBits":I
    add-int/lit8 v1, v0, 0x7

    shr-int/lit8 v1, v1, 0x3

    return v1
.end method

.method public static getNbBytesInSignedValue(J)I
    .locals 2
    .param p0, "value"    # J

    .line 166
    const/16 v0, 0x3f

    shr-long v0, p0, v0

    xor-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x41

    .line 167
    .local v0, "nbBits":I
    add-int/lit8 v1, v0, 0x7

    shr-int/lit8 v1, v1, 0x3

    return v1
.end method

.method public static getTypeFromDescriptor(Ljava/lang/String;)I
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "result":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_4

    const/16 v2, 0x53

    if-eq v1, v2, :cond_3

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x49

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 229
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown descriptor to convert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":I
    .end local p0    # "desc":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .restart local v0    # "result":I
    .restart local p0    # "desc":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 232
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_0
    const/16 v0, 0x11

    .line 226
    goto :goto_0

    .line 213
    :pswitch_1
    const/4 v0, 0x3

    .line 214
    goto :goto_0

    .line 207
    :pswitch_2
    const/4 v0, 0x0

    .line 208
    goto :goto_0

    .line 219
    :cond_0
    const/4 v0, 0x6

    .line 220
    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, 0x4

    .line 217
    goto :goto_0

    .line 204
    :cond_2
    const/16 v0, 0x1f

    .line 205
    goto :goto_0

    .line 210
    :cond_3
    const/4 v0, 0x2

    .line 211
    goto :goto_0

    .line 222
    :cond_4
    const/16 v0, 0x10

    .line 223
    nop

    .line 237
    :cond_5
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "desc"    # Ljava/lang/String;

    .line 264
    const-string v0, "Ljava/lang/String;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTypeAReference(Ljava/lang/String;)Z
    .locals 3
    .param p0, "desc"    # Ljava/lang/String;

    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "result":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0
.end method
