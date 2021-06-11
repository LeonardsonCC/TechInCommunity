.class Lorg/nativescript/widgets/FlexboxLayout$Order;
.super Ljava/lang/Object;
.source "FlexboxLayout.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/FlexboxLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/nativescript/widgets/FlexboxLayout$Order;",
        ">;"
    }
.end annotation


# instance fields
.field index:I

.field order:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/FlexboxLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/FlexboxLayout$1;

    .line 2699
    invoke-direct {p0}, Lorg/nativescript/widgets/FlexboxLayout$Order;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2699
    check-cast p1, Lorg/nativescript/widgets/FlexboxLayout$Order;

    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/FlexboxLayout$Order;->compareTo(Lorg/nativescript/widgets/FlexboxLayout$Order;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/nativescript/widgets/FlexboxLayout$Order;)I
    .locals 2
    .param p1, "another"    # Lorg/nativescript/widgets/FlexboxLayout$Order;

    .line 2709
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout$Order;->order:I

    iget v1, p1, Lorg/nativescript/widgets/FlexboxLayout$Order;->order:I

    if-eq v0, v1, :cond_0

    .line 2710
    sub-int/2addr v0, v1

    return v0

    .line 2712
    :cond_0
    iget v0, p0, Lorg/nativescript/widgets/FlexboxLayout$Order;->index:I

    iget v1, p1, Lorg/nativescript/widgets/FlexboxLayout$Order;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Order{order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout$Order;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/FlexboxLayout$Order;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
