.class public Lorg/ow2/asmdex/structureReader/FieldIdItem;
.super Ljava/lang/Object;
.source "FieldIdItem.java"


# instance fields
.field private classIndex:I

.field private nameIndex:I

.field private typeIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "classIndex"    # I
    .param p2, "typeIndex"    # I
    .param p3, "nameIndex"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lorg/ow2/asmdex/structureReader/FieldIdItem;->classIndex:I

    .line 54
    iput p2, p0, Lorg/ow2/asmdex/structureReader/FieldIdItem;->typeIndex:I

    .line 55
    iput p3, p0, Lorg/ow2/asmdex/structureReader/FieldIdItem;->nameIndex:I

    .line 56
    return-void
.end method


# virtual methods
.method public getClassIndex()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/ow2/asmdex/structureReader/FieldIdItem;->classIndex:I

    return v0
.end method

.method public getNameIndex()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/ow2/asmdex/structureReader/FieldIdItem;->nameIndex:I

    return v0
.end method

.method public getTypeIndex()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/ow2/asmdex/structureReader/FieldIdItem;->typeIndex:I

    return v0
.end method
