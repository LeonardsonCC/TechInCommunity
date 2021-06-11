.class public Lorg/nativescript/widgets/SegmentedBarColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "SegmentedBarColorDrawable.java"


# instance fields
.field private thickness:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "thickness"    # F

    .line 16
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 17
    iput p2, p0, Lorg/nativescript/widgets/SegmentedBarColorDrawable;->thickness:F

    .line 18
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lorg/nativescript/widgets/SegmentedBarColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    invoke-virtual {p0}, Lorg/nativescript/widgets/SegmentedBarColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/nativescript/widgets/SegmentedBarColorDrawable;->thickness:F

    sub-float v3, v1, v2

    invoke-virtual {p0}, Lorg/nativescript/widgets/SegmentedBarColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lorg/nativescript/widgets/SegmentedBarColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v5, v1

    const/4 v2, 0x0

    move-object v1, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 25
    return-void
.end method
