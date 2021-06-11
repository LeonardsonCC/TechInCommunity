.class public Lorg/ow2/asmdex/ApplicationReader;
.super Ljava/lang/Object;
.source "ApplicationReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ow2/asmdex/ApplicationReader$VisitorType;
    }
.end annotation


# static fields
.field private static final ANNOTATIONS:Z = true

.field public static final DEBUG_DISPLAY_STRUCTURES:Z = false

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field private static final WRITER:Z = true


# instance fields
.field protected api:I

.field public final byteCode:[B

.field private classNameToIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;",
            ">;"
        }
    .end annotation
.end field

.field private dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

.field private fieldAnnotationOffsetsOfClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private methodAnnotationOffsetsOfClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private parameterAnnotationOffsetsOfClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private typeIdToClassIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/io/File;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/ow2/asmdex/ApplicationReader;->readApplication(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/ow2/asmdex/ApplicationReader;-><init>(I[B)V

    .line 264
    return-void
.end method

.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-static {p2}, Lorg/ow2/asmdex/ApplicationReader;->readApplication(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/ow2/asmdex/ApplicationReader;-><init>(I[B)V

    .line 243
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "api"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/ow2/asmdex/ApplicationReader;->readApplication(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/ow2/asmdex/ApplicationReader;-><init>(I[B)V

    .line 254
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "api"    # I
    .param p2, "byteCode"    # [B

    .line 199
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/ow2/asmdex/ApplicationReader;-><init>(I[BII)V

    .line 200
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 2
    .param p1, "api"    # I
    .param p2, "byteCode"    # [B
    .param p3, "startOffset"    # I
    .param p4, "length"    # I

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->defaultAnnotations:Ljava/util/HashMap;

    .line 214
    if-nez p3, :cond_1

    array-length v0, p2

    if-eq p4, v0, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    iput-object p2, p0, Lorg/ow2/asmdex/ApplicationReader;->byteCode:[B

    goto :goto_1

    .line 215
    :cond_1
    :goto_0
    add-int v0, p4, p3

    invoke-static {p2, p3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->byteCode:[B

    .line 221
    :goto_1
    new-instance v0, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-direct {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    .line 223
    :try_start_0
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->byteCode:[B

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->parse([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 232
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_2
    nop

    .line 233
    :cond_3
    :goto_3
    return-void
.end method

.method private decodeEncodedArray()Ljava/lang/Object;
    .locals 8

    .line 1037
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v0

    .line 1040
    .local v0, "arraySize":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1041
    new-array v1, v1, [I

    return-object v1

    .line 1044
    :cond_0
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v2

    .line 1045
    .local v2, "value":I
    and-int/lit8 v3, v2, 0x1f

    .line 1046
    .local v3, "valueType":I
    shr-int/lit8 v4, v2, 0x5

    and-int/lit8 v4, v4, 0x7

    .line 1049
    .local v4, "valueArg":I
    if-eqz v3, :cond_13

    const/4 v5, 0x6

    if-eq v3, v5, :cond_11

    const/4 v5, 0x2

    if-eq v3, v5, :cond_f

    const/4 v5, 0x3

    if-eq v3, v5, :cond_d

    const/4 v5, 0x4

    if-eq v3, v5, :cond_b

    const/16 v5, 0x10

    if-eq v3, v5, :cond_9

    const/16 v5, 0x11

    if-eq v3, v5, :cond_7

    const/16 v5, 0x1e

    if-eq v3, v5, :cond_5

    const/16 v5, 0x1f

    if-eq v3, v5, :cond_3

    packed-switch v3, :pswitch_data_0

    .line 1145
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled value format : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "arraySize":I
    .end local v2    # "value":I
    .end local v3    # "valueType":I
    .end local v4    # "valueArg":I
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    .restart local v0    # "arraySize":I
    .restart local v2    # "value":I
    .restart local v3    # "valueType":I
    .restart local v4    # "valueArg":I
    :catch_0
    move-exception v1

    .line 1147
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1148
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1151
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 1123
    :pswitch_0
    new-array v5, v0, [Ljava/lang/String;

    .line 1124
    .local v5, "array":[Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v1

    .line 1125
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1126
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v2

    .line 1127
    and-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x7

    invoke-direct {p0, v6, v7}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v1

    .line 1125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1129
    .end local v1    # "i":I
    :cond_2
    return-object v5

    .line 1060
    .end local v5    # "array":[Ljava/lang/String;
    :cond_3
    new-array v5, v0, [Z

    .line 1061
    .local v5, "array":[Z
    invoke-direct {p0, v3, v4}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    aput-boolean v6, v5, v1

    .line 1062
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1063
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v2

    .line 1064
    and-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x7

    invoke-direct {p0, v6, v7}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    aput-boolean v6, v5, v1

    .line 1062
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1066
    .end local v1    # "i":I
    :cond_4
    return-object v5

    .line 1135
    .end local v5    # "array":[Z
    :cond_5
    :pswitch_1
    new-array v5, v0, [Ljava/lang/Object;

    .line 1136
    .local v5, "array":[Ljava/lang/Object;
    invoke-direct {p0, v3, v4}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1137
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 1138
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v2

    .line 1139
    and-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x7

    invoke-direct {p0, v6, v7}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1137
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1141
    .end local v1    # "i":I
    :cond_6
    return-object v5

    .line 1114
    .end local v5    # "array":[Ljava/lang/Object;
    :cond_7
    new-array v5, v0, [D

    .line 1115
    .local v5, "array":[D
    invoke-direct {p0, v3, v4}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 1116
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v0, :cond_8

    .line 1117
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v2

    .line 1118
    and-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x7

    invoke-direct {p0, v6, v7}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 1116
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1120
    .end local v1    # "i":I
    :cond_8
    return-object v5

    .line 1105
    .end local v5    # "array":[D
    :cond_9
    new-array v5, v0, [F

    .line 1106
    .local v5, "array":[F
    invoke-direct {p0, v3, v4}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v5, v1

    .line 1107
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_a

    .line 1108
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v2

    .line 1109
    and-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x7

    invoke-direct {p0, v6, v7}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v5, v1

    .line 1107
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1111
    .end local v1    # "i":I
    :cond_a
    return-object v5

    .line 1051
    .end local v5    # "array":[F
    :cond_b
    new-array v5, v0, [I

    .line 1052
    .local v5, "array":[I
    invoke-direct {p0, v3, v4}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v1

    .line 1053
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v0, :cond_c

    .line 1054
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v2

    .line 1055
    and-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x7

    invoke-direct {p0, v6, v7}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v1

    .line 1053
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1057
    .end local v1    # "i":I
    :cond_c
    return-object v5

    .line 1087
    .end local v5    # "array":[I
    :cond_d
    new-array v5, v0, [C

    .line 1088
    .local v5, "array":[C
    invoke-direct {p0, v3, v4}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    aput-char v6, v5, v1

    .line 1089
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v0, :cond_e

    .line 1090
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v2

    .line 1091
    and-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x7

    invoke-direct {p0, v6, v7}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    aput-char v6, v5, v1

    .line 1089
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1093
    .end local v1    # "i":I
    :cond_e
    return-object v5

    .line 1078
    .end local v5    # "array":[C
    :cond_f
    new-array v5, v0, [S

    .line 1079
    .local v5, "array":[S
    invoke-direct {p0, v3, v4}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    aput-short v6, v5, v1

    .line 1080
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v0, :cond_10

    .line 1081
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v2

    .line 1082
    and-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x7

    invoke-direct {p0, v6, v7}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    aput-short v6, v5, v1

    .line 1080
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1084
    .end local v1    # "i":I
    :cond_10
    return-object v5

    .line 1096
    .end local v5    # "array":[S
    :cond_11
    new-array v5, v0, [J

    .line 1097
    .local v5, "array":[J
    invoke-direct {p0, v3, v4}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 1098
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, v0, :cond_12

    .line 1099
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v2

    .line 1100
    and-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x7

    invoke-direct {p0, v6, v7}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 1098
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1102
    .end local v1    # "i":I
    :cond_12
    return-object v5

    .line 1069
    .end local v5    # "array":[J
    :cond_13
    new-array v5, v0, [B

    .line 1070
    .local v5, "array":[B
    invoke-direct {p0, v3, v4}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v5, v1

    .line 1071
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_9
    if-ge v1, v0, :cond_14

    .line 1072
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v2

    .line 1073
    and-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x7

    invoke-direct {p0, v6, v7}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v5, v1

    .line 1071
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1075
    .end local v1    # "i":I
    :cond_14
    return-object v5

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private decodedEncodedArrayAsObjects()[Ljava/lang/Object;
    .locals 7

    .line 1013
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v0

    .line 1015
    .local v0, "arraySize":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 1016
    .local v1, "result":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1017
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v3

    .line 1018
    .local v3, "value":I
    and-int/lit8 v4, v3, 0x1f

    .line 1019
    .local v4, "valueType":I
    shr-int/lit8 v5, v3, 0x5

    and-int/lit8 v5, v5, 0x7

    .line 1020
    .local v5, "valueArg":I
    invoke-direct {p0, v4, v5}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v2

    .line 1016
    .end local v3    # "value":I
    .end local v4    # "valueType":I
    .end local v5    # "valueArg":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1023
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private interpretEncodedValue(II)Ljava/lang/Object;
    .locals 5
    .param p1, "valueType"    # I
    .param p2, "valueArg"    # I

    .line 947
    const/4 v0, 0x0

    .line 952
    .local v0, "result":Ljava/lang/Object;
    if-eqz p1, :cond_c

    const/4 v1, 0x6

    if-eq p1, v1, :cond_b

    const/16 v1, 0x17

    if-eq p1, v1, :cond_a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v1, 0x3

    if-eq p1, v1, :cond_8

    const/4 v2, 0x4

    if-eq p1, v2, :cond_7

    const/16 v2, 0x10

    if-eq p1, v2, :cond_6

    const/16 v1, 0x11

    if-eq p1, v1, :cond_5

    const/16 v1, 0x19

    if-eq p1, v1, :cond_4

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1f

    if-ne p1, v1, :cond_1

    .line 954
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 955
    goto/16 :goto_1

    .line 993
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown value format : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":Ljava/lang/Object;
    .end local p1    # "valueType":I
    .end local p2    # "valueArg":I
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    .restart local v0    # "result":Ljava/lang/Object;
    .restart local p1    # "valueType":I
    .restart local p2    # "valueArg":I
    :catch_0
    move-exception v1

    .line 995
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 996
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 990
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    goto/16 :goto_1

    .line 983
    :cond_3
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 984
    goto/16 :goto_1

    .line 980
    :cond_4
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 981
    goto/16 :goto_1

    .line 975
    :cond_5
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v1

    rsub-int/lit8 v3, p2, 0x7

    mul-int/lit8 v3, v3, 0x8

    shl-long/2addr v1, v3

    .line 976
    .local v1, "temp":J
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 978
    .end local v1    # "temp":J
    goto/16 :goto_1

    .line 972
    :cond_6
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v2

    long-to-int v3, v2

    sub-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x8

    shl-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 973
    goto :goto_1

    .line 966
    :cond_7
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->completeSignSizedLong(JI)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 967
    goto :goto_1

    .line 963
    :cond_8
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v1

    long-to-int v2, v1

    int-to-char v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 964
    goto :goto_1

    .line 960
    :cond_9
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->completeSignSizedLong(JI)J

    move-result-wide v1

    long-to-int v2, v1

    int-to-short v1, v2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 961
    goto :goto_1

    .line 986
    :cond_a
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v1

    long-to-int v2, v1

    .line 987
    .local v2, "stringIndex":I
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 988
    goto :goto_1

    .line 969
    .end local v2    # "stringIndex":I
    :cond_b
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->completeSignSizedLong(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 970
    goto :goto_1

    .line 957
    :cond_c
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->completeSignSizedLong(JI)J

    move-result-wide v1

    long-to-int v2, v1

    int-to-byte v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 958
    nop

    .line 1001
    :cond_d
    :goto_1
    return-object v0
.end method

.method private isEncodedArrayPrimitive()Z
    .locals 4

    .line 1226
    const/4 v0, 0x1

    .line 1227
    .local v0, "isPrimitive":Z
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v1

    .line 1229
    .local v1, "saveReaderPosition":I
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v2

    .line 1230
    .local v2, "nbElements":I
    if-lez v2, :cond_0

    .line 1231
    invoke-direct {p0}, Lorg/ow2/asmdex/ApplicationReader;->isEncodedValuePrimitive()Z

    move-result v0

    .line 1234
    :cond_0
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1235
    return v0
.end method

.method private isEncodedValuePrimitive()Z
    .locals 5

    .line 1197
    const/4 v0, 0x1

    .line 1199
    .local v0, "isPrimitive":Z
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v1

    .line 1201
    .local v1, "saveReaderPosition":I
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v2

    .line 1202
    .local v2, "value":I
    and-int/lit8 v3, v2, 0x1f

    .line 1204
    .local v3, "valueType":I
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1210
    :pswitch_1
    const/4 v0, 0x0

    .line 1214
    :goto_0
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v4, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1215
    return v0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private parseSpecificAnnotations(Lorg/ow2/asmdex/AnnotationVisitor;Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;)Z
    .locals 8
    .param p1, "av"    # Lorg/ow2/asmdex/AnnotationVisitor;
    .param p2, "specificAnnotationParser"    # Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;

    .line 1507
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v0

    .line 1508
    .local v0, "savePositionreader":I
    const/4 v1, 0x0

    .line 1510
    .local v1, "foundAnnotation":Z
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getAnnotationItemOffsetsFromAnnotationSetItem()[I

    move-result-object v2

    .line 1511
    .local v2, "annotationOffsets":[I
    const/4 v3, 0x0

    .local v3, "annotationIndex":I
    array-length v4, v2

    .line 1512
    .local v4, "nbAnnotations":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1513
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1515
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->skipByte()V

    .line 1517
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v5

    .line 1519
    .local v5, "annotationType":Ljava/lang/String;
    invoke-interface {p2}, Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;->getAnnotationName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1520
    const/4 v1, 0x1

    .line 1524
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v6

    .line 1525
    .local v6, "nbAnnotationElements":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 1526
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/ApplicationReader;->readAnnotationElement(Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 1525
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1528
    .end local v7    # "i":I
    :cond_0
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-interface {p2, v7, p0, p1}, Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;->treat(Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;Lorg/ow2/asmdex/ApplicationReader;Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 1512
    .end local v5    # "annotationType":Ljava/lang/String;
    .end local v6    # "nbAnnotationElements":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1531
    .end local v3    # "annotationIndex":I
    .end local v4    # "nbAnnotations":I
    :cond_2
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1533
    return v1
.end method

.method private readAndVisitAnnotations(Ljava/lang/Object;ILorg/ow2/asmdex/ApplicationReader$VisitorType;)V
    .locals 9
    .param p1, "visitor"    # Ljava/lang/Object;
    .param p2, "parameterNumber"    # I
    .param p3, "visitorType"    # Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    .line 1257
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getAnnotationItemOffsetsFromAnnotationSetItem()[I

    move-result-object v0

    .line 1258
    .local v0, "annotationOffsets":[I
    const/4 v1, 0x0

    .local v1, "annotationIndex":I
    array-length v2, v0

    .line 1259
    .local v2, "nbAnnotations":I
    :goto_0
    if-ge v1, v2, :cond_8

    .line 1261
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 1263
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v3

    .line 1264
    .local v3, "classVisibility":S
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 1266
    .local v4, "isAnnotationVisible":Z
    :goto_1
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v5

    .line 1269
    .local v5, "annotationType":Ljava/lang/String;
    const-string v6, "Ldalvik/annotation/Throws;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1270
    const-string v6, "Ldalvik/annotation/EnclosingClass;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1271
    const-string v6, "Ldalvik/annotation/InnerClass;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1272
    const-string v6, "Ldalvik/annotation/EnclosingMethod;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1273
    const-string v6, "Ldalvik/annotation/MemberClasses;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1274
    const-string v6, "Ldalvik/annotation/AnnotationDefault;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1275
    const-string v6, "Ldalvik/annotation/Signature;"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1276
    goto :goto_4

    .line 1279
    :cond_1
    const/4 v6, 0x0

    .line 1280
    .local v6, "annotationVisitor":Lorg/ow2/asmdex/AnnotationVisitor;
    sget-object v7, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->classVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    if-ne p3, v7, :cond_2

    .line 1281
    move-object v7, p1

    check-cast v7, Lorg/ow2/asmdex/ClassVisitor;

    invoke-virtual {v7, v5, v4}, Lorg/ow2/asmdex/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v6

    goto :goto_2

    .line 1282
    :cond_2
    sget-object v7, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->fieldVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    if-ne p3, v7, :cond_3

    .line 1283
    move-object v7, p1

    check-cast v7, Lorg/ow2/asmdex/FieldVisitor;

    invoke-virtual {v7, v5, v4}, Lorg/ow2/asmdex/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v6

    goto :goto_2

    .line 1284
    :cond_3
    sget-object v7, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->methodVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    if-ne p3, v7, :cond_5

    .line 1285
    if-gez p2, :cond_4

    .line 1286
    move-object v7, p1

    check-cast v7, Lorg/ow2/asmdex/MethodVisitor;

    invoke-virtual {v7, v5, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v6

    goto :goto_2

    .line 1288
    :cond_4
    move-object v7, p1

    check-cast v7, Lorg/ow2/asmdex/MethodVisitor;

    invoke-virtual {v7, p2, v5, v4}, Lorg/ow2/asmdex/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v6

    .line 1293
    :cond_5
    :goto_2
    if-eqz v6, :cond_7

    .line 1294
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v7

    .line 1295
    .local v7, "nbAnnotationElements":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v7, :cond_6

    .line 1296
    invoke-direct {p0, v6}, Lorg/ow2/asmdex/ApplicationReader;->readAnnotationElement(Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 1295
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1298
    .end local v8    # "i":I
    :cond_6
    invoke-virtual {v6}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 1259
    .end local v3    # "classVisibility":S
    .end local v4    # "isAnnotationVisible":Z
    .end local v5    # "annotationType":Ljava/lang/String;
    .end local v6    # "annotationVisitor":Lorg/ow2/asmdex/AnnotationVisitor;
    .end local v7    # "nbAnnotationElements":I
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1301
    .end local v1    # "annotationIndex":I
    .end local v2    # "nbAnnotations":I
    :cond_8
    return-void
.end method

.method private readAnnotationElement(Lorg/ow2/asmdex/AnnotationVisitor;)V
    .locals 2
    .param p1, "annotationVisitor"    # Lorg/ow2/asmdex/AnnotationVisitor;

    .line 1546
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 1547
    .local v0, "annotationName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lorg/ow2/asmdex/ApplicationReader;->readEncodedValue(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;)V

    .line 1548
    return-void
.end method

.method private static readApplication(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "result":[B
    if-eqz p0, :cond_5

    .line 287
    const/4 v1, 0x0

    .line 290
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v2

    .line 292
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 295
    .local v2, "dataRead":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "nbBytesRead":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 296
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 300
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 306
    .end local v2    # "dataRead":[B
    .end local v4    # "nbBytesRead":I
    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 301
    :catch_0
    move-exception v2

    .line 302
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    if-eqz v1, :cond_2

    .line 307
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 309
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 310
    nop

    .line 312
    .end local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    if-eqz v0, :cond_3

    .line 315
    return-object v0

    .line 313
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Application bytecode not initialized"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    .restart local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    :goto_2
    if-eqz v1, :cond_4

    .line 307
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 309
    :cond_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 310
    throw v2

    .line 285
    .end local v1    # "buffer":Ljava/io/ByteArrayOutputStream;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Application not found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private readDefaultAnnotations()V
    .locals 8

    .line 1329
    new-instance v0, Lorg/ow2/asmdex/specificAnnotationParser/DefaultAnnotationSpecificAnnotationParser;

    const-string v1, "Ldalvik/annotation/AnnotationDefault;"

    invoke-direct {v0, v1}, Lorg/ow2/asmdex/specificAnnotationParser/DefaultAnnotationSpecificAnnotationParser;-><init>(Ljava/lang/String;)V

    .line 1332
    .local v0, "specificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    new-instance v2, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;

    iget v3, p0, Lorg/ow2/asmdex/ApplicationReader;->api:I

    invoke-direct {v2, v3, v1}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v2, v0}, Lorg/ow2/asmdex/ApplicationReader;->parseSpecificAnnotations(Lorg/ow2/asmdex/AnnotationVisitor;Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;)Z

    move-result v1

    .line 1333
    .local v1, "foundAnnotation":Z
    if-eqz v1, :cond_0

    .line 1338
    move-object v2, v0

    check-cast v2, Lorg/ow2/asmdex/specificAnnotationParser/DefaultAnnotationSpecificAnnotationParser;

    invoke-virtual {v2}, Lorg/ow2/asmdex/specificAnnotationParser/DefaultAnnotationSpecificAnnotationParser;->getAnnotationVisitor()Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;

    .line 1339
    .local v2, "dav":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;
    invoke-virtual {v2}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->getDefaultAnnotationInformationList()Ljava/util/List;

    move-result-object v3

    .line 1340
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1341
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;

    invoke-virtual {v4}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;

    .line 1342
    invoke-virtual {v2}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->getDefaultAnnotationInformationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;

    .line 1343
    .local v5, "info":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;
    invoke-virtual {v5}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1344
    .local v6, "methodName":Ljava/lang/String;
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationReader;->defaultAnnotations:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    .end local v5    # "info":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;
    .end local v6    # "methodName":Ljava/lang/String;
    goto :goto_0

    .line 1348
    .end local v2    # "dav":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;
    .end local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;>;"
    :cond_0
    return-void
.end method

.method private readEncodedAnnotation(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;)V
    .locals 4
    .param p1, "annotationVisitor"    # Lorg/ow2/asmdex/AnnotationVisitor;
    .param p2, "valueName"    # Ljava/lang/String;

    .line 1561
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 1562
    .local v0, "annotationType":Ljava/lang/String;
    nop

    .line 1563
    invoke-virtual {p1, p2, v0}, Lorg/ow2/asmdex/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v1

    .line 1569
    .local v1, "nestedAnnotationVisitor":Lorg/ow2/asmdex/AnnotationVisitor;
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v2

    .line 1570
    .local v2, "nbElements":I
    const/4 v3, 0x0

    .local v3, "elementIndex":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1571
    invoke-direct {p0, v1}, Lorg/ow2/asmdex/ApplicationReader;->readAnnotationElement(Lorg/ow2/asmdex/AnnotationVisitor;)V

    .line 1570
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1574
    .end local v3    # "elementIndex":I
    :cond_0
    if-eqz v1, :cond_1

    .line 1575
    invoke-virtual {v1}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 1577
    :cond_1
    return-void
.end method

.method private readEncodedArray(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;)V
    .locals 4
    .param p1, "annotationVisitor"    # Lorg/ow2/asmdex/AnnotationVisitor;
    .param p2, "valueName"    # Ljava/lang/String;

    .line 1171
    invoke-direct {p0}, Lorg/ow2/asmdex/ApplicationReader;->isEncodedArrayPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1172
    invoke-direct {p0}, Lorg/ow2/asmdex/ApplicationReader;->decodeEncodedArray()Ljava/lang/Object;

    move-result-object v0

    .line 1173
    .local v0, "primitiveArray":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 1174
    invoke-virtual {p1, p2, v0}, Lorg/ow2/asmdex/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1176
    .end local v0    # "primitiveArray":Ljava/lang/Object;
    :cond_0
    goto :goto_2

    .line 1179
    :cond_1
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v0

    .line 1181
    .local v0, "nbElements":I
    const/4 v1, 0x0

    if-nez p1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Lorg/ow2/asmdex/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v2

    .line 1182
    .local v2, "arrayElementsAnnotationVisitor":Lorg/ow2/asmdex/AnnotationVisitor;
    :goto_0
    const/4 v3, 0x0

    .local v3, "elementIndex":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1183
    invoke-direct {p0, v2, v1}, Lorg/ow2/asmdex/ApplicationReader;->readEncodedValue(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;)V

    .line 1182
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1185
    .end local v3    # "elementIndex":I
    :cond_3
    if-eqz v2, :cond_4

    .line 1186
    invoke-virtual {v2}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 1189
    .end local v0    # "nbElements":I
    .end local v2    # "arrayElementsAnnotationVisitor":Lorg/ow2/asmdex/AnnotationVisitor;
    :cond_4
    :goto_2
    return-void
.end method

.method private readEncodedValue(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;)V
    .locals 6
    .param p1, "annotationVisitor"    # Lorg/ow2/asmdex/AnnotationVisitor;
    .param p2, "valueName"    # Ljava/lang/String;

    .line 894
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ubyte()S

    move-result v0

    .line 895
    .local v0, "value":I
    and-int/lit8 v1, v0, 0x1f

    .line 896
    .local v1, "valueType":I
    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x7

    .line 898
    .local v2, "valueArg":I
    const/16 v3, 0x18

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 927
    invoke-direct {p0, v1, v2}, Lorg/ow2/asmdex/ApplicationReader;->interpretEncodedValue(II)Ljava/lang/Object;

    move-result-object v3

    .line 928
    .local v3, "val":Ljava/lang/Object;
    if-eqz p1, :cond_1

    .line 929
    invoke-virtual {p1, p2, v3}, Lorg/ow2/asmdex/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 914
    .end local v3    # "val":Ljava/lang/Object;
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/ow2/asmdex/ApplicationReader;->readEncodedAnnotation(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;)V

    .line 915
    goto :goto_0

    .line 910
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/ow2/asmdex/ApplicationReader;->readEncodedArray(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;)V

    .line 911
    goto :goto_0

    .line 900
    :pswitch_2
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3, v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v3

    long-to-int v4, v3

    .line 901
    .local v4, "enumIndex":I
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getNameFromFieldIndex(I)Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, "enumValue":Ljava/lang/String;
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getTypeNameFromFieldIndex(I)Ljava/lang/String;

    move-result-object v5

    .line 903
    .local v5, "enumDesc":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 904
    invoke-virtual {p1, p2, v5, v3}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 918
    .end local v3    # "enumValue":Ljava/lang/String;
    .end local v4    # "enumIndex":I
    .end local v5    # "enumDesc":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3, v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->sizedLong(I)J

    move-result-wide v3

    long-to-int v4, v3

    .line 919
    .local v4, "typeIndex":I
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v3

    .line 920
    .local v3, "type":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 921
    invoke-virtual {p1, p2, v3}, Lorg/ow2/asmdex/AnnotationVisitor;->visitClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "typeIndex":I
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readExceptionAnnotations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1312
    new-instance v0, Lorg/ow2/asmdex/specificAnnotationParser/ExceptionSpecificAnnotationParser;

    const-string v1, "Ldalvik/annotation/Throws;"

    invoke-direct {v0, v1}, Lorg/ow2/asmdex/specificAnnotationParser/ExceptionSpecificAnnotationParser;-><init>(Ljava/lang/String;)V

    .line 1315
    .local v0, "specificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    new-instance v1, Lorg/ow2/asmdex/specificAnnotationVisitors/ExceptionAnnotationVisitor;

    iget v2, p0, Lorg/ow2/asmdex/ApplicationReader;->api:I

    invoke-direct {v1, v2}, Lorg/ow2/asmdex/specificAnnotationVisitors/ExceptionAnnotationVisitor;-><init>(I)V

    invoke-direct {p0, v1, v0}, Lorg/ow2/asmdex/ApplicationReader;->parseSpecificAnnotations(Lorg/ow2/asmdex/AnnotationVisitor;Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;)Z

    move-result v1

    .line 1317
    .local v1, "foundAnnotation":Z
    if-eqz v1, :cond_0

    .line 1318
    move-object v2, v0

    check-cast v2, Lorg/ow2/asmdex/specificAnnotationParser/ExceptionSpecificAnnotationParser;

    invoke-virtual {v2}, Lorg/ow2/asmdex/specificAnnotationParser/ExceptionSpecificAnnotationParser;->getExceptions()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 1319
    :cond_0
    const/4 v2, 0x0

    .line 1317
    :goto_0
    return-object v2
.end method

.method private readInnerClassAnnotations(Ljava/lang/String;Lorg/ow2/asmdex/ClassVisitor;)V
    .locals 9
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classVisitor"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 1416
    new-instance v0, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;

    const-string v1, "Ldalvik/annotation/InnerClass;"

    invoke-direct {v0, v1}, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;-><init>(Ljava/lang/String;)V

    .line 1420
    .local v0, "innerClassSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    new-instance v1, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingClassSpecificAnnotationParser;

    const-string v2, "Ldalvik/annotation/EnclosingClass;"

    invoke-direct {v1, v2}, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingClassSpecificAnnotationParser;-><init>(Ljava/lang/String;)V

    .line 1423
    .local v1, "enclosingClassSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    new-instance v2, Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;

    iget v3, p0, Lorg/ow2/asmdex/ApplicationReader;->api:I

    invoke-direct {v2, v3}, Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;-><init>(I)V

    invoke-direct {p0, v2, v0}, Lorg/ow2/asmdex/ApplicationReader;->parseSpecificAnnotations(Lorg/ow2/asmdex/AnnotationVisitor;Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;)Z

    move-result v2

    .line 1424
    .local v2, "foundFirstAnnotation":Z
    new-instance v3, Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingClassAnnotationVisitor;

    iget v4, p0, Lorg/ow2/asmdex/ApplicationReader;->api:I

    invoke-direct {v3, v4}, Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingClassAnnotationVisitor;-><init>(I)V

    invoke-direct {p0, v3, v1}, Lorg/ow2/asmdex/ApplicationReader;->parseSpecificAnnotations(Lorg/ow2/asmdex/AnnotationVisitor;Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;)Z

    move-result v3

    .line 1426
    .local v3, "foundSecondAnnotation":Z
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1427
    move-object v4, v0

    check-cast v4, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;

    .line 1428
    .local v4, "innerParser":Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;
    move-object v5, v1

    check-cast v5, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingClassSpecificAnnotationParser;

    .line 1431
    .local v5, "enclosingParser":Lorg/ow2/asmdex/specificAnnotationParser/EnclosingClassSpecificAnnotationParser;
    invoke-virtual {v5}, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingClassSpecificAnnotationParser;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 1432
    .local v6, "outerClassName":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;->getSimpleNameInnerClass()Ljava/lang/String;

    move-result-object v7

    .line 1433
    .local v7, "simpleNameInnerClass":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;->getAccessFlagsInnerClass()I

    move-result v8

    invoke-virtual {p2, p1, v6, v7, v8}, Lorg/ow2/asmdex/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1435
    .end local v4    # "innerParser":Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;
    .end local v5    # "enclosingParser":Lorg/ow2/asmdex/specificAnnotationParser/EnclosingClassSpecificAnnotationParser;
    .end local v6    # "outerClassName":Ljava/lang/String;
    .end local v7    # "simpleNameInnerClass":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private readMemberClassesAnnotations(Lorg/ow2/asmdex/ClassVisitor;)V
    .locals 10
    .param p1, "classVisitor"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 1380
    new-instance v0, Lorg/ow2/asmdex/specificAnnotationParser/MemberClassesSpecificAnnotationParser;

    const-string v1, "Ldalvik/annotation/MemberClasses;"

    invoke-direct {v0, v1}, Lorg/ow2/asmdex/specificAnnotationParser/MemberClassesSpecificAnnotationParser;-><init>(Ljava/lang/String;)V

    .line 1383
    .local v0, "specificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    new-instance v1, Lorg/ow2/asmdex/specificAnnotationVisitors/MemberClassesAnnotationVisitor;

    iget v2, p0, Lorg/ow2/asmdex/ApplicationReader;->api:I

    invoke-direct {v1, v2}, Lorg/ow2/asmdex/specificAnnotationVisitors/MemberClassesAnnotationVisitor;-><init>(I)V

    invoke-direct {p0, v1, v0}, Lorg/ow2/asmdex/ApplicationReader;->parseSpecificAnnotations(Lorg/ow2/asmdex/AnnotationVisitor;Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;)Z

    move-result v1

    .line 1384
    .local v1, "foundAnnotation":Z
    if-eqz v1, :cond_1

    .line 1385
    move-object v2, v0

    check-cast v2, Lorg/ow2/asmdex/specificAnnotationParser/MemberClassesSpecificAnnotationParser;

    .line 1388
    .local v2, "parser":Lorg/ow2/asmdex/specificAnnotationParser/MemberClassesSpecificAnnotationParser;
    invoke-virtual {v2}, Lorg/ow2/asmdex/specificAnnotationParser/MemberClassesSpecificAnnotationParser;->getInnerClasses()Ljava/util/List;

    move-result-object v3

    .line 1390
    .local v3, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1392
    .local v5, "name":Ljava/lang/String;
    const/16 v6, 0x24

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1394
    .local v6, "i":I
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1397
    .local v7, "innerName":Ljava/lang/String;
    if-gez v6, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1399
    .local v8, "outerName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v5, v8, v7}, Lorg/ow2/asmdex/ClassVisitor;->visitMemberClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "innerName":Ljava/lang/String;
    .end local v8    # "outerName":Ljava/lang/String;
    goto :goto_0

    .line 1402
    .end local v2    # "parser":Lorg/ow2/asmdex/specificAnnotationParser/MemberClassesSpecificAnnotationParser;
    .end local v3    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private readOuterClassAnnotations(Lorg/ow2/asmdex/ClassVisitor;)V
    .locals 17
    .param p1, "classVisitor"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 1448
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingMethodSpecificAnnotationParser;

    const-string v3, "Ldalvik/annotation/EnclosingMethod;"

    invoke-direct {v2, v3}, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingMethodSpecificAnnotationParser;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v2, "enclosingMethodSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    new-instance v3, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;

    const-string v4, "Ldalvik/annotation/InnerClass;"

    invoke-direct {v3, v4}, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;-><init>(Ljava/lang/String;)V

    .line 1458
    .local v3, "innerClassSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    new-instance v4, Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingMethodAnnotationVisitor;

    iget v5, v0, Lorg/ow2/asmdex/ApplicationReader;->api:I

    invoke-direct {v4, v5}, Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingMethodAnnotationVisitor;-><init>(I)V

    invoke-direct {v0, v4, v2}, Lorg/ow2/asmdex/ApplicationReader;->parseSpecificAnnotations(Lorg/ow2/asmdex/AnnotationVisitor;Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;)Z

    move-result v4

    .line 1459
    .local v4, "foundFirstAnnotation":Z
    new-instance v5, Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;

    iget v6, v0, Lorg/ow2/asmdex/ApplicationReader;->api:I

    invoke-direct {v5, v6}, Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;-><init>(I)V

    invoke-direct {v0, v5, v3}, Lorg/ow2/asmdex/ApplicationReader;->parseSpecificAnnotations(Lorg/ow2/asmdex/AnnotationVisitor;Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;)Z

    move-result v5

    .line 1461
    .local v5, "foundSecondAnnotation":Z
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 1462
    move-object v6, v2

    check-cast v6, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingMethodSpecificAnnotationParser;

    invoke-virtual {v6}, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingMethodSpecificAnnotationParser;->getClassId()I

    move-result v6

    .line 1465
    .local v6, "methodId":I
    iget-object v7, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7, v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getMethodIdItem(I)Lorg/ow2/asmdex/structureReader/MethodIdItem;

    move-result-object v7

    .line 1466
    .local v7, "methodIdItem":Lorg/ow2/asmdex/structureReader/MethodIdItem;
    iget-object v8, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7}, Lorg/ow2/asmdex/structureReader/MethodIdItem;->getClassIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v8

    .line 1467
    .local v8, "nameEnclosingClass":Ljava/lang/String;
    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7}, Lorg/ow2/asmdex/structureReader/MethodIdItem;->getPrototypeIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getDescriptorFromPrototypeIndex(I)Ljava/lang/String;

    move-result-object v9

    .line 1468
    .local v9, "methodDescriptor":Ljava/lang/String;
    iget-object v10, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7}, Lorg/ow2/asmdex/structureReader/MethodIdItem;->getNameIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v10

    .line 1471
    .local v10, "methodName":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1472
    invoke-virtual {v1, v8, v10, v9}, Lorg/ow2/asmdex/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :cond_0
    move-object v11, v3

    check-cast v11, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;

    .line 1477
    .local v11, "innerParser":Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;
    invoke-virtual {v11}, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;->getSimpleNameInnerClass()Ljava/lang/String;

    move-result-object v12

    .line 1478
    .local v12, "simpleNameInnerClass":Ljava/lang/String;
    iget-object v13, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v13, v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getNameFromMethodIndex(I)Ljava/lang/String;

    move-result-object v13

    .line 1479
    .local v13, "outerClassName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1487
    .local v14, "nameInnerClass":Ljava/lang/String;
    if-eqz v8, :cond_1

    if-eqz v12, :cond_1

    if-eqz v13, :cond_1

    .line 1488
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x3b

    move-object/from16 v16, v2

    .end local v2    # "enclosingMethodSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    .local v16, "enclosingMethodSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    const/16 v2, 0x24

    invoke-virtual {v8, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x31

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 1487
    .end local v16    # "enclosingMethodSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    .restart local v2    # "enclosingMethodSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    :cond_1
    move-object/from16 v16, v2

    .line 1490
    .end local v2    # "enclosingMethodSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    .restart local v16    # "enclosingMethodSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    :goto_0
    invoke-virtual {v11}, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;->getAccessFlagsInnerClass()I

    move-result v0

    invoke-virtual {v1, v14, v8, v12, v0}, Lorg/ow2/asmdex/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 1461
    .end local v6    # "methodId":I
    .end local v7    # "methodIdItem":Lorg/ow2/asmdex/structureReader/MethodIdItem;
    .end local v8    # "nameEnclosingClass":Ljava/lang/String;
    .end local v9    # "methodDescriptor":Ljava/lang/String;
    .end local v10    # "methodName":Ljava/lang/String;
    .end local v11    # "innerParser":Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;
    .end local v12    # "simpleNameInnerClass":Ljava/lang/String;
    .end local v13    # "outerClassName":Ljava/lang/String;
    .end local v14    # "nameInnerClass":Ljava/lang/String;
    .end local v16    # "enclosingMethodSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    .restart local v2    # "enclosingMethodSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    :cond_2
    move-object/from16 v16, v2

    .line 1492
    .end local v2    # "enclosingMethodSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    .restart local v16    # "enclosingMethodSpecificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    :goto_1
    return-void
.end method

.method private readSignatureAnnotation()[Ljava/lang/String;
    .locals 4

    .line 1357
    const/4 v0, 0x0

    .line 1361
    .local v0, "result":[Ljava/lang/String;
    new-instance v1, Lorg/ow2/asmdex/specificAnnotationParser/SignatureSpecificAnnotationParser;

    const-string v2, "Ldalvik/annotation/Signature;"

    invoke-direct {v1, v2}, Lorg/ow2/asmdex/specificAnnotationParser/SignatureSpecificAnnotationParser;-><init>(Ljava/lang/String;)V

    .line 1364
    .local v1, "specificAnnotationParser":Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;
    new-instance v2, Lorg/ow2/asmdex/specificAnnotationVisitors/SignatureAnnotationVisitor;

    iget v3, p0, Lorg/ow2/asmdex/ApplicationReader;->api:I

    invoke-direct {v2, v3}, Lorg/ow2/asmdex/specificAnnotationVisitors/SignatureAnnotationVisitor;-><init>(I)V

    invoke-direct {p0, v2, v1}, Lorg/ow2/asmdex/ApplicationReader;->parseSpecificAnnotations(Lorg/ow2/asmdex/AnnotationVisitor;Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;)Z

    move-result v2

    .line 1365
    .local v2, "foundAnnotation":Z
    if-eqz v2, :cond_0

    .line 1366
    move-object v3, v1

    check-cast v3, Lorg/ow2/asmdex/specificAnnotationParser/SignatureSpecificAnnotationParser;

    invoke-virtual {v3}, Lorg/ow2/asmdex/specificAnnotationParser/SignatureSpecificAnnotationParser;->getSignature()[Ljava/lang/String;

    move-result-object v0

    .line 1369
    :cond_0
    return-object v0
.end method

.method private visitClass(Lorg/ow2/asmdex/ApplicationVisitor;Ljava/lang/String;I)V
    .locals 29
    .param p1, "applicationVisitor"    # Lorg/ow2/asmdex/ApplicationVisitor;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 481
    move-object/from16 v12, p0

    move-object/from16 v3, p2

    and-int/lit8 v0, p3, 0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 482
    .local v5, "skipCode":Z
    :goto_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 485
    .local v4, "skipDebug":Z
    :goto_1
    iget-object v0, v12, Lorg/ow2/asmdex/ApplicationReader;->classNameToIndex:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 488
    .local v2, "classIndex":I
    iget-object v0, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0, v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getClassDefinitionItem(I)Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;

    move-result-object v20

    .line 489
    .local v20, "classDefinitionItem":Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;
    invoke-virtual/range {v20 .. v20}, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->getAccessFlags()I

    move-result v21

    .line 490
    .local v21, "accessFlags":I
    invoke-virtual/range {v20 .. v20}, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->getSuperclassIndex()I

    move-result v0

    .line 491
    .local v0, "superclassIndex":I
    invoke-virtual/range {v20 .. v20}, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->getInterfacesOffset()I

    move-result v15

    .line 492
    .local v15, "interfacesOffset":I
    invoke-virtual/range {v20 .. v20}, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->getSourceFileIndex()I

    move-result v14

    .line 493
    .local v14, "sourceFileIndex":I
    invoke-virtual/range {v20 .. v20}, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->getAnnotationsOffset()I

    move-result v13

    .line 494
    .local v13, "annotationsOffset":I
    invoke-virtual/range {v20 .. v20}, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->getClassDataOffset()I

    move-result v11

    .line 495
    .local v11, "classDataOffset":I
    invoke-virtual/range {v20 .. v20}, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->getStaticValuesOffset()I

    move-result v10

    .line 496
    .local v10, "staticValuesOffset":I
    iget-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->defaultAnnotations:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 499
    const/4 v6, 0x0

    .line 500
    .local v6, "interfaces":[Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 501
    iget-object v7, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7, v15}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 502
    iget-object v7, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v7

    .line 503
    .local v7, "interfacesListSize":I
    new-array v6, v7, [Ljava/lang/String;

    .line 504
    const/4 v8, 0x0

    .local v8, "noInterface":I
    :goto_2
    if-ge v8, v7, :cond_2

    .line 505
    iget-object v9, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v9}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v9

    .line 507
    .local v9, "typeIndex":I
    iget-object v1, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1, v9}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "interfaceName":Ljava/lang/String;
    aput-object v1, v6, v8

    .line 504
    .end local v1    # "interfaceName":Ljava/lang/String;
    .end local v9    # "typeIndex":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v23, v6

    goto :goto_3

    .line 500
    .end local v7    # "interfacesListSize":I
    .end local v8    # "noInterface":I
    :cond_3
    move-object/from16 v23, v6

    .line 514
    .end local v6    # "interfaces":[Ljava/lang/String;
    .local v23, "interfaces":[Ljava/lang/String;
    :goto_3
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 516
    const-string v6, "Ljava/lang/Object;"

    move-object/from16 v24, v6

    .local v6, "superName":Ljava/lang/String;
    goto :goto_4

    .line 518
    .end local v6    # "superName":Ljava/lang/String;
    :cond_4
    iget-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v6

    .line 521
    .local v24, "superName":Ljava/lang/String;
    :goto_4
    const/4 v6, 0x0

    .line 523
    .local v6, "signature":[Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 524
    iget-object v7, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7, v13}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 525
    iget-object v7, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v7

    .line 526
    .local v7, "classAnnotationsOffset":I
    if-eqz v7, :cond_5

    .line 528
    iget-object v8, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v8, v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 529
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationReader;->readSignatureAnnotation()[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v25, v6

    goto :goto_5

    .line 534
    .end local v7    # "classAnnotationsOffset":I
    :cond_5
    move-object/from16 v25, v6

    .end local v6    # "signature":[Ljava/lang/String;
    .local v25, "signature":[Ljava/lang/String;
    :goto_5
    move-object/from16 v6, p1

    move/from16 v7, v21

    move-object/from16 v8, p2

    move-object/from16 v9, v25

    move v1, v10

    .end local v10    # "staticValuesOffset":I
    .local v1, "staticValuesOffset":I
    move-object/from16 v10, v24

    move/from16 v27, v11

    .end local v11    # "classDataOffset":I
    .local v27, "classDataOffset":I
    move-object/from16 v11, v23

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ApplicationVisitor;->visitClass(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/ClassVisitor;

    move-result-object v11

    .line 540
    .local v11, "classVisitor":Lorg/ow2/asmdex/ClassVisitor;
    const/4 v6, 0x0

    .line 541
    .local v6, "staticValues":[Ljava/lang/Object;
    if-eqz v1, :cond_6

    .line 542
    iget-object v7, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 543
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationReader;->decodedEncodedArrayAsObjects()[Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    goto :goto_6

    .line 541
    :cond_6
    move-object v10, v6

    .line 547
    .end local v6    # "staticValues":[Ljava/lang/Object;
    .local v10, "staticValues":[Ljava/lang/Object;
    :goto_6
    if-eqz v11, :cond_c

    .line 548
    const/4 v6, 0x0

    move v9, v13

    .end local v13    # "annotationsOffset":I
    .local v9, "annotationsOffset":I
    move-object v13, v11

    move v8, v14

    .end local v14    # "sourceFileIndex":I
    .local v8, "sourceFileIndex":I
    move v14, v6

    move/from16 v28, v15

    .end local v15    # "interfacesOffset":I
    .local v28, "interfacesOffset":I
    move/from16 v15, v21

    move-object/from16 v16, p2

    move-object/from16 v17, v25

    move-object/from16 v18, v24

    move-object/from16 v19, v23

    invoke-virtual/range {v13 .. v19}, Lorg/ow2/asmdex/ClassVisitor;->visit(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 551
    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v8, v7, :cond_7

    .line 552
    iget-object v7, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7, v8}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v7

    .line 553
    .local v7, "sourceFile":Ljava/lang/String;
    invoke-virtual {v11, v7, v6}, Lorg/ow2/asmdex/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .end local v7    # "sourceFile":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    .line 562
    .local v7, "classAnnotationsOffset":I
    if-eqz v9, :cond_a

    .line 563
    iget-object v13, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v13, v9}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 564
    iget-object v13, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v13}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v7

    .line 565
    if-eqz v7, :cond_8

    .line 567
    iget-object v13, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v13, v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 568
    invoke-direct {v12, v11}, Lorg/ow2/asmdex/ApplicationReader;->readOuterClassAnnotations(Lorg/ow2/asmdex/ClassVisitor;)V

    .line 571
    iget-object v13, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v13, v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 572
    sget-object v13, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->classVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    const/4 v14, 0x0

    invoke-direct {v12, v11, v14, v13}, Lorg/ow2/asmdex/ApplicationReader;->readAndVisitAnnotations(Ljava/lang/Object;ILorg/ow2/asmdex/ApplicationReader$VisitorType;)V

    .line 577
    iget-object v13, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v13, v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 578
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationReader;->readDefaultAnnotations()V

    .line 580
    iget-object v13, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    add-int/lit8 v14, v9, 0x4

    invoke-virtual {v13, v14}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 585
    :cond_8
    iget-object v13, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v13}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v13

    .line 586
    .local v13, "fieldsSize":I
    iget-object v14, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v14}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v14

    .line 587
    .local v14, "annotatedMethodsSize":I
    iget-object v15, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v15}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v15

    .line 590
    .local v15, "annotatedParametersSize":I
    iget-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v13}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->fillOffsetHashMap(I)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->fieldAnnotationOffsetsOfClass:Ljava/util/HashMap;

    .line 591
    iget-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v14}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->fillOffsetHashMap(I)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->methodAnnotationOffsetsOfClass:Ljava/util/HashMap;

    .line 592
    iget-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v15}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->fillOffsetHashMap(I)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->parameterAnnotationOffsetsOfClass:Ljava/util/HashMap;

    .line 595
    if-eqz v7, :cond_9

    .line 596
    iget-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 597
    invoke-direct {v12, v3, v11}, Lorg/ow2/asmdex/ApplicationReader;->readInnerClassAnnotations(Ljava/lang/String;Lorg/ow2/asmdex/ClassVisitor;)V

    .line 599
    iget-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 600
    invoke-direct {v12, v11}, Lorg/ow2/asmdex/ApplicationReader;->readMemberClassesAnnotations(Lorg/ow2/asmdex/ClassVisitor;)V

    .line 607
    .end local v13    # "fieldsSize":I
    .end local v14    # "annotatedMethodsSize":I
    .end local v15    # "annotatedParametersSize":I
    :cond_9
    move v13, v7

    goto :goto_7

    .line 562
    :cond_a
    move v13, v7

    .line 607
    .end local v7    # "classAnnotationsOffset":I
    .local v13, "classAnnotationsOffset":I
    :goto_7
    move/from16 v14, v27

    .end local v27    # "classDataOffset":I
    .local v14, "classDataOffset":I
    if-eqz v14, :cond_b

    .line 608
    iget-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v14}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 609
    iget-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v15

    .line 610
    .local v15, "nbStaticFields":I
    iget-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v7

    .line 611
    .local v7, "nbInstanceFields":I
    iget-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v17

    .line 612
    .local v17, "nbDirectMethods":I
    iget-object v6, v12, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v18

    .line 618
    .local v18, "nbVirtualMethods":I
    invoke-direct {v12, v11, v15, v10, v9}, Lorg/ow2/asmdex/ApplicationReader;->visitFields(Lorg/ow2/asmdex/ClassVisitor;I[Ljava/lang/Object;I)V

    .line 619
    const/4 v6, 0x0

    invoke-direct {v12, v11, v7, v6, v9}, Lorg/ow2/asmdex/ApplicationReader;->visitFields(Lorg/ow2/asmdex/ClassVisitor;I[Ljava/lang/Object;I)V

    .line 623
    move/from16 v16, v0

    .end local v0    # "superclassIndex":I
    .local v16, "superclassIndex":I
    move-object/from16 v0, p0

    move/from16 v19, v1

    .end local v1    # "staticValuesOffset":I
    .local v19, "staticValuesOffset":I
    move-object v1, v11

    move/from16 v22, v2

    .end local v2    # "classIndex":I
    .local v22, "classIndex":I
    move/from16 v2, v17

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lorg/ow2/asmdex/ApplicationReader;->visitMethods(Lorg/ow2/asmdex/ClassVisitor;IIZZ)V

    .line 624
    move-object/from16 v6, p0

    move v0, v7

    .end local v7    # "nbInstanceFields":I
    .local v0, "nbInstanceFields":I
    move-object v7, v11

    move v1, v8

    .end local v8    # "sourceFileIndex":I
    .local v1, "sourceFileIndex":I
    move/from16 v8, v18

    move v2, v9

    .end local v9    # "annotationsOffset":I
    .local v2, "annotationsOffset":I
    move-object v3, v10

    .end local v10    # "staticValues":[Ljava/lang/Object;
    .local v3, "staticValues":[Ljava/lang/Object;
    move v10, v4

    move-object/from16 v26, v11

    .end local v11    # "classVisitor":Lorg/ow2/asmdex/ClassVisitor;
    .local v26, "classVisitor":Lorg/ow2/asmdex/ClassVisitor;
    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/ow2/asmdex/ApplicationReader;->visitMethods(Lorg/ow2/asmdex/ClassVisitor;IIZZ)V

    goto :goto_8

    .line 607
    .end local v3    # "staticValues":[Ljava/lang/Object;
    .end local v15    # "nbStaticFields":I
    .end local v16    # "superclassIndex":I
    .end local v17    # "nbDirectMethods":I
    .end local v18    # "nbVirtualMethods":I
    .end local v19    # "staticValuesOffset":I
    .end local v22    # "classIndex":I
    .end local v26    # "classVisitor":Lorg/ow2/asmdex/ClassVisitor;
    .local v0, "superclassIndex":I
    .local v1, "staticValuesOffset":I
    .local v2, "classIndex":I
    .restart local v8    # "sourceFileIndex":I
    .restart local v9    # "annotationsOffset":I
    .restart local v10    # "staticValues":[Ljava/lang/Object;
    .restart local v11    # "classVisitor":Lorg/ow2/asmdex/ClassVisitor;
    :cond_b
    move/from16 v16, v0

    move/from16 v19, v1

    move/from16 v22, v2

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object/from16 v26, v11

    .line 627
    .end local v0    # "superclassIndex":I
    .end local v8    # "sourceFileIndex":I
    .end local v9    # "annotationsOffset":I
    .end local v10    # "staticValues":[Ljava/lang/Object;
    .end local v11    # "classVisitor":Lorg/ow2/asmdex/ClassVisitor;
    .local v1, "sourceFileIndex":I
    .local v2, "annotationsOffset":I
    .restart local v3    # "staticValues":[Ljava/lang/Object;
    .restart local v16    # "superclassIndex":I
    .restart local v19    # "staticValuesOffset":I
    .restart local v22    # "classIndex":I
    .restart local v26    # "classVisitor":Lorg/ow2/asmdex/ClassVisitor;
    :goto_8
    invoke-virtual/range {v26 .. v26}, Lorg/ow2/asmdex/ClassVisitor;->visitEnd()V

    goto :goto_9

    .line 547
    .end local v3    # "staticValues":[Ljava/lang/Object;
    .end local v16    # "superclassIndex":I
    .end local v19    # "staticValuesOffset":I
    .end local v22    # "classIndex":I
    .end local v26    # "classVisitor":Lorg/ow2/asmdex/ClassVisitor;
    .end local v28    # "interfacesOffset":I
    .restart local v0    # "superclassIndex":I
    .local v1, "staticValuesOffset":I
    .local v2, "classIndex":I
    .restart local v10    # "staticValues":[Ljava/lang/Object;
    .restart local v11    # "classVisitor":Lorg/ow2/asmdex/ClassVisitor;
    .local v13, "annotationsOffset":I
    .local v14, "sourceFileIndex":I
    .local v15, "interfacesOffset":I
    .restart local v27    # "classDataOffset":I
    :cond_c
    move/from16 v16, v0

    move/from16 v19, v1

    move/from16 v22, v2

    move-object v3, v10

    move-object/from16 v26, v11

    move v2, v13

    move v1, v14

    move/from16 v28, v15

    move/from16 v14, v27

    .line 629
    .end local v0    # "superclassIndex":I
    .end local v10    # "staticValues":[Ljava/lang/Object;
    .end local v11    # "classVisitor":Lorg/ow2/asmdex/ClassVisitor;
    .end local v13    # "annotationsOffset":I
    .end local v15    # "interfacesOffset":I
    .end local v27    # "classDataOffset":I
    .local v1, "sourceFileIndex":I
    .local v2, "annotationsOffset":I
    .restart local v3    # "staticValues":[Ljava/lang/Object;
    .local v14, "classDataOffset":I
    .restart local v16    # "superclassIndex":I
    .restart local v19    # "staticValuesOffset":I
    .restart local v22    # "classIndex":I
    .restart local v26    # "classVisitor":Lorg/ow2/asmdex/ClassVisitor;
    .restart local v28    # "interfacesOffset":I
    :goto_9
    return-void
.end method

.method private visitDefaultAnnotationValue(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "annotationVisitor"    # Lorg/ow2/asmdex/AnnotationVisitor;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 848
    instance-of v0, p3, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;

    if-eqz v0, :cond_5

    .line 849
    move-object v0, p3

    check-cast v0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;

    .line 850
    .local v0, "dav":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;
    invoke-virtual {v0}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->getDesc()Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, "desc":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 853
    invoke-virtual {p1, p2}, Lorg/ow2/asmdex/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v2

    .line 854
    .local v2, "av":Lorg/ow2/asmdex/AnnotationVisitor;
    if-eqz v2, :cond_1

    .line 855
    invoke-virtual {v0}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->getDefaultAnnotationInformationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;

    .line 856
    .local v4, "info":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;
    invoke-virtual {v4}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lorg/ow2/asmdex/ApplicationReader;->visitDefaultAnnotationValue(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 857
    .end local v4    # "info":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;
    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {v2}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 860
    .end local v2    # "av":Lorg/ow2/asmdex/AnnotationVisitor;
    :cond_1
    goto :goto_2

    .line 862
    :cond_2
    invoke-virtual {p1, p2, v1}, Lorg/ow2/asmdex/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v2

    .line 863
    .restart local v2    # "av":Lorg/ow2/asmdex/AnnotationVisitor;
    if-eqz v2, :cond_4

    .line 864
    invoke-virtual {v0}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;->getDefaultAnnotationInformationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;

    .line 865
    .restart local v4    # "info":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;
    invoke-virtual {v4}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lorg/ow2/asmdex/ApplicationReader;->visitDefaultAnnotationValue(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 866
    .end local v4    # "info":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;
    goto :goto_1

    .line 867
    :cond_3
    invoke-virtual {v2}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 870
    .end local v0    # "dav":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationVisitor;
    .end local v1    # "desc":Ljava/lang/String;
    .end local v2    # "av":Lorg/ow2/asmdex/AnnotationVisitor;
    :cond_4
    :goto_2
    goto :goto_3

    :cond_5
    instance-of v0, p3, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$EnumInfo;

    if-eqz v0, :cond_6

    .line 871
    move-object v0, p3

    check-cast v0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$EnumInfo;

    .line 872
    .local v0, "enumInfo":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$EnumInfo;
    iget-object v1, v0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$EnumInfo;->enumDesc:Ljava/lang/String;

    iget-object v2, v0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$EnumInfo;->enumValue:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v2}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .end local v0    # "enumInfo":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$EnumInfo;
    goto :goto_3

    :cond_6
    instance-of v0, p3, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$ClassInfo;

    if-eqz v0, :cond_7

    .line 874
    move-object v0, p3

    check-cast v0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$ClassInfo;

    .line 875
    .local v0, "classInfo":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$ClassInfo;
    iget-object v1, v0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$ClassInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/ow2/asmdex/AnnotationVisitor;->visitClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    .end local v0    # "classInfo":Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$ClassInfo;
    goto :goto_3

    .line 878
    :cond_7
    invoke-virtual {p1, p2, p3}, Lorg/ow2/asmdex/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 880
    :goto_3
    return-void
.end method

.method private visitFields(Lorg/ow2/asmdex/ClassVisitor;I[Ljava/lang/Object;I)V
    .locals 22
    .param p1, "classVisitor"    # Lorg/ow2/asmdex/ClassVisitor;
    .param p2, "nbFields"    # I
    .param p3, "staticValues"    # [Ljava/lang/Object;
    .param p4, "annotationsOffset"    # I

    .line 645
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 647
    .local v2, "fieldIndex":I
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    array-length v4, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 648
    .local v4, "nbStaticValues":I
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move/from16 v6, p2

    if-ge v5, v6, :cond_6

    .line 649
    iget-object v7, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v7

    .line 651
    .local v7, "readFieldIndex":I
    if-nez v5, :cond_1

    move v8, v7

    goto :goto_2

    :cond_1
    add-int v8, v2, v7

    :goto_2
    move v2, v8

    .line 652
    iget-object v8, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v8}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v8

    .line 653
    .local v8, "fieldAccessFlags":I
    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v9}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v15

    .line 655
    .local v15, "saveDexFilePosition":I
    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v9, v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getOffsetFieldIdItem(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 657
    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v9}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->skipShort()V

    .line 658
    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v9}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v14

    .line 659
    .local v14, "typeIndexInFieldId":I
    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v9}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v13

    .line 662
    .local v13, "nameIndexInFieldId":I
    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v9, v13}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v16

    .line 663
    .local v16, "fieldName":Ljava/lang/String;
    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v9, v14}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v17

    .line 667
    .local v17, "fieldType":Ljava/lang/String;
    const/4 v9, 0x0

    .line 668
    .local v9, "fieldValue":Ljava/lang/Object;
    if-ge v5, v4, :cond_2

    .line 669
    aget-object v9, v1, v5

    move-object/from16 v18, v9

    goto :goto_3

    .line 668
    :cond_2
    move-object/from16 v18, v9

    .line 674
    .end local v9    # "fieldValue":Ljava/lang/Object;
    .local v18, "fieldValue":Ljava/lang/Object;
    :goto_3
    const/4 v9, 0x0

    .line 675
    .local v9, "signature":[Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 676
    iget-object v10, v0, Lorg/ow2/asmdex/ApplicationReader;->fieldAnnotationOffsetsOfClass:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 677
    iget-object v10, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    iget-object v11, v0, Lorg/ow2/asmdex/ApplicationReader;->fieldAnnotationOffsetsOfClass:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 678
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationReader;->readSignatureAnnotation()[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v9

    goto :goto_4

    .line 682
    :cond_3
    move-object/from16 v19, v9

    .end local v9    # "signature":[Ljava/lang/String;
    .local v19, "signature":[Ljava/lang/String;
    :goto_4
    move-object/from16 v9, p1

    move v10, v8

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move/from16 v20, v13

    .end local v13    # "nameIndexInFieldId":I
    .local v20, "nameIndexInFieldId":I
    move-object/from16 v13, v19

    move/from16 v21, v14

    .end local v14    # "typeIndexInFieldId":I
    .local v21, "typeIndexInFieldId":I
    move-object/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Lorg/ow2/asmdex/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;

    move-result-object v9

    .line 685
    .local v9, "fieldVisitor":Lorg/ow2/asmdex/FieldVisitor;
    if-eqz v9, :cond_5

    .line 687
    if-eqz p4, :cond_4

    .line 688
    iget-object v10, v0, Lorg/ow2/asmdex/ApplicationReader;->fieldAnnotationOffsetsOfClass:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 689
    iget-object v10, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    iget-object v11, v0, Lorg/ow2/asmdex/ApplicationReader;->fieldAnnotationOffsetsOfClass:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 690
    sget-object v10, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->fieldVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    invoke-direct {v0, v9, v3, v10}, Lorg/ow2/asmdex/ApplicationReader;->readAndVisitAnnotations(Ljava/lang/Object;ILorg/ow2/asmdex/ApplicationReader$VisitorType;)V

    .line 693
    :cond_4
    invoke-virtual {v9}, Lorg/ow2/asmdex/FieldVisitor;->visitEnd()V

    .line 695
    :cond_5
    iget-object v10, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v10, v15}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 648
    .end local v7    # "readFieldIndex":I
    .end local v8    # "fieldAccessFlags":I
    .end local v9    # "fieldVisitor":Lorg/ow2/asmdex/FieldVisitor;
    .end local v15    # "saveDexFilePosition":I
    .end local v16    # "fieldName":Ljava/lang/String;
    .end local v17    # "fieldType":Ljava/lang/String;
    .end local v18    # "fieldValue":Ljava/lang/Object;
    .end local v19    # "signature":[Ljava/lang/String;
    .end local v20    # "nameIndexInFieldId":I
    .end local v21    # "typeIndexInFieldId":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 697
    .end local v5    # "i":I
    :cond_6
    return-void
.end method

.method private visitMethods(Lorg/ow2/asmdex/ClassVisitor;IIZZ)V
    .locals 19
    .param p1, "classVisitor"    # Lorg/ow2/asmdex/ClassVisitor;
    .param p2, "nbMethods"    # I
    .param p3, "annotationsOffset"    # I
    .param p4, "skipDebug"    # Z
    .param p5, "skipCode"    # Z

    .line 714
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 715
    .local v1, "methodIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v3, p2

    if-ge v2, v3, :cond_c

    .line 716
    iget-object v4, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v4

    .line 718
    .local v4, "readMethodIndex":I
    if-nez v2, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    add-int v5, v1, v4

    :goto_1
    move v1, v5

    .line 719
    iget-object v5, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v5

    .line 720
    .local v5, "methodAccessFlags":I
    iget-object v6, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uleb128()I

    move-result v12

    .line 721
    .local v12, "codeOffset":I
    iget-object v6, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v13

    .line 723
    .local v13, "saveDexFilePosition":I
    iget-object v6, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getOffsetMethodIdItem(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 725
    iget-object v6, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->skipShort()V

    .line 726
    iget-object v6, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->ushort()I

    move-result v14

    .line 727
    .local v14, "protoIndexInFieldId":I
    iget-object v6, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v15

    .line 730
    .local v15, "nameIndexInFieldId":I
    iget-object v6, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v15}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v11

    .line 733
    .local v11, "methodName":Ljava/lang/String;
    iget-object v6, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v6, v14}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getDescriptorFromPrototypeIndex(I)Ljava/lang/String;

    move-result-object v16

    .line 737
    .local v16, "methodDescriptor":Ljava/lang/String;
    const/4 v6, 0x0

    .line 738
    .local v6, "exceptions":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 739
    .local v7, "signature":[Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 741
    iget-object v8, v0, Lorg/ow2/asmdex/ApplicationReader;->methodAnnotationOffsetsOfClass:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 742
    iget-object v8, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationReader;->methodAnnotationOffsetsOfClass:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 743
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationReader;->readExceptionAnnotations()Ljava/util/List;

    move-result-object v8

    .line 744
    .local v8, "exceptionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    .line 745
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    check-cast v6, [Ljava/lang/String;

    .line 748
    :cond_1
    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    iget-object v10, v0, Lorg/ow2/asmdex/ApplicationReader;->methodAnnotationOffsetsOfClass:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 749
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationReader;->readSignatureAnnotation()[Ljava/lang/String;

    move-result-object v7

    move-object v3, v6

    move-object v10, v7

    goto :goto_2

    .line 753
    .end local v8    # "exceptionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object v3, v6

    move-object v10, v7

    .end local v6    # "exceptions":[Ljava/lang/String;
    .end local v7    # "signature":[Ljava/lang/String;
    .local v3, "exceptions":[Ljava/lang/String;
    .local v10, "signature":[Ljava/lang/String;
    :goto_2
    move-object/from16 v6, p1

    move v7, v5

    move-object v8, v11

    move-object/from16 v9, v16

    move-object/from16 v17, v10

    .end local v10    # "signature":[Ljava/lang/String;
    .local v17, "signature":[Ljava/lang/String;
    move/from16 v18, v4

    move-object v4, v11

    .end local v11    # "methodName":Ljava/lang/String;
    .local v4, "methodName":Ljava/lang/String;
    .local v18, "readMethodIndex":I
    move-object v11, v3

    invoke-virtual/range {v6 .. v11}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v6

    .line 755
    .local v6, "methodVisitor":Lorg/ow2/asmdex/MethodVisitor;
    if-eqz v6, :cond_b

    .line 757
    if-eqz p3, :cond_5

    .line 761
    iget-object v7, v0, Lorg/ow2/asmdex/ApplicationReader;->defaultAnnotations:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 762
    invoke-virtual {v6}, Lorg/ow2/asmdex/MethodVisitor;->visitAnnotationDefault()Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v7

    .line 765
    .local v7, "annotationVisitor":Lorg/ow2/asmdex/AnnotationVisitor;
    if-eqz v7, :cond_3

    .line 766
    iget-object v8, v0, Lorg/ow2/asmdex/ApplicationReader;->defaultAnnotations:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;

    invoke-virtual {v8}, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 767
    .local v8, "value":Ljava/lang/Object;
    invoke-direct {v0, v7, v4, v8}, Lorg/ow2/asmdex/ApplicationReader;->visitDefaultAnnotationValue(Lorg/ow2/asmdex/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 768
    invoke-virtual {v7}, Lorg/ow2/asmdex/AnnotationVisitor;->visitEnd()V

    .line 773
    .end local v7    # "annotationVisitor":Lorg/ow2/asmdex/AnnotationVisitor;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v7, v0, Lorg/ow2/asmdex/ApplicationReader;->methodAnnotationOffsetsOfClass:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 774
    iget-object v7, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    iget-object v8, v0, Lorg/ow2/asmdex/ApplicationReader;->methodAnnotationOffsetsOfClass:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 775
    const/4 v7, -0x1

    sget-object v8, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->methodVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    invoke-direct {v0, v6, v7, v8}, Lorg/ow2/asmdex/ApplicationReader;->readAndVisitAnnotations(Ljava/lang/Object;ILorg/ow2/asmdex/ApplicationReader$VisitorType;)V

    .line 779
    :cond_4
    iget-object v7, v0, Lorg/ow2/asmdex/ApplicationReader;->parameterAnnotationOffsetsOfClass:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 780
    iget-object v7, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    iget-object v8, v0, Lorg/ow2/asmdex/ApplicationReader;->parameterAnnotationOffsetsOfClass:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 781
    iget-object v7, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v7

    .line 783
    .local v7, "nbAnnotations":I
    const/4 v8, 0x0

    .local v8, "annotationIndex":I
    :goto_3
    if-ge v8, v7, :cond_5

    .line 784
    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v9}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v9

    .line 785
    .local v9, "annotationSetItemOffset":I
    iget-object v10, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v10}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getPos()I

    move-result v10

    .line 786
    .local v10, "saveReaderPosition":I
    iget-object v11, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v11, v9}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 787
    sget-object v11, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->methodVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    invoke-direct {v0, v6, v8, v11}, Lorg/ow2/asmdex/ApplicationReader;->readAndVisitAnnotations(Ljava/lang/Object;ILorg/ow2/asmdex/ApplicationReader$VisitorType;)V

    .line 788
    iget-object v11, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v11, v10}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 783
    .end local v9    # "annotationSetItemOffset":I
    .end local v10    # "saveReaderPosition":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 793
    .end local v7    # "nbAnnotations":I
    .end local v8    # "annotationIndex":I
    :cond_5
    const/4 v7, 0x0

    .line 796
    .local v7, "isOptimizationUsed":Z
    if-nez p5, :cond_a

    .line 808
    instance-of v8, v6, Lorg/ow2/asmdex/MethodWriter;

    if-eqz v8, :cond_7

    .line 809
    move-object v8, v6

    check-cast v8, Lorg/ow2/asmdex/MethodWriter;

    .line 810
    .local v8, "methodWriter":Lorg/ow2/asmdex/MethodWriter;
    invoke-virtual {v8}, Lorg/ow2/asmdex/MethodWriter;->getClassWriter()Lorg/ow2/asmdex/ClassWriter;

    move-result-object v9

    invoke-virtual {v9}, Lorg/ow2/asmdex/ClassWriter;->getApplicationWriter()Lorg/ow2/asmdex/ApplicationWriter;

    move-result-object v9

    invoke-virtual {v9}, Lorg/ow2/asmdex/ApplicationWriter;->getApplicationReader()Lorg/ow2/asmdex/ApplicationReader;

    move-result-object v9

    if-ne v9, v0, :cond_6

    .line 812
    invoke-virtual {v8}, Lorg/ow2/asmdex/MethodWriter;->getMethod()Lorg/ow2/asmdex/structureWriter/Method;

    move-result-object v9

    invoke-virtual {v9}, Lorg/ow2/asmdex/structureWriter/Method;->getSignature()[Ljava/lang/String;

    move-result-object v9

    .line 813
    .local v9, "otherSignature":[Ljava/lang/String;
    move-object/from16 v10, v17

    .end local v17    # "signature":[Ljava/lang/String;
    .local v10, "signature":[Ljava/lang/String;
    invoke-static {v10, v9}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 815
    invoke-virtual {v8}, Lorg/ow2/asmdex/MethodWriter;->getMethod()Lorg/ow2/asmdex/structureWriter/Method;

    move-result-object v11

    invoke-virtual {v11}, Lorg/ow2/asmdex/structureWriter/Method;->getExceptionNames()[Ljava/lang/String;

    move-result-object v11

    .line 816
    .local v11, "otherExceptions":[Ljava/lang/String;
    invoke-static {v3, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 822
    const/4 v7, 0x1

    .line 823
    invoke-virtual {v8, v12}, Lorg/ow2/asmdex/MethodWriter;->setStartBytecodeToCopy(I)V

    goto :goto_4

    .line 810
    .end local v9    # "otherSignature":[Ljava/lang/String;
    .end local v10    # "signature":[Ljava/lang/String;
    .end local v11    # "otherExceptions":[Ljava/lang/String;
    .restart local v17    # "signature":[Ljava/lang/String;
    :cond_6
    move-object/from16 v10, v17

    .end local v17    # "signature":[Ljava/lang/String;
    .restart local v10    # "signature":[Ljava/lang/String;
    goto :goto_4

    .line 808
    .end local v8    # "methodWriter":Lorg/ow2/asmdex/MethodWriter;
    .end local v10    # "signature":[Ljava/lang/String;
    .restart local v17    # "signature":[Ljava/lang/String;
    :cond_7
    move-object/from16 v10, v17

    .line 831
    .end local v17    # "signature":[Ljava/lang/String;
    .restart local v10    # "signature":[Ljava/lang/String;
    :cond_8
    :goto_4
    if-nez v7, :cond_9

    .line 832
    new-instance v8, Lorg/ow2/asmdex/MethodCodeReader;

    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    move/from16 v11, p4

    invoke-direct {v8, v9, v6, v12, v11}, Lorg/ow2/asmdex/MethodCodeReader;-><init>(Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;Lorg/ow2/asmdex/MethodVisitor;IZ)V

    .line 834
    .local v8, "methodCodeReader":Lorg/ow2/asmdex/MethodCodeReader;
    invoke-virtual {v8}, Lorg/ow2/asmdex/MethodCodeReader;->visitMethodCode()V

    goto :goto_5

    .line 831
    .end local v8    # "methodCodeReader":Lorg/ow2/asmdex/MethodCodeReader;
    :cond_9
    move/from16 v11, p4

    goto :goto_5

    .line 796
    .end local v10    # "signature":[Ljava/lang/String;
    .restart local v17    # "signature":[Ljava/lang/String;
    :cond_a
    move/from16 v11, p4

    move-object/from16 v10, v17

    .line 840
    .end local v17    # "signature":[Ljava/lang/String;
    .restart local v10    # "signature":[Ljava/lang/String;
    :goto_5
    invoke-virtual {v6}, Lorg/ow2/asmdex/MethodVisitor;->visitEnd()V

    goto :goto_6

    .line 755
    .end local v7    # "isOptimizationUsed":Z
    .end local v10    # "signature":[Ljava/lang/String;
    .restart local v17    # "signature":[Ljava/lang/String;
    :cond_b
    move/from16 v11, p4

    move-object/from16 v10, v17

    .line 843
    .end local v17    # "signature":[Ljava/lang/String;
    .restart local v10    # "signature":[Ljava/lang/String;
    :goto_6
    iget-object v7, v0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v7, v13}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 715
    .end local v3    # "exceptions":[Ljava/lang/String;
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v5    # "methodAccessFlags":I
    .end local v6    # "methodVisitor":Lorg/ow2/asmdex/MethodVisitor;
    .end local v10    # "signature":[Ljava/lang/String;
    .end local v12    # "codeOffset":I
    .end local v13    # "saveDexFilePosition":I
    .end local v14    # "protoIndexInFieldId":I
    .end local v15    # "nameIndexInFieldId":I
    .end local v16    # "methodDescriptor":Ljava/lang/String;
    .end local v18    # "readMethodIndex":I
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    move/from16 v11, p4

    .line 845
    .end local v2    # "i":I
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/ApplicationVisitor;I)V
    .locals 1
    .param p1, "applicationVisitor"    # Lorg/ow2/asmdex/ApplicationVisitor;
    .param p2, "flags"    # I

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/ow2/asmdex/ApplicationReader;->accept(Lorg/ow2/asmdex/ApplicationVisitor;[Ljava/lang/String;Ljava/lang/Object;I)V

    .line 354
    return-void
.end method

.method public accept(Lorg/ow2/asmdex/ApplicationVisitor;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "applicationVisitor"    # Lorg/ow2/asmdex/ApplicationVisitor;
    .param p2, "classesToVisit"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/ow2/asmdex/ApplicationReader;->accept(Lorg/ow2/asmdex/ApplicationVisitor;[Ljava/lang/String;Ljava/lang/Object;I)V

    .line 339
    return-void
.end method

.method public accept(Lorg/ow2/asmdex/ApplicationVisitor;[Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 6
    .param p1, "applicationVisitor"    # Lorg/ow2/asmdex/ApplicationVisitor;
    .param p2, "classesToVisit"    # [Ljava/lang/String;
    .param p3, "attrs"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .line 374
    invoke-virtual {p1}, Lorg/ow2/asmdex/ApplicationVisitor;->visit()V

    .line 377
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getClassDefinitionsSize()I

    move-result v0

    .line 431
    .local v0, "classDefinitionsSize":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->typeIdToClassIndexMap:Ljava/util/HashMap;

    .line 432
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->classNameToIndex:Ljava/util/HashMap;

    .line 433
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 434
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getClassDefinitionOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 435
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v2

    .line 436
    .local v2, "classIndexRead":I
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->typeIdToClassIndexMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3, v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "className":Ljava/lang/String;
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationReader;->classNameToIndex:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .end local v2    # "classIndexRead":I
    .end local v3    # "className":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "index":I
    :cond_0
    if-nez p2, :cond_2

    .line 448
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 449
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getClassDefinitionOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->seek(I)V

    .line 450
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->uint()I

    move-result v2

    .line 451
    .restart local v2    # "classIndexRead":I
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v3, v2}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v3

    .line 452
    .restart local v3    # "className":Ljava/lang/String;
    invoke-direct {p0, p1, v3, p4}, Lorg/ow2/asmdex/ApplicationReader;->visitClass(Lorg/ow2/asmdex/ApplicationVisitor;Ljava/lang/String;I)V

    .line 448
    .end local v2    # "classIndexRead":I
    .end local v3    # "className":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "index":I
    :cond_1
    goto :goto_3

    .line 456
    :cond_2
    array-length v1, p2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 457
    .restart local v3    # "className":Ljava/lang/String;
    invoke-direct {p0, p1, v3, p4}, Lorg/ow2/asmdex/ApplicationReader;->visitClass(Lorg/ow2/asmdex/ApplicationVisitor;Ljava/lang/String;I)V

    .line 456
    .end local v3    # "className":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 462
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lorg/ow2/asmdex/ApplicationVisitor;->visitEnd()V

    .line 463
    return-void
.end method

.method public copyPool(Lorg/ow2/asmdex/ApplicationWriter;)V
    .locals 7
    .param p1, "applicationWriter"    # Lorg/ow2/asmdex/ApplicationWriter;

    .line 1598
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringIdsSize()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1599
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v2

    .line 1600
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/ow2/asmdex/ApplicationWriter;->addStringFromApplicationReader(Ljava/lang/String;)V

    .line 1598
    .end local v2    # "string":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1604
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getTypeIdsSize()I

    move-result v1

    .restart local v1    # "size":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1605
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v2

    .line 1606
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/ow2/asmdex/ApplicationWriter;->addTypeNameFromApplicationReader(Ljava/lang/String;)V

    .line 1604
    .end local v2    # "type":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1610
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getFieldIdsSize()I

    move-result v1

    .restart local v1    # "size":I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 1611
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getFieldIdItem(I)Lorg/ow2/asmdex/structureReader/FieldIdItem;

    move-result-object v2

    .line 1612
    .local v2, "fii":Lorg/ow2/asmdex/structureReader/FieldIdItem;
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/FieldIdItem;->getClassIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v3

    .line 1613
    .local v3, "className":Ljava/lang/String;
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/FieldIdItem;->getTypeIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v4

    .line 1614
    .local v4, "type":Ljava/lang/String;
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/FieldIdItem;->getNameIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v5

    .line 1615
    .local v5, "fieldName":Ljava/lang/String;
    invoke-virtual {p1, v3, v4, v5}, Lorg/ow2/asmdex/ApplicationWriter;->addFieldFromApplicationReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    .end local v2    # "fii":Lorg/ow2/asmdex/structureReader/FieldIdItem;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "fieldName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1619
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getMethodIdsSize()I

    move-result v1

    .restart local v1    # "size":I
    :goto_3
    if-ge v0, v1, :cond_3

    .line 1620
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2, v0}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getMethodIdItem(I)Lorg/ow2/asmdex/structureReader/MethodIdItem;

    move-result-object v2

    .line 1621
    .local v2, "mii":Lorg/ow2/asmdex/structureReader/MethodIdItem;
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/MethodIdItem;->getClassIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromTypeIndex(I)Ljava/lang/String;

    move-result-object v3

    .line 1622
    .restart local v3    # "className":Ljava/lang/String;
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/MethodIdItem;->getNameIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getStringItemFromStringIndex(I)Ljava/lang/String;

    move-result-object v4

    .line 1623
    .local v4, "methodName":Ljava/lang/String;
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureReader/MethodIdItem;->getPrototypeIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;->getDescriptorFromPrototypeIndex(I)Ljava/lang/String;

    move-result-object v5

    .line 1624
    .local v5, "prototype":Ljava/lang/String;
    invoke-virtual {p1, v3, v5, v4}, Lorg/ow2/asmdex/ApplicationWriter;->addMethodFromApplicationReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    .end local v2    # "mii":Lorg/ow2/asmdex/structureReader/MethodIdItem;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v5    # "prototype":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1626
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_3
    return-void
.end method

.method public getDexFile()Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationReader;->dexFile:Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;

    return-object v0
.end method
