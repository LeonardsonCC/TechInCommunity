.class public Lorg/ow2/asmdex/structureReader/PackedSwitch;
.super Ljava/lang/Object;
.source "PackedSwitch.java"

# interfaces
.implements Lorg/ow2/asmdex/structureReader/ISwitchCase;


# instance fields
.field private defaultLabel:Lorg/ow2/asmdex/structureCommon/Label;

.field private switchLabels:[Lorg/ow2/asmdex/structureCommon/Label;

.field private valueMax:I

.field private valueMin:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultLabel()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/ow2/asmdex/structureReader/PackedSwitch;->defaultLabel:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getSwitchLabels()[Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/ow2/asmdex/structureReader/PackedSwitch;->switchLabels:[Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getValueMax()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/ow2/asmdex/structureReader/PackedSwitch;->valueMax:I

    return v0
.end method

.method public getValueMin()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/ow2/asmdex/structureReader/PackedSwitch;->valueMin:I

    return v0
.end method

.method public setDefaultLabel(Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 0
    .param p1, "defaultLabel"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 109
    iput-object p1, p0, Lorg/ow2/asmdex/structureReader/PackedSwitch;->defaultLabel:Lorg/ow2/asmdex/structureCommon/Label;

    .line 110
    return-void
.end method

.method public setSwitchLabels([Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 0
    .param p1, "switchLabels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 100
    iput-object p1, p0, Lorg/ow2/asmdex/structureReader/PackedSwitch;->switchLabels:[Lorg/ow2/asmdex/structureCommon/Label;

    .line 101
    return-void
.end method

.method public setValueMax(I)V
    .locals 0
    .param p1, "valueMax"    # I

    .line 91
    iput p1, p0, Lorg/ow2/asmdex/structureReader/PackedSwitch;->valueMax:I

    .line 92
    return-void
.end method

.method public setValueMin(I)V
    .locals 0
    .param p1, "valueMin"    # I

    .line 76
    iput p1, p0, Lorg/ow2/asmdex/structureReader/PackedSwitch;->valueMin:I

    .line 77
    return-void
.end method
