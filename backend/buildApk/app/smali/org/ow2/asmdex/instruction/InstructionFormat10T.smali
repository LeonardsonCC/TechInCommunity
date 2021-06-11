.class public Lorg/ow2/asmdex/instruction/InstructionFormat10T;
.super Lorg/ow2/asmdex/instruction/Instruction;
.source "InstructionFormat10T.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IOffsetInstruction;


# static fields
.field private static final INSTRUCTION_SIZE:I = 0x2

.field protected static final instances:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/ow2/asmdex/instruction/InstructionFormat10T;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private instructionOffset:I

.field private label:Lorg/ow2/asmdex/structureCommon/Label;

.field private offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->instances:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(ILorg/ow2/asmdex/structureCommon/Label;I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "instructionOffset"    # I

    .line 122
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/instruction/Instruction;-><init>(I)V

    .line 124
    iput-object p2, p0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    .line 125
    iput p3, p0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->instructionOffset:I

    .line 126
    return-void
.end method

.method public static getOffset(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;I)I
    .locals 2
    .param p0, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .param p1, "opcode"    # I

    .line 107
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 110
    .local v0, "readOffset":I
    invoke-interface {p0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, v0

    return v1
.end method

.method public static final obtain(ILorg/ow2/asmdex/structureCommon/Label;I)Lorg/ow2/asmdex/instruction/InstructionFormat10T;
    .locals 2
    .param p0, "opcode"    # I
    .param p1, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p2, "instructionOffset"    # I

    .line 130
    sget-object v0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->instances:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;

    .line 131
    .local v0, "instruction":Lorg/ow2/asmdex/instruction/InstructionFormat10T;
    if-nez v0, :cond_0

    .line 132
    new-instance v1, Lorg/ow2/asmdex/instruction/InstructionFormat10T;

    invoke-direct {v1, p0, p1, p2}, Lorg/ow2/asmdex/instruction/InstructionFormat10T;-><init>(ILorg/ow2/asmdex/structureCommon/Label;I)V

    return-object v1

    .line 135
    :cond_0
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->opcodeHighOrderByte:I

    .line 136
    and-int/lit16 v1, p0, 0xff

    iput v1, v0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->opcodeByte:I

    .line 138
    iput-object p1, v0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    .line 139
    iput p2, v0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->instructionOffset:I

    .line 141
    return-object v0
.end method


# virtual methods
.method public getInstructionOffset()I
    .locals 1

    .line 165
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->instructionOffset:I

    return v0
.end method

.method public getLabel()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->offset:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 150
    const/4 v0, 0x2

    return v0
.end method

.method public recycle(Lorg/ow2/asmdex/instruction/Instruction;)V
    .locals 2
    .param p1, "instruction"    # Lorg/ow2/asmdex/instruction/Instruction;

    .line 145
    sget-object v0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->instances:Ljava/util/LinkedList;

    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/instruction/InstructionFormat10T;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public setInstructionOffset(I)V
    .locals 0
    .param p1, "instructionOffset"    # I

    .line 170
    iput p1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->instructionOffset:I

    .line 171
    return-void
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 176
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->label:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v0

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->instructionOffset:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/ow2/asmdex/instruction/InstructionFormat10T;->opcodeByte:I

    add-int/2addr v0, v1

    .line 178
    .local v0, "firstShort":I
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 179
    return-void
.end method
