.class public Lorg/ow2/asmdex/structureWriter/Prototype;
.super Ljava/lang/Object;
.source "Prototype.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ow2/asmdex/structureWriter/Prototype;",
        ">;"
    }
.end annotation


# instance fields
.field private final descriptor:Ljava/lang/String;

.field private final hashcode:I

.field private parameterTypes:Lorg/ow2/asmdex/structureWriter/TypeList;

.field private returnType:Ljava/lang/String;

.field private shortyDescriptor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->descriptor:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lorg/ow2/asmdex/structureWriter/Prototype;->calculateHashCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->hashcode:I

    .line 80
    return-void
.end method

.method public static calculateHashCode(Ljava/lang/String;)I
    .locals 1
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static getDescriptors(Ljava/lang/String;Z)Lorg/ow2/asmdex/structureWriter/TypeList;
    .locals 3
    .param p0, "descriptor"    # Ljava/lang/String;
    .param p1, "skipFirst"    # Z

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    invoke-static {p0}, Lorg/ow2/asmdex/structureWriter/Prototype;->getFirstDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "foundDesc":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 292
    if-eqz p1, :cond_0

    .line 293
    const/4 p1, 0x0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    .end local v1    # "foundDesc":Ljava/lang/String;
    :cond_1
    new-instance v1, Lorg/ow2/asmdex/structureWriter/TypeList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/ow2/asmdex/structureWriter/TypeList;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method public static getFirstDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    .local v0, "result":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 164
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 165
    .local v2, "c":C
    const/16 v3, 0x46

    if-eq v2, v3, :cond_2

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_1

    const/16 v1, 0x53

    if-eq v2, v1, :cond_2

    const/16 v1, 0x56

    if-eq v2, v1, :cond_2

    const/16 v1, 0x49

    if-eq v2, v1, :cond_2

    const/16 v1, 0x4a

    if-eq v2, v1, :cond_2

    const/16 v1, 0x5a

    if-eq v2, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v2, v1, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/ow2/asmdex/structureWriter/Prototype;->getFirstDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    :cond_1
    const/16 v3, 0x3b

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 179
    .local v3, "i":I
    if-lez v3, :cond_3

    .line 180
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    .end local v3    # "i":I
    :cond_2
    :pswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    .end local v2    # "c":C
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getNbParametersFromTypeDescriptor(Ljava/lang/String;)I
    .locals 1
    .param p0, "desc"    # Ljava/lang/String;

    .line 275
    invoke-static {p0}, Lorg/ow2/asmdex/structureWriter/Prototype;->getShortyDescriptorFromTypeDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static getShortyDescriptorFromTypeDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    .local v0, "result":Ljava/lang/StringBuilder;
    :goto_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    invoke-static {p0}, Lorg/ow2/asmdex/structureWriter/Prototype;->getFirstDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "foundDesc":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 260
    const/16 v2, 0x4c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 262
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .end local v1    # "foundDesc":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSizeOfDescriptor(Ljava/lang/String;Z)I
    .locals 4
    .param p0, "descriptor"    # Ljava/lang/String;
    .param p1, "skipReturnType"    # Z

    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, "result":I
    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 230
    invoke-static {p0}, Lorg/ow2/asmdex/structureWriter/Prototype;->getFirstDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "foundDescriptor":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 232
    const/4 p0, 0x0

    goto :goto_0

    .line 234
    :cond_0
    invoke-static {v1}, Lorg/ow2/asmdex/structureWriter/Prototype;->getSizeOfType(Ljava/lang/String;)I

    move-result v2

    .line 235
    .local v2, "foundResult":I
    if-eqz p1, :cond_1

    .line 236
    const/4 p1, 0x0

    goto :goto_1

    .line 238
    :cond_1
    add-int/2addr v0, v2

    .line 241
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 242
    .end local v2    # "foundResult":I
    goto :goto_0

    .line 244
    .end local v1    # "foundDescriptor":Ljava/lang/String;
    :cond_2
    return v0
.end method

.method public static getSizeOfType(Ljava/lang/String;)I
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "result":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x53

    if-eq v1, v2, :cond_1

    const/16 v2, 0x49

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 212
    :cond_0
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 208
    :cond_1
    :pswitch_1
    const/4 v0, 0x2

    .line 209
    nop

    .line 216
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Lorg/ow2/asmdex/structureWriter/Prototype;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/Prototype;->compareTo(Lorg/ow2/asmdex/structureWriter/Prototype;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ow2/asmdex/structureWriter/Prototype;)I
    .locals 3
    .param p1, "prototype"    # Lorg/ow2/asmdex/structureWriter/Prototype;

    .line 308
    if-ne p0, p1, :cond_0

    .line 309
    const/4 v0, 0x0

    return v0

    .line 313
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->returnType:Ljava/lang/String;

    iget-object v1, p1, Lorg/ow2/asmdex/structureWriter/Prototype;->returnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, "compare":I
    if-eqz v0, :cond_1

    .line 315
    return v0

    .line 319
    :cond_1
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->parameterTypes:Lorg/ow2/asmdex/structureWriter/TypeList;

    iget-object v2, p1, Lorg/ow2/asmdex/structureWriter/Prototype;->parameterTypes:Lorg/ow2/asmdex/structureWriter/TypeList;

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/structureWriter/TypeList;->compareTo(Lorg/ow2/asmdex/structureWriter/TypeList;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 325
    if-ne p0, p1, :cond_0

    .line 326
    const/4 v0, 0x1

    return v0

    .line 328
    :cond_0
    instance-of v0, p1, Lorg/ow2/asmdex/structureWriter/Prototype;

    if-eqz v0, :cond_1

    .line 329
    move-object v0, p1

    check-cast v0, Lorg/ow2/asmdex/structureWriter/Prototype;

    .line 330
    .local v0, "secondPrototype":Lorg/ow2/asmdex/structureWriter/Prototype;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->descriptor:Ljava/lang/String;

    iget-object v2, v0, Lorg/ow2/asmdex/structureWriter/Prototype;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 333
    .end local v0    # "secondPrototype":Lorg/ow2/asmdex/structureWriter/Prototype;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getNbParameters()I
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->parameterTypes:Lorg/ow2/asmdex/structureWriter/TypeList;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/TypeList;->size()I

    move-result v0

    return v0
.end method

.method public getParameterTypes()Lorg/ow2/asmdex/structureWriter/TypeList;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->parameterTypes:Lorg/ow2/asmdex/structureWriter/TypeList;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->returnType:Ljava/lang/String;

    return-object v0
.end method

.method public getShortyDescriptor()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->shortyDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 338
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->hashcode:I

    return v0
.end method

.method public initialize()V
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->descriptor:Ljava/lang/String;

    invoke-static {v0}, Lorg/ow2/asmdex/structureWriter/Prototype;->getShortyDescriptorFromTypeDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->shortyDescriptor:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->descriptor:Ljava/lang/String;

    invoke-static {v0}, Lorg/ow2/asmdex/structureWriter/Prototype;->getFirstDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->returnType:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->descriptor:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/ow2/asmdex/structureWriter/Prototype;->getDescriptors(Ljava/lang/String;Z)Lorg/ow2/asmdex/structureWriter/TypeList;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/Prototype;->parameterTypes:Lorg/ow2/asmdex/structureWriter/TypeList;

    .line 89
    return-void
.end method
