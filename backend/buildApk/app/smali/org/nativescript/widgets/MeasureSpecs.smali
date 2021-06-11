.class Lorg/nativescript/widgets/MeasureSpecs;
.super Ljava/lang/Object;
.source "GridLayout.java"


# instance fields
.field private _columnSpan:I

.field private _rowSpan:I

.field public autoColumnsCount:I

.field public autoRowsCount:I

.field public child:Landroid/view/View;

.field private column:Lorg/nativescript/widgets/ItemSpec;

.field private columnIndex:I

.field public measured:Z

.field public pixelHeight:I

.field public pixelWidth:I

.field private row:Lorg/nativescript/widgets/ItemSpec;

.field private rowIndex:I

.field public starColumnsCount:I

.field public starRowsCount:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const/4 v0, 0x1

    iput v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->_columnSpan:I

    .line 365
    iput v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->_rowSpan:I

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->pixelWidth:I

    .line 368
    iput v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->pixelHeight:I

    .line 370
    iput v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    .line 371
    iput v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    .line 373
    iput v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    .line 374
    iput v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->autoRowsCount:I

    .line 376
    iput-boolean v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->measured:Z

    .line 385
    iput-object p1, p0, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    .line 386
    return-void
.end method


# virtual methods
.method public getColumn()Lorg/nativescript/widgets/ItemSpec;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->column:Lorg/nativescript/widgets/ItemSpec;

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    .line 419
    iget v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->columnIndex:I

    return v0
.end method

.method public getColumnSpan()I
    .locals 1

    .line 397
    iget v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->_columnSpan:I

    return v0
.end method

.method public getIsStar()Z
    .locals 1

    .line 393
    iget v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    if-lez v0, :cond_0

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

.method public getRow()Lorg/nativescript/widgets/ItemSpec;
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->row:Lorg/nativescript/widgets/ItemSpec;

    return-object v0
.end method

.method public getRowIndex()I
    .locals 1

    .line 415
    iget v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->rowIndex:I

    return v0
.end method

.method public getRowSpan()I
    .locals 1

    .line 401
    iget v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->_rowSpan:I

    return v0
.end method

.method public getSpanned()Z
    .locals 2

    .line 389
    iget v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->_columnSpan:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->_rowSpan:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public setColumn(Lorg/nativescript/widgets/ItemSpec;)V
    .locals 0
    .param p1, "value"    # Lorg/nativescript/widgets/ItemSpec;

    .line 443
    iput-object p1, p0, Lorg/nativescript/widgets/MeasureSpecs;->column:Lorg/nativescript/widgets/ItemSpec;

    .line 444
    return-void
.end method

.method public setColumnIndex(I)V
    .locals 0
    .param p1, "value"    # I

    .line 427
    iput p1, p0, Lorg/nativescript/widgets/MeasureSpecs;->columnIndex:I

    .line 428
    return-void
.end method

.method public setColumnSpan(I)V
    .locals 1
    .param p1, "value"    # I

    .line 411
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->_columnSpan:I

    .line 412
    return-void
.end method

.method public setRow(Lorg/nativescript/widgets/ItemSpec;)V
    .locals 0
    .param p1, "value"    # Lorg/nativescript/widgets/ItemSpec;

    .line 439
    iput-object p1, p0, Lorg/nativescript/widgets/MeasureSpecs;->row:Lorg/nativescript/widgets/ItemSpec;

    .line 440
    return-void
.end method

.method public setRowIndex(I)V
    .locals 0
    .param p1, "value"    # I

    .line 423
    iput p1, p0, Lorg/nativescript/widgets/MeasureSpecs;->rowIndex:I

    .line 424
    return-void
.end method

.method public setRowSpan(I)V
    .locals 1
    .param p1, "value"    # I

    .line 406
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/nativescript/widgets/MeasureSpecs;->_rowSpan:I

    .line 407
    return-void
.end method
