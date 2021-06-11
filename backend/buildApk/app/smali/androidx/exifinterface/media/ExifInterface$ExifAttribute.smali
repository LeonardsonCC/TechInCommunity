.class Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# static fields
.field public static final BYTES_OFFSET_UNKNOWN:J = -0x1L


# instance fields
.field public final bytes:[B

.field public final bytesOffset:J

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method constructor <init>(IIJ[B)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytesOffset"    # J
    .param p5, "bytes"    # [B

    .line 3096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3097
    iput p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 3098
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 3099
    iput-wide p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    .line 3100
    iput-object p5, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 3101
    return-void
.end method

.method constructor <init>(II[B)V
    .locals 6
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .line 3092
    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 3093
    return-void
.end method

.method public static createByte(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 3147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_0

    .line 3148
    new-array v2, v1, [B

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v2, v0

    move-object v0, v2

    .line 3149
    .local v0, "bytes":[B
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2

    .line 3151
    .end local v0    # "bytes":[B
    :cond_0
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 3152
    .local v0, "ascii":[B
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3201
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3191
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3193
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3194
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 3195
    .local v4, "value":D
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 3194
    .end local v4    # "value":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3197
    :cond_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3142
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 5
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3132
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3134
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3135
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 3136
    .local v4, "value":I
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3135
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3138
    :cond_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSRational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3187
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3176
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3178
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3179
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 3180
    .local v4, "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3181
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3179
    .end local v4    # "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3183
    :cond_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 3156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 3157
    .local v0, "ascii":[B
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v2, v0

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3128
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3118
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3120
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3121
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 3122
    .local v4, "value":J
    long-to-int v6, v4

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3121
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3124
    :cond_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3172
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3161
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3163
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3164
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 3165
    .local v4, "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3166
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3164
    .end local v4    # "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3168
    :cond_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3114
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3104
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3106
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3107
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 3108
    .local v4, "value":I
    int-to-short v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3107
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3110
    :cond_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 6
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3333
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3334
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_9

    .line 3337
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3338
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 3340
    :cond_0
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 3341
    move-object v1, v0

    check-cast v1, [J

    check-cast v1, [J

    .line 3342
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_1

    .line 3343
    aget-wide v2, v1, v2

    long-to-double v2, v2

    return-wide v2

    .line 3345
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3347
    .end local v1    # "array":[J
    :cond_2
    instance-of v1, v0, [I

    if-eqz v1, :cond_4

    .line 3348
    move-object v1, v0

    check-cast v1, [I

    check-cast v1, [I

    .line 3349
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_3

    .line 3350
    aget v2, v1, v2

    int-to-double v2, v2

    return-wide v2

    .line 3352
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3354
    .end local v1    # "array":[I
    :cond_4
    instance-of v1, v0, [D

    if-eqz v1, :cond_6

    .line 3355
    move-object v1, v0

    check-cast v1, [D

    check-cast v1, [D

    .line 3356
    .local v1, "array":[D
    array-length v5, v1

    if-ne v5, v4, :cond_5

    .line 3357
    aget-wide v2, v1, v2

    return-wide v2

    .line 3359
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3361
    .end local v1    # "array":[D
    :cond_6
    instance-of v1, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz v1, :cond_8

    .line 3362
    move-object v1, v0

    check-cast v1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    check-cast v1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3363
    .local v1, "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    array-length v5, v1

    if-ne v5, v4, :cond_7

    .line 3364
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$Rational;->calculate()D

    move-result-wide v2

    return-wide v2

    .line 3366
    :cond_7
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3368
    .end local v1    # "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_8
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3335
    :cond_9
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 6
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3372
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3373
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 3376
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3377
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 3379
    :cond_0
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 3380
    move-object v1, v0

    check-cast v1, [J

    check-cast v1, [J

    .line 3381
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_1

    .line 3382
    aget-wide v2, v1, v2

    long-to-int v3, v2

    return v3

    .line 3384
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3386
    .end local v1    # "array":[J
    :cond_2
    instance-of v1, v0, [I

    if-eqz v1, :cond_4

    .line 3387
    move-object v1, v0

    check-cast v1, [I

    check-cast v1, [I

    .line 3388
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_3

    .line 3389
    aget v2, v1, v2

    return v2

    .line 3391
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3393
    .end local v1    # "array":[I
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3374
    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 7
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3397
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3398
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3399
    return-object v1

    .line 3401
    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3402
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3405
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3406
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v3, v0, [J

    const-string v4, ","

    if-eqz v3, :cond_4

    .line 3407
    move-object v1, v0

    check-cast v1, [J

    check-cast v1, [J

    .line 3408
    .local v1, "array":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_3

    .line 3409
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3410
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_2

    .line 3411
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3408
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3414
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3416
    .end local v1    # "array":[J
    :cond_4
    instance-of v3, v0, [I

    if-eqz v3, :cond_7

    .line 3417
    move-object v1, v0

    check-cast v1, [I

    check-cast v1, [I

    .line 3418
    .local v1, "array":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_6

    .line 3419
    aget v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3420
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_5

    .line 3421
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3418
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3424
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3426
    .end local v1    # "array":[I
    :cond_7
    instance-of v3, v0, [D

    if-eqz v3, :cond_a

    .line 3427
    move-object v1, v0

    check-cast v1, [D

    check-cast v1, [D

    .line 3428
    .local v1, "array":[D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_9

    .line 3429
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3430
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_8

    .line 3431
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3428
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3434
    .end local v3    # "i":I
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3436
    .end local v1    # "array":[D
    :cond_a
    instance-of v3, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz v3, :cond_d

    .line 3437
    move-object v1, v0

    check-cast v1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    check-cast v1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3438
    .local v1, "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_c

    .line 3439
    aget-object v5, v1, v3

    iget-wide v5, v5, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3440
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3441
    aget-object v5, v1, v3

    iget-wide v5, v5, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3442
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_b

    .line 3443
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3446
    .end local v3    # "i":I
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3448
    .end local v1    # "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_d
    return-object v1
.end method

.method getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 11
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3211
    const-string v0, "IOException occurred while closing InputStream"

    const-string v1, "ExifInterface"

    const/4 v2, 0x0

    .line 3213
    .local v2, "inputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v2, v4

    .line 3214
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3215
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    packed-switch v4, :pswitch_data_0

    .line 3316
    nop

    .line 3322
    goto/16 :goto_18

    .line 3309
    :pswitch_0
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    .line 3310
    .local v4, "values":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_0

    .line 3311
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3310
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3313
    .end local v5    # "i":I
    :cond_0
    nop

    .line 3322
    nop

    .line 3324
    :try_start_1
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3327
    goto :goto_1

    .line 3325
    :catch_0
    move-exception v3

    .line 3326
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3313
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-object v4

    .line 3302
    .end local v4    # "values":[D
    :pswitch_1
    :try_start_2
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    .line 3303
    .restart local v4    # "values":[D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_1

    .line 3304
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v4, v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3303
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3306
    .end local v5    # "i":I
    :cond_1
    nop

    .line 3322
    nop

    .line 3324
    :try_start_3
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3327
    goto :goto_3

    .line 3325
    :catch_1
    move-exception v3

    .line 3326
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3306
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    return-object v4

    .line 3293
    .end local v4    # "values":[D
    :pswitch_2
    :try_start_4
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3294
    .local v4, "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_2

    .line 3295
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    int-to-long v6, v6

    .line 3296
    .local v6, "numerator":J
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    int-to-long v8, v8

    .line 3297
    .local v8, "denominator":J
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-direct {v10, v6, v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v10, v4, v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3294
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3299
    .end local v5    # "i":I
    :cond_2
    nop

    .line 3322
    nop

    .line 3324
    :try_start_5
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 3327
    goto :goto_5

    .line 3325
    :catch_2
    move-exception v3

    .line 3326
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3299
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    return-object v4

    .line 3286
    .end local v4    # "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :pswitch_3
    :try_start_6
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 3287
    .local v4, "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_3

    .line 3288
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    aput v6, v4, v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3287
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 3290
    .end local v5    # "i":I
    :cond_3
    nop

    .line 3322
    nop

    .line 3324
    :try_start_7
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 3327
    goto :goto_7

    .line 3325
    :catch_3
    move-exception v3

    .line 3326
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3290
    .end local v3    # "e":Ljava/io/IOException;
    :goto_7
    return-object v4

    .line 3279
    .end local v4    # "values":[I
    :pswitch_4
    :try_start_8
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 3280
    .restart local v4    # "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_8
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_4

    .line 3281
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v6

    aput v6, v4, v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3280
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 3283
    .end local v5    # "i":I
    :cond_4
    nop

    .line 3322
    nop

    .line 3324
    :try_start_9
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 3327
    goto :goto_9

    .line 3325
    :catch_4
    move-exception v3

    .line 3326
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3283
    .end local v3    # "e":Ljava/io/IOException;
    :goto_9
    return-object v4

    .line 3270
    .end local v4    # "values":[I
    :pswitch_5
    :try_start_a
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3271
    .local v4, "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_a
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_5

    .line 3272
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    .line 3273
    .restart local v6    # "numerator":J
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 3274
    .restart local v8    # "denominator":J
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-direct {v10, v6, v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v10, v4, v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3271
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 3276
    .end local v5    # "i":I
    :cond_5
    nop

    .line 3322
    nop

    .line 3324
    :try_start_b
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 3327
    goto :goto_b

    .line 3325
    :catch_5
    move-exception v3

    .line 3326
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3276
    .end local v3    # "e":Ljava/io/IOException;
    :goto_b
    return-object v4

    .line 3263
    .end local v4    # "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :pswitch_6
    :try_start_c
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [J

    .line 3264
    .local v4, "values":[J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_c
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_6

    .line 3265
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    aput-wide v6, v4, v5
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 3264
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 3267
    .end local v5    # "i":I
    :cond_6
    nop

    .line 3322
    nop

    .line 3324
    :try_start_d
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 3327
    goto :goto_d

    .line 3325
    :catch_6
    move-exception v3

    .line 3326
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3267
    .end local v3    # "e":Ljava/io/IOException;
    :goto_d
    return-object v4

    .line 3256
    .end local v4    # "values":[J
    :pswitch_7
    :try_start_e
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 3257
    .local v4, "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_e
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_7

    .line 3258
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    aput v6, v4, v5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 3257
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 3260
    .end local v5    # "i":I
    :cond_7
    nop

    .line 3322
    nop

    .line 3324
    :try_start_f
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 3327
    goto :goto_f

    .line 3325
    :catch_7
    move-exception v3

    .line 3326
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3260
    .end local v3    # "e":Ljava/io/IOException;
    :goto_f
    return-object v4

    .line 3226
    .end local v4    # "values":[I
    :pswitch_8
    const/4 v4, 0x0

    .line 3227
    .local v4, "index":I
    :try_start_10
    iget v5, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    if-lt v5, v6, :cond_a

    .line 3228
    const/4 v5, 0x1

    .line 3229
    .local v5, "same":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_10
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v7, v7

    if-ge v6, v7, :cond_9

    .line 3230
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v7, v7, v6

    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    aget-byte v8, v8, v6

    if-eq v7, v8, :cond_8

    .line 3231
    const/4 v5, 0x0

    .line 3232
    goto :goto_11

    .line 3229
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 3235
    .end local v6    # "i":I
    :cond_9
    :goto_11
    if-eqz v5, :cond_a

    .line 3236
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    move v4, v6

    .line 3240
    .end local v5    # "same":Z
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3241
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_12
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v6, :cond_d

    .line 3242
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v6, v6, v4

    .line 3243
    .local v6, "ch":I
    if-nez v6, :cond_b

    .line 3244
    goto :goto_14

    .line 3246
    :cond_b
    const/16 v7, 0x20

    if-lt v6, v7, :cond_c

    .line 3247
    int-to-char v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 3249
    :cond_c
    const/16 v7, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3251
    :goto_13
    nop

    .end local v6    # "ch":I
    add-int/lit8 v4, v4, 0x1

    .line 3252
    goto :goto_12

    .line 3253
    :cond_d
    :goto_14
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 3322
    nop

    .line 3324
    :try_start_11
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 3327
    goto :goto_15

    .line 3325
    :catch_8
    move-exception v6

    .line 3326
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3253
    .end local v6    # "e":Ljava/io/IOException;
    :goto_15
    return-object v3

    .line 3219
    .end local v4    # "index":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_9
    :try_start_12
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v6, 0x0

    aget-byte v4, v4, v6

    if-ltz v4, :cond_e

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v4, v4, v6

    if-gt v4, v5, :cond_e

    .line 3220
    new-instance v4, Ljava/lang/String;

    new-array v5, v5, [C

    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v7, v7, v6

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    aput-char v7, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 3322
    nop

    .line 3324
    :try_start_13
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 3327
    goto :goto_16

    .line 3325
    :catch_9
    move-exception v3

    .line 3326
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3220
    .end local v3    # "e":Ljava/io/IOException;
    :goto_16
    return-object v4

    .line 3222
    :cond_e
    :try_start_14
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 3322
    nop

    .line 3324
    :try_start_15
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    .line 3327
    goto :goto_17

    .line 3325
    :catch_a
    move-exception v3

    .line 3326
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3222
    .end local v3    # "e":Ljava/io/IOException;
    :goto_17
    return-object v4

    .line 3324
    :goto_18
    :try_start_16
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    .line 3327
    goto :goto_19

    .line 3325
    :catch_b
    move-exception v4

    .line 3326
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3316
    .end local v4    # "e":Ljava/io/IOException;
    :goto_19
    return-object v3

    .line 3322
    :catchall_0
    move-exception v3

    goto :goto_1b

    .line 3318
    :catch_c
    move-exception v4

    .line 3319
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_17
    const-string v5, "IOException occurred during reading a value"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 3320
    nop

    .line 3322
    if-eqz v2, :cond_f

    .line 3324
    :try_start_18
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    .line 3327
    goto :goto_1a

    .line 3325
    :catch_d
    move-exception v5

    .line 3326
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3320
    .end local v5    # "e":Ljava/io/IOException;
    :cond_f
    :goto_1a
    return-object v3

    .line 3322
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1b
    if-eqz v2, :cond_10

    .line 3324
    :try_start_19
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    .line 3327
    goto :goto_1c

    .line 3325
    :catch_e
    move-exception v4

    .line 3326
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3329
    .end local v4    # "e":Ljava/io/IOException;
    :cond_10
    :goto_1c
    goto :goto_1e

    :goto_1d
    throw v3

    :goto_1e
    goto :goto_1d

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public size()I
    .locals 2

    .line 3452
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
