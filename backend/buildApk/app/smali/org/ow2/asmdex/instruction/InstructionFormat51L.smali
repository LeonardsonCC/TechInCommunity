.class public Lorg/ow2/asmdex/instruction/InstructionFormat51L;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat51L.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IOneRegisterInstruction;
.implements Lorg/ow2/asmdex/instruction/ILongLiteralInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0xa


# instance fields
.field private literalB:J

.field private registerA:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "destinationRegister"    # I
    .param p3, "var"    # J

    .line 121
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 123
    iput p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->registerA:I

    .line 124
    iput-wide p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->literalB:J

    .line 125
    return-void
.end method

.method public static getLiteralB(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)J
    .locals 7
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 96
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sbyte()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    .line 97
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sbyte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 98
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sbyte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 99
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sbyte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 100
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sbyte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 101
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sbyte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 102
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sbyte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 103
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sbyte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 96
    return-wide v0
.end method

.method public static getRegisterA(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 86
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static skip(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;)V
    .locals 1
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    .line 111
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 112
    return-void
.end method


# virtual methods
.method public getLiteral()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->literalB:J

    return-wide v0
.end method

.method public getRegisterA()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->registerA:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 129
    const/16 v0, 0xa

    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 4
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 144
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->registerA:I

    invoke-static {v0}, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->test8BitsLimit(I)V

    .line 145
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->registerA:I

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    iget v2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->opcodeByte:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 146
    iget-wide v2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->literalB:J

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 147
    iget-wide v2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->literalB:J

    shr-long v0, v2, v1

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 148
    iget-wide v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->literalB:J

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 149
    iget-wide v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->literalB:J

    const/16 v2, 0x18

    shr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 150
    iget-wide v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->literalB:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 151
    iget-wide v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->literalB:J

    const/16 v2, 0x28

    shr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 152
    iget-wide v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->literalB:J

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 153
    iget-wide v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat51L;->literalB:J

    const/16 v2, 0x38

    shr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 154
    return-void
.end method
