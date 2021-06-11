.class public Lorg/ow2/asmdex/util/AsmDexPrinter;
.super Ljava/lang/Object;
.source "AsmDexPrinter.java"


# static fields
.field private static accessStrings:[Ljava/lang/String;


# instance fields
.field protected currentTabulation:I

.field protected text:Ljava/lang/StringBuffer;

.field private textComposite:Lorg/ow2/asmdex/util/TextComposite;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ACC_PUBLIC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ACC_PRIVATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ACC_PROTECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ACC_STATIC"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ACC_FINAL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ACC_SYNCHRONIZED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ACC_VOLATILE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ACC_TRANSIENT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ACC_NATIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ACC_INTERFACE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ACC_ABSTRACT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ACC_STRICT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ACC_SYNTHETIC"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ACC_ANNOTATION"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ACC_ENUM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ACC_CONSTRUCTOR"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ACC_DECLARED_SYNCHRONIZED"

    aput-object v2, v0, v1

    sput-object v0, Lorg/ow2/asmdex/util/AsmDexPrinter;->accessStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    .line 76
    new-instance v0, Lorg/ow2/asmdex/util/TextComposite;

    invoke-direct {v0}, Lorg/ow2/asmdex/util/TextComposite;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->textComposite:Lorg/ow2/asmdex/util/TextComposite;

    return-void
.end method


# virtual methods
.method public addAccessFlags(IZ)V
    .locals 4
    .param p1, "accessFlags"    # I
    .param p2, "addComma"    # Z

    .line 390
    if-nez p1, :cond_0

    .line 391
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 393
    :cond_0
    const/4 v0, 0x1

    .line 394
    .local v0, "isFirst":Z
    const/4 v1, 0x0

    .line 395
    .local v1, "accessIndex":I
    :goto_0
    if-eqz p1, :cond_3

    .line 396
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    .line 397
    if-nez v0, :cond_1

    .line 398
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    :cond_1
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    sget-object v3, Lorg/ow2/asmdex/util/AsmDexPrinter;->accessStrings:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    const/4 v0, 0x0

    .line 403
    :cond_2
    ushr-int/lit8 p1, p1, 0x1

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "isFirst":Z
    .end local v1    # "accessIndex":I
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 409
    invoke-virtual {p0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addComma()V

    .line 411
    :cond_4
    return-void
.end method

.method public addBoolean(ZZ)V
    .locals 1
    .param p1, "bool"    # Z
    .param p2, "addComma"    # Z

    .line 125
    if-eqz p1, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    invoke-virtual {p0, v0, p2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;Z)V

    .line 126
    return-void
.end method

.method public addComma()V
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    return-void
.end method

.method public addConstant(Ljava/lang/Object;Z)V
    .locals 9
    .param p1, "cst"    # Ljava/lang/Object;
    .param p2, "addComma"    # Z

    .line 165
    if-nez p1, :cond_0

    .line 166
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_22

    .line 167
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 168
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->appendString(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 169
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_22

    .line 171
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_22

    .line 173
    :cond_3
    instance-of v0, p1, Ljava/lang/Byte;

    const/16 v1, 0x29

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v2, "Byte.valueOf((byte)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_22

    .line 175
    :cond_4
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_5

    .line 176
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 177
    .local v0, "c":I
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v3, "Character.valueOf((char)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    .end local v0    # "c":I
    goto/16 :goto_22

    :cond_5
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_6

    .line 179
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v2, "Short.valueOf((short)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_22

    .line 180
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 181
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(DZ)V

    goto/16 :goto_22

    .line 182
    :cond_7
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 183
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(FZ)V

    goto/16 :goto_22

    .line 184
    :cond_8
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 185
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(JZ)V

    goto/16 :goto_22

    .line 188
    :cond_9
    instance-of v0, p1, [I

    const-string v2, " }"

    const/4 v3, 0x1

    if-eqz v0, :cond_c

    .line 189
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new int[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    move-object v0, p1

    check-cast v0, [I

    .line 191
    .local v0, "ints":[I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v0

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_b

    .line 192
    aget v6, v0, v4

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_a

    const/4 v7, 0x1

    goto :goto_1

    :cond_a
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 194
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_b
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    .end local v0    # "ints":[I
    goto/16 :goto_22

    :cond_c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_f

    .line 196
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new boolean[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    move-object v0, p1

    check-cast v0, [Z

    .line 198
    .local v0, "array":[Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_2
    if-ge v4, v5, :cond_e

    .line 199
    aget-boolean v6, v0, v4

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_d

    const/4 v7, 0x1

    goto :goto_3

    :cond_d
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addBoolean(ZZ)V

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 201
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_e
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    .end local v0    # "array":[Z
    goto/16 :goto_22

    :cond_f
    instance-of v0, p1, [B

    if-eqz v0, :cond_12

    .line 203
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new byte[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    move-object v0, p1

    check-cast v0, [B

    .line 205
    .local v0, "array":[B
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_4
    if-ge v4, v5, :cond_11

    .line 206
    aget-byte v6, v0, v4

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_10

    const/4 v7, 0x1

    goto :goto_5

    :cond_10
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 205
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 208
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_11
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    .end local v0    # "array":[B
    goto/16 :goto_22

    :cond_12
    instance-of v0, p1, [S

    if-eqz v0, :cond_15

    .line 210
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new short[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    move-object v0, p1

    check-cast v0, [S

    .line 212
    .local v0, "array":[S
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_6
    if-ge v4, v5, :cond_14

    .line 213
    aget-short v6, v0, v4

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_13

    const/4 v7, 0x1

    goto :goto_7

    :cond_13
    const/4 v7, 0x0

    :goto_7
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 215
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_14
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    .end local v0    # "array":[S
    goto/16 :goto_22

    :cond_15
    instance-of v0, p1, [C

    if-eqz v0, :cond_18

    .line 217
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new char[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    move-object v0, p1

    check-cast v0, [C

    .line 219
    .local v0, "array":[C
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_8
    if-ge v4, v5, :cond_17

    .line 220
    aget-char v6, v0, v4

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_16

    const/4 v7, 0x1

    goto :goto_9

    :cond_16
    const/4 v7, 0x0

    :goto_9
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 222
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_17
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    .end local v0    # "array":[C
    goto/16 :goto_22

    :cond_18
    instance-of v0, p1, [F

    if-eqz v0, :cond_1b

    .line 224
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new float[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    move-object v0, p1

    check-cast v0, [F

    .line 226
    .local v0, "array":[F
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_a
    if-ge v4, v5, :cond_1a

    .line 227
    aget v6, v0, v4

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_19

    const/4 v7, 0x1

    goto :goto_b

    :cond_19
    const/4 v7, 0x0

    :goto_b
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(FZ)V

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 229
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_1a
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    .end local v0    # "array":[F
    goto/16 :goto_22

    :cond_1b
    instance-of v0, p1, [D

    if-eqz v0, :cond_1e

    .line 231
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new double[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    move-object v0, p1

    check-cast v0, [D

    .line 233
    .local v0, "array":[D
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_c
    if-ge v4, v5, :cond_1d

    .line 234
    aget-wide v6, v0, v4

    add-int/lit8 v8, v5, -0x1

    if-eq v4, v8, :cond_1c

    const/4 v8, 0x1

    goto :goto_d

    :cond_1c
    const/4 v8, 0x0

    :goto_d
    invoke-virtual {p0, v6, v7, v8}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(DZ)V

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 236
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_1d
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    .end local v0    # "array":[D
    goto/16 :goto_22

    :cond_1e
    instance-of v0, p1, [J

    if-eqz v0, :cond_21

    .line 238
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new long[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    move-object v0, p1

    check-cast v0, [J

    .line 240
    .local v0, "array":[J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_e
    if-ge v4, v5, :cond_20

    .line 241
    aget-wide v6, v0, v4

    add-int/lit8 v8, v5, -0x1

    if-eq v4, v8, :cond_1f

    const/4 v8, 0x1

    goto :goto_f

    :cond_1f
    const/4 v8, 0x0

    :goto_f
    invoke-virtual {p0, v6, v7, v8}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(JZ)V

    .line 240
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 243
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_20
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    .end local v0    # "array":[J
    goto/16 :goto_22

    :cond_21
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 245
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new String[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 247
    .local v0, "strings":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_10
    if-ge v4, v5, :cond_23

    .line 248
    aget-object v6, v0, v4

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_22

    const/4 v7, 0x1

    goto :goto_11

    :cond_22
    const/4 v7, 0x0

    :goto_11
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 247
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 250
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_23
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    .end local v0    # "strings":[Ljava/lang/String;
    goto/16 :goto_22

    .line 256
    :cond_24
    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_27

    .line 257
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new Byte[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    move-object v0, p1

    check-cast v0, [Ljava/lang/Byte;

    .line 259
    .local v0, "array":[Ljava/lang/Byte;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_12
    if-ge v4, v5, :cond_26

    .line 260
    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_25

    const/4 v7, 0x1

    goto :goto_13

    :cond_25
    const/4 v7, 0x0

    :goto_13
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 262
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_26
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    .end local v0    # "array":[Ljava/lang/Byte;
    goto/16 :goto_22

    :cond_27
    instance-of v0, p1, [Ljava/lang/Integer;

    if-eqz v0, :cond_2a

    .line 264
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new Integer[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    move-object v0, p1

    check-cast v0, [Ljava/lang/Integer;

    .line 266
    .local v0, "ints":[Ljava/lang/Integer;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_14
    if-ge v4, v5, :cond_29

    .line 267
    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_28

    const/4 v7, 0x1

    goto :goto_15

    :cond_28
    const/4 v7, 0x0

    :goto_15
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 266
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 269
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_29
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    .end local v0    # "ints":[Ljava/lang/Integer;
    goto/16 :goto_22

    :cond_2a
    instance-of v0, p1, [Ljava/lang/Boolean;

    if-eqz v0, :cond_2d

    .line 271
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new Boolean[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    move-object v0, p1

    check-cast v0, [Ljava/lang/Boolean;

    .line 273
    .local v0, "array":[Ljava/lang/Boolean;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_16
    if-ge v4, v5, :cond_2c

    .line 274
    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_2b

    const/4 v7, 0x1

    goto :goto_17

    :cond_2b
    const/4 v7, 0x0

    :goto_17
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addBoolean(ZZ)V

    .line 273
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 276
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_2c
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    .end local v0    # "array":[Ljava/lang/Boolean;
    goto/16 :goto_22

    :cond_2d
    instance-of v0, p1, [Ljava/lang/Short;

    if-eqz v0, :cond_30

    .line 278
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new Short[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    move-object v0, p1

    check-cast v0, [Ljava/lang/Short;

    .line 280
    .local v0, "array":[Ljava/lang/Short;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_18
    if-ge v4, v5, :cond_2f

    .line 281
    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_2e

    const/4 v7, 0x1

    goto :goto_19

    :cond_2e
    const/4 v7, 0x0

    :goto_19
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 280
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 283
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_2f
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    .end local v0    # "array":[Ljava/lang/Short;
    goto/16 :goto_22

    :cond_30
    instance-of v0, p1, [Ljava/lang/Character;

    if-eqz v0, :cond_33

    .line 285
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new Character[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    move-object v0, p1

    check-cast v0, [Ljava/lang/Character;

    .line 287
    .local v0, "array":[Ljava/lang/Character;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_1a
    if-ge v4, v5, :cond_32

    .line 288
    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_31

    const/4 v7, 0x1

    goto :goto_1b

    :cond_31
    const/4 v7, 0x0

    :goto_1b
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(IZ)V

    .line 287
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 290
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_32
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    .end local v0    # "array":[Ljava/lang/Character;
    goto/16 :goto_22

    :cond_33
    instance-of v0, p1, [Ljava/lang/Float;

    if-eqz v0, :cond_36

    .line 292
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new Float[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    move-object v0, p1

    check-cast v0, [Ljava/lang/Float;

    .line 294
    .local v0, "array":[Ljava/lang/Float;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_1c
    if-ge v4, v5, :cond_35

    .line 295
    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-int/lit8 v7, v5, -0x1

    if-eq v4, v7, :cond_34

    const/4 v7, 0x1

    goto :goto_1d

    :cond_34
    const/4 v7, 0x0

    :goto_1d
    invoke-virtual {p0, v6, v7}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(FZ)V

    .line 294
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 297
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_35
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    .end local v0    # "array":[Ljava/lang/Float;
    goto :goto_22

    :cond_36
    instance-of v0, p1, [Ljava/lang/Double;

    if-eqz v0, :cond_39

    .line 299
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new Double[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    move-object v0, p1

    check-cast v0, [Ljava/lang/Double;

    .line 301
    .local v0, "array":[Ljava/lang/Double;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_1e
    if-ge v4, v5, :cond_38

    .line 302
    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-int/lit8 v8, v5, -0x1

    if-eq v4, v8, :cond_37

    const/4 v8, 0x1

    goto :goto_1f

    :cond_37
    const/4 v8, 0x0

    :goto_1f
    invoke-virtual {p0, v6, v7, v8}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(DZ)V

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 304
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_38
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    .end local v0    # "array":[Ljava/lang/Double;
    goto :goto_22

    :cond_39
    instance-of v0, p1, [Ljava/lang/Long;

    if-eqz v0, :cond_3c

    .line 306
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "new Long[] { "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    move-object v0, p1

    check-cast v0, [Ljava/lang/Long;

    .line 308
    .local v0, "array":[Ljava/lang/Long;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "size":I
    :goto_20
    if-ge v4, v5, :cond_3b

    .line 309
    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-int/lit8 v8, v5, -0x1

    if-eq v4, v8, :cond_3a

    const/4 v8, 0x1

    goto :goto_21

    :cond_3a
    const/4 v8, 0x0

    :goto_21
    invoke-virtual {p0, v6, v7, v8}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addNumber(JZ)V

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 311
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_3b
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    .end local v0    # "array":[Ljava/lang/Long;
    goto :goto_22

    .line 318
    :cond_3c
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unhandled constant type."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "cst":Ljava/lang/Object;
    .end local p2    # "addComma":Z
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .restart local p1    # "cst":Ljava/lang/Object;
    .restart local p2    # "addComma":Z
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d
    :goto_22
    if-eqz p2, :cond_3e

    .line 327
    invoke-virtual {p0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addComma()V

    .line 330
    :cond_3e
    return-void
.end method

.method public addEOL()V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    return-void
.end method

.method public addLabelArray([Ljava/lang/String;Z)V
    .locals 4
    .param p1, "labelNames"    # [Ljava/lang/String;
    .param p2, "addComma"    # Z

    .line 364
    if-nez p1, :cond_0

    .line 365
    const-string v0, "null"

    invoke-virtual {p0, v0, p2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;Z)V

    goto :goto_1

    .line 367
    :cond_0
    const-string v0, "new Label[] { "

    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 369
    const/4 v0, 0x1

    .line 370
    .local v0, "isFirst":Z
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 371
    .local v3, "string":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 372
    invoke-virtual {p0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addComma()V

    .line 374
    :cond_1
    invoke-virtual {p0, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    .line 370
    .end local v3    # "string":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_2
    const-string v1, " }"

    invoke-virtual {p0, v1, p2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;Z)V

    .line 382
    .end local v0    # "isFirst":Z
    :goto_1
    return-void
.end method

.method public addNumber(DZ)V
    .locals 2
    .param p1, "nb"    # D
    .param p3, "addComma"    # Z

    .line 492
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 493
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 494
    if-eqz p3, :cond_0

    .line 495
    invoke-virtual {p0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addComma()V

    .line 497
    :cond_0
    return-void
.end method

.method public addNumber(FZ)V
    .locals 2
    .param p1, "nb"    # F
    .param p2, "addComma"    # Z

    .line 466
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 467
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 468
    if-eqz p2, :cond_0

    .line 469
    invoke-virtual {p0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addComma()V

    .line 471
    :cond_0
    return-void
.end method

.method public addNumber(IZ)V
    .locals 1
    .param p1, "nb"    # I
    .param p2, "addComma"    # Z

    .line 454
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 455
    if-eqz p2, :cond_0

    .line 456
    invoke-virtual {p0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addComma()V

    .line 458
    :cond_0
    return-void
.end method

.method public addNumber(JZ)V
    .locals 2
    .param p1, "nb"    # J
    .param p3, "addComma"    # Z

    .line 479
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 480
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 481
    if-eqz p3, :cond_0

    .line 482
    invoke-virtual {p0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addComma()V

    .line 484
    :cond_0
    return-void
.end method

.method public addOpcode(IZ)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "addComma"    # Z

    .line 506
    invoke-static {p1}, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    if-eqz p2, :cond_1

    .line 512
    invoke-virtual {p0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addComma()V

    .line 514
    :cond_1
    return-void
.end method

.method public addStringArrayList(Ljava/util/List;Z)V
    .locals 5
    .param p2, "addComma"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 338
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 339
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 341
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v1, "new ArrayList<Label>(Arrays.asList("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 344
    .local v2, "string":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 345
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    :cond_1
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    nop

    .end local v2    # "string":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 349
    goto :goto_0

    .line 350
    :cond_2
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    .end local v0    # "i":I
    :goto_1
    if-eqz p2, :cond_3

    .line 354
    invoke-virtual {p0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addComma()V

    .line 356
    :cond_3
    return-void
.end method

.method public addTabulation()V
    .locals 3

    .line 520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->currentTabulation:I

    if-ge v0, v1, :cond_0

    .line 521
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .locals 1
    .param p1, "textToAdd"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    return-void
.end method

.method public addText(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "textToAdd"    # Ljava/lang/String;
    .param p2, "addComma"    # Z

    .line 144
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 145
    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addComma()V

    .line 148
    :cond_0
    return-void
.end method

.method public addTextToList(Lorg/ow2/asmdex/util/TextComponent;)V
    .locals 1
    .param p1, "tc"    # Lorg/ow2/asmdex/util/TextComponent;

    .line 101
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->textComposite:Lorg/ow2/asmdex/util/TextComposite;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/util/TextComposite;->addComponent(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 102
    return-void
.end method

.method public appendString(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 421
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 422
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 423
    .local v2, "c":C
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 424
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 425
    :cond_0
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 426
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 427
    :cond_1
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    .line 428
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "\\\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 429
    :cond_2
    if-ne v2, v1, :cond_3

    .line 430
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 431
    :cond_3
    const/16 v3, 0x20

    if-lt v2, v3, :cond_5

    const/16 v3, 0x7f

    if-le v2, v3, :cond_4

    goto :goto_1

    .line 442
    :cond_4
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 432
    :cond_5
    :goto_1
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const/16 v3, 0x10

    if-ge v2, v3, :cond_6

    .line 434
    iget-object v4, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v5, "000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 435
    :cond_6
    const/16 v4, 0x100

    if-ge v2, v4, :cond_7

    .line 436
    iget-object v4, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 437
    :cond_7
    const/16 v4, 0x1000

    if-ge v2, v4, :cond_8

    .line 438
    iget-object v4, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    :cond_8
    :goto_2
    iget-object v4, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    .end local v2    # "c":C
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "i":I
    :cond_9
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 446
    return-void
.end method

.method public closeText()V
    .locals 2

    .line 91
    new-instance v0, Lorg/ow2/asmdex/util/TextLeaf;

    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Lorg/ow2/asmdex/util/TextLeaf;-><init>(Ljava/lang/StringBuffer;)V

    .line 92
    .local v0, "component":Lorg/ow2/asmdex/util/TextLeaf;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->textComposite:Lorg/ow2/asmdex/util/TextComposite;

    invoke-virtual {v1, v0}, Lorg/ow2/asmdex/util/TextComposite;->addComponent(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 93
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->text:Ljava/lang/StringBuffer;

    .line 94
    return-void
.end method

.method protected getTextComponent()Lorg/ow2/asmdex/util/TextComponent;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexPrinter;->textComposite:Lorg/ow2/asmdex/util/TextComposite;

    return-object v0
.end method
