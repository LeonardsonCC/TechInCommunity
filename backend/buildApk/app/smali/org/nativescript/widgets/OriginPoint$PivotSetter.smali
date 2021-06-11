.class Lorg/nativescript/widgets/OriginPoint$PivotSetter;
.super Ljava/lang/Object;
.source "OriginPoint.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/OriginPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PivotSetter"
.end annotation


# instance fields
.field private originX:F

.field private originY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/nativescript/widgets/OriginPoint$PivotSetter;->originX:F

    .line 47
    iput v0, p0, Lorg/nativescript/widgets/OriginPoint$PivotSetter;->originY:F

    .line 48
    return-void
.end method

.method private updateX(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I

    .line 66
    iget v0, p0, Lorg/nativescript/widgets/OriginPoint$PivotSetter;->originX:F

    int-to-float v1, p2

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 67
    return-void
.end method

.method private updateY(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "height"    # I

    .line 70
    iget v0, p0, Lorg/nativescript/widgets/OriginPoint$PivotSetter;->originY:F

    int-to-float v1, p2

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 71
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 61
    sub-int v0, p4, p2

    invoke-direct {p0, p1, v0}, Lorg/nativescript/widgets/OriginPoint$PivotSetter;->updateX(Landroid/view/View;I)V

    .line 62
    sub-int v0, p5, p3

    invoke-direct {p0, p1, v0}, Lorg/nativescript/widgets/OriginPoint$PivotSetter;->updateY(Landroid/view/View;I)V

    .line 63
    return-void
.end method

.method public setOriginX(Landroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F

    .line 51
    iput p2, p0, Lorg/nativescript/widgets/OriginPoint$PivotSetter;->originX:F

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/nativescript/widgets/OriginPoint$PivotSetter;->updateX(Landroid/view/View;I)V

    .line 53
    return-void
.end method

.method public setOriginY(Landroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "y"    # F

    .line 56
    iput p2, p0, Lorg/nativescript/widgets/OriginPoint$PivotSetter;->originY:F

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/nativescript/widgets/OriginPoint$PivotSetter;->updateY(Landroid/view/View;I)V

    .line 58
    return-void
.end method
