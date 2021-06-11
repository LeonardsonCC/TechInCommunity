.class public Lorg/nativescript/widgets/LinearGradientDefinition;
.super Ljava/lang/Object;
.source "LinearGradientDefinition.java"


# instance fields
.field private colors:[I

.field private endX:F

.field private endY:F

.field private startX:F

.field private startY:F

.field private stops:[F


# direct methods
.method public constructor <init>(FFFF[I[F)V
    .locals 0
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F
    .param p5, "colors"    # [I
    .param p6, "stops"    # [F

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lorg/nativescript/widgets/LinearGradientDefinition;->startX:F

    .line 23
    iput p2, p0, Lorg/nativescript/widgets/LinearGradientDefinition;->startY:F

    .line 24
    iput p3, p0, Lorg/nativescript/widgets/LinearGradientDefinition;->endX:F

    .line 25
    iput p4, p0, Lorg/nativescript/widgets/LinearGradientDefinition;->endY:F

    .line 26
    iput-object p5, p0, Lorg/nativescript/widgets/LinearGradientDefinition;->colors:[I

    .line 27
    iput-object p6, p0, Lorg/nativescript/widgets/LinearGradientDefinition;->stops:[F

    .line 28
    return-void
.end method


# virtual methods
.method public getColors()[I
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/nativescript/widgets/LinearGradientDefinition;->colors:[I

    return-object v0
.end method

.method public getEndX()F
    .locals 1

    .line 16
    iget v0, p0, Lorg/nativescript/widgets/LinearGradientDefinition;->endX:F

    return v0
.end method

.method public getEndY()F
    .locals 1

    .line 17
    iget v0, p0, Lorg/nativescript/widgets/LinearGradientDefinition;->endY:F

    return v0
.end method

.method public getStartX()F
    .locals 1

    .line 14
    iget v0, p0, Lorg/nativescript/widgets/LinearGradientDefinition;->startX:F

    return v0
.end method

.method public getStartY()F
    .locals 1

    .line 15
    iget v0, p0, Lorg/nativescript/widgets/LinearGradientDefinition;->startY:F

    return v0
.end method

.method public getStops()[F
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/nativescript/widgets/LinearGradientDefinition;->stops:[F

    return-object v0
.end method
