.class public Lorg/nativescript/widgets/CSSValue;
.super Ljava/lang/Object;
.source "CSSValue.java"


# instance fields
.field private str:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private unit:Ljava/lang/String;

.field private value:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "unit"    # Ljava/lang/String;
    .param p4, "value"    # F

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/nativescript/widgets/CSSValue;->type:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lorg/nativescript/widgets/CSSValue;->str:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lorg/nativescript/widgets/CSSValue;->unit:Ljava/lang/String;

    .line 32
    iput p4, p0, Lorg/nativescript/widgets/CSSValue;->value:F

    .line 33
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/nativescript/widgets/CSSValue;->str:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/nativescript/widgets/CSSValue;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/nativescript/widgets/CSSValue;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .line 25
    iget v0, p0, Lorg/nativescript/widgets/CSSValue;->value:F

    return v0
.end method
