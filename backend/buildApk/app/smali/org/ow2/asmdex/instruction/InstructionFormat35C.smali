.class public Lorg/ow2/asmdex/instruction/InstructionFormat35C;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat35C.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IRegisterArrayInstruction;
.implements Lorg/ow2/asmdex/instruction/IIndexInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x6


# instance fields
.field private index:I

.field private method:Lorg/ow2/asmdex/structureWriter/Method;

.field private registers:[I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;[I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "registers"    # [I

    .line 154
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 155
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->type:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->registers:[I

    .line 157
    invoke-static {p3}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit([I)V

    .line 158
    return-void
.end method

.method public constructor <init>(ILorg/ow2/asmdex/structureWriter/Method;[I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "method"    # Lorg/ow2/asmdex/structureWriter/Method;
    .param p3, "registers"    # [I

    .line 141
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 142
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->method:Lorg/ow2/asmdex/structureWriter/Method;

    .line 143
    iput-object p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->registers:[I

    .line 144
    invoke-static {p3}, Lorg/ow2/asmdex/instruction/Instruction;->test4BitsLimit([I)V

    .line 145
    return-void
.end method

.method public static getIndex(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 83
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    return v0
.end method

.method public static getRegisters(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)[I
    .locals 6
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .param p1, "opcode"    # I

    .line 95
    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0xf

    .line 96
    .local v0, "nbRegisters":I
    new-array v1, v0, [I

    .line 97
    .local v1, "registers":[I
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v2

    .line 98
    .local v2, "thirdShort":I
    if-lez v0, :cond_5

    .line 99
    const/4 v3, 0x0

    and-int/lit8 v4, v2, 0xf

    aput v4, v1, v3

    .line 100
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 101
    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aput v4, v1, v3

    .line 103
    :cond_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    .line 104
    shr-int/lit8 v4, v2, 0x8

    and-int/lit8 v4, v4, 0xf

    aput v4, v1, v3

    .line 106
    :cond_1
    const/4 v3, 0x3

    if-le v0, v3, :cond_2

    .line 107
    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xf

    aput v4, v1, v3

    .line 109
    :cond_2
    const/4 v3, 0x4

    if-le v0, v3, :cond_3

    .line 110
    shr-int/lit8 v4, p1, 0x8

    and-int/lit8 v4, v4, 0xf

    aput v4, v1, v3

    .line 112
    :cond_3
    const/4 v3, 0x5

    if-gt v0, v3, :cond_4

    goto :goto_0

    .line 114
    :cond_4
    :try_start_0
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Abnormal arguments number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "nbRegisters":I
    .end local v1    # "registers":[I
    .end local v2    # "thirdShort":I
    .end local p0    # "reader":Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .end local p1    # "opcode":I
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .restart local v0    # "nbRegisters":I
    .restart local v1    # "registers":[I
    .restart local v2    # "thirdShort":I
    .restart local p0    # "reader":Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .restart local p1    # "opcode":I
    :catch_0
    move-exception v3

    .line 116
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_0
    return-object v1
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 131
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 132
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->index:I

    return v0
.end method

.method public getRegisters()[I
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->registers:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 162
    const/4 v0, 0x6

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 6
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 167
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->registers:[I

    array-length v0, v0

    .line 169
    .local v0, "nbRegisters":I
    shl-int/lit8 v1, v0, 0xc

    iget v2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->opcodeByte:I

    add-int/2addr v1, v2

    .line 170
    const/4 v2, 0x0

    const/4 v3, 0x4

    if-le v0, v3, :cond_0

    iget-object v4, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->registers:[I

    aget v4, v4, v3

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x8

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/2addr v1, v4

    .line 171
    .local v1, "firstShort":I
    const/4 v4, 0x0

    .line 172
    .local v4, "thirdShort":I
    if-lez v0, :cond_1

    .line 173
    iget-object v5, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->registers:[I

    aget v2, v5, v2

    and-int/lit8 v4, v2, 0xf

    .line 175
    :cond_1
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 176
    iget-object v5, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->registers:[I

    aget v2, v5, v2

    and-int/lit8 v2, v2, 0xf

    shl-int/2addr v2, v3

    add-int/2addr v4, v2

    .line 178
    :cond_2
    const/4 v2, 0x2

    if-le v0, v2, :cond_3

    .line 179
    iget-object v3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->registers:[I

    aget v2, v3, v2

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v4, v2

    .line 181
    :cond_3
    const/4 v2, 0x3

    if-le v0, v2, :cond_4

    .line 182
    iget-object v3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->registers:[I

    aget v2, v3, v2

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    add-int/2addr v4, v2

    .line 184
    :cond_4
    const/4 v2, 0x5

    if-gt v0, v2, :cond_5

    goto :goto_1

    .line 186
    :cond_5
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Abnormal arguments number : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "nbRegisters":I
    .end local v1    # "firstShort":I
    .end local v4    # "thirdShort":I
    .end local p1    # "out":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .end local p2    # "constantPool":Lorg/ow2/asmdex/structureWriter/ConstantPool;
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .restart local v0    # "nbRegisters":I
    .restart local v1    # "firstShort":I
    .restart local v4    # "thirdShort":I
    .restart local p1    # "out":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .restart local p2    # "constantPool":Lorg/ow2/asmdex/structureWriter/ConstantPool;
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 189
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_1
    const/4 v2, 0x0

    .line 194
    .local v2, "mask":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_7

    .line 195
    iget-object v5, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->registers:[I

    aget v5, v5, v3

    or-int/2addr v2, v5

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 197
    .end local v3    # "i":I
    :cond_7
    invoke-static {v2}, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->test4BitsLimit(I)V

    .line 198
    invoke-virtual {p1, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 199
    iget v3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->opcodeByte:I

    const/16 v5, 0x24

    if-ne v3, v5, :cond_8

    .line 200
    iget-object v3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->type:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    goto :goto_3

    .line 202
    :cond_8
    iget-object v3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat35C;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {p2, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getMethodIndex(Lorg/ow2/asmdex/structureWriter/Method;)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 204
    :goto_3
    invoke-virtual {p1, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 205
    return-void
.end method
