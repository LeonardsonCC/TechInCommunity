.class public Lorg/nativescript/widgets/CommonLayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "CommonLayoutParams.java"


# static fields
.field private static final NOT_SET:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "NSLayout"

.field static debuggable:I

.field private static final sb:Ljava/lang/StringBuilder;


# instance fields
.field public bottomMarginOriginal:I

.field public bottomMarginPercent:F

.field public column:I

.field public columnSpan:I

.field public dock:Lorg/nativescript/widgets/Dock;

.field public heightOriginal:I

.field public heightPercent:F

.field public left:I

.field public leftMarginOriginal:I

.field public leftMarginPercent:F

.field public rightMarginOriginal:I

.field public rightMarginPercent:F

.field public row:I

.field public rowSpan:I

.field public top:I

.field public topMarginOriginal:I

.field public topMarginPercent:F

.field public widthOriginal:I

.field public widthPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, -0x1

    sput v0, Lorg/nativescript/widgets/CommonLayoutParams;->debuggable:I

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    const/4 v0, -0x1

    const/16 v1, 0x77

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->widthPercent:F

    .line 66
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->heightPercent:F

    .line 68
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginPercent:F

    .line 69
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginPercent:F

    .line 70
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginPercent:F

    .line 71
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginPercent:F

    .line 73
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->widthOriginal:I

    .line 74
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->heightOriginal:I

    .line 76
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginOriginal:I

    .line 77
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginOriginal:I

    .line 78
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginOriginal:I

    .line 79
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginOriginal:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->left:I

    .line 82
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->top:I

    .line 83
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->row:I

    .line 84
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->column:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rowSpan:I

    .line 86
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->columnSpan:I

    .line 87
    sget-object v0, Lorg/nativescript/widgets/Dock;->left:Lorg/nativescript/widgets/Dock;

    iput-object v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->dock:Lorg/nativescript/widgets/Dock;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->widthPercent:F

    .line 66
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->heightPercent:F

    .line 68
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginPercent:F

    .line 69
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginPercent:F

    .line 70
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginPercent:F

    .line 71
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginPercent:F

    .line 73
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->widthOriginal:I

    .line 74
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->heightOriginal:I

    .line 76
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginOriginal:I

    .line 77
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginOriginal:I

    .line 78
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginOriginal:I

    .line 79
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginOriginal:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->left:I

    .line 82
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->top:I

    .line 83
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->row:I

    .line 84
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->column:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rowSpan:I

    .line 86
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->columnSpan:I

    .line 87
    sget-object v0, Lorg/nativescript/widgets/Dock;->left:Lorg/nativescript/widgets/Dock;

    iput-object v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->dock:Lorg/nativescript/widgets/Dock;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->widthPercent:F

    .line 66
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->heightPercent:F

    .line 68
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginPercent:F

    .line 69
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginPercent:F

    .line 70
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginPercent:F

    .line 71
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginPercent:F

    .line 73
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->widthOriginal:I

    .line 74
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->heightOriginal:I

    .line 76
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginOriginal:I

    .line 77
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginOriginal:I

    .line 78
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginOriginal:I

    .line 79
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginOriginal:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->left:I

    .line 82
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->top:I

    .line 83
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->row:I

    .line 84
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->column:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rowSpan:I

    .line 86
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->columnSpan:I

    .line 87
    sget-object v0, Lorg/nativescript/widgets/Dock;->left:Lorg/nativescript/widgets/Dock;

    iput-object v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->dock:Lorg/nativescript/widgets/Dock;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->widthPercent:F

    .line 66
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->heightPercent:F

    .line 68
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginPercent:F

    .line 69
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginPercent:F

    .line 70
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginPercent:F

    .line 71
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginPercent:F

    .line 73
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->widthOriginal:I

    .line 74
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->heightOriginal:I

    .line 76
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginOriginal:I

    .line 77
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginOriginal:I

    .line 78
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginOriginal:I

    .line 79
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginOriginal:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->left:I

    .line 82
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->top:I

    .line 83
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->row:I

    .line 84
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->column:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rowSpan:I

    .line 86
    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->columnSpan:I

    .line 87
    sget-object v0, Lorg/nativescript/widgets/Dock;->left:Lorg/nativescript/widgets/Dock;

    iput-object v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->dock:Lorg/nativescript/widgets/Dock;

    .line 42
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->gravity:I

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/nativescript/widgets/CommonLayoutParams;)V
    .locals 1
    .param p1, "source"    # Lorg/nativescript/widgets/CommonLayoutParams;

    .line 46
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 48
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->widthPercent:F

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->widthPercent:F

    .line 49
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->heightPercent:F

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->heightPercent:F

    .line 51
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    .line 52
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    .line 53
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    .line 54
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    .line 56
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->left:I

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->left:I

    .line 57
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->top:I

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->top:I

    .line 58
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->row:I

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->row:I

    .line 59
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->column:I

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->column:I

    .line 60
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->rowSpan:I

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->rowSpan:I

    .line 61
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->columnSpan:I

    iput v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->columnSpan:I

    .line 62
    iget-object v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->dock:Lorg/nativescript/widgets/Dock;

    iput-object v0, p0, Lorg/nativescript/widgets/CommonLayoutParams;->dock:Lorg/nativescript/widgets/Dock;

    .line 63
    return-void
.end method

.method protected static adjustChildrenLayoutParams(Landroid/view/ViewGroup;II)V
    .locals 13
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 275
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 276
    .local v0, "availableWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 278
    .local v1, "widthSpec":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 279
    .local v2, "availableHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 281
    .local v3, "heightSpec":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .local v5, "count":I
    :goto_0
    if-ge v4, v5, :cond_e

    .line 282
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 283
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 285
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v8, v7, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v8, :cond_d

    .line 286
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 287
    .local v8, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    const/4 v9, 0x0

    const/high16 v10, -0x80000000

    if-eqz v1, :cond_6

    .line 288
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->widthPercent:F

    cmpl-float v11, v11, v9

    if-lez v11, :cond_1

    .line 291
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->widthOriginal:I

    if-ne v11, v10, :cond_0

    .line 292
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->width:I

    iput v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->widthOriginal:I

    .line 294
    :cond_0
    int-to-float v11, v0

    iget v12, v8, Lorg/nativescript/widgets/CommonLayoutParams;->widthPercent:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    iput v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->width:I

    goto :goto_1

    .line 297
    :cond_1
    iput v10, v8, Lorg/nativescript/widgets/CommonLayoutParams;->widthOriginal:I

    .line 300
    :goto_1
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginPercent:F

    cmpl-float v11, v11, v9

    if-lez v11, :cond_3

    .line 301
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginOriginal:I

    if-ne v11, v10, :cond_2

    .line 302
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    iput v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginOriginal:I

    .line 304
    :cond_2
    int-to-float v11, v0

    iget v12, v8, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginPercent:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    iput v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    goto :goto_2

    .line 307
    :cond_3
    iput v10, v8, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginOriginal:I

    .line 310
    :goto_2
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginPercent:F

    cmpl-float v11, v11, v9

    if-lez v11, :cond_5

    .line 311
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginOriginal:I

    if-ne v11, v10, :cond_4

    .line 312
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    iput v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginOriginal:I

    .line 314
    :cond_4
    int-to-float v11, v0

    iget v12, v8, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginPercent:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    iput v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    goto :goto_3

    .line 317
    :cond_5
    iput v10, v8, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginOriginal:I

    .line 321
    :cond_6
    :goto_3
    if-eqz v3, :cond_d

    .line 322
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->heightPercent:F

    cmpl-float v11, v11, v9

    if-lez v11, :cond_8

    .line 323
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->heightOriginal:I

    if-ne v11, v10, :cond_7

    .line 324
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->height:I

    iput v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->heightOriginal:I

    .line 326
    :cond_7
    int-to-float v11, v2

    iget v12, v8, Lorg/nativescript/widgets/CommonLayoutParams;->heightPercent:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    iput v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->height:I

    goto :goto_4

    .line 329
    :cond_8
    iput v10, v8, Lorg/nativescript/widgets/CommonLayoutParams;->heightOriginal:I

    .line 332
    :goto_4
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginPercent:F

    cmpl-float v11, v11, v9

    if-lez v11, :cond_a

    .line 333
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginOriginal:I

    if-ne v11, v10, :cond_9

    .line 334
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    iput v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginOriginal:I

    .line 336
    :cond_9
    int-to-float v11, v2

    iget v12, v8, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginPercent:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    iput v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    goto :goto_5

    .line 339
    :cond_a
    iput v10, v8, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginOriginal:I

    .line 342
    :goto_5
    iget v11, v8, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginPercent:F

    cmpl-float v9, v11, v9

    if-lez v9, :cond_c

    .line 343
    iget v9, v8, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginOriginal:I

    if-ne v9, v10, :cond_b

    .line 344
    iget v9, v8, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    iput v9, v8, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginOriginal:I

    .line 346
    :cond_b
    int-to-float v9, v2

    iget v10, v8, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginPercent:F

    mul-float v9, v9, v10

    float-to-int v9, v9

    iput v9, v8, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    goto :goto_6

    .line 349
    :cond_c
    iput v10, v8, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginOriginal:I

    .line 281
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_d
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 354
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_e
    return-void
.end method

.method protected static getDesiredHeight(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 96
    .local v0, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method protected static getDesiredWidth(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 91
    .local v0, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private static getMeasureSpec(Landroid/view/View;IZ)I
    .locals 15
    .param p0, "view"    # Landroid/view/View;
    .param p1, "parentMeasureSpec"    # I
    .param p2, "horizontal"    # Z

    .line 406
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 407
    .local v0, "parentLength":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 409
    .local v1, "parentSpecMode":I
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 410
    .local v2, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    if-eqz p2, :cond_0

    iget v3, v2, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    iget v4, v2, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    iget v3, v2, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    iget v4, v2, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr v3, v4

    .line 412
    .local v3, "margins":I
    const/4 v4, 0x0

    .line 413
    .local v4, "resultSize":I
    const/4 v5, 0x0

    .line 415
    .local v5, "resultMode":I
    sub-int v6, v0, v3

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 416
    .local v6, "measureLength":I
    if-eqz p2, :cond_1

    iget v8, v2, Lorg/nativescript/widgets/CommonLayoutParams;->width:I

    goto :goto_1

    :cond_1
    iget v8, v2, Lorg/nativescript/widgets/CommonLayoutParams;->height:I

    .line 419
    .local v8, "childLength":I
    :goto_1
    if-ltz v8, :cond_3

    .line 420
    if-eqz v1, :cond_2

    .line 421
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    .line 423
    :cond_2
    move v4, v8

    .line 426
    :goto_2
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_4

    .line 428
    :cond_3
    const/high16 v9, -0x80000000

    if-eq v1, v9, :cond_a

    if-eqz v1, :cond_9

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v1, v10, :cond_4

    goto :goto_4

    .line 431
    :cond_4
    move v4, v6

    .line 432
    invoke-static {p0}, Lorg/nativescript/widgets/LayoutBase;->getGravity(Landroid/view/View;)I

    move-result v11

    .line 434
    .local v11, "gravity":I
    const/4 v12, 0x1

    if-eqz p2, :cond_6

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v13

    invoke-static {v11, v13}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    const/4 v14, 0x7

    and-int/2addr v13, v14

    .line 436
    .local v13, "horizontalGravity":I
    if-ne v13, v14, :cond_5

    const/4 v7, 0x1

    .line 437
    .end local v13    # "horizontalGravity":I
    .local v7, "stretched":Z
    :cond_5
    goto :goto_3

    .line 438
    .end local v7    # "stretched":Z
    :cond_6
    and-int/lit8 v13, v11, 0x70

    .line 439
    .local v13, "verticalGravity":I
    const/16 v14, 0x70

    if-ne v13, v14, :cond_7

    const/4 v7, 0x1

    .line 444
    .end local v13    # "verticalGravity":I
    .restart local v7    # "stretched":Z
    :cond_7
    :goto_3
    if-eqz v7, :cond_8

    const/high16 v9, 0x40000000    # 2.0f

    :cond_8
    move v5, v9

    .line 445
    goto :goto_4

    .line 454
    .end local v7    # "stretched":Z
    .end local v11    # "gravity":I
    :cond_9
    const/4 v4, 0x0

    .line 455
    const/4 v5, 0x0

    goto :goto_4

    .line 449
    :cond_a
    move v4, v6

    .line 450
    const/high16 v5, -0x80000000

    .line 451
    nop

    .line 460
    :goto_4
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    return v7
.end method

.method static getStringBuilder()Ljava/lang/StringBuilder;
    .locals 2

    .line 400
    sget-object v0, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 401
    sget-object v0, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method protected static layoutChild(Landroid/view/View;IIII)V
    .locals 23
    .param p0, "child"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 102
    move-object/from16 v0, p0

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto/16 :goto_8

    .line 106
    :cond_0
    const/4 v1, 0x0

    .line 107
    .local v1, "childTop":I
    const/4 v2, 0x0

    .line 109
    .local v2, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 110
    .local v3, "childWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 112
    .local v4, "childHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 113
    .local v5, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    iget v6, v5, Lorg/nativescript/widgets/CommonLayoutParams;->gravity:I

    .line 114
    .local v6, "gravity":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 115
    const/16 v6, 0x77

    .line 118
    :cond_1
    and-int/lit8 v7, v6, 0x70

    .line 121
    .local v7, "verticalGravity":I
    iget v8, v5, Lorg/nativescript/widgets/CommonLayoutParams;->height:I

    const/4 v9, 0x0

    if-gez v8, :cond_2

    iget v8, v5, Lorg/nativescript/widgets/CommonLayoutParams;->heightPercent:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    :cond_2
    const/16 v8, 0x70

    if-ne v7, v8, :cond_3

    .line 122
    const/16 v7, 0x10

    .line 125
    :cond_3
    const/16 v8, 0x10

    if-eq v7, v8, :cond_6

    const/16 v8, 0x30

    if-eq v7, v8, :cond_5

    const/16 v8, 0x50

    if-eq v7, v8, :cond_4

    .line 140
    iget v8, v5, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    add-int v1, p2, v8

    .line 141
    sub-int v8, p4, p2

    iget v10, v5, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    iget v11, v5, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    sub-int v4, v8, v10

    goto :goto_0

    .line 135
    :cond_4
    sub-int v8, p4, v4

    iget v10, v5, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    sub-int v1, v8, v10

    .line 136
    goto :goto_0

    .line 127
    :cond_5
    iget v8, v5, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    add-int v1, p2, v8

    .line 128
    goto :goto_0

    .line 131
    :cond_6
    sub-int v8, p4, p2

    sub-int/2addr v8, v4

    iget v10, v5, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    add-int/2addr v8, v10

    iget v10, v5, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    sub-int/2addr v8, v10

    div-int/lit8 v8, v8, 0x2

    add-int v1, p2, v8

    .line 132
    nop

    .line 145
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    invoke-static {v6, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    const/4 v10, 0x7

    and-int/2addr v8, v10

    .line 148
    .local v8, "horizontalGravity":I
    iget v11, v5, Lorg/nativescript/widgets/CommonLayoutParams;->width:I

    if-gez v11, :cond_7

    iget v11, v5, Lorg/nativescript/widgets/CommonLayoutParams;->widthPercent:F

    cmpl-float v9, v11, v9

    if-lez v9, :cond_8

    :cond_7
    if-ne v8, v10, :cond_8

    .line 149
    const/4 v8, 0x1

    .line 152
    :cond_8
    const/4 v9, 0x1

    if-eq v8, v9, :cond_b

    const/4 v10, 0x3

    if-eq v8, v10, :cond_a

    const/4 v10, 0x5

    if-eq v8, v10, :cond_9

    .line 167
    iget v10, v5, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    add-int v2, p1, v10

    .line 168
    sub-int v10, p3, p1

    iget v11, v5, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    iget v12, v5, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    sub-int v3, v10, v11

    goto :goto_1

    .line 162
    :cond_9
    sub-int v10, p3, v3

    iget v11, v5, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    sub-int v2, v10, v11

    .line 163
    goto :goto_1

    .line 154
    :cond_a
    iget v10, v5, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    add-int v2, p1, v10

    .line 155
    goto :goto_1

    .line 158
    :cond_b
    sub-int v10, p3, p1

    sub-int/2addr v10, v3

    iget v11, v5, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v5, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int v2, p1, v10

    .line 159
    nop

    .line 172
    :goto_1
    add-int v10, v2, v3

    int-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 173
    .local v10, "childRight":I
    add-int v11, v1, v4

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 174
    .local v11, "childBottom":I
    int-to-float v12, v2

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 175
    int-to-float v12, v1

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 178
    instance-of v12, v0, Landroid/widget/TextView;

    const-string v13, "NSLayout"

    const-string v14, ", "

    if-eqz v12, :cond_14

    .line 180
    iget v12, v5, Lorg/nativescript/widgets/CommonLayoutParams;->width:I

    if-gez v12, :cond_c

    const/4 v12, 0x1

    goto :goto_2

    :cond_c
    const/4 v12, 0x0

    .line 181
    .local v12, "canChangeWidth":Z
    :goto_2
    iget v15, v5, Lorg/nativescript/widgets/CommonLayoutParams;->height:I

    if-gez v15, :cond_d

    const/4 v15, 0x1

    goto :goto_3

    :cond_d
    const/4 v15, 0x0

    .line 183
    .local v15, "canChangeHeight":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 184
    .local v16, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 186
    .local v17, "measuredHeight":I
    sub-int v18, v10, v2

    .line 187
    .local v18, "width":I
    sub-int v19, v11, v1

    .line 188
    .local v19, "height":I
    sub-int v20, v16, v18

    move/from16 v21, v3

    .end local v3    # "childWidth":I
    .local v21, "childWidth":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v9, :cond_e

    if-nez v12, :cond_f

    :cond_e
    sub-int v3, v17, v19

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v9, :cond_13

    if-eqz v15, :cond_13

    .line 189
    :cond_f
    if-eqz v12, :cond_10

    move/from16 v3, v18

    goto :goto_4

    :cond_10
    iget v3, v5, Lorg/nativescript/widgets/CommonLayoutParams;->width:I

    :goto_4
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 190
    .local v3, "widthMeasureSpec":I
    if-eqz v15, :cond_11

    move/from16 v9, v19

    goto :goto_5

    :cond_11
    iget v9, v5, Lorg/nativescript/widgets/CommonLayoutParams;->height:I

    :goto_5
    move/from16 v22, v4

    const/high16 v4, 0x40000000    # 2.0f

    .end local v4    # "childHeight":I
    .local v22, "childHeight":I
    invoke-static {v9, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 191
    .local v4, "heightMeasureSpec":I
    sget v9, Lorg/nativescript/widgets/CommonLayoutParams;->debuggable:I

    if-lez v9, :cond_12

    .line 192
    sget-object v9, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    move-object/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    .local v20, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 193
    sget-object v5, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    const-string v9, "remeasure "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    sget-object v5, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    sget-object v5, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    const-string v9, " with "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    sget-object v5, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    sget-object v5, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    sget-object v5, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    sget-object v5, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lorg/nativescript/widgets/CommonLayoutParams;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 191
    .end local v20    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    .restart local v5    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_12
    move-object/from16 v20, v5

    .line 202
    .end local v5    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    .restart local v20    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :goto_6
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 188
    .end local v3    # "widthMeasureSpec":I
    .end local v20    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    .end local v22    # "childHeight":I
    .local v4, "childHeight":I
    .restart local v5    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_13
    move/from16 v22, v4

    move-object/from16 v20, v5

    .end local v4    # "childHeight":I
    .end local v5    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    .restart local v20    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    .restart local v22    # "childHeight":I
    goto :goto_7

    .line 178
    .end local v12    # "canChangeWidth":Z
    .end local v15    # "canChangeHeight":Z
    .end local v16    # "measuredWidth":I
    .end local v17    # "measuredHeight":I
    .end local v18    # "width":I
    .end local v19    # "height":I
    .end local v20    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    .end local v21    # "childWidth":I
    .end local v22    # "childHeight":I
    .local v3, "childWidth":I
    .restart local v4    # "childHeight":I
    .restart local v5    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_14
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v20, v5

    .line 206
    .end local v3    # "childWidth":I
    .end local v4    # "childHeight":I
    .end local v5    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    .restart local v20    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    .restart local v21    # "childWidth":I
    .restart local v22    # "childHeight":I
    :goto_7
    sget v3, Lorg/nativescript/widgets/CommonLayoutParams;->debuggable:I

    if-lez v3, :cond_15

    .line 207
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 208
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    const-string v4, " :layoutChild: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lorg/nativescript/widgets/CommonLayoutParams;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_15
    invoke-virtual {v0, v2, v1, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 223
    return-void

    .line 103
    .end local v1    # "childTop":I
    .end local v2    # "childLeft":I
    .end local v6    # "gravity":I
    .end local v7    # "verticalGravity":I
    .end local v8    # "horizontalGravity":I
    .end local v10    # "childRight":I
    .end local v11    # "childBottom":I
    .end local v20    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    .end local v21    # "childWidth":I
    .end local v22    # "childHeight":I
    :cond_16
    :goto_8
    return-void
.end method

.method static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 396
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method protected static measureChild(Landroid/view/View;II)V
    .locals 8
    .param p0, "child"    # Landroid/view/View;
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 226
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 231
    :cond_0
    sget v0, Lorg/nativescript/widgets/CommonLayoutParams;->debuggable:I

    const/4 v1, 0x1

    const-string v2, "NSLayout"

    const/4 v3, 0x0

    if-gez v0, :cond_3

    .line 233
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 234
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 235
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 236
    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    const-string v6, "debugLayouts"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 237
    .local v6, "debugLayouts":Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    sput v7, Lorg/nativescript/widgets/CommonLayoutParams;->debuggable:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "debugLayouts":Ljava/lang/Boolean;
    goto :goto_2

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/NullPointerException;
    sput v3, Lorg/nativescript/widgets/CommonLayoutParams;->debuggable:I

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 238
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 239
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput v3, Lorg/nativescript/widgets/CommonLayoutParams;->debuggable:I

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_2
    invoke-static {p0, p1, v1}, Lorg/nativescript/widgets/CommonLayoutParams;->getMeasureSpec(Landroid/view/View;IZ)I

    move-result v0

    .line 248
    .local v0, "childWidthMeasureSpec":I
    invoke-static {p0, p2, v3}, Lorg/nativescript/widgets/CommonLayoutParams;->getMeasureSpec(Landroid/view/View;IZ)I

    move-result v1

    .line 250
    .local v1, "childHeightMeasureSpec":I
    sget v4, Lorg/nativescript/widgets/CommonLayoutParams;->debuggable:I

    if-lez v4, :cond_4

    .line 251
    sget-object v4, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 252
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    const-string v4, " :measureChild: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    sget-object v3, Lorg/nativescript/widgets/CommonLayoutParams;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/nativescript/widgets/CommonLayoutParams;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_4
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 263
    return-void

    .line 227
    .end local v0    # "childWidthMeasureSpec":I
    .end local v1    # "childHeightMeasureSpec":I
    :cond_5
    :goto_3
    return-void
.end method

.method protected static restoreOriginalParams(Landroid/view/ViewGroup;)V
    .locals 7
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_7

    .line 362
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 363
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 364
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Lorg/nativescript/widgets/CommonLayoutParams;

    if-eqz v4, :cond_6

    .line 365
    move-object v4, v3

    check-cast v4, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 366
    .local v4, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    iget v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->widthPercent:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 367
    iget v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->widthOriginal:I

    iput v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->width:I

    .line 369
    :cond_0
    iget v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->heightPercent:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 370
    iget v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->heightOriginal:I

    iput v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->height:I

    .line 372
    :cond_1
    iget v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginPercent:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 373
    iget v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginOriginal:I

    iput v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->leftMargin:I

    .line 375
    :cond_2
    iget v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginPercent:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 376
    iget v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginOriginal:I

    iput v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->topMargin:I

    .line 378
    :cond_3
    iget v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginPercent:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 379
    iget v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginOriginal:I

    iput v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->rightMargin:I

    .line 381
    :cond_4
    iget v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginPercent:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 382
    iget v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginOriginal:I

    iput v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMargin:I

    .line 385
    :cond_5
    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->widthOriginal:I

    .line 386
    iput v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->heightOriginal:I

    .line 387
    iput v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->leftMarginOriginal:I

    .line 388
    iput v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->topMarginOriginal:I

    .line 389
    iput v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->rightMarginOriginal:I

    .line 390
    iput v5, v4, Lorg/nativescript/widgets/CommonLayoutParams;->bottomMarginOriginal:I

    .line 361
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_7
    return-void
.end method
