.class public Lorg/ow2/asmdex/encodedValue/EncodedValueFactory;
.super Ljava/lang/Object;
.source "EncodedValueFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodedEmptyValue(Ljava/lang/String;)Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .locals 3
    .param p0, "desc"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    invoke-static {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->isTypeAReference(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;

    invoke-direct {v1}, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->getTypeFromDescriptor(Ljava/lang/String;)I

    move-result v1

    .line 140
    .local v1, "type":I
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/ow2/asmdex/encodedValue/EncodedValueFactory;->getEncodedValue(Ljava/lang/Object;I)Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v0

    .line 143
    .end local v1    # "type":I
    :goto_0
    return-object v0
.end method

.method public static getEncodedNullValue()Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .locals 1

    .line 151
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;-><init>()V

    return-object v0
.end method

.method public static getEncodedValue(Ljava/lang/Object;)Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;

    .line 165
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueInteger;

    invoke-direct {v0, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueInteger;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 167
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;

    invoke-direct {v0, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 169
    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 170
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;

    invoke-direct {v0, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 171
    :cond_2
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_3

    .line 172
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;

    invoke-direct {v0, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 173
    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 174
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueDouble;

    invoke-direct {v0, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueDouble;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 175
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 176
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;

    invoke-direct {v0, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 177
    :cond_5
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 178
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;

    invoke-direct {v0, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 179
    :cond_6
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_7

    .line 180
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;

    invoke-direct {v0, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 181
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 182
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueString;

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/ow2/asmdex/encodedValue/EncodedValueString;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 186
    :cond_8
    instance-of v0, p0, [I

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 187
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    .line 188
    .local v0, "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    move-object v2, p0

    check-cast v2, [I

    .line 189
    .local v2, "array":[I
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_9

    aget v4, v2, v1

    .line 190
    .local v4, "v":I
    new-instance v5, Lorg/ow2/asmdex/encodedValue/EncodedValueInteger;

    invoke-direct {v5, v4}, Lorg/ow2/asmdex/encodedValue/EncodedValueInteger;-><init>(I)V

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 189
    .end local v4    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_9
    return-object v0

    .line 193
    .end local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    .end local v2    # "array":[I
    :cond_a
    instance-of v0, p0, [Z

    if-eqz v0, :cond_c

    .line 194
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    .line 195
    .restart local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    move-object v2, p0

    check-cast v2, [Z

    .line 196
    .local v2, "array":[Z
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_b

    aget-boolean v4, v2, v1

    .line 197
    .local v4, "v":Z
    new-instance v5, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;

    invoke-direct {v5, v4}, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;-><init>(Z)V

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 196
    .end local v4    # "v":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    :cond_b
    return-object v0

    .line 200
    .end local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    .end local v2    # "array":[Z
    :cond_c
    instance-of v0, p0, [B

    if-eqz v0, :cond_e

    .line 201
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    .line 202
    .restart local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    move-object v2, p0

    check-cast v2, [B

    .line 203
    .local v2, "array":[B
    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_d

    aget-byte v4, v2, v1

    .line 204
    .local v4, "v":B
    new-instance v5, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;

    invoke-direct {v5, v4}, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;-><init>(B)V

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 203
    .end local v4    # "v":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 206
    :cond_d
    return-object v0

    .line 207
    .end local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    .end local v2    # "array":[B
    :cond_e
    instance-of v0, p0, [C

    if-eqz v0, :cond_10

    .line 208
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    .line 209
    .restart local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    move-object v2, p0

    check-cast v2, [C

    .line 210
    .local v2, "array":[C
    array-length v3, v2

    :goto_3
    if-ge v1, v3, :cond_f

    aget-char v4, v2, v1

    .line 211
    .local v4, "v":C
    new-instance v5, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;

    invoke-direct {v5, v4}, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;-><init>(C)V

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 210
    .end local v4    # "v":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 213
    :cond_f
    return-object v0

    .line 214
    .end local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    .end local v2    # "array":[C
    :cond_10
    instance-of v0, p0, [D

    if-eqz v0, :cond_12

    .line 215
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    .line 216
    .restart local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    move-object v2, p0

    check-cast v2, [D

    .line 217
    .local v2, "array":[D
    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_11

    aget-wide v4, v2, v1

    .line 218
    .local v4, "v":D
    new-instance v6, Lorg/ow2/asmdex/encodedValue/EncodedValueDouble;

    invoke-direct {v6, v4, v5}, Lorg/ow2/asmdex/encodedValue/EncodedValueDouble;-><init>(D)V

    invoke-virtual {v0, v6}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 217
    .end local v4    # "v":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 220
    :cond_11
    return-object v0

    .line 221
    .end local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    .end local v2    # "array":[D
    :cond_12
    instance-of v0, p0, [F

    if-eqz v0, :cond_14

    .line 222
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    .line 223
    .restart local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    move-object v2, p0

    check-cast v2, [F

    .line 224
    .local v2, "array":[F
    array-length v3, v2

    :goto_5
    if-ge v1, v3, :cond_13

    aget v4, v2, v1

    .line 225
    .local v4, "v":F
    new-instance v5, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;

    invoke-direct {v5, v4}, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;-><init>(F)V

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 224
    .end local v4    # "v":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 227
    :cond_13
    return-object v0

    .line 228
    .end local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    .end local v2    # "array":[F
    :cond_14
    instance-of v0, p0, [J

    if-eqz v0, :cond_16

    .line 229
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    .line 230
    .restart local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    move-object v2, p0

    check-cast v2, [J

    .line 231
    .local v2, "array":[J
    array-length v3, v2

    :goto_6
    if-ge v1, v3, :cond_15

    aget-wide v4, v2, v1

    .line 232
    .local v4, "v":J
    new-instance v6, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;

    invoke-direct {v6, v4, v5}, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;-><init>(J)V

    invoke-virtual {v0, v6}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 231
    .end local v4    # "v":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 234
    :cond_15
    return-object v0

    .line 235
    .end local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    .end local v2    # "array":[J
    :cond_16
    instance-of v0, p0, [S

    if-eqz v0, :cond_18

    .line 236
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    .line 237
    .restart local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    move-object v2, p0

    check-cast v2, [S

    .line 238
    .local v2, "array":[S
    array-length v3, v2

    :goto_7
    if-ge v1, v3, :cond_17

    aget-short v4, v2, v1

    .line 239
    .local v4, "v":S
    new-instance v5, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;

    invoke-direct {v5, v4}, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;-><init>(S)V

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 238
    .end local v4    # "v":S
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 241
    :cond_17
    return-object v0

    .line 242
    .end local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    .end local v2    # "array":[S
    :cond_18
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 243
    new-instance v0, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    .line 244
    .restart local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    move-object v2, p0

    check-cast v2, [Ljava/lang/String;

    .line 245
    .local v2, "array":[Ljava/lang/String;
    array-length v3, v2

    :goto_8
    if-ge v1, v3, :cond_19

    aget-object v4, v2, v1

    .line 246
    .local v4, "v":Ljava/lang/String;
    new-instance v5, Lorg/ow2/asmdex/encodedValue/EncodedValueString;

    invoke-direct {v5, v4}, Lorg/ow2/asmdex/encodedValue/EncodedValueString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;->addEncodedValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)V

    .line 245
    .end local v4    # "v":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 248
    :cond_19
    return-object v0

    .line 253
    .end local v0    # "encodedArray":Lorg/ow2/asmdex/encodedValue/EncodedValueArray;
    .end local v2    # "array":[Ljava/lang/String;
    :cond_1a
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to find the type of this Value."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "value":Ljava/lang/Object;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .restart local p0    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getEncodedValue(Ljava/lang/Object;I)Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "type"    # I

    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    if-eqz p1, :cond_6

    const/4 v1, 0x6

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 117
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Unknown type for this value."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .end local p0    # "value":Ljava/lang/Object;
    .end local p1    # "type":I
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .restart local v0    # "encodedValue":Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .restart local p0    # "value":Ljava/lang/Object;
    .restart local p1    # "type":I
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_0
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueBoolean;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 113
    goto/16 :goto_0

    .line 109
    :pswitch_1
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;

    invoke-direct {v1}, Lorg/ow2/asmdex/encodedValue/EncodedValueNull;-><init>()V

    move-object v0, v1

    .line 110
    goto/16 :goto_0

    .line 106
    :pswitch_2
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueAnnotation;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 107
    goto/16 :goto_0

    .line 103
    :pswitch_3
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;

    invoke-direct {v1}, Lorg/ow2/asmdex/encodedValue/EncodedValueArray;-><init>()V

    move-object v0, v1

    .line 104
    goto/16 :goto_0

    .line 100
    :pswitch_4
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueEnum;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 101
    goto :goto_0

    .line 97
    :pswitch_5
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueMethod;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 98
    goto :goto_0

    .line 94
    :pswitch_6
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueField;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueField;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 95
    goto :goto_0

    .line 91
    :pswitch_7
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueType;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueType;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 92
    goto :goto_0

    .line 88
    :pswitch_8
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueString;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/ow2/asmdex/encodedValue/EncodedValueString;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 89
    goto :goto_0

    .line 85
    :cond_0
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueDouble;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueDouble;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 86
    goto :goto_0

    .line 82
    :cond_1
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueFloat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 83
    goto :goto_0

    .line 76
    :cond_2
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueInteger;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueInteger;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 77
    goto :goto_0

    .line 73
    :cond_3
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueCharacter;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 74
    goto :goto_0

    .line 70
    :cond_4
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueShort;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 79
    :cond_5
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueLong;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 80
    goto :goto_0

    .line 67
    :cond_6
    new-instance v1, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;

    invoke-direct {v1, p0}, Lorg/ow2/asmdex/encodedValue/EncodedValueByte;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 68
    nop

    .line 125
    :cond_7
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEncodedValue(Ljava/lang/Object;Ljava/lang/String;)Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "desc"    # Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->getTypeFromDescriptor(Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, "type":I
    invoke-static {p0, v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueFactory;->getEncodedValue(Ljava/lang/Object;I)Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v1

    return-object v1
.end method
