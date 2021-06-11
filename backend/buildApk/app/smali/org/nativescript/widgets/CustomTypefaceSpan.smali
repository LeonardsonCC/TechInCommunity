.class public Lorg/nativescript/widgets/CustomTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "CustomTypefaceSpan.java"


# instance fields
.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .line 18
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lorg/nativescript/widgets/CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    .line 20
    return-void
.end method

.method private applyCustomTypeFace(Landroid/text/TextPaint;)V
    .locals 5
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 31
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 32
    .local v0, "old":Landroid/graphics/Typeface;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 34
    .local v1, "oldStyle":I
    :goto_0
    iget-object v2, p0, Lorg/nativescript/widgets/CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    .line 35
    .local v2, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v1

    .line 36
    .local v3, "fake":I
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    .line 37
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 40
    :cond_1
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_2

    .line 41
    const/high16 v4, -0x41800000    # -0.25f

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 44
    :cond_2
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 45
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 23
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/text/TextPaint;)V

    .line 24
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 27
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/text/TextPaint;)V

    .line 28
    return-void
.end method
