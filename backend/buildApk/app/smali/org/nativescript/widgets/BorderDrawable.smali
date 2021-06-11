.class public Lorg/nativescript/widgets/BorderDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "BorderDrawable.java"

# interfaces
.implements Lorg/nativescript/widgets/image/BitmapOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;
    }
.end annotation


# static fields
.field private static space:Ljava/util/regex/Pattern;

.field private static spaceAndComma:Ljava/util/regex/Pattern;


# instance fields
.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundColor:I

.field private backgroundGradient:Lorg/nativescript/widgets/LinearGradientDefinition;

.field private backgroundImage:Ljava/lang/String;

.field private backgroundPosition:Ljava/lang/String;

.field private backgroundPositionParsedCSSValues:[Lorg/nativescript/widgets/CSSValue;

.field private backgroundRepeat:Ljava/lang/String;

.field private backgroundSize:Ljava/lang/String;

.field private backgroundSizeParsedCSSValues:[Lorg/nativescript/widgets/CSSValue;

.field private borderBottomColor:I

.field private borderBottomLeftRadius:F

.field private borderBottomRightRadius:F

.field private borderBottomWidth:F

.field private borderLeftColor:I

.field private borderLeftWidth:F

.field private borderRightColor:I

.field private borderRightWidth:F

.field private borderTopColor:I

.field private borderTopLeftRadius:F

.field private borderTopRightRadius:F

.field private borderTopWidth:F

.field private clipPath:Ljava/lang/String;

.field private density:F

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 536
    const-string v0, "[\\s,]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/nativescript/widgets/BorderDrawable;->spaceAndComma:Ljava/util/regex/Pattern;

    .line 537
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/nativescript/widgets/BorderDrawable;->space:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "density"    # F

    .line 202
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 203
    iput p1, p0, Lorg/nativescript/widgets/BorderDrawable;->density:F

    .line 204
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "id"    # Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 208
    iput p1, p0, Lorg/nativescript/widgets/BorderDrawable;->density:F

    .line 209
    iput-object p2, p0, Lorg/nativescript/widgets/BorderDrawable;->id:Ljava/lang/String;

    .line 210
    return-void
.end method

.method private static calculateBackoffAntialias(IF)F
    .locals 3
    .param p0, "borderColor"    # I
    .param p1, "borderWidth"    # F

    .line 526
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    .line 527
    .local v0, "halfBorderWidth":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 528
    .local v1, "normalizedBorderAlpha":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v2, v2, v1

    return v2
.end method

.method private static cssValueToDevicePixels(Ljava/lang/String;FF)F
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "total"    # F
    .param p2, "density"    # F

    .line 769
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 770
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 771
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float v0, v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0

    .line 772
    :cond_0
    const-string v0, "px"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float v0, v0, p2

    return v0

    .line 775
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float v0, v0, p2

    return v0
.end method

.method private static drawClipPath(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;F)V
    .locals 21
    .param p0, "clipPath"    # Ljava/lang/String;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "density"    # F

    .line 541
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 542
    .local v11, "functionName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 549
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "inset"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "rect"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "polygon"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "circle"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "ellipse"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_d

    if-eq v1, v2, :cond_8

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_1

    goto/16 :goto_5

    .line 609
    :cond_1
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 610
    .local v1, "path":Landroid/graphics/Path;
    const/4 v4, 0x0

    .line 611
    .local v4, "firstPoint":Landroid/graphics/PointF;
    const-string v5, ","

    invoke-virtual {v12, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 612
    .local v5, "arr":[Ljava/lang/String;
    array-length v6, v5

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v6, :cond_3

    aget-object v14, v5, v13

    .line 613
    .local v14, "s":Ljava/lang/String;
    sget-object v15, Lorg/nativescript/widgets/BorderDrawable;->space:Ljava/util/regex/Pattern;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "xy":[Ljava/lang/String;
    new-instance v15, Landroid/graphics/PointF;

    aget-object v0, v2, v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v0, v3, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v0

    move-object/from16 v18, v5

    const/4 v3, 0x1

    .end local v5    # "arr":[Ljava/lang/String;
    .local v18, "arr":[Ljava/lang/String;
    aget-object v5, v2, v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v5, v3, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v3

    invoke-direct {v15, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v15

    .line 616
    .local v0, "point":Landroid/graphics/PointF;
    if-nez v4, :cond_2

    .line 617
    move-object v3, v0

    .line 618
    .end local v4    # "firstPoint":Landroid/graphics/PointF;
    .local v3, "firstPoint":Landroid/graphics/PointF;
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v4, v3

    .line 621
    .end local v3    # "firstPoint":Landroid/graphics/PointF;
    .restart local v4    # "firstPoint":Landroid/graphics/PointF;
    :cond_2
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 612
    .end local v0    # "point":Landroid/graphics/PointF;
    .end local v2    # "xy":[Ljava/lang/String;
    .end local v14    # "s":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, v18

    goto :goto_2

    .line 623
    .end local v18    # "arr":[Ljava/lang/String;
    .restart local v5    # "arr":[Ljava/lang/String;
    :cond_3
    move-object/from16 v18, v5

    .end local v5    # "arr":[Ljava/lang/String;
    .restart local v18    # "arr":[Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 624
    iget v0, v4, Landroid/graphics/PointF;->x:F

    iget v2, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 626
    :cond_4
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 597
    .end local v1    # "path":Landroid/graphics/Path;
    .end local v4    # "firstPoint":Landroid/graphics/PointF;
    .end local v18    # "arr":[Ljava/lang/String;
    :cond_5
    sget-object v0, Lorg/nativescript/widgets/BorderDrawable;->space:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v12}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v2, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v1

    .line 599
    .local v1, "rX":F
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget v3, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v2

    .line 600
    .local v2, "rY":F
    aget-object v3, v0, v5

    iget v5, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v5, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v3

    .line 601
    .local v3, "cX":F
    aget-object v4, v0, v4

    iget v5, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v4

    .line 602
    .local v4, "cY":F
    sub-float v5, v3, v1

    .line 603
    .local v5, "left":F
    sub-float v6, v4, v2

    .line 604
    .local v6, "top":F
    mul-float v14, v1, v13

    add-float/2addr v14, v5

    .line 605
    .local v14, "right":F
    mul-float v13, v13, v2

    add-float/2addr v13, v6

    .line 606
    .local v13, "bottom":F
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15, v5, v6, v14, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7, v15, v8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 607
    goto/16 :goto_5

    .line 590
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "rX":F
    .end local v2    # "rY":F
    .end local v3    # "cX":F
    .end local v4    # "cY":F
    .end local v5    # "left":F
    .end local v6    # "top":F
    .end local v13    # "bottom":F
    .end local v14    # "right":F
    :cond_6
    sget-object v0, Lorg/nativescript/widgets/BorderDrawable;->space:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v12}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 591
    .restart local v0    # "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    goto :goto_3

    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    :goto_3
    div-float/2addr v2, v13

    invoke-static {v1, v2, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v1

    .line 592
    .local v1, "radius":F
    aget-object v2, v0, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v2

    .line 593
    .local v2, "y":F
    aget-object v3, v0, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v3, v4, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v3

    .line 594
    .local v3, "x":F
    invoke-virtual {v7, v3, v2, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 595
    goto/16 :goto_5

    .line 561
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "radius":F
    .end local v2    # "y":F
    .end local v3    # "x":F
    :cond_8
    sget-object v0, Lorg/nativescript/widgets/BorderDrawable;->spaceAndComma:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v12}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 562
    .restart local v0    # "arr":[Ljava/lang/String;
    const-string v1, "0"

    .line 563
    .local v1, "topString":Ljava/lang/String;
    const-string v2, "0"

    .line 564
    .local v2, "rightString":Ljava/lang/String;
    const-string v3, "0"

    .line 565
    .local v3, "bottomString":Ljava/lang/String;
    const-string v13, "0"

    .line 566
    .local v13, "leftString":Ljava/lang/String;
    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 567
    const/4 v14, 0x0

    aget-object v4, v0, v14

    move-object v13, v4

    move-object v3, v4

    move-object v2, v4

    move-object v1, v4

    move-object v14, v2

    move-object v15, v3

    move-object v6, v13

    move-object v13, v1

    goto :goto_4

    .line 568
    :cond_9
    const/4 v14, 0x0

    array-length v15, v0

    if-ne v15, v6, :cond_a

    .line 569
    aget-object v4, v0, v14

    move-object v3, v4

    move-object v1, v4

    .line 570
    const/4 v14, 0x1

    aget-object v4, v0, v14

    move-object v13, v4

    move-object v2, v4

    move-object v14, v2

    move-object v15, v3

    move-object v6, v13

    move-object v13, v1

    goto :goto_4

    .line 571
    :cond_a
    const/4 v14, 0x1

    array-length v15, v0

    if-ne v15, v5, :cond_b

    .line 572
    const/4 v4, 0x0

    aget-object v1, v0, v4

    .line 573
    aget-object v4, v0, v14

    move-object v13, v4

    move-object v2, v4

    .line 574
    aget-object v3, v0, v6

    move-object v14, v2

    move-object v15, v3

    move-object v6, v13

    move-object v13, v1

    goto :goto_4

    .line 575
    :cond_b
    array-length v14, v0

    if-ne v14, v4, :cond_c

    .line 576
    const/4 v4, 0x0

    aget-object v1, v0, v4

    .line 577
    const/4 v4, 0x1

    aget-object v2, v0, v4

    .line 578
    aget-object v3, v0, v6

    .line 579
    aget-object v13, v0, v5

    move-object v14, v2

    move-object v15, v3

    move-object v6, v13

    move-object v13, v1

    goto :goto_4

    .line 575
    :cond_c
    move-object v14, v2

    move-object v15, v3

    move-object v6, v13

    move-object v13, v1

    .line 582
    .end local v1    # "topString":Ljava/lang/String;
    .end local v2    # "rightString":Ljava/lang/String;
    .end local v3    # "bottomString":Ljava/lang/String;
    .local v6, "leftString":Ljava/lang/String;
    .local v13, "topString":Ljava/lang/String;
    .local v14, "rightString":Ljava/lang/String;
    .local v15, "bottomString":Ljava/lang/String;
    :goto_4
    iget v1, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v13, v1, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v16

    .line 583
    .local v16, "top":F
    iget v1, v9, Landroid/graphics/RectF;->right:F

    const-string v2, "100%"

    invoke-static {v2, v1, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v1

    iget v3, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v14, v3, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v3

    sub-float v17, v1, v3

    .line 584
    .local v17, "right":F
    iget v1, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v1, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v1

    iget v2, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v15, v2, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v2

    sub-float v18, v1, v2

    .line 585
    .local v18, "bottom":F
    iget v1, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v6, v1, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v19

    .line 587
    .local v19, "left":F
    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v20, v6

    .end local v6    # "leftString":Ljava/lang/String;
    .local v20, "leftString":Ljava/lang/String;
    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 588
    goto :goto_5

    .line 551
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v13    # "topString":Ljava/lang/String;
    .end local v14    # "rightString":Ljava/lang/String;
    .end local v15    # "bottomString":Ljava/lang/String;
    .end local v16    # "top":F
    .end local v17    # "right":F
    .end local v18    # "bottom":F
    .end local v19    # "left":F
    .end local v20    # "leftString":Ljava/lang/String;
    :cond_d
    sget-object v0, Lorg/nativescript/widgets/BorderDrawable;->spaceAndComma:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v12}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 553
    .restart local v0    # "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v2, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v13

    .line 554
    .local v13, "top":F
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget v2, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v14

    .line 555
    .local v14, "right":F
    aget-object v1, v0, v6

    iget v2, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v15

    .line 556
    .local v15, "bottom":F
    aget-object v1, v0, v5

    iget v2, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2, v10}, Lorg/nativescript/widgets/BorderDrawable;->cssValueToDevicePixels(Ljava/lang/String;FF)F

    move-result v16

    .line 558
    .local v16, "left":F
    move-object/from16 v1, p1

    move/from16 v2, v16

    move v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 559
    nop

    .line 629
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v13    # "top":F
    .end local v14    # "right":F
    .end local v15    # "bottom":F
    .end local v16    # "left":F
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62bbe422 -> :sswitch_4
        -0x51134330 -> :sswitch_3
        -0x17b1aac6 -> :sswitch_2
        0x3559e4 -> :sswitch_1
        0x5fb611d -> :sswitch_0
    .end sparse-switch
.end method

.method private getDrawParams(FF)Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;
    .locals 17
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 632
    move-object/from16 v0, p0

    new-instance v1, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;-><init>(Lorg/nativescript/widgets/BorderDrawable;Lorg/nativescript/widgets/BorderDrawable$1;)V

    .line 635
    .local v1, "res":Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;
    iget-object v2, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundRepeat:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 636
    iget-object v2, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundRepeat:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v7, "repeat-y"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :sswitch_1
    const-string v7, "repeat-x"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :sswitch_2
    const-string v7, "no-repeat"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    if-eq v6, v4, :cond_2

    if-eq v6, v3, :cond_1

    goto :goto_1

    .line 647
    :cond_1
    invoke-static {v1, v5}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$402(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;Z)Z

    goto :goto_1

    .line 643
    :cond_2
    invoke-static {v1, v5}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$502(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;Z)Z

    .line 644
    goto :goto_1

    .line 638
    :cond_3
    invoke-static {v1, v5}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$402(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;Z)Z

    .line 639
    invoke-static {v1, v5}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$502(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;Z)Z

    .line 652
    :cond_4
    :goto_1
    iget-object v2, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 653
    .local v2, "imageWidth":F
    iget-object v6, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 656
    .local v6, "imageHeight":F
    iget-object v7, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundSize:Ljava/lang/String;

    const-string v8, "ident"

    const-string v9, "px"

    const/high16 v10, 0x42c80000    # 100.0f

    const-string v11, "number"

    const-string v12, "%"

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    .line 657
    iget-object v7, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundSizeParsedCSSValues:[Lorg/nativescript/widgets/CSSValue;

    array-length v13, v7

    if-ne v13, v3, :cond_a

    .line 658
    aget-object v3, v7, v5

    .line 659
    .local v3, "vx":Lorg/nativescript/widgets/CSSValue;
    aget-object v7, v7, v4

    .line 660
    .local v7, "vy":Lorg/nativescript/widgets/CSSValue;
    invoke-virtual {v3}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v7}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 661
    invoke-virtual {v3}, Lorg/nativescript/widgets/CSSValue;->getValue()F

    move-result v13

    mul-float v13, v13, p1

    div-float/2addr v13, v10

    .line 662
    .end local v2    # "imageWidth":F
    .local v13, "imageWidth":F
    invoke-virtual {v7}, Lorg/nativescript/widgets/CSSValue;->getValue()F

    move-result v2

    mul-float v2, v2, p2

    div-float/2addr v2, v10

    .line 664
    .end local v6    # "imageHeight":F
    .local v2, "imageHeight":F
    invoke-static {v1, v13}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$002(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 665
    invoke-static {v1, v2}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$102(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    move v6, v2

    move v2, v13

    goto :goto_2

    .line 666
    .end local v13    # "imageWidth":F
    .local v2, "imageWidth":F
    .restart local v6    # "imageHeight":F
    :cond_5
    invoke-virtual {v3}, Lorg/nativescript/widgets/CSSValue;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v7}, Lorg/nativescript/widgets/CSSValue;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 667
    invoke-virtual {v3}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v7}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    :cond_6
    invoke-virtual {v3}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v3}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_7
    invoke-virtual {v7}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v7}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 668
    :cond_8
    invoke-virtual {v3}, Lorg/nativescript/widgets/CSSValue;->getValue()F

    move-result v2

    .line 669
    invoke-virtual {v7}, Lorg/nativescript/widgets/CSSValue;->getValue()F

    move-result v6

    .line 671
    invoke-static {v1, v2}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$002(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 672
    invoke-static {v1, v6}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$102(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 674
    .end local v3    # "vx":Lorg/nativescript/widgets/CSSValue;
    .end local v7    # "vy":Lorg/nativescript/widgets/CSSValue;
    :cond_9
    :goto_2
    goto :goto_4

    :cond_a
    array-length v3, v7

    if-ne v3, v4, :cond_9

    aget-object v3, v7, v5

    invoke-virtual {v3}, Lorg/nativescript/widgets/CSSValue;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 675
    const/4 v3, 0x0

    .line 677
    .local v3, "scale":F
    iget-object v7, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundSizeParsedCSSValues:[Lorg/nativescript/widgets/CSSValue;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lorg/nativescript/widgets/CSSValue;->getString()Ljava/lang/String;

    move-result-object v7

    const-string v13, "cover"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 678
    div-float v7, p1, v2

    div-float v13, p2, v6

    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_3

    .line 679
    :cond_b
    iget-object v7, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundSizeParsedCSSValues:[Lorg/nativescript/widgets/CSSValue;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lorg/nativescript/widgets/CSSValue;->getString()Ljava/lang/String;

    move-result-object v7

    const-string v13, "contain"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 680
    div-float v7, p1, v2

    div-float v13, p2, v6

    invoke-static {v7, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 683
    :cond_c
    :goto_3
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_d

    .line 684
    mul-float v2, v2, v3

    .line 685
    mul-float v6, v6, v3

    .line 687
    invoke-static {v1, v2}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$002(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 688
    invoke-static {v1, v6}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$102(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 694
    .end local v3    # "scale":F
    :cond_d
    :goto_4
    iget-object v3, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundPosition:Ljava/lang/String;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 695
    iget-object v3, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundPositionParsedCSSValues:[Lorg/nativescript/widgets/CSSValue;

    invoke-static {v3}, Lorg/nativescript/widgets/BorderDrawable;->parsePosition([Lorg/nativescript/widgets/CSSValue;)[Lorg/nativescript/widgets/CSSValue;

    move-result-object v3

    .line 696
    .local v3, "xy":[Lorg/nativescript/widgets/CSSValue;
    if-eqz v3, :cond_1b

    .line 697
    aget-object v5, v3, v5

    .line 698
    .local v5, "vx":Lorg/nativescript/widgets/CSSValue;
    aget-object v4, v3, v4

    .line 699
    .local v4, "vy":Lorg/nativescript/widgets/CSSValue;
    sub-float v7, p1, v2

    .line 700
    .local v7, "spaceX":F
    sub-float v13, p2, v6

    .line 702
    .local v13, "spaceY":F
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 703
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getValue()F

    move-result v8

    mul-float v8, v8, v7

    div-float/2addr v8, v10

    invoke-static {v1, v8}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$202(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 704
    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getValue()F

    move-result v8

    mul-float v8, v8, v13

    div-float/2addr v8, v10

    invoke-static {v1, v8}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$302(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    goto/16 :goto_7

    .line 705
    :cond_e
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 706
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    :cond_f
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_10

    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_12

    :cond_10
    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_11

    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 707
    :cond_11
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getValue()F

    move-result v8

    invoke-static {v1, v8}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$202(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 708
    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getValue()F

    move-result v8

    invoke-static {v1, v8}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$302(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    goto/16 :goto_7

    .line 709
    :cond_12
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "bottom"

    const/high16 v16, 0x40000000    # 2.0f

    const-string v10, "center"

    if-eqz v14, :cond_16

    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 710
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 711
    div-float v8, v7, v16

    invoke-static {v1, v8}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$202(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    goto :goto_5

    .line 712
    :cond_13
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "right"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 713
    invoke-static {v1, v7}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$202(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 716
    :cond_14
    :goto_5
    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 717
    div-float v8, v13, v16

    invoke-static {v1, v8}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$302(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    goto/16 :goto_7

    .line 718
    :cond_15
    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 719
    invoke-static {v1, v13}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$302(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    goto/16 :goto_7

    .line 721
    :cond_16
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 722
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 723
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getValue()F

    move-result v8

    mul-float v8, v8, v7

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    invoke-static {v1, v8}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$202(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    goto :goto_6

    .line 724
    :cond_17
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getUnit()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 725
    :cond_18
    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getValue()F

    move-result v8

    invoke-static {v1, v8}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$202(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 728
    :cond_19
    :goto_6
    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 729
    div-float v8, v13, v16

    invoke-static {v1, v8}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$302(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    goto :goto_7

    .line 730
    :cond_1a
    invoke-virtual {v4}, Lorg/nativescript/widgets/CSSValue;->getString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 731
    invoke-static {v1, v13}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$302(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 737
    .end local v3    # "xy":[Lorg/nativescript/widgets/CSSValue;
    .end local v4    # "vy":Lorg/nativescript/widgets/CSSValue;
    .end local v5    # "vx":Lorg/nativescript/widgets/CSSValue;
    .end local v7    # "spaceX":F
    .end local v13    # "spaceY":F
    :cond_1b
    :goto_7
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x2b3140d9 -> :sswitch_2
        -0x1a08c73a -> :sswitch_1
        -0x1a08c739 -> :sswitch_0
    .end sparse-switch
.end method

.method private static intersect(Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 1
    .param p0, "path1"    # Landroid/graphics/Path;
    .param p1, "path2"    # Landroid/graphics/Path;

    .line 533
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 534
    return-void
.end method

.method private static parsePosition([Lorg/nativescript/widgets/CSSValue;)[Lorg/nativescript/widgets/CSSValue;
    .locals 8
    .param p0, "values"    # [Lorg/nativescript/widgets/CSSValue;

    .line 741
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 742
    return-object p0

    .line 745
    :cond_0
    const/4 v0, 0x0

    .line 746
    .local v0, "result":[Lorg/nativescript/widgets/CSSValue;
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 748
    new-instance v2, Lorg/nativescript/widgets/CSSValue;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "center"

    const-string v7, "ident"

    invoke-direct {v2, v7, v6, v4, v5}, Lorg/nativescript/widgets/CSSValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 750
    .local v2, "center":Lorg/nativescript/widgets/CSSValue;
    const/4 v4, 0x0

    aget-object v5, p0, v4

    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 751
    aget-object v5, p0, v4

    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 753
    .local v5, "val":Ljava/lang/String;
    const-string v7, "left"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "right"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 755
    :cond_1
    const-string v7, "top"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "bottom"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 757
    :cond_2
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 758
    new-array v1, v1, [Lorg/nativescript/widgets/CSSValue;

    aput-object v2, v1, v4

    aput-object v2, v1, v3

    move-object v0, v1

    goto :goto_2

    .line 756
    :cond_3
    :goto_0
    new-array v1, v1, [Lorg/nativescript/widgets/CSSValue;

    aput-object v2, v1, v4

    aget-object v4, p0, v4

    aput-object v4, v1, v3

    move-object v0, v1

    goto :goto_2

    .line 754
    :cond_4
    :goto_1
    new-array v1, v1, [Lorg/nativescript/widgets/CSSValue;

    aget-object v6, p0, v4

    aput-object v6, v1, v4

    aput-object v2, v1, v3

    move-object v0, v1

    .line 760
    .end local v5    # "val":Ljava/lang/String;
    :cond_5
    :goto_2
    goto :goto_3

    :cond_6
    aget-object v5, p0, v4

    invoke-virtual {v5}, Lorg/nativescript/widgets/CSSValue;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "number"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 761
    new-array v1, v1, [Lorg/nativescript/widgets/CSSValue;

    aget-object v5, p0, v4

    aput-object v5, v1, v4

    aput-object v2, v1, v3

    move-object v0, v1

    .line 765
    .end local v2    # "center":Lorg/nativescript/widgets/CSSValue;
    :cond_7
    :goto_3
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 279
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 280
    .local v3, "width":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 282
    .local v4, "height":F
    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-lez v6, :cond_1a

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_0

    move-object/from16 v20, v2

    move/from16 v26, v3

    move/from16 v17, v4

    goto/16 :goto_f

    .line 287
    :cond_0
    new-instance v6, Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 289
    .local v6, "backgroundBoundsF":Landroid/graphics/RectF;
    iget v7, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopColor:I

    iget v8, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    invoke-static {v7, v8}, Lorg/nativescript/widgets/BorderDrawable;->calculateBackoffAntialias(IF)F

    move-result v7

    .line 290
    .local v7, "topBackoffAntialias":F
    iget v8, v0, Lorg/nativescript/widgets/BorderDrawable;->borderRightColor:I

    iget v9, v0, Lorg/nativescript/widgets/BorderDrawable;->borderRightWidth:F

    invoke-static {v8, v9}, Lorg/nativescript/widgets/BorderDrawable;->calculateBackoffAntialias(IF)F

    move-result v8

    .line 291
    .local v8, "rightBackoffAntialias":F
    iget v9, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomColor:I

    iget v10, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomWidth:F

    invoke-static {v9, v10}, Lorg/nativescript/widgets/BorderDrawable;->calculateBackoffAntialias(IF)F

    move-result v9

    .line 292
    .local v9, "bottomBackoffAntialias":F
    iget v10, v0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftColor:I

    iget v11, v0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftWidth:F

    invoke-static {v10, v11}, Lorg/nativescript/widgets/BorderDrawable;->calculateBackoffAntialias(IF)F

    move-result v10

    .line 294
    .local v10, "leftBackoffAntialias":F
    const/16 v11, 0x8

    new-array v12, v11, [F

    iget v13, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopLeftRadius:F

    add-float/2addr v13, v10

    .line 295
    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    iget v13, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopLeftRadius:F

    add-float/2addr v13, v7

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/4 v15, 0x1

    aput v13, v12, v15

    iget v13, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopRightRadius:F

    add-float/2addr v13, v8

    .line 296
    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/16 v16, 0x2

    aput v13, v12, v16

    iget v13, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopRightRadius:F

    add-float/2addr v13, v7

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/16 v17, 0x3

    aput v13, v12, v17

    iget v13, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomRightRadius:F

    add-float/2addr v13, v8

    .line 297
    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/16 v18, 0x4

    aput v13, v12, v18

    iget v13, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomRightRadius:F

    add-float/2addr v13, v9

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/16 v19, 0x5

    aput v13, v12, v19

    iget v13, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomLeftRadius:F

    add-float/2addr v13, v10

    .line 298
    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/16 v20, 0x6

    aput v13, v12, v20

    iget v13, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomLeftRadius:F

    add-float/2addr v13, v9

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/16 v21, 0x7

    aput v13, v12, v21

    .line 301
    .local v12, "backgroundRadii":[F
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 302
    .local v13, "backgroundPath":Landroid/graphics/Path;
    new-instance v14, Landroid/graphics/RectF;

    sub-float v11, v3, v8

    sub-float v5, v4, v9

    invoke-direct {v14, v10, v7, v11, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v5, v14

    .line 308
    .local v5, "backgroundRect":Landroid/graphics/RectF;
    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v13, v5, v12, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 311
    iget v11, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundColor:I

    if-eqz v11, :cond_2

    .line 312
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 313
    .local v11, "backgroundColorPaint":Landroid/graphics/Paint;
    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 314
    iget v14, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundColor:I

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    invoke-virtual {v11, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 317
    iget-object v14, v0, Lorg/nativescript/widgets/BorderDrawable;->clipPath:Ljava/lang/String;

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 318
    iget-object v14, v0, Lorg/nativescript/widgets/BorderDrawable;->clipPath:Ljava/lang/String;

    iget v15, v0, Lorg/nativescript/widgets/BorderDrawable;->density:F

    invoke-static {v14, v1, v11, v6, v15}, Lorg/nativescript/widgets/BorderDrawable;->drawClipPath(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v1, v13, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 324
    .end local v11    # "backgroundColorPaint":Landroid/graphics/Paint;
    :cond_2
    :goto_0
    iget-object v11, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_d

    .line 325
    invoke-direct {v0, v3, v4}, Lorg/nativescript/widgets/BorderDrawable;->getDrawParams(FF)Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;

    move-result-object v11

    .line 326
    .local v11, "params":Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 327
    .local v14, "transform":Landroid/graphics/Matrix;
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$000(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v15

    const/16 v23, 0x0

    cmpl-float v15, v15, v23

    if-lez v15, :cond_3

    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$100(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v15

    cmpl-float v15, v15, v23

    if-lez v15, :cond_3

    .line 328
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$000(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v15

    move-object/from16 v24, v5

    .end local v5    # "backgroundRect":Landroid/graphics/RectF;
    .local v24, "backgroundRect":Landroid/graphics/RectF;
    iget-object v5, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v15, v5

    .line 329
    .local v15, "scaleX":F
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$100(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v5

    move/from16 v25, v7

    .end local v7    # "topBackoffAntialias":F
    .local v25, "topBackoffAntialias":F
    iget-object v7, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 330
    .local v5, "scaleY":F
    const/4 v7, 0x0

    invoke-virtual {v14, v15, v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 331
    .end local v5    # "scaleY":F
    .end local v15    # "scaleX":F
    goto :goto_1

    .line 327
    .end local v24    # "backgroundRect":Landroid/graphics/RectF;
    .end local v25    # "topBackoffAntialias":F
    .local v5, "backgroundRect":Landroid/graphics/RectF;
    .restart local v7    # "topBackoffAntialias":F
    :cond_3
    move-object/from16 v24, v5

    move/from16 v25, v7

    .line 332
    .end local v5    # "backgroundRect":Landroid/graphics/RectF;
    .end local v7    # "topBackoffAntialias":F
    .restart local v24    # "backgroundRect":Landroid/graphics/RectF;
    .restart local v25    # "topBackoffAntialias":F
    iget-object v5, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v11, v5}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$002(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 333
    iget-object v5, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v11, v5}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$102(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 335
    :goto_1
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$200(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v5

    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$300(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v7

    invoke-virtual {v14, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 337
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 338
    .local v5, "backgroundImagePaint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/BitmapShader;

    iget-object v15, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 340
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$400(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)Z

    move-result v26

    if-eqz v26, :cond_4

    sget-object v26, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_2

    :cond_4
    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_2
    move/from16 v27, v8

    move-object/from16 v8, v26

    .line 341
    .end local v8    # "rightBackoffAntialias":F
    .local v27, "rightBackoffAntialias":F
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$500(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)Z

    move-result v26

    if-eqz v26, :cond_5

    sget-object v26, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_3

    :cond_5
    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_3
    move/from16 v28, v9

    move-object/from16 v9, v26

    .end local v9    # "bottomBackoffAntialias":F
    .local v28, "bottomBackoffAntialias":F
    invoke-direct {v7, v15, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 343
    .local v7, "shader":Landroid/graphics/BitmapShader;
    invoke-virtual {v7, v14}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 344
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 345
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 346
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 348
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$400(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v3

    goto :goto_4

    :cond_6
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$000(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v8

    .line 349
    .local v8, "imageWidth":F
    :goto_4
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$500(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v4

    goto :goto_5

    :cond_7
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$100(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v9

    .line 350
    .local v9, "imageHeight":F
    :goto_5
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$400(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    goto :goto_6

    :cond_8
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$200(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v15

    :goto_6
    invoke-static {v11, v15}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$202(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 351
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$500(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    goto :goto_7

    :cond_9
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$300(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v15

    :goto_7
    invoke-static {v11, v15}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$302(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F

    .line 353
    iget-object v15, v0, Lorg/nativescript/widgets/BorderDrawable;->clipPath:Ljava/lang/String;

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a

    .line 354
    iget-object v15, v0, Lorg/nativescript/widgets/BorderDrawable;->clipPath:Ljava/lang/String;

    move-object/from16 v26, v7

    .end local v7    # "shader":Landroid/graphics/BitmapShader;
    .local v26, "shader":Landroid/graphics/BitmapShader;
    iget v7, v0, Lorg/nativescript/widgets/BorderDrawable;->density:F

    invoke-static {v15, v1, v5, v6, v7}, Lorg/nativescript/widgets/BorderDrawable;->drawClipPath(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;F)V

    move/from16 v31, v10

    goto :goto_9

    .line 353
    .end local v26    # "shader":Landroid/graphics/BitmapShader;
    .restart local v7    # "shader":Landroid/graphics/BitmapShader;
    :cond_a
    move-object/from16 v26, v7

    .line 356
    .end local v7    # "shader":Landroid/graphics/BitmapShader;
    .restart local v26    # "shader":Landroid/graphics/BitmapShader;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x13

    if-lt v7, v15, :cond_b

    const/4 v7, 0x1

    goto :goto_8

    :cond_b
    const/4 v7, 0x0

    .line 357
    .local v7, "supportsPathOp":Z
    :goto_8
    if-eqz v7, :cond_c

    .line 358
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 359
    .local v15, "backgroundNoRepeatPath":Landroid/graphics/Path;
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$200(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v30

    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$300(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v31

    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$200(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v29

    add-float v32, v29, v8

    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$300(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v29

    add-float v33, v29, v9

    sget-object v34, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v29, v15

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 360
    invoke-static {v15, v13}, Lorg/nativescript/widgets/BorderDrawable;->intersect(Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 361
    invoke-virtual {v1, v15, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 362
    .end local v15    # "backgroundNoRepeatPath":Landroid/graphics/Path;
    move/from16 v31, v10

    goto :goto_9

    .line 364
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 365
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$200(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v15

    move/from16 v29, v7

    .end local v7    # "supportsPathOp":Z
    .local v29, "supportsPathOp":Z
    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$300(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v7

    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$200(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v30

    move/from16 v31, v10

    .end local v10    # "leftBackoffAntialias":F
    .local v31, "leftBackoffAntialias":F
    add-float v10, v30, v8

    invoke-static {v11}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->access$300(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F

    move-result v30

    move/from16 v32, v8

    .end local v8    # "imageWidth":F
    .local v32, "imageWidth":F
    add-float v8, v30, v9

    invoke-virtual {v1, v15, v7, v10, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 366
    invoke-virtual {v1, v13, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    .line 324
    .end local v11    # "params":Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;
    .end local v14    # "transform":Landroid/graphics/Matrix;
    .end local v24    # "backgroundRect":Landroid/graphics/RectF;
    .end local v25    # "topBackoffAntialias":F
    .end local v26    # "shader":Landroid/graphics/BitmapShader;
    .end local v27    # "rightBackoffAntialias":F
    .end local v28    # "bottomBackoffAntialias":F
    .end local v29    # "supportsPathOp":Z
    .end local v31    # "leftBackoffAntialias":F
    .end local v32    # "imageWidth":F
    .local v5, "backgroundRect":Landroid/graphics/RectF;
    .local v7, "topBackoffAntialias":F
    .local v8, "rightBackoffAntialias":F
    .local v9, "bottomBackoffAntialias":F
    .restart local v10    # "leftBackoffAntialias":F
    :cond_d
    move-object/from16 v24, v5

    move/from16 v25, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v31, v10

    .line 372
    .end local v5    # "backgroundRect":Landroid/graphics/RectF;
    .end local v7    # "topBackoffAntialias":F
    .end local v8    # "rightBackoffAntialias":F
    .end local v9    # "bottomBackoffAntialias":F
    .end local v10    # "leftBackoffAntialias":F
    .restart local v24    # "backgroundRect":Landroid/graphics/RectF;
    .restart local v25    # "topBackoffAntialias":F
    .restart local v27    # "rightBackoffAntialias":F
    .restart local v28    # "bottomBackoffAntialias":F
    .restart local v31    # "leftBackoffAntialias":F
    :goto_9
    iget-object v5, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundGradient:Lorg/nativescript/widgets/LinearGradientDefinition;

    if-eqz v5, :cond_f

    .line 373
    iget-object v5, v0, Lorg/nativescript/widgets/BorderDrawable;->backgroundGradient:Lorg/nativescript/widgets/LinearGradientDefinition;

    .line 374
    .local v5, "def":Lorg/nativescript/widgets/LinearGradientDefinition;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 375
    .local v7, "backgroundGradientPaint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/LinearGradient;

    .line 376
    invoke-virtual {v5}, Lorg/nativescript/widgets/LinearGradientDefinition;->getStartX()F

    move-result v9

    mul-float v33, v9, v3

    invoke-virtual {v5}, Lorg/nativescript/widgets/LinearGradientDefinition;->getStartY()F

    move-result v9

    mul-float v34, v9, v4

    .line 377
    invoke-virtual {v5}, Lorg/nativescript/widgets/LinearGradientDefinition;->getEndX()F

    move-result v9

    mul-float v35, v9, v3

    invoke-virtual {v5}, Lorg/nativescript/widgets/LinearGradientDefinition;->getEndY()F

    move-result v9

    mul-float v36, v9, v4

    .line 378
    invoke-virtual {v5}, Lorg/nativescript/widgets/LinearGradientDefinition;->getColors()[I

    move-result-object v37

    invoke-virtual {v5}, Lorg/nativescript/widgets/LinearGradientDefinition;->getStops()[F

    move-result-object v38

    sget-object v39, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object/from16 v32, v8

    invoke-direct/range {v32 .. v39}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 379
    .local v8, "shader":Landroid/graphics/LinearGradient;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 380
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 381
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 383
    iget-object v9, v0, Lorg/nativescript/widgets/BorderDrawable;->clipPath:Ljava/lang/String;

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 384
    iget-object v9, v0, Lorg/nativescript/widgets/BorderDrawable;->clipPath:Ljava/lang/String;

    iget v10, v0, Lorg/nativescript/widgets/BorderDrawable;->density:F

    invoke-static {v9, v1, v7, v6, v10}, Lorg/nativescript/widgets/BorderDrawable;->drawClipPath(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;F)V

    goto :goto_a

    .line 386
    :cond_e
    invoke-virtual {v1, v13, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 391
    .end local v5    # "def":Lorg/nativescript/widgets/LinearGradientDefinition;
    .end local v7    # "backgroundGradientPaint":Landroid/graphics/Paint;
    .end local v8    # "shader":Landroid/graphics/LinearGradient;
    :cond_f
    :goto_a
    iget-object v5, v0, Lorg/nativescript/widgets/BorderDrawable;->clipPath:Ljava/lang/String;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 392
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/BorderDrawable;->getUniformBorderWidth()F

    move-result v5

    .line 393
    .local v5, "borderWidth":F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_11

    .line 394
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 395
    .local v7, "borderPaint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/BorderDrawable;->getUniformBorderColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 397
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 398
    iget-object v8, v0, Lorg/nativescript/widgets/BorderDrawable;->clipPath:Ljava/lang/String;

    iget v9, v0, Lorg/nativescript/widgets/BorderDrawable;->density:F

    invoke-static {v8, v1, v7, v6, v9}, Lorg/nativescript/widgets/BorderDrawable;->drawClipPath(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;F)V

    goto :goto_b

    .line 400
    .end local v5    # "borderWidth":F
    .end local v7    # "borderPaint":Landroid/graphics/Paint;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/BorderDrawable;->hasBorderWidth()Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    :goto_b
    move-object/from16 v20, v2

    move/from16 v26, v3

    move/from16 v17, v4

    move-object/from16 v19, v6

    goto/16 :goto_e

    .line 402
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/BorderDrawable;->hasUniformBorderColor()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 404
    iget v5, v0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftWidth:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_14

    iget v5, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_14

    iget v5, v0, Lorg/nativescript/widgets/BorderDrawable;->borderRightWidth:F

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_14

    iget v5, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomWidth:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_13

    goto :goto_c

    :cond_13
    move-object/from16 v20, v2

    move/from16 v26, v3

    move/from16 v17, v4

    move-object/from16 v19, v6

    goto/16 :goto_e

    .line 405
    :cond_14
    :goto_c
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 406
    .local v5, "borderPaint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/BorderDrawable;->getUniformBorderColor()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 408
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 409
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 411
    .local v7, "borderPath":Landroid/graphics/Path;
    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 412
    .local v8, "borderOuterRect":Landroid/graphics/RectF;
    const/16 v9, 0x8

    new-array v10, v9, [F

    iget v9, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopLeftRadius:F

    const/4 v11, 0x0

    aput v9, v10, v11

    const/4 v11, 0x1

    aput v9, v10, v11

    iget v9, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopRightRadius:F

    aput v9, v10, v16

    aput v9, v10, v17

    iget v9, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomRightRadius:F

    aput v9, v10, v18

    aput v9, v10, v19

    iget v9, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomLeftRadius:F

    aput v9, v10, v20

    aput v9, v10, v21

    move-object v9, v10

    .line 418
    .local v9, "borderOuterRadii":[F
    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 420
    new-instance v10, Landroid/graphics/RectF;

    iget v11, v0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftWidth:F

    iget v14, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    iget v15, v0, Lorg/nativescript/widgets/BorderDrawable;->borderRightWidth:F

    sub-float v15, v3, v15

    move/from16 v26, v3

    .end local v3    # "width":F
    .local v26, "width":F
    iget v3, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomWidth:F

    sub-float v3, v4, v3

    invoke-direct {v10, v11, v14, v15, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v3, v10

    .line 426
    .local v3, "borderInnerRect":Landroid/graphics/RectF;
    const/16 v10, 0x8

    new-array v10, v10, [F

    iget v11, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopLeftRadius:F

    iget v14, v0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftWidth:F

    sub-float/2addr v11, v14

    .line 427
    const/4 v14, 0x0

    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/4 v15, 0x0

    aput v11, v10, v15

    iget v11, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopLeftRadius:F

    iget v15, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    sub-float/2addr v11, v15

    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/4 v15, 0x1

    aput v11, v10, v15

    iget v11, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopRightRadius:F

    iget v15, v0, Lorg/nativescript/widgets/BorderDrawable;->borderRightWidth:F

    sub-float/2addr v11, v15

    .line 428
    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v10, v16

    iget v11, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopRightRadius:F

    iget v15, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    sub-float/2addr v11, v15

    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v10, v17

    iget v11, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomRightRadius:F

    iget v15, v0, Lorg/nativescript/widgets/BorderDrawable;->borderRightWidth:F

    sub-float/2addr v11, v15

    .line 429
    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v10, v18

    iget v11, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomRightRadius:F

    iget v15, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomWidth:F

    sub-float/2addr v11, v15

    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v10, v19

    iget v11, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomLeftRadius:F

    iget v15, v0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftWidth:F

    sub-float/2addr v11, v15

    .line 430
    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v10, v20

    iget v11, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomLeftRadius:F

    iget v15, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomWidth:F

    sub-float/2addr v11, v15

    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v10, v21

    .line 432
    .local v10, "borderInnerRadii":[F
    sget-object v11, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v3, v10, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 434
    invoke-virtual {v1, v7, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 435
    .end local v3    # "borderInnerRect":Landroid/graphics/RectF;
    .end local v5    # "borderPaint":Landroid/graphics/Paint;
    .end local v7    # "borderPath":Landroid/graphics/Path;
    .end local v8    # "borderOuterRect":Landroid/graphics/RectF;
    .end local v9    # "borderOuterRadii":[F
    .end local v10    # "borderInnerRadii":[F
    move-object/from16 v20, v2

    move/from16 v17, v4

    move-object/from16 v19, v6

    goto/16 :goto_e

    .line 437
    .end local v26    # "width":F
    .local v3, "width":F
    :cond_15
    move/from16 v26, v3

    .end local v3    # "width":F
    .restart local v26    # "width":F
    iget v3, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    .line 438
    .local v3, "top":F
    iget v5, v0, Lorg/nativescript/widgets/BorderDrawable;->borderRightWidth:F

    .line 439
    .local v5, "right":F
    iget v7, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomWidth:F

    .line 440
    .local v7, "bottom":F
    iget v8, v0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftWidth:F

    .line 453
    .local v8, "left":F
    new-instance v9, Landroid/graphics/PointF;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 454
    .local v9, "lto":Landroid/graphics/PointF;
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v8, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 456
    .local v11, "lti":Landroid/graphics/PointF;
    new-instance v14, Landroid/graphics/PointF;

    iget v15, v2, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    invoke-direct {v14, v15, v10}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v10, v14

    .line 457
    .local v10, "rto":Landroid/graphics/PointF;
    new-instance v14, Landroid/graphics/PointF;

    iget v15, v2, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v15, v5

    invoke-direct {v14, v15, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 459
    .local v14, "rti":Landroid/graphics/PointF;
    new-instance v15, Landroid/graphics/PointF;

    move/from16 v16, v3

    .end local v3    # "top":F
    .local v16, "top":F
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move/from16 v17, v4

    .end local v4    # "height":F
    .local v17, "height":F
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v15, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v3, v15

    .line 460
    .local v3, "rbo":Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/PointF;

    iget v15, v2, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v15, v5

    move/from16 v18, v5

    .end local v5    # "right":F
    .local v18, "right":F
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v7

    invoke-direct {v4, v15, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 462
    .local v4, "rbi":Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/PointF;

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    move-object/from16 v19, v6

    const/4 v6, 0x0

    .end local v6    # "backgroundBoundsF":Landroid/graphics/RectF;
    .local v19, "backgroundBoundsF":Landroid/graphics/RectF;
    invoke-direct {v5, v6, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 463
    .local v5, "lbo":Landroid/graphics/PointF;
    new-instance v15, Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v6, v7

    invoke-direct {v15, v8, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v6, v15

    .line 465
    .local v6, "lbi":Landroid/graphics/PointF;
    iget v15, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    const/16 v20, 0x0

    cmpl-float v15, v15, v20

    if-lez v15, :cond_16

    .line 466
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 467
    .local v15, "topBorderPaint":Landroid/graphics/Paint;
    move-object/from16 v20, v2

    .end local v2    # "bounds":Landroid/graphics/Rect;
    .local v20, "bounds":Landroid/graphics/Rect;
    iget v2, v0, Lorg/nativescript/widgets/BorderDrawable;->borderTopColor:I

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 469
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 470
    .local v2, "topBorderPath":Landroid/graphics/Path;
    move/from16 v21, v7

    .end local v7    # "bottom":F
    .local v21, "bottom":F
    sget-object v7, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v7}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 471
    iget v7, v9, Landroid/graphics/PointF;->x:F

    move/from16 v22, v8

    .end local v8    # "left":F
    .local v22, "left":F
    iget v8, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 472
    iget v7, v10, Landroid/graphics/PointF;->x:F

    iget v8, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 473
    iget v7, v14, Landroid/graphics/PointF;->x:F

    iget v8, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 474
    iget v7, v11, Landroid/graphics/PointF;->x:F

    iget v8, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 475
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 476
    invoke-virtual {v1, v2, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_d

    .line 465
    .end local v15    # "topBorderPaint":Landroid/graphics/Paint;
    .end local v20    # "bounds":Landroid/graphics/Rect;
    .end local v21    # "bottom":F
    .end local v22    # "left":F
    .local v2, "bounds":Landroid/graphics/Rect;
    .restart local v7    # "bottom":F
    .restart local v8    # "left":F
    :cond_16
    move-object/from16 v20, v2

    move/from16 v21, v7

    move/from16 v22, v8

    .line 479
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "bottom":F
    .end local v8    # "left":F
    .restart local v20    # "bounds":Landroid/graphics/Rect;
    .restart local v21    # "bottom":F
    .restart local v22    # "left":F
    :goto_d
    iget v2, v0, Lorg/nativescript/widgets/BorderDrawable;->borderRightWidth:F

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_17

    .line 480
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 481
    .local v2, "rightBorderPaint":Landroid/graphics/Paint;
    iget v7, v0, Lorg/nativescript/widgets/BorderDrawable;->borderRightColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 483
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 484
    .local v7, "rightBorderPath":Landroid/graphics/Path;
    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 485
    iget v8, v10, Landroid/graphics/PointF;->x:F

    iget v15, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 486
    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v15, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 487
    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget v15, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 488
    iget v8, v14, Landroid/graphics/PointF;->x:F

    iget v15, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 489
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 490
    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 493
    .end local v2    # "rightBorderPaint":Landroid/graphics/Paint;
    .end local v7    # "rightBorderPath":Landroid/graphics/Path;
    :cond_17
    iget v2, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomWidth:F

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_18

    .line 494
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 495
    .local v2, "bottomBorderPaint":Landroid/graphics/Paint;
    iget v7, v0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 496
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 497
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 498
    .local v7, "bottomBorderPath":Landroid/graphics/Path;
    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 499
    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v15, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 500
    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 501
    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v15, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 502
    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget v15, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 503
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 504
    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 507
    .end local v2    # "bottomBorderPaint":Landroid/graphics/Paint;
    .end local v7    # "bottomBorderPath":Landroid/graphics/Path;
    :cond_18
    iget v2, v0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftWidth:F

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_19

    .line 508
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 509
    .local v2, "leftBorderPaint":Landroid/graphics/Paint;
    iget v7, v0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 510
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 511
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 512
    .local v7, "leftBorderPath":Landroid/graphics/Path;
    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 513
    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 514
    iget v8, v9, Landroid/graphics/PointF;->x:F

    iget v15, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 515
    iget v8, v11, Landroid/graphics/PointF;->x:F

    iget v15, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 516
    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v15, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 517
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 518
    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 521
    .end local v2    # "leftBorderPaint":Landroid/graphics/Paint;
    .end local v3    # "rbo":Landroid/graphics/PointF;
    .end local v4    # "rbi":Landroid/graphics/PointF;
    .end local v5    # "lbo":Landroid/graphics/PointF;
    .end local v6    # "lbi":Landroid/graphics/PointF;
    .end local v7    # "leftBorderPath":Landroid/graphics/Path;
    .end local v9    # "lto":Landroid/graphics/PointF;
    .end local v10    # "rto":Landroid/graphics/PointF;
    .end local v11    # "lti":Landroid/graphics/PointF;
    .end local v14    # "rti":Landroid/graphics/PointF;
    .end local v16    # "top":F
    .end local v18    # "right":F
    .end local v21    # "bottom":F
    .end local v22    # "left":F
    :cond_19
    :goto_e
    return-void

    .line 282
    .end local v12    # "backgroundRadii":[F
    .end local v13    # "backgroundPath":Landroid/graphics/Path;
    .end local v17    # "height":F
    .end local v19    # "backgroundBoundsF":Landroid/graphics/RectF;
    .end local v20    # "bounds":Landroid/graphics/Rect;
    .end local v24    # "backgroundRect":Landroid/graphics/RectF;
    .end local v25    # "topBackoffAntialias":F
    .end local v26    # "width":F
    .end local v27    # "rightBackoffAntialias":F
    .end local v28    # "bottomBackoffAntialias":F
    .end local v31    # "leftBackoffAntialias":F
    .local v2, "bounds":Landroid/graphics/Rect;
    .local v3, "width":F
    .local v4, "height":F
    :cond_1a
    move-object/from16 v20, v2

    move/from16 v26, v3

    move/from16 v17, v4

    .line 284
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "width":F
    .end local v4    # "height":F
    .restart local v17    # "height":F
    .restart local v20    # "bounds":Landroid/graphics/Rect;
    .restart local v26    # "width":F
    :goto_f
    return-void
.end method

.method public getBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 145
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundColor:I

    return v0
.end method

.method public getBackgroundGradient()Lorg/nativescript/widgets/LinearGradientDefinition;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundGradient:Lorg/nativescript/widgets/LinearGradientDefinition;

    return-object v0
.end method

.method public getBackgroundImage()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundImage:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundPosition()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundRepeat()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundRepeat:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundSize()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundSize:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderBottomColor()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomColor:I

    return v0
.end method

.method public getBorderBottomLeftRadius()F
    .locals 1

    .line 129
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomLeftRadius:F

    return v0
.end method

.method public getBorderBottomRightRadius()F
    .locals 1

    .line 125
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomRightRadius:F

    return v0
.end method

.method public getBorderBottomWidth()F
    .locals 1

    .line 101
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomWidth:F

    return v0
.end method

.method public getBorderLeftColor()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftColor:I

    return v0
.end method

.method public getBorderLeftWidth()F
    .locals 1

    .line 105
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftWidth:F

    return v0
.end method

.method public getBorderRightColor()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderRightColor:I

    return v0
.end method

.method public getBorderRightWidth()F
    .locals 1

    .line 97
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderRightWidth:F

    return v0
.end method

.method public getBorderTopColor()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopColor:I

    return v0
.end method

.method public getBorderTopLeftRadius()F
    .locals 1

    .line 117
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopLeftRadius:F

    return v0
.end method

.method public getBorderTopRightRadius()F
    .locals 1

    .line 121
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopRightRadius:F

    return v0
.end method

.method public getBorderTopWidth()F
    .locals 1

    .line 93
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    return v0
.end method

.method public getClipPath()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/nativescript/widgets/BorderDrawable;->clipPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .line 65
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->density:F

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 823
    iget-object v0, p0, Lorg/nativescript/widgets/BorderDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 5
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 828
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 829
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 830
    .local v0, "backgroundPath":Landroid/graphics/Path;
    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopLeftRadius:F

    .line 831
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopLeftRadius:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopRightRadius:F

    .line 832
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopRightRadius:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomRightRadius:F

    .line 833
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomRightRadius:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomLeftRadius:F

    .line 834
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomLeftRadius:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v1, v2

    .line 836
    .local v1, "backgroundRadii":[F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/nativescript/widgets/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 837
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 838
    .end local v0    # "backgroundPath":Landroid/graphics/Path;
    .end local v1    # "backgroundRadii":[F
    nop

    .line 841
    return-void

    .line 839
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method supported on API 21 or higher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUniformBorderColor()I
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/nativescript/widgets/BorderDrawable;->hasUniformBorderColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopColor:I

    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUniformBorderRadius()F
    .locals 1

    .line 133
    invoke-virtual {p0}, Lorg/nativescript/widgets/BorderDrawable;->hasUniformBorderRadius()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopLeftRadius:F

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUniformBorderWidth()F
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/nativescript/widgets/BorderDrawable;->hasUniformBorderWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    return v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasBorderWidth()Z
    .locals 2

    .line 171
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderRightWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasUniformBorder()Z
    .locals 1

    .line 196
    invoke-virtual {p0}, Lorg/nativescript/widgets/BorderDrawable;->hasUniformBorderColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lorg/nativescript/widgets/BorderDrawable;->hasUniformBorderWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lorg/nativescript/widgets/BorderDrawable;->hasUniformBorderRadius()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0
.end method

.method public hasUniformBorderColor()Z
    .locals 2

    .line 178
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopColor:I

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderRightColor:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomColor:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftColor:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUniformBorderRadius()Z
    .locals 2

    .line 190
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopLeftRadius:F

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopRightRadius:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomRightRadius:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomLeftRadius:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUniformBorderWidth()Z
    .locals 2

    .line 184
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderRightWidth:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomWidth:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refresh(IIIIFFFFFFFFLjava/lang/String;ILjava/lang/String;Landroid/graphics/Bitmap;Lorg/nativescript/widgets/LinearGradientDefinition;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lorg/nativescript/widgets/CSSValue;Ljava/lang/String;[Lorg/nativescript/widgets/CSSValue;)V
    .locals 23
    .param p1, "borderTopColor"    # I
    .param p2, "borderRightColor"    # I
    .param p3, "borderBottomColor"    # I
    .param p4, "borderLeftColor"    # I
    .param p5, "borderTopWidth"    # F
    .param p6, "borderRightWidth"    # F
    .param p7, "borderBottomWidth"    # F
    .param p8, "borderLeftWidth"    # F
    .param p9, "borderTopLeftRadius"    # F
    .param p10, "borderTopRightRadius"    # F
    .param p11, "borderBottomRightRadius"    # F
    .param p12, "borderBottomLeftRadius"    # F
    .param p13, "clipPath"    # Ljava/lang/String;
    .param p14, "backgroundColor"    # I
    .param p15, "backgroundImageUri"    # Ljava/lang/String;
    .param p16, "backgroundBitmap"    # Landroid/graphics/Bitmap;
    .param p17, "backgroundGradient"    # Lorg/nativescript/widgets/LinearGradientDefinition;
    .param p18, "context"    # Landroid/content/Context;
    .param p19, "backgroundRepeat"    # Ljava/lang/String;
    .param p20, "backgroundPosition"    # Ljava/lang/String;
    .param p21, "backgroundPositionParsedCSSValues"    # [Lorg/nativescript/widgets/CSSValue;
    .param p22, "backgroundSize"    # Ljava/lang/String;
    .param p23, "backgroundSizeParsedCSSValues"    # [Lorg/nativescript/widgets/CSSValue;

    .line 240
    move-object/from16 v9, p0

    move-object/from16 v10, p15

    move/from16 v11, p1

    iput v11, v9, Lorg/nativescript/widgets/BorderDrawable;->borderTopColor:I

    .line 241
    move/from16 v12, p2

    iput v12, v9, Lorg/nativescript/widgets/BorderDrawable;->borderRightColor:I

    .line 242
    move/from16 v13, p3

    iput v13, v9, Lorg/nativescript/widgets/BorderDrawable;->borderBottomColor:I

    .line 243
    move/from16 v14, p4

    iput v14, v9, Lorg/nativescript/widgets/BorderDrawable;->borderLeftColor:I

    .line 245
    move/from16 v15, p5

    iput v15, v9, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    .line 246
    move/from16 v8, p6

    iput v8, v9, Lorg/nativescript/widgets/BorderDrawable;->borderRightWidth:F

    .line 247
    move/from16 v7, p7

    iput v7, v9, Lorg/nativescript/widgets/BorderDrawable;->borderBottomWidth:F

    .line 248
    move/from16 v6, p8

    iput v6, v9, Lorg/nativescript/widgets/BorderDrawable;->borderLeftWidth:F

    .line 250
    move/from16 v5, p9

    iput v5, v9, Lorg/nativescript/widgets/BorderDrawable;->borderTopLeftRadius:F

    .line 251
    move/from16 v4, p10

    iput v4, v9, Lorg/nativescript/widgets/BorderDrawable;->borderTopRightRadius:F

    .line 252
    move/from16 v3, p11

    iput v3, v9, Lorg/nativescript/widgets/BorderDrawable;->borderBottomRightRadius:F

    .line 253
    move/from16 v2, p12

    iput v2, v9, Lorg/nativescript/widgets/BorderDrawable;->borderBottomLeftRadius:F

    .line 255
    move-object/from16 v1, p13

    iput-object v1, v9, Lorg/nativescript/widgets/BorderDrawable;->clipPath:Ljava/lang/String;

    .line 257
    move/from16 v0, p14

    iput v0, v9, Lorg/nativescript/widgets/BorderDrawable;->backgroundColor:I

    .line 258
    iput-object v10, v9, Lorg/nativescript/widgets/BorderDrawable;->backgroundImage:Ljava/lang/String;

    .line 259
    move-object/from16 v8, p16

    iput-object v8, v9, Lorg/nativescript/widgets/BorderDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 260
    move-object/from16 v8, p17

    iput-object v8, v9, Lorg/nativescript/widgets/BorderDrawable;->backgroundGradient:Lorg/nativescript/widgets/LinearGradientDefinition;

    .line 261
    move-object/from16 v8, p19

    iput-object v8, v9, Lorg/nativescript/widgets/BorderDrawable;->backgroundRepeat:Ljava/lang/String;

    .line 262
    move-object/from16 v8, p20

    iput-object v8, v9, Lorg/nativescript/widgets/BorderDrawable;->backgroundPosition:Ljava/lang/String;

    .line 263
    move-object/from16 v8, p21

    iput-object v8, v9, Lorg/nativescript/widgets/BorderDrawable;->backgroundPositionParsedCSSValues:[Lorg/nativescript/widgets/CSSValue;

    .line 264
    move-object/from16 v8, p22

    iput-object v8, v9, Lorg/nativescript/widgets/BorderDrawable;->backgroundSize:Ljava/lang/String;

    .line 265
    move-object/from16 v8, p23

    iput-object v8, v9, Lorg/nativescript/widgets/BorderDrawable;->backgroundSizeParsedCSSValues:[Lorg/nativescript/widgets/CSSValue;

    .line 267
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/BorderDrawable;->invalidateSelf()V

    .line 268
    if-eqz v10, :cond_0

    .line 269
    invoke-static/range {p18 .. p18}, Lorg/nativescript/widgets/image/Fetcher;->getInstance(Landroid/content/Context;)Lorg/nativescript/widgets/image/Fetcher;

    move-result-object v16

    .line 271
    .local v16, "fetcher":Lorg/nativescript/widgets/image/Fetcher;
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    .line 272
    .local v17, "loadAsync":Z
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p15

    move-object/from16 v2, p0

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v17

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lorg/nativescript/widgets/image/Fetcher;->loadImage(Ljava/lang/String;Lorg/nativescript/widgets/image/BitmapOwner;IIZZZLorg/nativescript/widgets/image/Worker$OnImageLoadedListener;)V

    .line 274
    .end local v16    # "fetcher":Lorg/nativescript/widgets/image/Fetcher;
    .end local v17    # "loadAsync":Z
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "value"    # Landroid/graphics/Bitmap;

    .line 811
    iput-object p1, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 812
    invoke-virtual {p0}, Lorg/nativescript/widgets/BorderDrawable;->invalidateSelf()V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nativescript/widgets/BorderDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 814
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "asyncDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 818
    iput-object p1, p0, Lorg/nativescript/widgets/BorderDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 819
    return-void
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 2

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/nativescript/widgets/BorderDrawable;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; borderTopColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; borderRightColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderRightColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; borderBottomColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; borderLeftColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; borderTopWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; borderRightWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderRightWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; borderBottomWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; borderLeftWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderLeftWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; borderTopLeftRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopLeftRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; borderTopRightRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderTopRightRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; borderBottomRightRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomRightRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; borderBottomLeftRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->borderBottomLeftRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; clipPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/nativescript/widgets/BorderDrawable;->clipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; backgroundColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; backgroundImage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; backgroundBitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; backgroundRepeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundRepeat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; backgroundPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; backgroundSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/nativescript/widgets/BorderDrawable;->backgroundSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
