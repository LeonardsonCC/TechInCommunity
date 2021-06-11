.class public Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "PseudoInstructionFillArrayData.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IPseudoInstruction;


# static fields
.field private static final FILL_ARRAY_DATA_OPCODE:I = 0x300


# instance fields
.field private dataArray:[Ljava/lang/Object;

.field private elementWidth:I

.field private instructionFillArrayData:Lorg/ow2/asmdex/instruction/IOffsetInstruction;

.field private type:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;Lorg/ow2/asmdex/instruction/IOffsetInstruction;)V
    .locals 1
    .param p1, "dataArray"    # [Ljava/lang/Object;
    .param p2, "instructionFillArrayData"    # Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    .line 85
    const/16 v0, 0x300

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->type:I

    .line 86
    iput-object p1, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->dataArray:[Ljava/lang/Object;

    .line 87
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->instructionFillArrayData:Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    .line 88
    invoke-direct {p0}, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->setElementWidthAndType()V

    .line 89
    return-void
.end method

.method private setElementWidthAndType()V
    .locals 5

    .line 178
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->dataArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 179
    .local v0, "value":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    .line 180
    iput v3, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->elementWidth:I

    .line 181
    iput v3, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->type:I

    goto :goto_0

    .line 182
    :cond_0
    instance-of v2, v0, Ljava/lang/Boolean;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 183
    iput v4, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->elementWidth:I

    .line 184
    const/16 v1, 0x1f

    iput v1, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->type:I

    goto :goto_0

    .line 185
    :cond_1
    instance-of v2, v0, Ljava/lang/Byte;

    if-eqz v2, :cond_2

    .line 186
    iput v4, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->elementWidth:I

    .line 187
    iput v1, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->type:I

    goto :goto_0

    .line 188
    :cond_2
    instance-of v1, v0, Ljava/lang/Character;

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    .line 189
    iput v2, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->elementWidth:I

    .line 190
    const/4 v1, 0x3

    iput v1, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->type:I

    goto :goto_0

    .line 191
    :cond_3
    instance-of v1, v0, Ljava/lang/Double;

    const/16 v4, 0x8

    if-eqz v1, :cond_4

    .line 192
    iput v4, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->elementWidth:I

    .line 193
    const/16 v1, 0x11

    iput v1, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->type:I

    goto :goto_0

    .line 194
    :cond_4
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 195
    iput v3, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->elementWidth:I

    .line 196
    const/16 v1, 0x10

    iput v1, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->type:I

    goto :goto_0

    .line 197
    :cond_5
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 198
    iput v4, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->elementWidth:I

    .line 199
    const/4 v1, 0x6

    iput v1, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->type:I

    goto :goto_0

    .line 200
    :cond_6
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_7

    .line 201
    iput v2, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->elementWidth:I

    .line 202
    iput v2, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->type:I

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Array of this type can\'t be encoded."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->dataArray:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->elementWidth:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getSourceInstruction()Lorg/ow2/asmdex/instruction/IOffsetInstruction;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->instructionFillArrayData:Lorg/ow2/asmdex/instruction/IOffsetInstruction;

    return-object v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 5
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 108
    const/16 v0, 0x300

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 110
    iget v0, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->elementWidth:I

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 111
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->dataArray:[Ljava/lang/Object;

    array-length v0, v0

    .line 112
    .local v0, "size":I
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 114
    iget v1, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->type:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    const/4 v4, 0x6

    if-eq v1, v4, :cond_d

    const/16 v4, 0x1f

    if-eq v1, v4, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    goto/16 :goto_9

    .line 149
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 150
    iget-object v2, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->dataArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putLong(J)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_1
    goto/16 :goto_9

    .line 143
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 144
    iget-object v2, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->dataArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    .end local v1    # "i":I
    :cond_3
    goto/16 :goto_9

    .line 137
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 138
    iget-object v2, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->dataArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 140
    .end local v1    # "i":I
    :cond_5
    goto/16 :goto_9

    .line 131
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v0, :cond_7

    .line 132
    iget-object v2, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->dataArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {p1, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 134
    .end local v1    # "i":I
    :cond_7
    goto :goto_9

    .line 125
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_9

    .line 126
    iget-object v2, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->dataArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {p1, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 128
    .end local v1    # "i":I
    :cond_9
    goto :goto_9

    .line 161
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v0, :cond_c

    .line 162
    iget-object v4, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->dataArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, -0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p1, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 164
    .end local v1    # "i":I
    :cond_c
    rem-int/lit8 v1, v0, 0x2

    if-ne v1, v3, :cond_11

    .line 165
    invoke-virtual {p1, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    goto :goto_9

    .line 155
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v0, :cond_e

    .line 156
    iget-object v2, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->dataArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putLong(J)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 158
    .end local v1    # "i":I
    :cond_e
    goto :goto_9

    .line 116
    :cond_f
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, v0, :cond_10

    .line 117
    iget-object v4, p0, Lorg/ow2/asmdex/instruction/PseudoInstructionFillArrayData;->dataArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {p1, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 119
    .end local v1    # "i":I
    :cond_10
    rem-int/lit8 v1, v0, 0x2

    if-ne v1, v3, :cond_11

    .line 120
    invoke-virtual {p1, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 170
    :cond_11
    :goto_9
    return-void
.end method
