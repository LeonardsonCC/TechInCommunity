.class public Lorg/nativescript/widgets/BoxShadowDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "BoxShadowDrawable.java"


# static fields
.field protected static final DEFAULT_BACKGROUND_COLOR:I = -0x1

.field protected static final TAG:Ljava/lang/String; = "BoxShadowDrawable"


# instance fields
.field protected blurRadius:I

.field protected currentCornerRadii:[F

.field protected offsetX:I

.field protected offsetY:I

.field protected final overlayLayer:Landroid/graphics/drawable/ShapeDrawable;

.field protected shadowColor:I

.field protected final shadowLayer:Landroid/graphics/drawable/ShapeDrawable;

.field protected spreadRadius:I

.field protected final wrappedLayer:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .param p1, "wrappedDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "value"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 27
    iput v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->offsetX:I

    .line 28
    iput v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->offsetY:I

    .line 29
    iput v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->blurRadius:I

    .line 30
    iput v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->spreadRadius:I

    .line 31
    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->shadowColor:I

    .line 43
    const-string v0, "BoxShadowDrawable"

    const-string v1, "Constructing BoxShadowDrawable!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->shadowLayer:Landroid/graphics/drawable/ShapeDrawable;

    .line 46
    invoke-direct {p0}, Lorg/nativescript/widgets/BoxShadowDrawable;->createOverlayLayer()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->overlayLayer:Landroid/graphics/drawable/ShapeDrawable;

    .line 47
    iput-object p1, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->wrappedLayer:Landroid/graphics/drawable/Drawable;

    .line 50
    iget-object v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->shadowLayer:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/BoxShadowDrawable;->addLayer(Landroid/graphics/drawable/Drawable;)I

    .line 51
    iget-object v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->overlayLayer:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/BoxShadowDrawable;->addLayer(Landroid/graphics/drawable/Drawable;)I

    .line 52
    iget-object v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->wrappedLayer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/BoxShadowDrawable;->addLayer(Landroid/graphics/drawable/Drawable;)I

    .line 54
    invoke-virtual {p0, p2}, Lorg/nativescript/widgets/BoxShadowDrawable;->setValue(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private applyShadow()V
    .locals 8

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyShadow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxShadowDrawable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->shadowLayer:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v2, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->shadowColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->shadowLayer:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v3, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->blurRadius:I

    int-to-float v3, v3

    const/4 v4, 0x1

    add-float/2addr v3, v4

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 125
    iget-object v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->shadowLayer:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->spreadRadius:I

    neg-int v0, v0

    .line 129
    .local v0, "inset":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insets:\n l: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->offsetX:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n t: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->offsetY:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->offsetX:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n b: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->offsetY:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget v1, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->offsetX:I

    add-int v4, v0, v1

    iget v2, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->offsetY:I

    add-int v5, v0, v2

    sub-int v6, v0, v1

    sub-int v7, v0, v2

    const/4 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/nativescript/widgets/BoxShadowDrawable;->setLayerInset(IIIII)V

    .line 141
    return-void
.end method

.method private createOverlayLayer()Landroid/graphics/drawable/ShapeDrawable;
    .locals 3

    .line 144
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 145
    .local v0, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    return-object v0
.end method


# virtual methods
.method public getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->wrappedLayer:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .line 64
    const-string v0, "BoxShadowDrawable"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "config":Lorg/json/JSONObject;
    const-string v2, "offsetX"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->offsetX:I

    .line 66
    const-string v2, "offsetY"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->offsetY:I

    .line 67
    const-string v2, "blurRadius"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->blurRadius:I

    .line 68
    const-string v2, "spreadRadius"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->spreadRadius:I

    .line 69
    const-string v2, "shadowColor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->shadowColor:I

    .line 74
    iget-object v2, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->wrappedLayer:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Lorg/nativescript/widgets/BorderDrawable;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->wrappedLayer:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lorg/nativescript/widgets/BorderDrawable;

    .line 76
    .local v2, "b":Lorg/nativescript/widgets/BorderDrawable;
    new-array v3, v3, [F

    const/4 v4, 0x0

    .line 77
    invoke-virtual {v2}, Lorg/nativescript/widgets/BorderDrawable;->getBorderTopLeftRadius()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    .line 78
    invoke-virtual {v2}, Lorg/nativescript/widgets/BorderDrawable;->getBorderTopLeftRadius()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x2

    .line 80
    invoke-virtual {v2}, Lorg/nativescript/widgets/BorderDrawable;->getBorderTopRightRadius()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x3

    .line 81
    invoke-virtual {v2}, Lorg/nativescript/widgets/BorderDrawable;->getBorderTopRightRadius()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x4

    .line 83
    invoke-virtual {v2}, Lorg/nativescript/widgets/BorderDrawable;->getBorderBottomRightRadius()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x5

    .line 84
    invoke-virtual {v2}, Lorg/nativescript/widgets/BorderDrawable;->getBorderBottomRightRadius()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x6

    .line 86
    invoke-virtual {v2}, Lorg/nativescript/widgets/BorderDrawable;->getBorderBottomLeftRadius()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x7

    .line 87
    invoke-virtual {v2}, Lorg/nativescript/widgets/BorderDrawable;->getBorderBottomLeftRadius()F

    move-result v5

    aput v5, v3, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 89
    .local v2, "outerRadius":[F
    goto :goto_1

    .line 90
    .end local v2    # "outerRadius":[F
    :cond_0
    const/4 v2, 0x0

    .line 92
    .local v2, "cornerRadius":I
    :try_start_1
    const-string v4, "cornerRadius"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v4

    goto :goto_0

    .line 93
    :catch_0
    move-exception v4

    :goto_0
    nop

    .line 95
    :try_start_2
    new-array v3, v3, [F

    .line 96
    .local v3, "outerRadius":[F
    int-to-float v4, v2

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([FF)V

    move-object v2, v3

    .line 99
    .end local v3    # "outerRadius":[F
    .local v2, "outerRadius":[F
    :goto_1
    iget-object v3, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->currentCornerRadii:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    const-string v3, "Update layer shape"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v3, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->shadowLayer:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 102
    iget-object v3, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->overlayLayer:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v4, v2, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 105
    iput-object v2, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->currentCornerRadii:[F

    .line 109
    :cond_1
    invoke-direct {p0}, Lorg/nativescript/widgets/BoxShadowDrawable;->applyShadow()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    .end local v1    # "config":Lorg/json/JSONObject;
    .end local v2    # "outerRadius":[F
    goto :goto_2

    .line 110
    :catch_1
    move-exception v1

    .line 111
    .local v1, "exception":Lorg/json/JSONException;
    const-string v2, "Caught JSONException..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 114
    .end local v1    # "exception":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxShadowDrawable { oX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->offsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " oY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->offsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " br:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->blurRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->spreadRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/nativescript/widgets/BoxShadowDrawable;->shadowColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
