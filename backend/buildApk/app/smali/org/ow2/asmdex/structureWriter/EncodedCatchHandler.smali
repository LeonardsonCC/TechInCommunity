.class public Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;
.super Ljava/lang/Object;
.source "EncodedCatchHandler.java"


# instance fields
.field private catchAllHandler:Lorg/ow2/asmdex/structureCommon/Label;

.field private final constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

.field private exceptionHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;"
        }
    .end annotation
.end field

.field private sizeCatchTypes:I

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->sizeCatchTypes:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->types:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->exceptionHandlers:Ljava/util/List;

    .line 80
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 81
    return-void
.end method


# virtual methods
.method public addTypeAddrPair(Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "exceptionHandler"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 94
    if-nez p1, :cond_0

    .line 95
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->catchAllHandler:Lorg/ow2/asmdex/structureCommon/Label;

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->types:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->exceptionHandlers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->sizeCatchTypes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->sizeCatchTypes:I

    .line 101
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 134
    return v0

    .line 137
    :cond_0
    const/4 v1, 0x0

    .line 139
    .local v1, "result":Z
    instance-of v2, p1, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;

    if-eqz v2, :cond_5

    .line 140
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;

    .line 141
    .local v2, "ech":Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->catchAllHandler:Lorg/ow2/asmdex/structureCommon/Label;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 142
    iget-object v3, v2, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->catchAllHandler:Lorg/ow2/asmdex/structureCommon/Label;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    goto :goto_2

    .line 144
    :cond_2
    iget-object v5, v2, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->catchAllHandler:Lorg/ow2/asmdex/structureCommon/Label;

    if-nez v5, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    .line 145
    :cond_3
    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/structureCommon/Label;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v1, v3

    .line 148
    :goto_2
    if-eqz v1, :cond_5

    .line 149
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->types:Ljava/util/List;

    iget-object v5, v2, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->types:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->exceptionHandlers:Ljava/util/List;

    iget-object v5, v2, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->exceptionHandlers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move v1, v0

    .line 153
    .end local v2    # "ech":Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;
    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 158
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->catchAllHandler:Lorg/ow2/asmdex/structureCommon/Label;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/ow2/asmdex/structureCommon/Label;->hashCode()I

    move-result v0

    .line 159
    .local v0, "result":I
    :goto_0
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->types:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    .local v2, "type":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 163
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 164
    :cond_2
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->exceptionHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureCommon/Label;

    .line 165
    .local v2, "label":Lorg/ow2/asmdex/structureCommon/Label;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureCommon/Label;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 166
    .end local v2    # "label":Lorg/ow2/asmdex/structureCommon/Label;
    goto :goto_2

    .line 167
    :cond_3
    return v0
.end method

.method public write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;)V
    .locals 5
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 109
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->catchAllHandler:Lorg/ow2/asmdex/structureCommon/Label;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, "hasCatchAll":Z
    :goto_0
    iget v1, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->sizeCatchTypes:I

    if-eqz v0, :cond_1

    neg-int v1, v1

    :cond_1
    invoke-virtual {p1, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putSleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->types:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 115
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->types:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v3

    .line 116
    .local v3, "typeIndex":I
    invoke-virtual {p1, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 117
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->exceptionHandlers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v4}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 114
    .end local v3    # "typeIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    if-eqz v0, :cond_3

    .line 122
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->catchAllHandler:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 124
    :cond_3
    return-void
.end method
