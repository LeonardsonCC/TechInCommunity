.class public Lorg/ow2/asmdex/structureWriter/AnnotationElement;
.super Ljava/lang/Object;
.source "AnnotationElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ow2/asmdex/structureWriter/AnnotationElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elementName:Ljava/lang/String;

.field private final encodedValue:Lorg/ow2/asmdex/encodedValue/EncodedValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/ow2/asmdex/encodedValue/EncodedValue;)V
    .locals 0
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->elementName:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->encodedValue:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 66
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 46
    check-cast p1, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->compareTo(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ow2/asmdex/structureWriter/AnnotationElement;)I
    .locals 3
    .param p1, "ae"    # Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 133
    if-ne p0, p1, :cond_0

    .line 134
    const/4 v0, 0x0

    return v0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->elementName:Ljava/lang/String;

    iget-object v1, p1, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->elementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, "result":I
    if-nez v0, :cond_1

    .line 139
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->encodedValue:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    iget-object v2, p1, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->encodedValue:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->compareTo(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I

    move-result v0

    .line 142
    :cond_1
    return v0
.end method

.method public encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B
    .locals 2
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 77
    new-instance v0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-direct {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;-><init>()V

    .line 79
    .local v0, "out":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->elementName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 80
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->encodedValue:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    invoke-virtual {v1, p1}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteArray([B)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 82
    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getData()[B

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 119
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 120
    return v0

    .line 123
    :cond_0
    instance-of v1, p1, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 124
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 125
    .local v1, "ae":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->elementName:Ljava/lang/String;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->elementName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->encodedValue:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->encodedValue:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 128
    .end local v1    # "ae":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    :cond_2
    return v2
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->elementName:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedValue()Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->encodedValue:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 114
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->elementName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->encodedValue:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->elementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->encodedValue:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
