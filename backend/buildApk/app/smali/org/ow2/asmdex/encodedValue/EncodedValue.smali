.class public abstract Lorg/ow2/asmdex/encodedValue/EncodedValue;
.super Ljava/lang/Object;
.source "EncodedValue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ow2/asmdex/encodedValue/EncodedValue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lorg/ow2/asmdex/encodedValue/EncodedValue;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->compareTo(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
    .locals 3
    .param p1, "encodedValue"    # Lorg/ow2/asmdex/encodedValue/EncodedValue;

    .line 58
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 59
    return v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->getType()I

    move-result v1

    .line 63
    .local v1, "t1":I
    invoke-virtual {p1}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->getType()I

    move-result v2

    .line 64
    .local v2, "t2":I
    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ge v1, v2, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 65
    .local v0, "result":I
    :goto_0
    if-nez v0, :cond_3

    .line 66
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I

    move-result v0

    .line 68
    :cond_3
    return v0
.end method

.method abstract compareValue(Lorg/ow2/asmdex/encodedValue/EncodedValue;)I
.end method

.method public abstract encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B
.end method

.method public abstract getType()I
.end method
