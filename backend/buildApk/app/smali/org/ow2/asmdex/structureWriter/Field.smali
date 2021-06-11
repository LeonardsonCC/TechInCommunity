.class public Lorg/ow2/asmdex/structureWriter/Field;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ow2/asmdex/structureWriter/Field;",
        ">;",
        "Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;"
    }
.end annotation


# instance fields
.field private access:I

.field private annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

.field private final className:Ljava/lang/String;

.field private final fieldName:Ljava/lang/String;

.field private final hashcode:I

.field private signature:[Ljava/lang/String;

.field private final typeName:Ljava/lang/String;

.field private value:Lorg/ow2/asmdex/encodedValue/EncodedValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "classOwningName"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->value:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 90
    new-instance v0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 104
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/Field;->fieldName:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/Field;->typeName:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lorg/ow2/asmdex/structureWriter/Field;->className:Ljava/lang/String;

    .line 107
    invoke-static {p1, p3, p2}, Lorg/ow2/asmdex/structureWriter/Field;->calculateHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->hashcode:I

    .line 108
    return-void
.end method

.method public static calculateHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "classOwningName"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private setEncodedValueFromObject(Ljava/lang/Object;Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 136
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->access:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_2

    .line 137
    if-eqz p1, :cond_2

    .line 140
    invoke-static {p2}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->isTypeAReference(Ljava/lang/String;)Z

    move-result v0

    .line 141
    .local v0, "isRef":Z
    if-eqz v0, :cond_1

    .line 142
    invoke-static {p2}, Lorg/ow2/asmdex/encodedValue/EncodedValueUtil;->isString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Lorg/ow2/asmdex/encodedValue/EncodedValueString;

    invoke-direct {v2, v1}, Lorg/ow2/asmdex/encodedValue/EncodedValueString;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/ow2/asmdex/structureWriter/Field;->value:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 145
    invoke-virtual {p3, v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 146
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/Field;->setNoValue()V

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {p1, p2}, Lorg/ow2/asmdex/encodedValue/EncodedValueFactory;->getEncodedValue(Ljava/lang/Object;Ljava/lang/String;)Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v1

    iput-object v1, p0, Lorg/ow2/asmdex/structureWriter/Field;->value:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 154
    .end local v0    # "isRef":Z
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V
    .locals 1
    .param p1, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 210
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V

    .line 211
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 55
    check-cast p1, Lorg/ow2/asmdex/structureWriter/Field;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/Field;->compareTo(Lorg/ow2/asmdex/structureWriter/Field;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ow2/asmdex/structureWriter/Field;)I
    .locals 3
    .param p1, "field"    # Lorg/ow2/asmdex/structureWriter/Field;

    .line 325
    if-ne p0, p1, :cond_0

    .line 326
    const/4 v0, 0x0

    return v0

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->className:Ljava/lang/String;

    iget-object v1, p1, Lorg/ow2/asmdex/structureWriter/Field;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 331
    .local v0, "compare":I
    if-eqz v0, :cond_1

    .line 332
    return v0

    .line 336
    :cond_1
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/Field;->fieldName:Ljava/lang/String;

    iget-object v2, p1, Lorg/ow2/asmdex/structureWriter/Field;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 337
    if-eqz v0, :cond_2

    .line 338
    return v0

    .line 342
    :cond_2
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/Field;->typeName:Ljava/lang/String;

    iget-object v2, p1, Lorg/ow2/asmdex/structureWriter/Field;->typeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public completeInformation(I[Ljava/lang/String;Ljava/lang/Object;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "access"    # I
    .param p2, "signature"    # [Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 178
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/Field;->access:I

    .line 179
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/Field;->signature:[Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->typeName:Ljava/lang/String;

    invoke-direct {p0, p3, v0, p4}, Lorg/ow2/asmdex/structureWriter/Field;->setEncodedValueFromObject(Ljava/lang/Object;Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 181
    return-void
.end method

.method public encodeValue(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B
    .locals 1
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 270
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->value:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 310
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 311
    return v0

    .line 314
    :cond_0
    instance-of v1, p1, Lorg/ow2/asmdex/structureWriter/Field;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 315
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/Field;

    .line 316
    .local v1, "field":Lorg/ow2/asmdex/structureWriter/Field;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/Field;->fieldName:Ljava/lang/String;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/Field;->fieldName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/Field;->className:Ljava/lang/String;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/Field;->className:Ljava/lang/String;

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/Field;->typeName:Ljava/lang/String;

    iget-object v4, v1, Lorg/ow2/asmdex/structureWriter/Field;->typeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    .line 320
    .end local v1    # "field":Lorg/ow2/asmdex/structureWriter/Field;
    :cond_2
    return v2
.end method

.method public getAccess()I
    .locals 1

    .line 246
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->access:I

    return v0
.end method

.method public getAnnotationSetItem()Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getNbAnnotations()I
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->annotationSetItem:Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->getNbAnnotationItems()I

    move-result v0

    return v0
.end method

.method public getSignature()[Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->signature:[Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lorg/ow2/asmdex/encodedValue/EncodedValue;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->value:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 305
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->hashcode:I

    return v0
.end method

.method public init(I[Ljava/lang/String;Ljava/lang/Object;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 1
    .param p1, "access"    # I
    .param p2, "signature"    # [Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 118
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/Field;->access:I

    .line 119
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/Field;->signature:[Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->typeName:Ljava/lang/String;

    invoke-direct {p0, p3, v0, p4}, Lorg/ow2/asmdex/structureWriter/Field;->setEncodedValueFromObject(Ljava/lang/Object;Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 121
    return-void
.end method

.method public isFinalStatic()Z
    .locals 2

    .line 194
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->access:I

    and-int/lit8 v1, v0, 0x8

    if-lez v1, :cond_0

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 187
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->access:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnknown()Z
    .locals 2

    .line 202
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->access:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setNoValue()V
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->typeName:Ljava/lang/String;

    invoke-static {v0}, Lorg/ow2/asmdex/encodedValue/EncodedValueFactory;->getEncodedEmptyValue(Ljava/lang/String;)Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/Field;->value:Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 278
    return-void
.end method
