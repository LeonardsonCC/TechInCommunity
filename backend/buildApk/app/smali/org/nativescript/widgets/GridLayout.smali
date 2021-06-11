.class public Lorg/nativescript/widgets/GridLayout;
.super Lorg/nativescript/widgets/LayoutBase;
.source "GridLayout.java"


# instance fields
.field private _cols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/nativescript/widgets/ItemSpec;",
            ">;"
        }
    .end annotation
.end field

.field private _rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/nativescript/widgets/ItemSpec;",
            ">;"
        }
    .end annotation
.end field

.field private columnOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private helper:Lorg/nativescript/widgets/MeasureHelper;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lorg/nativescript/widgets/MeasureSpecs;",
            ">;"
        }
    .end annotation
.end field

.field private rowOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/LayoutBase;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lorg/nativescript/widgets/MeasureHelper;

    invoke-direct {v0, p0}, Lorg/nativescript/widgets/MeasureHelper;-><init>(Lorg/nativescript/widgets/GridLayout;)V

    iput-object v0, p0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_rows:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_cols:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/GridLayout;->columnOffsets:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/GridLayout;->rowOffsets:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/GridLayout;->map:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method private addToMap(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 224
    new-instance v0, Lorg/nativescript/widgets/MeasureSpecs;

    invoke-direct {v0, p1}, Lorg/nativescript/widgets/MeasureSpecs;-><init>(Landroid/view/View;)V

    .line 225
    .local v0, "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method private getColumnIndex(Lorg/nativescript/widgets/CommonLayoutParams;)I
    .locals 2
    .param p1, "lp"    # Lorg/nativescript/widgets/CommonLayoutParams;

    .line 158
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->column:I

    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->_cols:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getColumnSpan(Lorg/nativescript/widgets/CommonLayoutParams;I)I
    .locals 2
    .param p1, "lp"    # Lorg/nativescript/widgets/CommonLayoutParams;
    .param p2, "columnIndex"    # I

    .line 184
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_cols:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    return v0

    .line 188
    :cond_0
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->columnSpan:I

    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->_cols:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getColumnSpec(Lorg/nativescript/widgets/CommonLayoutParams;)Lorg/nativescript/widgets/ItemSpec;
    .locals 2
    .param p1, "lp"    # Lorg/nativescript/widgets/CommonLayoutParams;

    .line 166
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_cols:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v0, v0, Lorg/nativescript/widgets/MeasureHelper;->singleColumn:Lorg/nativescript/widgets/ItemSpec;

    return-object v0

    .line 170
    :cond_0
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->column:I

    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->_cols:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 171
    .local v0, "columnIndex":I
    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->_cols:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/nativescript/widgets/ItemSpec;

    return-object v1
.end method

.method private getRowIndex(Lorg/nativescript/widgets/CommonLayoutParams;)I
    .locals 2
    .param p1, "lp"    # Lorg/nativescript/widgets/CommonLayoutParams;

    .line 162
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->row:I

    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->_rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getRowSpan(Lorg/nativescript/widgets/CommonLayoutParams;I)I
    .locals 2
    .param p1, "lp"    # Lorg/nativescript/widgets/CommonLayoutParams;
    .param p2, "rowIndex"    # I

    .line 192
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_0
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->rowSpan:I

    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->_rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getRowSpec(Lorg/nativescript/widgets/CommonLayoutParams;)Lorg/nativescript/widgets/ItemSpec;
    .locals 2
    .param p1, "lp"    # Lorg/nativescript/widgets/CommonLayoutParams;

    .line 175
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v0, v0, Lorg/nativescript/widgets/MeasureHelper;->singleRow:Lorg/nativescript/widgets/ItemSpec;

    return-object v0

    .line 179
    :cond_0
    iget v0, p1, Lorg/nativescript/widgets/CommonLayoutParams;->row:I

    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->_rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 180
    .local v0, "rowIndex":I
    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->_rows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/nativescript/widgets/ItemSpec;

    return-object v1
.end method

.method private removeFromMap(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 229
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/MeasureSpecs;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method private updateMeasureSpecs(Landroid/view/View;Lorg/nativescript/widgets/MeasureSpecs;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "measureSpec"    # Lorg/nativescript/widgets/MeasureSpecs;

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/CommonLayoutParams;

    .line 201
    .local v0, "lp":Lorg/nativescript/widgets/CommonLayoutParams;
    invoke-direct {p0, v0}, Lorg/nativescript/widgets/GridLayout;->getColumnIndex(Lorg/nativescript/widgets/CommonLayoutParams;)I

    move-result v1

    .line 202
    .local v1, "columnIndex":I
    invoke-direct {p0, v0}, Lorg/nativescript/widgets/GridLayout;->getColumnSpec(Lorg/nativescript/widgets/CommonLayoutParams;)Lorg/nativescript/widgets/ItemSpec;

    move-result-object v2

    .line 203
    .local v2, "column":Lorg/nativescript/widgets/ItemSpec;
    invoke-direct {p0, v0}, Lorg/nativescript/widgets/GridLayout;->getRowIndex(Lorg/nativescript/widgets/CommonLayoutParams;)I

    move-result v3

    .line 204
    .local v3, "rowIndex":I
    invoke-direct {p0, v0}, Lorg/nativescript/widgets/GridLayout;->getRowSpec(Lorg/nativescript/widgets/CommonLayoutParams;)Lorg/nativescript/widgets/ItemSpec;

    move-result-object v4

    .line 205
    .local v4, "row":Lorg/nativescript/widgets/ItemSpec;
    invoke-direct {p0, v0, v1}, Lorg/nativescript/widgets/GridLayout;->getColumnSpan(Lorg/nativescript/widgets/CommonLayoutParams;I)I

    move-result v5

    .line 206
    .local v5, "columnSpan":I
    invoke-direct {p0, v0, v3}, Lorg/nativescript/widgets/GridLayout;->getRowSpan(Lorg/nativescript/widgets/CommonLayoutParams;I)I

    move-result v6

    .line 208
    .local v6, "rowSpan":I
    invoke-virtual {p2, v2}, Lorg/nativescript/widgets/MeasureSpecs;->setColumn(Lorg/nativescript/widgets/ItemSpec;)V

    .line 209
    invoke-virtual {p2, v4}, Lorg/nativescript/widgets/MeasureSpecs;->setRow(Lorg/nativescript/widgets/ItemSpec;)V

    .line 210
    invoke-virtual {p2, v1}, Lorg/nativescript/widgets/MeasureSpecs;->setColumnIndex(I)V

    .line 211
    invoke-virtual {p2, v3}, Lorg/nativescript/widgets/MeasureSpecs;->setRowIndex(I)V

    .line 212
    invoke-virtual {p2, v5}, Lorg/nativescript/widgets/MeasureSpecs;->setColumnSpan(I)V

    .line 213
    invoke-virtual {p2, v6}, Lorg/nativescript/widgets/MeasureSpecs;->setRowSpan(I)V

    .line 214
    const/4 v7, 0x0

    iput v7, p2, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    .line 215
    iput v7, p2, Lorg/nativescript/widgets/MeasureSpecs;->autoRowsCount:I

    .line 216
    iput-boolean v7, p2, Lorg/nativescript/widgets/MeasureSpecs;->measured:Z

    .line 217
    iput v7, p2, Lorg/nativescript/widgets/MeasureSpecs;->pixelHeight:I

    .line 218
    iput v7, p2, Lorg/nativescript/widgets/MeasureSpecs;->pixelWidth:I

    .line 219
    iput v7, p2, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    .line 220
    iput v7, p2, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    .line 221
    return-void
.end method

.method private static validateItemSpec(Lorg/nativescript/widgets/ItemSpec;)V
    .locals 2
    .param p0, "itemSpec"    # Lorg/nativescript/widgets/ItemSpec;

    .line 32
    if-eqz p0, :cond_1

    .line 36
    iget-object v0, p0, Lorg/nativescript/widgets/ItemSpec;->owner:Lorg/nativescript/widgets/GridLayout;

    if-nez v0, :cond_0

    .line 39
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "itemSpec is already added to GridLayout."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "itemSpec is null."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addColumn(Lorg/nativescript/widgets/ItemSpec;)V
    .locals 2
    .param p1, "itemSpec"    # Lorg/nativescript/widgets/ItemSpec;

    .line 53
    invoke-static {p1}, Lorg/nativescript/widgets/GridLayout;->validateItemSpec(Lorg/nativescript/widgets/ItemSpec;)V

    .line 54
    iput-object p0, p1, Lorg/nativescript/widgets/ItemSpec;->owner:Lorg/nativescript/widgets/GridLayout;

    .line 55
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_cols:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lorg/nativescript/widgets/ItemGroup;

    invoke-direct {v0, p1}, Lorg/nativescript/widgets/ItemGroup;-><init>(Lorg/nativescript/widgets/ItemSpec;)V

    .line 58
    .local v0, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v1, v1, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Lorg/nativescript/widgets/GridLayout;->requestLayout()V

    .line 61
    return-void
.end method

.method public addRow(Lorg/nativescript/widgets/ItemSpec;)V
    .locals 2
    .param p1, "itemSpec"    # Lorg/nativescript/widgets/ItemSpec;

    .line 42
    invoke-static {p1}, Lorg/nativescript/widgets/GridLayout;->validateItemSpec(Lorg/nativescript/widgets/ItemSpec;)V

    .line 43
    iput-object p0, p1, Lorg/nativescript/widgets/ItemSpec;->owner:Lorg/nativescript/widgets/GridLayout;

    .line 44
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lorg/nativescript/widgets/ItemGroup;

    invoke-direct {v0, p1}, Lorg/nativescript/widgets/ItemGroup;-><init>(Lorg/nativescript/widgets/ItemSpec;)V

    .line 47
    .local v0, "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v1, v1, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lorg/nativescript/widgets/GridLayout;->requestLayout()V

    .line 50
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 117
    invoke-super {p0, p1}, Lorg/nativescript/widgets/LayoutBase;->addView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/GridLayout;->addToMap(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 123
    invoke-super {p0, p1, p2}, Lorg/nativescript/widgets/LayoutBase;->addView(Landroid/view/View;I)V

    .line 124
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/GridLayout;->addToMap(Landroid/view/View;)V

    .line 125
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 129
    invoke-super {p0, p1, p2}, Lorg/nativescript/widgets/LayoutBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/GridLayout;->addToMap(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method public getColumns()[Lorg/nativescript/widgets/ItemSpec;
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_cols:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/nativescript/widgets/ItemSpec;

    .line 105
    .local v0, "copy":[Lorg/nativescript/widgets/ItemSpec;
    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->_cols:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Lorg/nativescript/widgets/ItemSpec;

    .line 106
    return-object v0
.end method

.method public getRows()[Lorg/nativescript/widgets/ItemSpec;
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/nativescript/widgets/ItemSpec;

    .line 111
    .local v0, "copy":[Lorg/nativescript/widgets/ItemSpec;
    iget-object v1, p0, Lorg/nativescript/widgets/GridLayout;->_rows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Lorg/nativescript/widgets/ItemSpec;

    .line 112
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 298
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/GridLayout;->getPaddingLeft()I

    move-result v1

    .line 299
    .local v1, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/GridLayout;->getPaddingTop()I

    move-result v2

    .line 301
    .local v2, "paddingTop":I
    iget-object v3, v0, Lorg/nativescript/widgets/GridLayout;->columnOffsets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 302
    iget-object v3, v0, Lorg/nativescript/widgets/GridLayout;->rowOffsets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 304
    iget-object v3, v0, Lorg/nativescript/widgets/GridLayout;->columnOffsets:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v3, v0, Lorg/nativescript/widgets/GridLayout;->rowOffsets:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v3, v0, Lorg/nativescript/widgets/GridLayout;->columnOffsets:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    .line 308
    .local v3, "offset":F
    move v5, v1

    .line 309
    .local v5, "roundedOffset":I
    const/4 v6, 0x0

    .line 310
    .local v6, "roundedLength":I
    const/4 v7, 0x0

    .line 311
    .local v7, "actualLength":F
    iget-object v8, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v8, v8, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 312
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 313
    iget-object v10, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v10, v10, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/nativescript/widgets/ItemGroup;

    .line 314
    .local v10, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    iget v11, v10, Lorg/nativescript/widgets/ItemGroup;->length:I

    int-to-float v11, v11

    add-float/2addr v3, v11

    .line 316
    int-to-float v11, v5

    sub-float v7, v3, v11

    .line 317
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 318
    iget-object v11, v10, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    iput v6, v11, Lorg/nativescript/widgets/ItemSpec;->_actualLength:I

    .line 319
    add-int/2addr v5, v6

    .line 321
    iget-object v11, v0, Lorg/nativescript/widgets/GridLayout;->columnOffsets:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v10    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 324
    .end local v9    # "i":I
    :cond_0
    iget-object v9, v0, Lorg/nativescript/widgets/GridLayout;->rowOffsets:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v3, v4

    .line 325
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/GridLayout;->getPaddingTop()I

    move-result v4

    .line 326
    .end local v5    # "roundedOffset":I
    .local v4, "roundedOffset":I
    const/4 v5, 0x0

    .line 327
    .end local v6    # "roundedLength":I
    .local v5, "roundedLength":I
    const/4 v6, 0x0

    .line 328
    .end local v7    # "actualLength":F
    .local v6, "actualLength":F
    iget-object v7, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v7, v7, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 329
    .end local v8    # "size":I
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_1

    .line 330
    iget-object v9, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v9, v9, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/nativescript/widgets/ItemGroup;

    .line 331
    .local v9, "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    iget v10, v9, Lorg/nativescript/widgets/ItemGroup;->length:I

    int-to-float v10, v10

    add-float/2addr v3, v10

    .line 333
    int-to-float v10, v4

    sub-float v6, v3, v10

    .line 334
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 335
    iget-object v10, v9, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    iput v5, v10, Lorg/nativescript/widgets/ItemSpec;->_actualLength:I

    .line 336
    add-int/2addr v4, v5

    .line 338
    iget-object v10, v0, Lorg/nativescript/widgets/GridLayout;->rowOffsets:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v9    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 341
    .end local v8    # "i":I
    :cond_1
    iget-object v8, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v8, v8, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 342
    .local v8, "columns":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v8, :cond_3

    .line 343
    iget-object v10, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v10, v10, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/nativescript/widgets/ItemGroup;

    .line 344
    .restart local v10    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    iget-object v11, v10, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 345
    .local v11, "children":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    if-ge v12, v11, :cond_2

    .line 347
    iget-object v13, v10, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/nativescript/widgets/MeasureSpecs;

    .line 348
    .local v13, "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    iget-object v14, v0, Lorg/nativescript/widgets/GridLayout;->columnOffsets:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 349
    .local v14, "childLeft":I
    iget-object v15, v0, Lorg/nativescript/widgets/GridLayout;->columnOffsets:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v16

    invoke-virtual {v13}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnSpan()I

    move-result v17

    move/from16 v18, v1

    .end local v1    # "paddingLeft":I
    .local v18, "paddingLeft":I
    add-int v1, v16, v17

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 350
    .local v1, "childRight":I
    iget-object v15, v0, Lorg/nativescript/widgets/GridLayout;->rowOffsets:Ljava/util/ArrayList;

    move/from16 v16, v2

    .end local v2    # "paddingTop":I
    .local v16, "paddingTop":I
    invoke-virtual {v13}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 351
    .local v2, "childTop":I
    iget-object v15, v0, Lorg/nativescript/widgets/GridLayout;->rowOffsets:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v17

    invoke-virtual {v13}, Lorg/nativescript/widgets/MeasureSpecs;->getRowSpan()I

    move-result v19

    add-int v0, v17, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 354
    .local v0, "childBottom":I
    iget-object v15, v13, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v15, v14, v2, v1, v0}, Lorg/nativescript/widgets/CommonLayoutParams;->layoutChild(Landroid/view/View;IIII)V

    .line 345
    .end local v0    # "childBottom":I
    .end local v1    # "childRight":I
    .end local v2    # "childTop":I
    .end local v13    # "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    .end local v14    # "childLeft":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v1, v18

    goto :goto_3

    .end local v16    # "paddingTop":I
    .end local v18    # "paddingLeft":I
    .local v1, "paddingLeft":I
    .local v2, "paddingTop":I
    :cond_2
    move/from16 v18, v1

    move/from16 v16, v2

    .line 342
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingTop":I
    .end local v10    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    .end local v11    # "children":I
    .end local v12    # "j":I
    .restart local v16    # "paddingTop":I
    .restart local v18    # "paddingLeft":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_2

    .line 358
    .end local v9    # "i":I
    .end local v16    # "paddingTop":I
    .end local v18    # "paddingLeft":I
    .restart local v1    # "paddingLeft":I
    .restart local v2    # "paddingTop":I
    :cond_3
    invoke-static/range {p0 .. p0}, Lorg/nativescript/widgets/CommonLayoutParams;->restoreOriginalParams(Landroid/view/ViewGroup;)V

    .line 359
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 235
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p2}, Lorg/nativescript/widgets/CommonLayoutParams;->adjustChildrenLayoutParams(Landroid/view/ViewGroup;II)V

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "measureWidth":I
    const/4 v2, 0x0

    .line 240
    .local v2, "measureHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 241
    .local v3, "width":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 243
    .local v4, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 244
    .local v5, "height":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 246
    .local v6, "heightMode":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/GridLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/GridLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 247
    .local v7, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/GridLayout;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/GridLayout;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    .line 249
    .local v8, "horizontalPadding":I
    const/4 v10, 0x0

    if-nez v4, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 250
    .local v11, "infinityWidth":Z
    :goto_0
    if-nez v6, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 252
    .local v12, "infinityHeight":Z
    :goto_1
    iget-object v13, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    sub-int v14, v3, v8

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v13, Lorg/nativescript/widgets/MeasureHelper;->width:I

    .line 253
    iget-object v13, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    sub-int v14, v5, v7

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v13, Lorg/nativescript/widgets/MeasureHelper;->height:I

    .line 255
    invoke-static/range {p0 .. p0}, Lorg/nativescript/widgets/LayoutBase;->getGravity(Landroid/view/View;)I

    move-result v13

    .line 256
    .local v13, "gravity":I
    and-int/lit8 v14, v13, 0x70

    .line 257
    .local v14, "verticalGravity":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/GridLayout;->getLayoutDirection()I

    move-result v15

    .line 258
    .local v15, "layoutDirection":I
    invoke-static {v13, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v16

    const/4 v9, 0x7

    and-int/lit8 v10, v16, 0x7

    .line 260
    .local v10, "horizontalGravity":I
    iget-object v9, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    move/from16 v18, v1

    .end local v1    # "measureWidth":I
    .local v18, "measureWidth":I
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v4, v1, :cond_3

    const/4 v1, 0x7

    if-ne v10, v1, :cond_2

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v9, Lorg/nativescript/widgets/MeasureHelper;->stretchedHorizontally:Z

    .line 261
    iget-object v1, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v6, v9, :cond_5

    const/16 v9, 0x70

    if-ne v14, v9, :cond_4

    if-nez v12, :cond_4

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, v1, Lorg/nativescript/widgets/MeasureHelper;->stretchedVertically:Z

    .line 263
    iget-object v1, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    invoke-virtual {v1, v11}, Lorg/nativescript/widgets/MeasureHelper;->setInfinityWidth(Z)V

    .line 264
    iget-object v1, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    invoke-virtual {v1, v12}, Lorg/nativescript/widgets/MeasureHelper;->setInfinityHeight(Z)V

    .line 266
    iget-object v1, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    invoke-virtual {v1}, Lorg/nativescript/widgets/MeasureHelper;->clearMeasureSpecs()V

    .line 267
    iget-object v1, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    invoke-virtual {v1}, Lorg/nativescript/widgets/MeasureHelper;->init()V

    .line 269
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/GridLayout;->getChildCount()I

    move-result v9

    .local v9, "count":I
    :goto_6
    if-ge v1, v9, :cond_7

    .line 270
    move/from16 v16, v2

    .end local v2    # "measureHeight":I
    .local v16, "measureHeight":I
    invoke-virtual {v0, v1}, Lorg/nativescript/widgets/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 271
    .local v2, "child":Landroid/view/View;
    move/from16 v17, v3

    .end local v3    # "width":I
    .local v17, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v19, v4

    .end local v4    # "widthMode":I
    .local v19, "widthMode":I
    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 272
    goto :goto_7

    .line 275
    :cond_6
    iget-object v3, v0, Lorg/nativescript/widgets/GridLayout;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/nativescript/widgets/MeasureSpecs;

    .line 276
    .local v3, "measureSpecs":Lorg/nativescript/widgets/MeasureSpecs;
    invoke-direct {v0, v2, v3}, Lorg/nativescript/widgets/GridLayout;->updateMeasureSpecs(Landroid/view/View;Lorg/nativescript/widgets/MeasureSpecs;)V

    .line 277
    iget-object v4, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    invoke-virtual {v4, v3}, Lorg/nativescript/widgets/MeasureHelper;->addMeasureSpec(Lorg/nativescript/widgets/MeasureSpecs;)V

    .line 269
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "measureSpecs":Lorg/nativescript/widgets/MeasureSpecs;
    :goto_7
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v19

    goto :goto_6

    .end local v16    # "measureHeight":I
    .end local v17    # "width":I
    .end local v19    # "widthMode":I
    .local v2, "measureHeight":I
    .local v3, "width":I
    .restart local v4    # "widthMode":I
    :cond_7
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v19, v4

    .line 280
    .end local v1    # "i":I
    .end local v2    # "measureHeight":I
    .end local v3    # "width":I
    .end local v4    # "widthMode":I
    .end local v9    # "count":I
    .restart local v16    # "measureHeight":I
    .restart local v17    # "width":I
    .restart local v19    # "widthMode":I
    iget-object v1, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    invoke-virtual {v1}, Lorg/nativescript/widgets/MeasureHelper;->measure()V

    .line 283
    iget-object v1, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget v1, v1, Lorg/nativescript/widgets/MeasureHelper;->measuredWidth:I

    add-int/2addr v1, v8

    .line 284
    .end local v18    # "measureWidth":I
    .local v1, "measureWidth":I
    iget-object v2, v0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget v2, v2, Lorg/nativescript/widgets/MeasureHelper;->measuredHeight:I

    add-int/2addr v2, v7

    .line 287
    .end local v16    # "measureHeight":I
    .restart local v2    # "measureHeight":I
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/GridLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 288
    invoke-virtual/range {p0 .. p0}, Lorg/nativescript/widgets/GridLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 290
    move/from16 v3, p1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lorg/nativescript/widgets/GridLayout;->resolveSizeAndState(III)I

    move-result v9

    .line 291
    .local v9, "widthSizeAndState":I
    move/from16 v16, v1

    move/from16 v1, p2

    .end local v1    # "measureWidth":I
    .local v16, "measureWidth":I
    invoke-static {v2, v1, v4}, Lorg/nativescript/widgets/GridLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 293
    .local v4, "heightSizeAndState":I
    invoke-virtual {v0, v9, v4}, Lorg/nativescript/widgets/GridLayout;->setMeasuredDimension(II)V

    .line 294
    return-void
.end method

.method public removeColumn(Lorg/nativescript/widgets/ItemSpec;)V
    .locals 3
    .param p1, "itemSpec"    # Lorg/nativescript/widgets/ItemSpec;

    .line 64
    if-eqz p1, :cond_1

    .line 68
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_cols:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 69
    .local v0, "index":I
    iget-object v1, p1, Lorg/nativescript/widgets/ItemSpec;->owner:Lorg/nativescript/widgets/GridLayout;

    if-ne v1, p0, :cond_0

    if-ltz v0, :cond_0

    .line 73
    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/GridLayout;->removeColumnAt(I)V

    .line 74
    return-void

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "itemSpec is not child of this GridLayout"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v0    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "itemSpec is null."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeColumnAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 77
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_cols:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v0, v0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/ItemGroup;

    iget-object v0, v0, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v0, v0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lorg/nativescript/widgets/GridLayout;->requestLayout()V

    .line 81
    return-void
.end method

.method public removeRow(Lorg/nativescript/widgets/ItemSpec;)V
    .locals 3
    .param p1, "itemSpec"    # Lorg/nativescript/widgets/ItemSpec;

    .line 84
    if-eqz p1, :cond_1

    .line 88
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 89
    .local v0, "index":I
    iget-object v1, p1, Lorg/nativescript/widgets/ItemSpec;->owner:Lorg/nativescript/widgets/GridLayout;

    if-ne v1, p0, :cond_0

    if-ltz v0, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Lorg/nativescript/widgets/GridLayout;->removeRowAt(I)V

    .line 94
    return-void

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "itemSpec is not child of this GridLayout"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    .end local v0    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "itemSpec is null."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRowAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 97
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->_rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v0, v0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/ItemGroup;

    iget-object v0, v0, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v0, p0, Lorg/nativescript/widgets/GridLayout;->helper:Lorg/nativescript/widgets/MeasureHelper;

    iget-object v0, v0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0}, Lorg/nativescript/widgets/GridLayout;->requestLayout()V

    .line 101
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 135
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/GridLayout;->removeFromMap(Landroid/view/View;)V

    .line 136
    invoke-super {p0, p1}, Lorg/nativescript/widgets/LayoutBase;->removeView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 141
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lorg/nativescript/widgets/GridLayout;->removeFromMap(Landroid/view/View;)V

    .line 143
    invoke-super {p0, p1}, Lorg/nativescript/widgets/LayoutBase;->removeViewAt(I)V

    .line 144
    return-void
.end method

.method public removeViews(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 148
    add-int v0, p1, p2

    .line 149
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 150
    invoke-virtual {p0, v1}, Lorg/nativescript/widgets/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 151
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lorg/nativescript/widgets/GridLayout;->removeFromMap(Landroid/view/View;)V

    .line 149
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/nativescript/widgets/LayoutBase;->removeViews(II)V

    .line 155
    return-void
.end method
