.class public Lorg/ow2/asmdex/instruction/DebugInstructionSetFile;
.super Lorg/ow2/asmdex/instruction/DebugInstruction;
.source "DebugInstructionSetFile.java"

# interfaces
.implements Lorg/ow2/asmdex/instruction/IDebugSourceNameInstruction;


# instance fields
.field protected sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceName"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lorg/ow2/asmdex/instruction/DebugInstruction;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/ow2/asmdex/instruction/DebugInstructionSetFile;->sourceName:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getOpcode()I
    .locals 1

    .line 65
    const/16 v0, 0x9

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionSetFile;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 70
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 71
    iget-object v0, p0, Lorg/ow2/asmdex/instruction/DebugInstructionSetFile;->sourceName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v0

    .line 71
    :goto_0
    invoke-virtual {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128p1(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 73
    return-void
.end method
