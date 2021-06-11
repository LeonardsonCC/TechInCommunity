.class Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
.super Ljava/lang/Object;
.source "DebugInfoItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ow2/asmdex/structureWriter/DebugInfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalVariableItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;",
        ">;"
    }
.end annotation


# instance fields
.field public label:Lorg/ow2/asmdex/structureCommon/Label;

.field public localVariableType:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

.field public name:Ljava/lang/String;

.field public register:I

.field public signature:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;ILjava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "localVariableType"    # Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;
    .param p2, "register"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "label"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->localVariableType:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    .line 152
    iput p2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->register:I

    .line 153
    iput-object p3, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->name:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    .line 155
    iput-object p5, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->signature:Ljava/lang/String;

    .line 156
    iput-object p6, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->type:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 141
    check-cast p1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->compareTo(Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;)I
    .locals 6
    .param p1, "var"    # Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;

    .line 194
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 195
    return v0

    .line 200
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->localVariableType:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    iget-object v2, p1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->localVariableType:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v2, :cond_5

    .line 201
    iget v1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->register:I

    iget v2, p1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->register:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 202
    .local v1, "result":I
    :goto_0
    if-nez v1, :cond_8

    .line 203
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v2

    .line 204
    .local v2, "offset1":I
    iget-object v5, p1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v5}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v5

    .line 205
    .local v5, "offset2":I
    if-ne v2, v5, :cond_3

    goto :goto_1

    :cond_3
    if-le v2, v5, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    :goto_1
    move v1, v0

    .line 206
    .end local v2    # "offset1":I
    .end local v5    # "offset2":I
    goto :goto_3

    .line 208
    .end local v1    # "result":I
    :cond_5
    invoke-static {v1}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->access$000(Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;)I

    move-result v1

    .line 209
    .local v1, "type1":I
    iget-object v2, p1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->localVariableType:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    invoke-static {v2}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->access$000(Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;)I

    move-result v2

    .line 210
    .local v2, "type2":I
    if-ne v1, v2, :cond_6

    goto :goto_2

    :cond_6
    if-le v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, -0x1

    :goto_2
    move v1, v0

    .line 213
    .end local v2    # "type2":I
    .local v1, "result":I
    :cond_8
    :goto_3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 161
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 162
    return v0

    .line 165
    :cond_0
    instance-of v1, p1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 166
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;

    .line 167
    .local v1, "lvi":Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->name:Ljava/lang/String;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->register:I

    iget v4, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->register:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->localVariableType:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->localVariableType:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    .line 170
    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureCommon/Label;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->type:Ljava/lang/String;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->type:Ljava/lang/String;

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 172
    .local v3, "result":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 173
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->signature:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v0, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->signature:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 174
    :cond_2
    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->signature:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v3, v0

    .line 176
    :cond_4
    return v3

    .line 179
    .end local v1    # "lvi":Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;
    .end local v3    # "result":Z
    :cond_5
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 184
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->signature:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 185
    .local v0, "result":I
    :goto_0
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->localVariableType:Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableType;->hashCode()I

    move-result v1

    iget v2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->register:I

    mul-int/lit8 v2, v2, 0x21

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->label:Lorg/ow2/asmdex/structureCommon/Label;

    .line 186
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureCommon/Label;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem$LocalVariableItem;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 188
    return v0
.end method
