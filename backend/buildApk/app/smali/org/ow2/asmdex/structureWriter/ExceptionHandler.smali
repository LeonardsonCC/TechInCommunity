.class public Lorg/ow2/asmdex/structureWriter/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# instance fields
.field private final handler:Lorg/ow2/asmdex/structureCommon/Label;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;)V
    .locals 0
    .param p1, "handler"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p2, "type"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->handler:Lorg/ow2/asmdex/structureCommon/Label;

    .line 62
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->type:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 97
    return v0

    .line 100
    :cond_0
    const/4 v1, 0x0

    .line 102
    .local v1, "result":Z
    instance-of v2, p1, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;

    if-eqz v2, :cond_4

    .line 103
    move-object v2, p1

    check-cast v2, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;

    .line 104
    .local v2, "eh":Lorg/ow2/asmdex/structureWriter/ExceptionHandler;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->handler:Lorg/ow2/asmdex/structureCommon/Label;

    iget-object v4, v2, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->handler:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureCommon/Label;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->type:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 107
    iget-object v3, v2, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->type:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    goto :goto_2

    .line 109
    :cond_2
    iget-object v0, v2, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->type:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    move v1, v4

    .line 114
    .end local v2    # "eh":Lorg/ow2/asmdex/structureWriter/ExceptionHandler;
    :cond_4
    :goto_2
    return v1
.end method

.method public getHandler()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->handler:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->handler:Lorg/ow2/asmdex/structureCommon/Label;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureCommon/Label;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isCatchAll()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
