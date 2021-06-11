.class public abstract Lorg/ow2/asmdex/instruction/Instruction;
.super Ljava/lang/Object;
.source "Instruction.java"


# static fields
.field private static final instructionSizeInBytes:[B


# instance fields
.field protected lineNumber:I

.field protected opcodeByte:I

.field protected opcodeHighOrderByte:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 201
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/ow2/asmdex/instruction/Instruction;->instructionSizeInBytes:[B

    return-void

    :array_0
    .array-data 1
        0x2t
        0x2t
        0x4t
        0x6t
        0x2t
        0x4t
        0x6t
        0x2t
        0x4t
        0x6t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x4t
        0x6t
        0x4t
        0x4t
        0x6t
        0xat
        0x4t
        0x4t
        0x6t
        0x4t
        0x2t
        0x2t
        0x4t
        0x4t
        0x2t
        0x4t
        0x4t
        0x6t
        0x6t
        0x6t
        0x2t
        0x2t
        0x4t
        0x6t
        0x6t
        0x6t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x2t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "opcode"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/ow2/asmdex/instruction/Instruction;->opcodeHighOrderByte:I

    .line 68
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/ow2/asmdex/instruction/Instruction;->opcodeByte:I

    .line 69
    return-void
.end method

.method public static getInstructionSizeInByte(I)B
    .locals 1
    .param p0, "opcode"    # I

    .line 226
    sget-object v0, Lorg/ow2/asmdex/instruction/Instruction;->instructionSizeInBytes:[B

    aget-byte v0, v0, p0

    return v0
.end method

.method public static test16BitsLimit(I)V
    .locals 3
    .param p0, "number"    # I

    .line 170
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 173
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be held in 16 bits !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static test4BitsLimit(I)V
    .locals 3
    .param p0, "number"    # I

    .line 152
    const/16 v0, 0xf

    if-gt p0, v0, :cond_0

    .line 155
    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be held in 4 bits !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static test4BitsLimit([I)V
    .locals 3
    .param p0, "numbers"    # [I

    .line 178
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 179
    .local v2, "number":I
    invoke-static {v2}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit(I)V

    .line 178
    .end local v2    # "number":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public static test8BitsLimit(I)V
    .locals 3
    .param p0, "number"    # I

    .line 161
    and-int/lit16 v0, p0, -0x100

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be held in 8 bits !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static testRange([I)V
    .locals 6
    .param p0, "numbers"    # [I

    .line 187
    array-length v0, p0

    .line 188
    .local v0, "length":I
    if-eqz v0, :cond_2

    .line 191
    const/4 v1, 0x0

    aget v1, p0, v1

    .line 192
    .local v1, "expected":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 193
    aget v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    if-ne v3, v1, :cond_0

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The register at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not consecutive."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 189
    .end local v1    # "expected":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Too short for a range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/ow2/asmdex/instruction/Instruction;->lineNumber:I

    return v0
.end method

.method public getOpcodeByte()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/ow2/asmdex/instruction/Instruction;->opcodeByte:I

    return v0
.end method

.method public getOpcodeHighOrderByte()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/ow2/asmdex/instruction/Instruction;->opcodeHighOrderByte:I

    return v0
.end method

.method public abstract getSize()I
.end method

.method public recycle()V
    .locals 0

    .line 73
    return-void
.end method

.method public setLineNumber(I)V
    .locals 0
    .param p1, "lineNumber"    # I

    .line 140
    iput p1, p0, Lorg/ow2/asmdex/instruction/Instruction;->lineNumber:I

    .line 141
    return-void
.end method

.method public abstract write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
.end method
