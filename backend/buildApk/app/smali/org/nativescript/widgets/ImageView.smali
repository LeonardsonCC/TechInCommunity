.class public Lorg/nativescript/widgets/ImageView;
.super Landroid/widget/ImageView;
.source "ImageView.java"

# interfaces
.implements Lorg/nativescript/widgets/image/BitmapOwner;


# static fields
.field private static final EPSILON:D = 1.0E-5


# instance fields
.field private mAsync:Z

.field private mAttachedToWindow:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDecodeHeight:I

.field private mDecodeWidth:I

.field private mKeepAspectRatio:Z

.field private mListener:Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mUri:Ljava/lang/String;

.field private mUseCache:Z

.field private path:Landroid/graphics/Path;

.field private rect:Landroid/graphics/RectF;

.field private rotationAngle:F

.field private scaleH:D

.field private scaleW:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/ImageView;->path:Landroid/graphics/Path;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/ImageView;->rect:Landroid/graphics/RectF;

    .line 23
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/nativescript/widgets/ImageView;->scaleW:D

    .line 24
    iput-wide v0, p0, Lorg/nativescript/widgets/ImageView;->scaleH:D

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/nativescript/widgets/ImageView;->mAttachedToWindow:Z

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 51
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    return-void
.end method

.method private computeScaleFactor(IIZZDD)V
    .locals 6
    .param p1, "measureWidth"    # I
    .param p2, "measureHeight"    # I
    .param p3, "widthIsFinite"    # Z
    .param p4, "heightIsFinite"    # Z
    .param p5, "nativeWidth"    # D
    .param p7, "nativeHeight"    # D

    .line 133
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/nativescript/widgets/ImageView;->scaleW:D

    .line 134
    iput-wide v0, p0, Lorg/nativescript/widgets/ImageView;->scaleH:D

    .line 136
    invoke-virtual {p0}, Lorg/nativescript/widgets/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    .line 137
    .local v0, "scale":Landroid/widget/ImageView$ScaleType;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_a

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_a

    .line 140
    :cond_1
    const-wide/16 v1, 0x0

    cmpl-double v3, p5, v1

    if-lez v3, :cond_2

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, p5

    goto :goto_0

    :cond_2
    move-wide v3, v1

    :goto_0
    iput-wide v3, p0, Lorg/nativescript/widgets/ImageView;->scaleW:D

    .line 141
    cmpl-double v3, p7, v1

    if-lez v3, :cond_3

    int-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, p7

    :cond_3
    iput-wide v1, p0, Lorg/nativescript/widgets/ImageView;->scaleH:D

    .line 143
    if-nez p3, :cond_4

    .line 144
    iput-wide v1, p0, Lorg/nativescript/widgets/ImageView;->scaleW:D

    goto :goto_3

    .line 145
    :cond_4
    if-nez p4, :cond_5

    .line 146
    iget-wide v1, p0, Lorg/nativescript/widgets/ImageView;->scaleW:D

    iput-wide v1, p0, Lorg/nativescript/widgets/ImageView;->scaleH:D

    goto :goto_3

    .line 149
    :cond_5
    sget-object v1, Lorg/nativescript/widgets/ImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    goto :goto_3

    .line 155
    :cond_6
    iget-wide v1, p0, Lorg/nativescript/widgets/ImageView;->scaleW:D

    iget-wide v3, p0, Lorg/nativescript/widgets/ImageView;->scaleH:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_7

    goto :goto_1

    :cond_7
    move-wide v1, v3

    :goto_1
    iput-wide v1, p0, Lorg/nativescript/widgets/ImageView;->scaleH:D

    .line 156
    iput-wide v1, p0, Lorg/nativescript/widgets/ImageView;->scaleW:D

    .line 157
    goto :goto_3

    .line 151
    :cond_8
    iget-wide v1, p0, Lorg/nativescript/widgets/ImageView;->scaleW:D

    iget-wide v3, p0, Lorg/nativescript/widgets/ImageView;->scaleH:D

    cmpg-double v5, v1, v3

    if-gez v5, :cond_9

    goto :goto_2

    :cond_9
    move-wide v1, v3

    :goto_2
    iput-wide v1, p0, Lorg/nativescript/widgets/ImageView;->scaleH:D

    .line 152
    iput-wide v1, p0, Lorg/nativescript/widgets/ImageView;->scaleW:D

    .line 153
    nop

    .line 163
    :cond_a
    :goto_3
    return-void
.end method

.method private loadImage()V
    .locals 10

    .line 194
    invoke-virtual {p0}, Lorg/nativescript/widgets/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/nativescript/widgets/image/Fetcher;->getInstance(Landroid/content/Context;)Lorg/nativescript/widgets/image/Fetcher;

    move-result-object v0

    .line 195
    .local v0, "fetcher":Lorg/nativescript/widgets/image/Fetcher;
    iget-object v2, p0, Lorg/nativescript/widgets/ImageView;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 197
    iget v4, p0, Lorg/nativescript/widgets/ImageView;->mDecodeWidth:I

    iget v5, p0, Lorg/nativescript/widgets/ImageView;->mDecodeHeight:I

    iget-boolean v6, p0, Lorg/nativescript/widgets/ImageView;->mKeepAspectRatio:Z

    iget-boolean v7, p0, Lorg/nativescript/widgets/ImageView;->mUseCache:Z

    iget-boolean v8, p0, Lorg/nativescript/widgets/ImageView;->mAsync:Z

    iget-object v9, p0, Lorg/nativescript/widgets/ImageView;->mListener:Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;

    move-object v1, v0

    move-object v3, p0

    invoke-virtual/range {v1 .. v9}, Lorg/nativescript/widgets/image/Fetcher;->loadImage(Ljava/lang/String;Lorg/nativescript/widgets/image/BitmapOwner;IIZZZLorg/nativescript/widgets/image/Worker$OnImageLoadedListener;)V

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method public getRotationAngle()F
    .locals 1

    .line 40
    iget v0, p0, Lorg/nativescript/widgets/ImageView;->rotationAngle:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nativescript/widgets/ImageView;->mAttachedToWindow:Z

    .line 57
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 58
    invoke-direct {p0}, Lorg/nativescript/widgets/ImageView;->loadImage()V

    .line 59
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/nativescript/widgets/ImageView;->mAttachedToWindow:Z

    .line 64
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 65
    iget-object v0, p0, Lorg/nativescript/widgets/ImageView;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 31
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lorg/nativescript/widgets/BorderDrawable;

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/BorderDrawable;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 218
    .local v2, "background":Lorg/nativescript/widgets/BorderDrawable;
    :goto_0
    iget-object v3, v0, Lorg/nativescript/widgets/ImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    .line 221
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {v2, v1}, Lorg/nativescript/widgets/BorderDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 224
    invoke-virtual {v2}, Lorg/nativescript/widgets/BorderDrawable;->getBorderTopLeftRadius()F

    move-result v4

    .line 225
    .local v4, "borderTopLeftRadius":F
    invoke-virtual {v2}, Lorg/nativescript/widgets/BorderDrawable;->getBorderTopRightRadius()F

    move-result v5

    .line 226
    .local v5, "borderTopRightRadius":F
    invoke-virtual {v2}, Lorg/nativescript/widgets/BorderDrawable;->getBorderBottomRightRadius()F

    move-result v6

    .line 227
    .local v6, "borderBottomRightRadius":F
    invoke-virtual {v2}, Lorg/nativescript/widgets/BorderDrawable;->getBorderBottomLeftRadius()F

    move-result v7

    .local v7, "borderBottomLeftRadius":F
    goto :goto_1

    .line 229
    .end local v4    # "borderTopLeftRadius":F
    .end local v5    # "borderTopRightRadius":F
    .end local v6    # "borderBottomRightRadius":F
    .end local v7    # "borderBottomLeftRadius":F
    :cond_1
    move v7, v3

    .restart local v7    # "borderBottomLeftRadius":F
    move v6, v3

    .restart local v6    # "borderBottomRightRadius":F
    move v5, v3

    .restart local v5    # "borderTopRightRadius":F
    move v4, v3

    .line 233
    .restart local v4    # "borderTopLeftRadius":F
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    .line 234
    .local v8, "borderTopWidth":F
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getPaddingRight()I

    move-result v9

    int-to-float v9, v9

    .line 235
    .local v9, "borderRightWidth":F
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getPaddingBottom()I

    move-result v10

    int-to-float v10, v10

    .line 236
    .local v10, "borderBottomWidth":F
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    .line 240
    .local v11, "borderLeftWidth":F
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getRotationAngle()F

    move-result v12

    .line 241
    .local v12, "rotationDegree":F
    const/high16 v13, 0x43340000    # 180.0f

    rem-float v14, v12, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x42340000    # 45.0f

    const/16 v16, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2

    rem-float v13, v12, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x43070000    # 135.0f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 243
    .local v13, "swap":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v11

    sub-float/2addr v14, v9

    .line 244
    .local v14, "innerWidth":F
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v8

    sub-float/2addr v15, v10

    .line 247
    .local v15, "innerHeight":F
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v19, v18

    .line 248
    .local v19, "path":Landroid/graphics/Path;
    const/16 v3, 0x8

    new-array v3, v3, [F

    move-object/from16 v20, v2

    .end local v2    # "background":Lorg/nativescript/widgets/BorderDrawable;
    .local v20, "background":Lorg/nativescript/widgets/BorderDrawable;
    sub-float v2, v4, v11

    .line 249
    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v3, v16

    sub-float v2, v4, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/16 v16, 0x1

    aput v2, v3, v16

    sub-float v2, v5, v9

    .line 250
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v1, 0x2

    aput v2, v3, v1

    sub-float v2, v5, v8

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v1, 0x3

    aput v2, v3, v1

    sub-float v2, v6, v9

    .line 251
    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v1, 0x4

    aput v2, v3, v1

    const/4 v2, 0x5

    sub-float v1, v6, v10

    move/from16 v23, v4

    const/4 v4, 0x0

    .end local v4    # "borderTopLeftRadius":F
    .local v23, "borderTopLeftRadius":F
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v3, v2

    const/4 v1, 0x6

    sub-float v2, v7, v11

    .line 252
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v3, v1

    const/4 v1, 0x7

    sub-float v2, v7, v10

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v3, v1

    move-object v1, v3

    .line 254
    .local v1, "radii":[F
    new-instance v2, Landroid/graphics/RectF;

    add-float v3, v11, v14

    add-float v4, v8, v15

    invoke-direct {v2, v11, v8, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v4, v19

    .end local v19    # "path":Landroid/graphics/Path;
    .local v4, "path":Landroid/graphics/Path;
    invoke-virtual {v4, v2, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 256
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 257
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/BitmapShader;

    move-object/from16 v17, v1

    .end local v1    # "radii":[F
    .local v17, "radii":[F
    iget-object v1, v0, Lorg/nativescript/widgets/ImageView;->mBitmap:Landroid/graphics/Bitmap;

    move/from16 v19, v5

    .end local v5    # "borderTopRightRadius":F
    .local v19, "borderTopRightRadius":F
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v24, v6

    .end local v6    # "borderBottomRightRadius":F
    .local v24, "borderBottomRightRadius":F
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v1, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object v1, v3

    .line 259
    .local v1, "bitmapShader":Landroid/graphics/BitmapShader;
    iget-object v3, v0, Lorg/nativescript/widgets/ImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 260
    .local v3, "bitmapWidth":F
    iget-object v5, v0, Lorg/nativescript/widgets/ImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 262
    .local v5, "bitmapHeight":F
    iget-object v6, v0, Lorg/nativescript/widgets/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 263
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 265
    const/high16 v25, 0x40000000    # 2.0f

    div-float v0, v3, v25

    move/from16 v26, v7

    .end local v7    # "borderBottomLeftRadius":F
    .local v26, "borderBottomLeftRadius":F
    div-float v7, v5, v25

    invoke-virtual {v6, v12, v0, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 266
    if-eqz v13, :cond_3

    .line 267
    sub-float v0, v5, v3

    div-float v0, v0, v25

    sub-float v7, v3, v5

    div-float v7, v7, v25

    invoke-virtual {v6, v0, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 268
    move v0, v3

    .line 269
    .local v0, "temp":F
    move v3, v5

    .line 270
    move v5, v0

    .line 273
    .end local v0    # "temp":F
    :cond_3
    div-float v0, v14, v3

    .line 274
    .local v0, "fittingScaleX":F
    div-float v7, v15, v5

    .line 278
    .local v7, "fittingScaleY":F
    sget-object v27, Lorg/nativescript/widgets/ImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v28

    move/from16 v29, v9

    .end local v9    # "borderRightWidth":F
    .local v29, "borderRightWidth":F
    aget v9, v27, v28

    move/from16 v27, v10

    const/4 v10, 0x1

    .end local v10    # "borderBottomWidth":F
    .local v27, "borderBottomWidth":F
    if-eq v9, v10, :cond_7

    const/4 v10, 0x2

    if-eq v9, v10, :cond_6

    const/4 v10, 0x3

    if-eq v9, v10, :cond_5

    const/4 v10, 0x4

    if-eq v9, v10, :cond_4

    move/from16 v25, v0

    move-object/from16 v28, v4

    move/from16 v16, v12

    move/from16 v22, v13

    move-object/from16 v12, p1

    goto/16 :goto_3

    .line 305
    :cond_4
    add-float v9, v11, v3

    add-float v10, v8, v5

    move/from16 v16, v12

    move-object/from16 v12, p1

    .end local v12    # "rotationDegree":F
    .local v16, "rotationDegree":F
    invoke-virtual {v12, v11, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move/from16 v25, v0

    move-object/from16 v28, v4

    move/from16 v22, v13

    goto/16 :goto_3

    .line 302
    .end local v16    # "rotationDegree":F
    .restart local v12    # "rotationDegree":F
    :cond_5
    move/from16 v16, v12

    move-object/from16 v12, p1

    .end local v12    # "rotationDegree":F
    .restart local v16    # "rotationDegree":F
    invoke-virtual {v6, v0, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 303
    move/from16 v25, v0

    move-object/from16 v28, v4

    move/from16 v22, v13

    goto/16 :goto_3

    .line 291
    .end local v16    # "rotationDegree":F
    .restart local v12    # "rotationDegree":F
    :cond_6
    move/from16 v16, v12

    move-object/from16 v12, p1

    .end local v12    # "rotationDegree":F
    .restart local v16    # "rotationDegree":F
    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 292
    .local v9, "uniformScale":F
    sub-float v10, v14, v3

    div-float v10, v10, v25

    sub-float v21, v15, v5

    move/from16 v22, v13

    .end local v13    # "swap":Z
    .local v22, "swap":Z
    div-float v13, v21, v25

    invoke-virtual {v6, v10, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 293
    div-float v10, v14, v25

    div-float v13, v15, v25

    invoke-virtual {v6, v9, v9, v10, v13}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 294
    mul-float v10, v3, v9

    sub-float v10, v14, v10

    div-float v10, v10, v25

    add-float/2addr v10, v11

    mul-float v13, v5, v9

    sub-float v13, v15, v13

    div-float v13, v13, v25

    add-float/2addr v13, v8

    mul-float v21, v3, v9

    add-float v21, v14, v21

    div-float v21, v21, v25

    move-object/from16 v28, v4

    .end local v4    # "path":Landroid/graphics/Path;
    .local v28, "path":Landroid/graphics/Path;
    add-float v4, v11, v21

    mul-float v21, v5, v9

    add-float v21, v15, v21

    div-float v21, v21, v25

    move/from16 v30, v9

    .end local v9    # "uniformScale":F
    .local v30, "uniformScale":F
    add-float v9, v8, v21

    invoke-virtual {v12, v10, v13, v4, v9}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 300
    move/from16 v25, v0

    goto :goto_3

    .line 280
    .end local v16    # "rotationDegree":F
    .end local v22    # "swap":Z
    .end local v28    # "path":Landroid/graphics/Path;
    .end local v30    # "uniformScale":F
    .restart local v4    # "path":Landroid/graphics/Path;
    .restart local v12    # "rotationDegree":F
    .restart local v13    # "swap":Z
    :cond_7
    move-object/from16 v28, v4

    move/from16 v16, v12

    move/from16 v22, v13

    move-object/from16 v12, p1

    .end local v4    # "path":Landroid/graphics/Path;
    .end local v12    # "rotationDegree":F
    .end local v13    # "swap":Z
    .restart local v16    # "rotationDegree":F
    .restart local v22    # "swap":Z
    .restart local v28    # "path":Landroid/graphics/Path;
    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 281
    .local v4, "uniformScale":F
    sub-float v9, v14, v3

    div-float v9, v9, v25

    sub-float v10, v15, v5

    div-float v10, v10, v25

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 282
    div-float v9, v14, v25

    div-float v10, v15, v25

    invoke-virtual {v6, v4, v4, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 283
    mul-float v9, v3, v4

    sub-float v9, v14, v9

    div-float v9, v9, v25

    add-float/2addr v9, v11

    mul-float v10, v5, v4

    sub-float v10, v15, v10

    div-float v10, v10, v25

    add-float/2addr v10, v8

    mul-float v13, v3, v4

    add-float/2addr v13, v14

    div-float v13, v13, v25

    add-float/2addr v13, v11

    mul-float v21, v5, v4

    add-float v21, v15, v21

    div-float v21, v21, v25

    move/from16 v25, v0

    .end local v0    # "fittingScaleX":F
    .local v25, "fittingScaleX":F
    add-float v0, v8, v21

    invoke-virtual {v12, v9, v10, v13, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 289
    nop

    .line 313
    .end local v4    # "uniformScale":F
    :goto_3
    invoke-virtual {v6, v11, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 314
    invoke-virtual {v1, v6}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 315
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 316
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 317
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 318
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 319
    .local v0, "filter":Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_8

    .line 320
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 322
    :cond_8
    move-object/from16 v4, v28

    .end local v28    # "path":Landroid/graphics/Path;
    .local v4, "path":Landroid/graphics/Path;
    invoke-virtual {v12, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 218
    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    .end local v1    # "bitmapShader":Landroid/graphics/BitmapShader;
    .end local v3    # "bitmapWidth":F
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v5    # "bitmapHeight":F
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "fittingScaleY":F
    .end local v8    # "borderTopWidth":F
    .end local v11    # "borderLeftWidth":F
    .end local v14    # "innerWidth":F
    .end local v15    # "innerHeight":F
    .end local v16    # "rotationDegree":F
    .end local v17    # "radii":[F
    .end local v19    # "borderTopRightRadius":F
    .end local v20    # "background":Lorg/nativescript/widgets/BorderDrawable;
    .end local v22    # "swap":Z
    .end local v23    # "borderTopLeftRadius":F
    .end local v24    # "borderBottomRightRadius":F
    .end local v25    # "fittingScaleX":F
    .end local v26    # "borderBottomLeftRadius":F
    .end local v27    # "borderBottomWidth":F
    .end local v29    # "borderRightWidth":F
    .local v2, "background":Lorg/nativescript/widgets/BorderDrawable;
    :cond_9
    move-object v12, v1

    move-object/from16 v20, v2

    .line 324
    .end local v2    # "background":Lorg/nativescript/widgets/BorderDrawable;
    .restart local v20    # "background":Lorg/nativescript/widgets/BorderDrawable;
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 74
    move-object/from16 v9, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 75
    .local v10, "width":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 77
    .local v11, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 78
    .local v12, "height":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 80
    .local v13, "heightMode":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 83
    .local v14, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_0

    .line 84
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 85
    .local v0, "measureWidth":I
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v15, v0

    move v7, v1

    .local v1, "measureHeight":I
    goto :goto_0

    .line 87
    .end local v0    # "measureWidth":I
    .end local v1    # "measureHeight":I
    :cond_0
    const/4 v0, 0x0

    .line 88
    .restart local v0    # "measureWidth":I
    const/4 v1, 0x0

    move v15, v0

    move v7, v1

    .line 91
    .end local v0    # "measureWidth":I
    .local v7, "measureHeight":I
    .local v15, "measureWidth":I
    :goto_0
    const/4 v0, 0x1

    const/4 v8, 0x0

    if-eqz v11, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move/from16 v16, v1

    .line 92
    .local v16, "finiteWidth":Z
    if-eqz v13, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move/from16 v17, v0

    .line 94
    .local v17, "finiteHeight":Z
    if-eqz v15, :cond_7

    if-eqz v7, :cond_7

    if-nez v16, :cond_4

    if-eqz v17, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v20, v11

    move/from16 v21, v13

    const/4 v13, 0x0

    move v11, v7

    goto :goto_6

    .line 95
    :cond_4
    :goto_3
    int-to-double v5, v15

    int-to-double v3, v7

    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move-wide/from16 v18, v3

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v20, v11

    move/from16 v21, v13

    const/4 v13, 0x0

    move v11, v7

    .end local v7    # "measureHeight":I
    .end local v13    # "heightMode":I
    .local v11, "measureHeight":I
    .local v20, "widthMode":I
    .local v21, "heightMode":I
    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v8}, Lorg/nativescript/widgets/ImageView;->computeScaleFactor(IIZZDD)V

    .line 96
    int-to-double v0, v15

    iget-wide v2, v9, Lorg/nativescript/widgets/ImageView;->scaleW:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 97
    .local v1, "resultW":I
    int-to-double v2, v11

    iget-wide v4, v9, Lorg/nativescript/widgets/ImageView;->scaleH:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 99
    .local v0, "resultH":I
    if-eqz v16, :cond_5

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    move v15, v2

    .line 100
    if-eqz v17, :cond_6

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v0

    :goto_5
    move v7, v2

    .end local v11    # "measureHeight":I
    .restart local v7    # "measureHeight":I
    goto :goto_7

    .line 94
    .end local v0    # "resultH":I
    .end local v1    # "resultW":I
    .end local v20    # "widthMode":I
    .end local v21    # "heightMode":I
    .local v11, "widthMode":I
    .restart local v13    # "heightMode":I
    :cond_7
    move/from16 v20, v11

    move/from16 v21, v13

    const/4 v13, 0x0

    move v11, v7

    .line 103
    .end local v7    # "measureHeight":I
    .end local v13    # "heightMode":I
    .local v11, "measureHeight":I
    .restart local v20    # "widthMode":I
    .restart local v21    # "heightMode":I
    :goto_6
    move v7, v11

    .end local v11    # "measureHeight":I
    .restart local v7    # "measureHeight":I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 104
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 107
    .end local v15    # "measureWidth":I
    .local v0, "measureWidth":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 109
    .end local v7    # "measureHeight":I
    .local v1, "measureHeight":I
    sget v2, Lorg/nativescript/widgets/CommonLayoutParams;->debuggable:I

    if-lez v2, :cond_8

    .line 110
    invoke-static {}, Lorg/nativescript/widgets/CommonLayoutParams;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "ImageView onMeasure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v3, ", stretch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    const-string v3, ", measureWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v3, ", measureHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NSLayout"

    invoke-static {v4, v3}, Lorg/nativescript/widgets/CommonLayoutParams;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    move/from16 v2, p1

    invoke-static {v0, v2, v13}, Lorg/nativescript/widgets/ImageView;->resolveSizeAndState(III)I

    move-result v3

    .line 126
    .local v3, "widthSizeAndState":I
    move/from16 v4, p2

    invoke-static {v1, v4, v13}, Lorg/nativescript/widgets/ImageView;->resolveSizeAndState(III)I

    move-result v5

    .line 128
    .local v5, "heightSizeAndState":I
    invoke-virtual {v9, v3, v5}, Lorg/nativescript/widgets/ImageView;->setMeasuredDimension(II)V

    .line 129
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/Bitmap;

    .line 328
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 329
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "asyncDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 333
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 203
    invoke-virtual {p0}, Lorg/nativescript/widgets/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/nativescript/widgets/image/Fetcher;->getInstance(Landroid/content/Context;)Lorg/nativescript/widgets/image/Fetcher;

    move-result-object v0

    .line 206
    .local v0, "fetcher":Lorg/nativescript/widgets/image/Fetcher;
    iget-boolean v1, p0, Lorg/nativescript/widgets/ImageView;->mUseCache:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/nativescript/widgets/ImageView;->mUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/nativescript/widgets/ImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/image/Fetcher;->removeBitmap(Ljava/lang/String;)V

    .line 210
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    iput-object p1, p0, Lorg/nativescript/widgets/ImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 212
    return-void
.end method

.method public setImageLoadedListener(Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;

    .line 190
    iput-object p1, p0, Lorg/nativescript/widgets/ImageView;->mListener:Lorg/nativescript/widgets/image/Worker$OnImageLoadedListener;

    .line 191
    return-void
.end method

.method public setRotationAngle(F)V
    .locals 0
    .param p1, "rotationAngle"    # F

    .line 44
    iput p1, p0, Lorg/nativescript/widgets/ImageView;->rotationAngle:F

    .line 45
    invoke-virtual {p0}, Lorg/nativescript/widgets/ImageView;->invalidate()V

    .line 46
    return-void
.end method

.method public setUri(Ljava/lang/String;IIZZ)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "decodeWidth"    # I
    .param p3, "decodeHeight"    # I
    .param p4, "useCache"    # Z
    .param p5, "async"    # Z

    .line 166
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/nativescript/widgets/ImageView;->setUri(Ljava/lang/String;IIZZZ)V

    .line 167
    return-void
.end method

.method public setUri(Ljava/lang/String;IIZZZ)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "decodeWidth"    # I
    .param p3, "decodeHeight"    # I
    .param p4, "keepAspectRatio"    # Z
    .param p5, "useCache"    # Z
    .param p6, "async"    # Z

    .line 170
    iput-object p1, p0, Lorg/nativescript/widgets/ImageView;->mUri:Ljava/lang/String;

    .line 171
    iput p2, p0, Lorg/nativescript/widgets/ImageView;->mDecodeWidth:I

    .line 172
    iput p3, p0, Lorg/nativescript/widgets/ImageView;->mDecodeHeight:I

    .line 173
    iput-boolean p4, p0, Lorg/nativescript/widgets/ImageView;->mKeepAspectRatio:Z

    .line 174
    iput-boolean p5, p0, Lorg/nativescript/widgets/ImageView;->mUseCache:Z

    .line 175
    iput-boolean p6, p0, Lorg/nativescript/widgets/ImageView;->mAsync:Z

    .line 179
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    :cond_1
    iget-boolean v0, p0, Lorg/nativescript/widgets/ImageView;->mAttachedToWindow:Z

    if-eqz v0, :cond_2

    .line 185
    invoke-direct {p0}, Lorg/nativescript/widgets/ImageView;->loadImage()V

    .line 187
    :cond_2
    return-void
.end method
