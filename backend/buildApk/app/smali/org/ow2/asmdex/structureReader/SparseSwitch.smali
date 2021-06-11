.class public Lorg/ow2/asmdex/structureReader/SparseSwitch;
.super Ljava/lang/Object;
.source "SparseSwitch.java"

# interfaces
.implements Lorg/ow2/asmdex/structureReader/ISwitchCase;


# instance fields
.field private defaultLabel:Lorg/ow2/asmdex/structureCommon/Label;

.field private keys:[I

.field private switchLabels:[Lorg/ow2/asmdex/structureCommon/Label;


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

    .line 86
    iget-object v0, p0, Lorg/ow2/asmdex/structureReader/SparseSwitch;->defaultLabel:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getKeys()[I
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/ow2/asmdex/structureReader/SparseSwitch;->keys:[I

    return-object v0
.end method

.method public getSwitchLabels()[Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/ow2/asmdex/structureReader/SparseSwitch;->switchLabels:[Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public setDefaultLabel(Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 0
    .param p1, "defaultLabel"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 90
    iput-object p1, p0, Lorg/ow2/asmdex/structureReader/SparseSwitch;->defaultLabel:Lorg/ow2/asmdex/structureCommon/Label;

    .line 91
    return-void
.end method

.method public setKeys([I)V
    .locals 0
    .param p1, "keys"    # [I

    .line 72
    iput-object p1, p0, Lorg/ow2/asmdex/structureReader/SparseSwitch;->keys:[I

    .line 73
    return-void
.end method

.method public setSwitchLabels([Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 0
    .param p1, "switchLabels"    # [Lorg/ow2/asmdex/structureCommon/Label;

    .line 81
    iput-object p1, p0, Lorg/ow2/asmdex/structureReader/SparseSwitch;->switchLabels:[Lorg/ow2/asmdex/structureCommon/Label;

    .line 82
    return-void
.end method
