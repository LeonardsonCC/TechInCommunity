.class public Lorg/ow2/asmdex/structureCommon/Label;
.super Ljava/lang/Object;
.source "Label.java"


# static fields
.field static final RESOLVED:I = 0x2

.field private static counter:I


# instance fields
.field private final id:I

.field public info:Ljava/lang/Object;

.field line:I

.field position:I

.field private referringInstructions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/instruction/Instruction;",
            ">;"
        }
    .end annotation
.end field

.field status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/4 v0, 0x1

    sput v0, Lorg/ow2/asmdex/structureCommon/Label;->counter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->line:I

    .line 83
    iput v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->position:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->referringInstructions:Ljava/util/ArrayList;

    .line 100
    sget v0, Lorg/ow2/asmdex/structureCommon/Label;->counter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/ow2/asmdex/structureCommon/Label;->counter:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->id:I

    .line 101
    return-void
.end method


# virtual methods
.method public addReferringInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V
    .locals 1
    .param p1, "instruction"    # Lorg/ow2/asmdex/instruction/Instruction;

    .line 175
    iget-object v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->referringInstructions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "result":Z
    instance-of v1, p1, Lorg/ow2/asmdex/structureCommon/Label;

    if-eqz v1, :cond_1

    .line 192
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/structureCommon/Label;

    .line 194
    .local v1, "label":Lorg/ow2/asmdex/structureCommon/Label;
    iget v2, p0, Lorg/ow2/asmdex/structureCommon/Label;->status:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget v2, v1, Lorg/ow2/asmdex/structureCommon/Label;->status:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget v2, p0, Lorg/ow2/asmdex/structureCommon/Label;->position:I

    iget v3, v1, Lorg/ow2/asmdex/structureCommon/Label;->position:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 197
    .end local v1    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    :cond_1
    return v0
.end method

.method public getLine()I
    .locals 1

    .line 145
    iget v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->line:I

    return v0
.end method

.method public getOffset()I
    .locals 2

    .line 117
    iget v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->position:I

    return v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label offset position has not been resolved yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReferringInstructions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/instruction/Instruction;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->referringInstructions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 185
    iget v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->position:I

    return v0
.end method

.method public isResolved()Z
    .locals 1

    .line 137
    iget v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setLine(I)V
    .locals 0
    .param p1, "line"    # I

    .line 153
    iput p1, p0, Lorg/ow2/asmdex/structureCommon/Label;->line:I

    .line 154
    return-void
.end method

.method public setOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 128
    iput p1, p0, Lorg/ow2/asmdex/structureCommon/Label;->position:I

    .line 129
    iget v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->status:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/ow2/asmdex/structureCommon/Label;->status:I

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ow2/asmdex/structureCommon/Label;->id:I

    add-int/lit8 v1, v1, 0x4c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    .local v0, "result":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/ow2/asmdex/structureCommon/Label;->status:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/ow2/asmdex/structureCommon/Label;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/ow2/asmdex/structureCommon/Label;->line:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
