.class public Lorg/ow2/asmdex/structureReader/MethodIdItem;
.super Ljava/lang/Object;
.source "MethodIdItem.java"


# instance fields
.field private classIndex:I

.field private nameIndex:I

.field private prototypeIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "classNameIndex"    # I
    .param p2, "prototypeIndex"    # I
    .param p3, "methodNameIndex"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lorg/ow2/asmdex/structureReader/MethodIdItem;->classIndex:I

    .line 57
    iput p2, p0, Lorg/ow2/asmdex/structureReader/MethodIdItem;->prototypeIndex:I

    .line 58
    iput p3, p0, Lorg/ow2/asmdex/structureReader/MethodIdItem;->nameIndex:I

    .line 59
    return-void
.end method


# virtual methods
.method public getClassIndex()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/ow2/asmdex/structureReader/MethodIdItem;->classIndex:I

    return v0
.end method

.method public getNameIndex()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/ow2/asmdex/structureReader/MethodIdItem;->nameIndex:I

    return v0
.end method

.method public getPrototypeIndex()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/ow2/asmdex/structureReader/MethodIdItem;->prototypeIndex:I

    return v0
.end method
