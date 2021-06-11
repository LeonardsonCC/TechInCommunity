.class public Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;
.super Ljava/lang/Object;
.source "ClassDefinitionItem.java"


# instance fields
.field private accessFlags:I

.field private annotationsOffset:I

.field private classDataOffset:I

.field private classIndex:I

.field private interfacesOffset:I

.field private sourceFileIndex:I

.field private staticValuesOffset:I

.field private superclassIndex:I


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;II)V
    .locals 2
    .param p1, "reader"    # Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .param p2, "classIndex"    # I
    .param p3, "classDefinitionOffset"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-interface {p1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getPos()I

    move-result v0

    .line 61
    .local v0, "savedPosition":I
    invoke-interface {p1, p3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->seek(I)V

    .line 63
    invoke-interface {p1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v1

    iput v1, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->classIndex:I

    .line 64
    invoke-interface {p1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v1

    iput v1, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->accessFlags:I

    .line 65
    invoke-interface {p1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v1

    iput v1, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->superclassIndex:I

    .line 66
    invoke-interface {p1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v1

    iput v1, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->interfacesOffset:I

    .line 67
    invoke-interface {p1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v1

    iput v1, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->sourceFileIndex:I

    .line 68
    invoke-interface {p1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v1

    iput v1, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->annotationsOffset:I

    .line 69
    invoke-interface {p1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v1

    iput v1, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->classDataOffset:I

    .line 70
    invoke-interface {p1}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v1

    iput v1, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->staticValuesOffset:I

    .line 72
    invoke-interface {p1, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->seek(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->accessFlags:I

    return v0
.end method

.method public getAnnotationsOffset()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->annotationsOffset:I

    return v0
.end method

.method public getClassDataOffset()I
    .locals 1

    .line 122
    iget v0, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->classDataOffset:I

    return v0
.end method

.method public getClassIndex()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->classIndex:I

    return v0
.end method

.method public getInterfacesOffset()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->interfacesOffset:I

    return v0
.end method

.method public getSourceFileIndex()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->sourceFileIndex:I

    return v0
.end method

.method public getStaticValuesOffset()I
    .locals 1

    .line 129
    iget v0, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->staticValuesOffset:I

    return v0
.end method

.method public getSuperclassIndex()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/ow2/asmdex/structureReader/ClassDefinitionItem;->superclassIndex:I

    return v0
.end method
