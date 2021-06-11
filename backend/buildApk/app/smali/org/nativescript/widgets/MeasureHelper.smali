.class Lorg/nativescript/widgets/MeasureHelper;
.super Ljava/lang/Object;
.source "GridLayout.java"


# static fields
.field static infinity:I


# instance fields
.field columns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/nativescript/widgets/ItemGroup;",
            ">;"
        }
    .end annotation
.end field

.field private fakeColumnAdded:Z

.field private fakeRowAdded:Z

.field public final grid:Lorg/nativescript/widgets/GridLayout;

.field public height:I

.field private infinityHeight:Z

.field private infinityWidth:Z

.field private maxColumnStarValue:F

.field private maxRowStarValue:F

.field measuredHeight:I

.field measuredWidth:I

.field private minColumnStarValue:F

.field private minRowStarValue:F

.field rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/nativescript/widgets/ItemGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final singleColumn:Lorg/nativescript/widgets/ItemSpec;

.field private singleColumnGroup:Lorg/nativescript/widgets/ItemGroup;

.field public final singleRow:Lorg/nativescript/widgets/ItemSpec;

.field private singleRowGroup:Lorg/nativescript/widgets/ItemGroup;

.field public stretchedHorizontally:Z

.field public stretchedVertically:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 497
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lorg/nativescript/widgets/MeasureHelper;->infinity:I

    return-void
.end method

.method constructor <init>(Lorg/nativescript/widgets/GridLayout;)V
    .locals 2
    .param p1, "grid"    # Lorg/nativescript/widgets/GridLayout;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    new-instance v0, Lorg/nativescript/widgets/ItemSpec;

    invoke-direct {v0}, Lorg/nativescript/widgets/ItemSpec;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/MeasureHelper;->singleRow:Lorg/nativescript/widgets/ItemSpec;

    .line 494
    new-instance v0, Lorg/nativescript/widgets/ItemSpec;

    invoke-direct {v0}, Lorg/nativescript/widgets/ItemSpec;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/MeasureHelper;->singleColumn:Lorg/nativescript/widgets/ItemSpec;

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/nativescript/widgets/MeasureHelper;->stretchedHorizontally:Z

    .line 504
    iput-boolean v0, p0, Lorg/nativescript/widgets/MeasureHelper;->stretchedVertically:Z

    .line 506
    iput-boolean v0, p0, Lorg/nativescript/widgets/MeasureHelper;->infinityWidth:Z

    .line 507
    iput-boolean v0, p0, Lorg/nativescript/widgets/MeasureHelper;->infinityHeight:Z

    .line 518
    iput-boolean v0, p0, Lorg/nativescript/widgets/MeasureHelper;->fakeRowAdded:Z

    .line 519
    iput-boolean v0, p0, Lorg/nativescript/widgets/MeasureHelper;->fakeColumnAdded:Z

    .line 611
    new-instance v0, Lorg/nativescript/widgets/ItemGroup;

    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->singleRow:Lorg/nativescript/widgets/ItemSpec;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/ItemGroup;-><init>(Lorg/nativescript/widgets/ItemSpec;)V

    iput-object v0, p0, Lorg/nativescript/widgets/MeasureHelper;->singleRowGroup:Lorg/nativescript/widgets/ItemGroup;

    .line 612
    new-instance v0, Lorg/nativescript/widgets/ItemGroup;

    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->singleColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-direct {v0, v1}, Lorg/nativescript/widgets/ItemGroup;-><init>(Lorg/nativescript/widgets/ItemSpec;)V

    iput-object v0, p0, Lorg/nativescript/widgets/MeasureHelper;->singleColumnGroup:Lorg/nativescript/widgets/ItemGroup;

    .line 522
    iput-object p1, p0, Lorg/nativescript/widgets/MeasureHelper;->grid:Lorg/nativescript/widgets/GridLayout;

    .line 523
    return-void
.end method

.method private static canFix(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/nativescript/widgets/ItemGroup;",
            ">;)Z"
        }
    .end annotation

    .line 773
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/nativescript/widgets/ItemGroup;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 774
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    .line 775
    .local v2, "item":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v2}, Lorg/nativescript/widgets/ItemGroup;->getCanBeFixed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 776
    const/4 v3, 0x0

    return v3

    .line 773
    .end local v2    # "item":Lorg/nativescript/widgets/ItemGroup;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 780
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private fakeMeasure()V
    .locals 7

    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 734
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    .line 735
    .local v2, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v2}, Lorg/nativescript/widgets/ItemGroup;->getAllMeasured()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 736
    goto :goto_2

    .line 739
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    iget-object v4, v2, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "childrenCount":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 740
    iget-object v5, v2, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/nativescript/widgets/MeasureSpecs;

    .line 741
    .local v5, "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    iget v6, v5, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    if-lez v6, :cond_1

    iget v6, v5, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    if-lez v6, :cond_1

    iget v6, v5, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    if-nez v6, :cond_1

    .line 742
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/nativescript/widgets/MeasureHelper;->measureChild(Lorg/nativescript/widgets/MeasureSpecs;Z)V

    .line 739
    .end local v5    # "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 733
    .end local v2    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    .end local v3    # "j":I
    .end local v4    # "childrenCount":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_3
    return-void
.end method

.method private fixColumns()V
    .locals 6

    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "currentColumnWidth":I
    const/4 v1, 0x0

    .line 677
    .local v1, "columnStarCount":I
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 678
    .local v2, "columnCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 679
    iget-object v4, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/nativescript/widgets/ItemGroup;

    .line 680
    .local v4, "item":Lorg/nativescript/widgets/ItemGroup;
    iget-object v5, v4, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v5}, Lorg/nativescript/widgets/ItemSpec;->getIsStar()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 681
    iget-object v5, v4, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v5}, Lorg/nativescript/widgets/ItemSpec;->getValue()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    .line 684
    :cond_0
    iget v5, v4, Lorg/nativescript/widgets/ItemGroup;->length:I

    add-int/2addr v0, v5

    .line 678
    .end local v4    # "item":Lorg/nativescript/widgets/ItemGroup;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 688
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    iget v4, p0, Lorg/nativescript/widgets/MeasureHelper;->width:I

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    .line 689
    .local v3, "widthForStarColumns":F
    if-lez v1, :cond_2

    int-to-float v4, v1

    div-float v4, v3, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput v4, p0, Lorg/nativescript/widgets/MeasureHelper;->maxColumnStarValue:F

    .line 691
    iget-object v5, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lorg/nativescript/widgets/MeasureHelper;->updateStarLength(Ljava/util/ArrayList;F)V

    .line 692
    return-void
.end method

.method private fixRows()V
    .locals 6

    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, "currentRowHeight":I
    const/4 v1, 0x0

    .line 698
    .local v1, "rowStarCount":I
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 699
    .local v2, "rowCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 700
    iget-object v4, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/nativescript/widgets/ItemGroup;

    .line 701
    .local v4, "item":Lorg/nativescript/widgets/ItemGroup;
    iget-object v5, v4, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v5}, Lorg/nativescript/widgets/ItemSpec;->getIsStar()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 702
    iget-object v5, v4, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v5}, Lorg/nativescript/widgets/ItemSpec;->getValue()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    .line 705
    :cond_0
    iget v5, v4, Lorg/nativescript/widgets/ItemGroup;->length:I

    add-int/2addr v0, v5

    .line 699
    .end local v4    # "item":Lorg/nativescript/widgets/ItemGroup;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 709
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    iget v4, p0, Lorg/nativescript/widgets/MeasureHelper;->height:I

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    .line 710
    .local v3, "heightForStarRows":F
    if-lez v1, :cond_2

    int-to-float v4, v1

    div-float v4, v3, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput v4, p0, Lorg/nativescript/widgets/MeasureHelper;->maxRowStarValue:F

    .line 712
    iget-object v5, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lorg/nativescript/widgets/MeasureHelper;->updateStarLength(Ljava/util/ArrayList;F)V

    .line 713
    return-void
.end method

.method private static getMeasureLength(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/nativescript/widgets/ItemGroup;",
            ">;)I"
        }
    .end annotation

    .line 784
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/nativescript/widgets/ItemGroup;>;"
    const/4 v0, 0x0

    .line 785
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 786
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/nativescript/widgets/ItemGroup;

    .line 787
    .local v3, "item":Lorg/nativescript/widgets/ItemGroup;
    iget v4, v3, Lorg/nativescript/widgets/ItemGroup;->length:I

    add-int/2addr v0, v4

    .line 785
    .end local v3    # "item":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    return v0
.end method

.method private static initList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/nativescript/widgets/ItemGroup;",
            ">;)V"
        }
    .end annotation

    .line 605
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/nativescript/widgets/ItemGroup;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 606
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    .line 607
    .local v2, "item":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v2}, Lorg/nativescript/widgets/ItemGroup;->init()V

    .line 605
    .end local v2    # "item":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method private itemMeasured(Lorg/nativescript/widgets/MeasureSpecs;Z)V
    .locals 5
    .param p1, "measureSpec"    # Lorg/nativescript/widgets/MeasureSpecs;
    .param p2, "isFakeMeasure"    # Z

    .line 646
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 647
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/nativescript/widgets/ItemGroup;

    iget v2, v1, Lorg/nativescript/widgets/ItemGroup;->measuredCount:I

    add-int/2addr v2, v0

    iput v2, v1, Lorg/nativescript/widgets/ItemGroup;->measuredCount:I

    .line 648
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/nativescript/widgets/ItemGroup;

    iget v2, v1, Lorg/nativescript/widgets/ItemGroup;->measuredCount:I

    add-int/2addr v2, v0

    iput v2, v1, Lorg/nativescript/widgets/ItemGroup;->measuredCount:I

    .line 649
    iput-boolean v0, p1, Lorg/nativescript/widgets/MeasureSpecs;->measured:Z

    .line 652
    :cond_0
    iget v1, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    if-lez v1, :cond_2

    iget v1, p1, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    if-nez v1, :cond_2

    .line 653
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnSpan()I

    move-result v2

    add-int/2addr v1, v2

    .line 654
    .local v1, "size":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 655
    iget-object v3, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/nativescript/widgets/ItemGroup;

    .line 656
    .local v3, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v3}, Lorg/nativescript/widgets/ItemGroup;->getIsAuto()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 657
    iget v4, v3, Lorg/nativescript/widgets/ItemGroup;->currentMeasureToFixCount:I

    add-int/2addr v4, v0

    iput v4, v3, Lorg/nativescript/widgets/ItemGroup;->currentMeasureToFixCount:I

    .line 654
    .end local v3    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2
    iget v1, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoRowsCount:I

    if-lez v1, :cond_4

    iget v1, p1, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    if-nez v1, :cond_4

    .line 663
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowSpan()I

    move-result v2

    add-int/2addr v1, v2

    .line 664
    .restart local v1    # "size":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v2

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 665
    iget-object v3, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/nativescript/widgets/ItemGroup;

    .line 666
    .local v3, "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v3}, Lorg/nativescript/widgets/ItemGroup;->getIsAuto()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 667
    iget v4, v3, Lorg/nativescript/widgets/ItemGroup;->currentMeasureToFixCount:I

    add-int/2addr v4, v0

    iput v4, v3, Lorg/nativescript/widgets/ItemGroup;->currentMeasureToFixCount:I

    .line 664
    .end local v3    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 671
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private measureChild(Lorg/nativescript/widgets/MeasureSpecs;Z)V
    .locals 11
    .param p1, "measureSpec"    # Lorg/nativescript/widgets/MeasureSpecs;
    .param p2, "isFakeMeasure"    # Z

    .line 888
    iget v0, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_0

    sget v0, Lorg/nativescript/widgets/MeasureHelper;->infinity:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lorg/nativescript/widgets/MeasureSpecs;->pixelWidth:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 889
    .local v0, "widthMeasureSpec":I
    :goto_0
    if-nez p2, :cond_2

    iget v2, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoRowsCount:I

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p1, Lorg/nativescript/widgets/MeasureSpecs;->pixelHeight:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_2

    :cond_2
    :goto_1
    sget v1, Lorg/nativescript/widgets/MeasureHelper;->infinity:I

    .line 891
    .local v1, "heightMeasureSpec":I
    :goto_2
    iget-object v2, p1, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v2, v0, v1}, Lorg/nativescript/widgets/CommonLayoutParams;->measureChild(Landroid/view/View;II)V

    .line 892
    iget-object v2, p1, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v2}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v2

    .line 893
    .local v2, "childMeasuredWidth":I
    iget-object v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v3}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v3

    .line 895
    .local v3, "childMeasuredHeight":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v4

    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnSpan()I

    move-result v5

    add-int/2addr v4, v5

    .line 896
    .local v4, "columnSpanEnd":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v5

    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowSpan()I

    move-result v6

    add-int/2addr v5, v6

    .line 898
    .local v5, "rowSpanEnd":I
    iget v6, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    if-lez v6, :cond_5

    .line 899
    move v6, v2

    .line 901
    .local v6, "remainingSpace":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v7

    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_3

    .line 902
    iget-object v8, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/nativescript/widgets/ItemGroup;

    .line 903
    .local v8, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    iget v9, v8, Lorg/nativescript/widgets/ItemGroup;->length:I

    sub-int/2addr v6, v9

    .line 901
    .end local v8    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 906
    .end local v7    # "i":I
    :cond_3
    if-lez v6, :cond_5

    .line 907
    iget v7, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    div-int v7, v6, v7

    .line 908
    .local v7, "growSize":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v8

    .local v8, "i":I
    :goto_4
    if-ge v8, v4, :cond_5

    .line 909
    iget-object v9, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/nativescript/widgets/ItemGroup;

    .line 910
    .local v9, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v9}, Lorg/nativescript/widgets/ItemGroup;->getIsAuto()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 911
    iget v10, v9, Lorg/nativescript/widgets/ItemGroup;->length:I

    add-int/2addr v10, v7

    iput v10, v9, Lorg/nativescript/widgets/ItemGroup;->length:I

    .line 908
    .end local v9    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 917
    .end local v6    # "remainingSpace":I
    .end local v7    # "growSize":I
    .end local v8    # "i":I
    :cond_5
    if-nez p2, :cond_8

    iget v6, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoRowsCount:I

    if-lez v6, :cond_8

    .line 918
    move v6, v3

    .line 920
    .restart local v6    # "remainingSpace":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v7

    .local v7, "i":I
    :goto_5
    if-ge v7, v5, :cond_6

    .line 921
    iget-object v8, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/nativescript/widgets/ItemGroup;

    .line 922
    .local v8, "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    iget v9, v8, Lorg/nativescript/widgets/ItemGroup;->length:I

    sub-int/2addr v6, v9

    .line 920
    .end local v8    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 925
    .end local v7    # "i":I
    :cond_6
    if-lez v6, :cond_8

    .line 926
    iget v7, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoRowsCount:I

    div-int v7, v6, v7

    .line 927
    .local v7, "growSize":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v8

    .local v8, "i":I
    :goto_6
    if-ge v8, v5, :cond_8

    .line 928
    iget-object v9, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/nativescript/widgets/ItemGroup;

    .line 929
    .local v9, "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v9}, Lorg/nativescript/widgets/ItemGroup;->getIsAuto()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 930
    iget v10, v9, Lorg/nativescript/widgets/ItemGroup;->length:I

    add-int/2addr v10, v7

    iput v10, v9, Lorg/nativescript/widgets/ItemGroup;->length:I

    .line 927
    .end local v9    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 936
    .end local v6    # "remainingSpace":I
    .end local v7    # "growSize":I
    .end local v8    # "i":I
    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/nativescript/widgets/MeasureHelper;->itemMeasured(Lorg/nativescript/widgets/MeasureSpecs;Z)V

    .line 937
    return-void
.end method

.method private measureChildFixedColumns(Lorg/nativescript/widgets/MeasureSpecs;)V
    .locals 14
    .param p1, "measureSpec"    # Lorg/nativescript/widgets/MeasureSpecs;

    .line 940
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v0

    .line 941
    .local v0, "columnIndex":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnSpan()I

    move-result v1

    add-int/2addr v1, v0

    .line 942
    .local v1, "columnSpanEnd":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v2

    .line 943
    .local v2, "rowIndex":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowSpan()I

    move-result v3

    add-int/2addr v3, v2

    .line 945
    .local v3, "rowSpanEnd":I
    const/4 v4, 0x0

    .line 946
    .local v4, "measureWidth":I
    const/4 v5, 0x0

    .line 948
    .local v5, "growSize":I
    move v6, v0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 949
    iget-object v7, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/nativescript/widgets/ItemGroup;

    .line 950
    .local v7, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    iget v8, v7, Lorg/nativescript/widgets/ItemGroup;->length:I

    add-int/2addr v4, v8

    .line 948
    .end local v7    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 953
    .end local v6    # "i":I
    :cond_0
    iget-boolean v6, p0, Lorg/nativescript/widgets/MeasureHelper;->stretchedHorizontally:Z

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_1

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_1

    :cond_1
    const/high16 v6, -0x80000000

    :goto_1
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 954
    .local v6, "widthMeasureSpec":I
    iget v8, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoRowsCount:I

    if-lez v8, :cond_2

    sget v7, Lorg/nativescript/widgets/MeasureHelper;->infinity:I

    goto :goto_2

    :cond_2
    iget v8, p1, Lorg/nativescript/widgets/MeasureSpecs;->pixelHeight:I

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 956
    .local v7, "heightMeasureSpec":I
    :goto_2
    iget-object v8, p1, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v8, v6, v7}, Lorg/nativescript/widgets/CommonLayoutParams;->measureChild(Landroid/view/View;II)V

    .line 957
    iget-object v8, p1, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v8}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v8

    .line 958
    .local v8, "childMeasuredWidth":I
    iget-object v9, p1, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v9}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v9

    .line 960
    .local v9, "childMeasuredHeight":I
    invoke-direct {p0, p1, v8}, Lorg/nativescript/widgets/MeasureHelper;->updateMinColumnStarValueIfNeeded(Lorg/nativescript/widgets/MeasureSpecs;I)V

    .line 963
    iget v10, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoRowsCount:I

    if-lez v10, :cond_5

    .line 964
    move v10, v9

    .line 966
    .local v10, "remainingSpace":I
    move v11, v2

    .local v11, "i":I
    :goto_3
    if-ge v11, v3, :cond_3

    .line 967
    iget-object v12, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/nativescript/widgets/ItemGroup;

    .line 968
    .local v12, "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    iget v13, v12, Lorg/nativescript/widgets/ItemGroup;->length:I

    sub-int/2addr v10, v13

    .line 966
    .end local v12    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 971
    .end local v11    # "i":I
    :cond_3
    if-lez v10, :cond_5

    .line 972
    iget v11, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoRowsCount:I

    div-int v5, v10, v11

    .line 973
    move v11, v2

    .restart local v11    # "i":I
    :goto_4
    if-ge v11, v3, :cond_5

    .line 974
    iget-object v12, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/nativescript/widgets/ItemGroup;

    .line 975
    .restart local v12    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v12}, Lorg/nativescript/widgets/ItemGroup;->getIsAuto()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 976
    iget v13, v12, Lorg/nativescript/widgets/ItemGroup;->length:I

    add-int/2addr v13, v5

    iput v13, v12, Lorg/nativescript/widgets/ItemGroup;->length:I

    .line 973
    .end local v12    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 982
    .end local v10    # "remainingSpace":I
    .end local v11    # "i":I
    :cond_5
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lorg/nativescript/widgets/MeasureHelper;->itemMeasured(Lorg/nativescript/widgets/MeasureSpecs;Z)V

    .line 983
    return-void
.end method

.method private measureChildFixedColumnsAndRows(Lorg/nativescript/widgets/MeasureSpecs;)V
    .locals 11
    .param p1, "measureSpec"    # Lorg/nativescript/widgets/MeasureSpecs;

    .line 1032
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v0

    .line 1033
    .local v0, "columnIndex":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnSpan()I

    move-result v1

    add-int/2addr v1, v0

    .line 1034
    .local v1, "columnSpanEnd":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v2

    .line 1035
    .local v2, "rowIndex":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowSpan()I

    move-result v3

    add-int/2addr v3, v2

    .line 1037
    .local v3, "rowSpanEnd":I
    const/4 v4, 0x0

    .line 1038
    .local v4, "measureWidth":I
    move v5, v0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 1039
    iget-object v6, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/nativescript/widgets/ItemGroup;

    .line 1040
    .local v6, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    iget v7, v6, Lorg/nativescript/widgets/ItemGroup;->length:I

    add-int/2addr v4, v7

    .line 1038
    .end local v6    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1043
    .end local v5    # "i":I
    :cond_0
    const/4 v5, 0x0

    .line 1044
    .local v5, "measureHeight":I
    move v6, v2

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_1

    .line 1045
    iget-object v7, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/nativescript/widgets/ItemGroup;

    .line 1046
    .local v7, "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    iget v8, v7, Lorg/nativescript/widgets/ItemGroup;->length:I

    add-int/2addr v5, v8

    .line 1044
    .end local v7    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1050
    .end local v6    # "i":I
    :cond_1
    iget v6, p1, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    const/high16 v7, -0x80000000

    const/high16 v8, 0x40000000    # 2.0f

    if-lez v6, :cond_2

    iget-boolean v6, p0, Lorg/nativescript/widgets/MeasureHelper;->stretchedHorizontally:Z

    if-nez v6, :cond_2

    const/high16 v6, -0x80000000

    goto :goto_2

    :cond_2
    const/high16 v6, 0x40000000    # 2.0f

    :goto_2
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1053
    .local v6, "widthMeasureSpec":I
    iget v9, p1, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    if-lez v9, :cond_3

    iget-boolean v9, p0, Lorg/nativescript/widgets/MeasureHelper;->stretchedVertically:Z

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    const/high16 v7, 0x40000000    # 2.0f

    :goto_3
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1056
    .local v7, "heightMeasureSpec":I
    iget-object v8, p1, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v8, v6, v7}, Lorg/nativescript/widgets/CommonLayoutParams;->measureChild(Landroid/view/View;II)V

    .line 1057
    iget-object v8, p1, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v8}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v8

    .line 1058
    .local v8, "childMeasuredWidth":I
    iget-object v9, p1, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v9}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v9

    .line 1060
    .local v9, "childMeasuredHeight":I
    invoke-direct {p0, p1, v8}, Lorg/nativescript/widgets/MeasureHelper;->updateMinColumnStarValueIfNeeded(Lorg/nativescript/widgets/MeasureSpecs;I)V

    .line 1061
    invoke-direct {p0, p1, v9}, Lorg/nativescript/widgets/MeasureHelper;->updateMinRowStarValueIfNeeded(Lorg/nativescript/widgets/MeasureSpecs;I)V

    .line 1062
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lorg/nativescript/widgets/MeasureHelper;->itemMeasured(Lorg/nativescript/widgets/MeasureSpecs;Z)V

    .line 1063
    return-void
.end method

.method private measureChildFixedRows(Lorg/nativescript/widgets/MeasureSpecs;)V
    .locals 14
    .param p1, "measureSpec"    # Lorg/nativescript/widgets/MeasureSpecs;

    .line 986
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v0

    .line 987
    .local v0, "columnIndex":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnSpan()I

    move-result v1

    add-int/2addr v1, v0

    .line 988
    .local v1, "columnSpanEnd":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v2

    .line 989
    .local v2, "rowIndex":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowSpan()I

    move-result v3

    add-int/2addr v3, v2

    .line 990
    .local v3, "rowSpanEnd":I
    const/4 v4, 0x0

    .line 992
    .local v4, "measureHeight":I
    move v5, v2

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 993
    iget-object v6, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/nativescript/widgets/ItemGroup;

    .line 994
    .local v6, "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    iget v7, v6, Lorg/nativescript/widgets/ItemGroup;->length:I

    add-int/2addr v4, v7

    .line 992
    .end local v6    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 997
    .end local v5    # "i":I
    :cond_0
    iget v5, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v5, :cond_1

    sget v5, Lorg/nativescript/widgets/MeasureHelper;->infinity:I

    goto :goto_1

    :cond_1
    iget v5, p1, Lorg/nativescript/widgets/MeasureSpecs;->pixelWidth:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 998
    .local v5, "widthMeasureSpec":I
    :goto_1
    iget-boolean v7, p0, Lorg/nativescript/widgets/MeasureHelper;->stretchedVertically:Z

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v6, -0x80000000

    :goto_2
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1000
    .local v6, "heightMeasureSpec":I
    iget-object v7, p1, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v7, v5, v6}, Lorg/nativescript/widgets/CommonLayoutParams;->measureChild(Landroid/view/View;II)V

    .line 1001
    iget-object v7, p1, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v7}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredWidth(Landroid/view/View;)I

    move-result v7

    .line 1002
    .local v7, "childMeasuredWidth":I
    iget-object v8, p1, Lorg/nativescript/widgets/MeasureSpecs;->child:Landroid/view/View;

    invoke-static {v8}, Lorg/nativescript/widgets/CommonLayoutParams;->getDesiredHeight(Landroid/view/View;)I

    move-result v8

    .line 1004
    .local v8, "childMeasuredHeight":I
    const/4 v9, 0x0

    .line 1005
    .local v9, "remainingSpace":I
    const/4 v10, 0x0

    .line 1008
    .local v10, "growSize":I
    iget v11, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    if-lez v11, :cond_5

    .line 1009
    move v9, v7

    .line 1011
    move v11, v0

    .local v11, "i":I
    :goto_3
    if-ge v11, v1, :cond_3

    .line 1012
    iget-object v12, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/nativescript/widgets/ItemGroup;

    .line 1013
    .local v12, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    iget v13, v12, Lorg/nativescript/widgets/ItemGroup;->length:I

    sub-int/2addr v9, v13

    .line 1011
    .end local v12    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1016
    .end local v11    # "i":I
    :cond_3
    if-lez v9, :cond_5

    .line 1017
    iget v11, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    div-int v10, v9, v11

    .line 1018
    move v11, v0

    .restart local v11    # "i":I
    :goto_4
    if-ge v11, v1, :cond_5

    .line 1019
    iget-object v12, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/nativescript/widgets/ItemGroup;

    .line 1020
    .restart local v12    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v12}, Lorg/nativescript/widgets/ItemGroup;->getIsAuto()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1021
    iget v13, v12, Lorg/nativescript/widgets/ItemGroup;->length:I

    add-int/2addr v13, v10

    iput v13, v12, Lorg/nativescript/widgets/ItemGroup;->length:I

    .line 1018
    .end local v12    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1027
    .end local v11    # "i":I
    :cond_5
    invoke-direct {p0, p1, v8}, Lorg/nativescript/widgets/MeasureHelper;->updateMinRowStarValueIfNeeded(Lorg/nativescript/widgets/MeasureSpecs;I)V

    .line 1028
    const/4 v11, 0x0

    invoke-direct {p0, p1, v11}, Lorg/nativescript/widgets/MeasureHelper;->itemMeasured(Lorg/nativescript/widgets/MeasureSpecs;Z)V

    .line 1029
    return-void
.end method

.method private measureFixedColumnsNoStarRows()V
    .locals 7

    .line 749
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 750
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    .line 751
    .local v2, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    const/4 v3, 0x0

    .local v3, "j":I
    iget-object v4, v2, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "childrenCount":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 752
    iget-object v5, v2, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/nativescript/widgets/MeasureSpecs;

    .line 753
    .local v5, "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    iget v6, v5, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    if-lez v6, :cond_0

    iget v6, v5, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    if-nez v6, :cond_0

    .line 754
    invoke-direct {p0, v5}, Lorg/nativescript/widgets/MeasureHelper;->measureChildFixedColumns(Lorg/nativescript/widgets/MeasureSpecs;)V

    .line 751
    .end local v5    # "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 749
    .end local v2    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    .end local v3    # "j":I
    .end local v4    # "childrenCount":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    return-void
.end method

.method private measureNoStarColumnsFixedRows()V
    .locals 7

    .line 761
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 762
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    .line 763
    .local v2, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    const/4 v3, 0x0

    .local v3, "j":I
    iget-object v4, v2, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "childrenCount":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 764
    iget-object v5, v2, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/nativescript/widgets/MeasureSpecs;

    .line 765
    .local v5, "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    iget v6, v5, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    if-lez v6, :cond_0

    iget v6, v5, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    if-nez v6, :cond_0

    .line 766
    invoke-direct {p0, v5}, Lorg/nativescript/widgets/MeasureHelper;->measureChildFixedRows(Lorg/nativescript/widgets/MeasureSpecs;)V

    .line 763
    .end local v5    # "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 761
    .end local v2    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    .end local v3    # "j":I
    .end local v4    # "childrenCount":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    return-void
.end method

.method private updateMinColumnStarValueIfNeeded(Lorg/nativescript/widgets/MeasureSpecs;I)V
    .locals 6
    .param p1, "measureSpec"    # Lorg/nativescript/widgets/MeasureSpecs;
    .param p2, "childMeasuredWidth"    # I

    .line 1086
    iget-boolean v0, p0, Lorg/nativescript/widgets/MeasureHelper;->stretchedHorizontally:Z

    if-nez v0, :cond_2

    iget v0, p1, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    if-lez v0, :cond_2

    .line 1087
    move v0, p2

    .line 1088
    .local v0, "remainingSpace":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v1

    .line 1089
    .local v1, "columnIndex":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnSpan()I

    move-result v2

    add-int/2addr v2, v1

    .line 1090
    .local v2, "columnSpanEnd":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1091
    iget-object v4, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/nativescript/widgets/ItemGroup;

    .line 1092
    .local v4, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v4}, Lorg/nativescript/widgets/ItemGroup;->getIsStar()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1093
    iget v5, v4, Lorg/nativescript/widgets/ItemGroup;->length:I

    sub-int/2addr v0, v5

    .line 1090
    .end local v4    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1097
    .end local v3    # "i":I
    :cond_1
    if-lez v0, :cond_2

    .line 1098
    iget v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    div-int v3, v0, v3

    int-to-float v3, v3

    iget v4, p0, Lorg/nativescript/widgets/MeasureHelper;->minColumnStarValue:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lorg/nativescript/widgets/MeasureHelper;->minColumnStarValue:F

    .line 1101
    .end local v0    # "remainingSpace":I
    .end local v1    # "columnIndex":I
    .end local v2    # "columnSpanEnd":I
    :cond_2
    return-void
.end method

.method private updateMinRowStarValueIfNeeded(Lorg/nativescript/widgets/MeasureSpecs;I)V
    .locals 6
    .param p1, "measureSpec"    # Lorg/nativescript/widgets/MeasureSpecs;
    .param p2, "childMeasuredHeight"    # I

    .line 1066
    iget-boolean v0, p0, Lorg/nativescript/widgets/MeasureHelper;->stretchedVertically:Z

    if-nez v0, :cond_2

    iget v0, p1, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    if-lez v0, :cond_2

    .line 1067
    move v0, p2

    .line 1068
    .local v0, "remainingSpace":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v1

    .line 1069
    .local v1, "rowIndex":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowSpan()I

    move-result v2

    add-int/2addr v2, v1

    .line 1070
    .local v2, "rowSpanEnd":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1071
    iget-object v4, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/nativescript/widgets/ItemGroup;

    .line 1072
    .local v4, "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v4}, Lorg/nativescript/widgets/ItemGroup;->getIsStar()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1073
    iget v5, v4, Lorg/nativescript/widgets/ItemGroup;->length:I

    sub-int/2addr v0, v5

    .line 1070
    .end local v4    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1077
    .end local v3    # "i":I
    :cond_1
    if-lez v0, :cond_2

    .line 1078
    iget v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    div-int v3, v0, v3

    int-to-float v3, v3

    iget v4, p0, Lorg/nativescript/widgets/MeasureHelper;->minRowStarValue:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lorg/nativescript/widgets/MeasureHelper;->minRowStarValue:F

    .line 1081
    .end local v0    # "remainingSpace":I
    .end local v1    # "rowIndex":I
    .end local v2    # "rowSpanEnd":I
    :cond_2
    return-void
.end method

.method private static updateStarLength(Ljava/util/ArrayList;F)V
    .locals 7
    .param p1, "starValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/nativescript/widgets/ItemGroup;",
            ">;F)V"
        }
    .end annotation

    .line 716
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/nativescript/widgets/ItemGroup;>;"
    const/4 v0, 0x0

    .line 717
    .local v0, "offset":F
    const/4 v1, 0x0

    .line 718
    .local v1, "roundedOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "rowCount":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 719
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/nativescript/widgets/ItemGroup;

    .line 720
    .local v4, "item":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v4}, Lorg/nativescript/widgets/ItemGroup;->getIsStar()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 721
    iget-object v5, v4, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v5}, Lorg/nativescript/widgets/ItemSpec;->getValue()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p1

    add-float/2addr v0, v5

    .line 723
    int-to-float v5, v1

    sub-float v5, v0, v5

    .line 724
    .local v5, "actualLength":F
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 725
    .local v6, "roundedLength":I
    iput v6, v4, Lorg/nativescript/widgets/ItemGroup;->length:I

    .line 726
    add-int/2addr v1, v6

    .line 718
    .end local v4    # "item":Lorg/nativescript/widgets/ItemGroup;
    .end local v5    # "actualLength":F
    .end local v6    # "roundedLength":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 729
    .end local v2    # "i":I
    .end local v3    # "rowCount":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addMeasureSpec(Lorg/nativescript/widgets/MeasureSpecs;)V
    .locals 5
    .param p1, "measureSpec"    # Lorg/nativescript/widgets/MeasureSpecs;

    .line 545
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnSpan()I

    move-result v1

    add-int/2addr v0, v1

    .line 546
    .local v0, "size":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 547
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    .line 548
    .local v2, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v2}, Lorg/nativescript/widgets/ItemGroup;->getIsAuto()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 549
    iget v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    goto :goto_1

    .line 550
    :cond_0
    invoke-virtual {v2}, Lorg/nativescript/widgets/ItemGroup;->getIsStar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 551
    iget v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    iget-object v4, v2, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v4}, Lorg/nativescript/widgets/ItemSpec;->getValue()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    goto :goto_1

    .line 552
    :cond_1
    invoke-virtual {v2}, Lorg/nativescript/widgets/ItemGroup;->getIsAbsolute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 553
    iget v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->pixelWidth:I

    iget-object v4, v2, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v4}, Lorg/nativescript/widgets/ItemSpec;->getValue()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->pixelWidth:I

    .line 546
    .end local v2    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    .end local v1    # "i":I
    :cond_3
    iget v1, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoColumnsCount:I

    if-lez v1, :cond_5

    iget v1, p1, Lorg/nativescript/widgets/MeasureSpecs;->starColumnsCount:I

    if-nez v1, :cond_5

    .line 559
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v1

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 560
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    .line 561
    .restart local v2    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v2}, Lorg/nativescript/widgets/ItemGroup;->getIsAuto()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 562
    iget v3, v2, Lorg/nativescript/widgets/ItemGroup;->measureToFix:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/nativescript/widgets/ItemGroup;->measureToFix:I

    .line 559
    .end local v2    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 568
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowSpan()I

    move-result v2

    add-int/2addr v1, v2

    .line 569
    .end local v0    # "size":I
    .local v1, "size":I
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_9

    .line 570
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    .line 571
    .local v2, "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v2}, Lorg/nativescript/widgets/ItemGroup;->getIsAuto()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 572
    iget v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoRowsCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoRowsCount:I

    goto :goto_4

    .line 573
    :cond_6
    invoke-virtual {v2}, Lorg/nativescript/widgets/ItemGroup;->getIsStar()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 574
    iget v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    iget-object v4, v2, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v4}, Lorg/nativescript/widgets/ItemSpec;->getValue()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    goto :goto_4

    .line 575
    :cond_7
    invoke-virtual {v2}, Lorg/nativescript/widgets/ItemGroup;->getIsAbsolute()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 576
    iget v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->pixelHeight:I

    iget-object v4, v2, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v4}, Lorg/nativescript/widgets/ItemSpec;->getValue()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Lorg/nativescript/widgets/MeasureSpecs;->pixelHeight:I

    .line 569
    .end local v2    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 580
    .end local v0    # "i":I
    :cond_9
    iget v0, p1, Lorg/nativescript/widgets/MeasureSpecs;->autoRowsCount:I

    if-lez v0, :cond_b

    iget v0, p1, Lorg/nativescript/widgets/MeasureSpecs;->starRowsCount:I

    if-nez v0, :cond_b

    .line 582
    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v1, :cond_b

    .line 583
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    .line 584
    .restart local v2    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v2}, Lorg/nativescript/widgets/ItemGroup;->getIsAuto()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 585
    iget v3, v2, Lorg/nativescript/widgets/ItemGroup;->measureToFix:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/nativescript/widgets/ItemGroup;->measureToFix:I

    .line 582
    .end local v2    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 590
    .end local v0    # "i":I
    :cond_b
    iget-object v0, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getColumnIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/ItemGroup;

    iget-object v0, v0, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v0, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/nativescript/widgets/MeasureSpecs;->getRowIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/ItemGroup;

    iget-object v0, v0, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    return-void
.end method

.method public clearMeasureSpecs()V
    .locals 3

    .line 595
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 596
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    iget-object v2, v2, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1    # "size":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 600
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    iget-object v2, v2, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 602
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method init()V
    .locals 5

    .line 616
    iget-object v0, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 617
    .local v0, "rows":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 618
    iget-object v3, p0, Lorg/nativescript/widgets/MeasureHelper;->singleRowGroup:Lorg/nativescript/widgets/ItemGroup;

    iget-boolean v4, p0, Lorg/nativescript/widgets/MeasureHelper;->infinityHeight:Z

    invoke-virtual {v3, v4}, Lorg/nativescript/widgets/ItemGroup;->setIsLengthInfinity(Z)V

    .line 619
    iget-object v3, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/nativescript/widgets/MeasureHelper;->singleRowGroup:Lorg/nativescript/widgets/ItemGroup;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    iput-boolean v2, p0, Lorg/nativescript/widgets/MeasureHelper;->fakeRowAdded:Z

    goto :goto_0

    .line 621
    :cond_0
    if-le v0, v2, :cond_1

    iget-boolean v3, p0, Lorg/nativescript/widgets/MeasureHelper;->fakeRowAdded:Z

    if-eqz v3, :cond_1

    .line 622
    iget-object v3, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 623
    iput-boolean v1, p0, Lorg/nativescript/widgets/MeasureHelper;->fakeRowAdded:Z

    .line 626
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 627
    .local v3, "cols":I
    if-nez v3, :cond_2

    .line 628
    iput-boolean v2, p0, Lorg/nativescript/widgets/MeasureHelper;->fakeColumnAdded:Z

    .line 629
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->singleColumnGroup:Lorg/nativescript/widgets/ItemGroup;

    iget-boolean v2, p0, Lorg/nativescript/widgets/MeasureHelper;->infinityWidth:Z

    invoke-virtual {v1, v2}, Lorg/nativescript/widgets/ItemGroup;->setIsLengthInfinity(Z)V

    .line 630
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->singleColumnGroup:Lorg/nativescript/widgets/ItemGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 631
    :cond_2
    if-le v3, v2, :cond_3

    iget-boolean v2, p0, Lorg/nativescript/widgets/MeasureHelper;->fakeColumnAdded:Z

    if-eqz v2, :cond_3

    .line 632
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 633
    iput-boolean v1, p0, Lorg/nativescript/widgets/MeasureHelper;->fakeColumnAdded:Z

    .line 636
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/nativescript/widgets/MeasureHelper;->initList(Ljava/util/ArrayList;)V

    .line 637
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/nativescript/widgets/MeasureHelper;->initList(Ljava/util/ArrayList;)V

    .line 639
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lorg/nativescript/widgets/MeasureHelper;->minColumnStarValue:F

    .line 640
    iput v1, p0, Lorg/nativescript/widgets/MeasureHelper;->minRowStarValue:F

    .line 641
    iput v1, p0, Lorg/nativescript/widgets/MeasureHelper;->maxColumnStarValue:F

    .line 642
    iput v1, p0, Lorg/nativescript/widgets/MeasureHelper;->maxRowStarValue:F

    .line 643
    return-void
.end method

.method public measure()V
    .locals 9

    .line 796
    iget-object v0, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 797
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3

    .line 798
    iget-object v3, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/nativescript/widgets/ItemGroup;

    .line 799
    .local v3, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    const/4 v4, 0x0

    .local v4, "j":I
    iget-object v5, v3, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "childrenCount":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 800
    iget-object v6, v3, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/nativescript/widgets/MeasureSpecs;

    .line 801
    .local v6, "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    invoke-virtual {v6}, Lorg/nativescript/widgets/MeasureSpecs;->getIsStar()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lorg/nativescript/widgets/MeasureSpecs;->getSpanned()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 802
    goto :goto_2

    .line 805
    :cond_0
    invoke-direct {p0, v6, v2}, Lorg/nativescript/widgets/MeasureHelper;->measureChild(Lorg/nativescript/widgets/MeasureSpecs;Z)V

    .line 799
    .end local v6    # "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 797
    .end local v3    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    .end local v4    # "j":I
    .end local v5    # "childrenCount":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v0, :cond_7

    .line 811
    iget-object v3, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/nativescript/widgets/ItemGroup;

    .line 812
    .restart local v3    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    const/4 v4, 0x0

    .restart local v4    # "j":I
    iget-object v5, v3, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .restart local v5    # "childrenCount":I
    :goto_4
    if-ge v4, v5, :cond_6

    .line 813
    iget-object v6, v3, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/nativescript/widgets/MeasureSpecs;

    .line 814
    .restart local v6    # "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    invoke-virtual {v6}, Lorg/nativescript/widgets/MeasureSpecs;->getIsStar()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lorg/nativescript/widgets/MeasureSpecs;->getSpanned()Z

    move-result v7

    if-nez v7, :cond_4

    .line 815
    goto :goto_5

    .line 818
    :cond_4
    invoke-direct {p0, v6, v2}, Lorg/nativescript/widgets/MeasureHelper;->measureChild(Lorg/nativescript/widgets/MeasureSpecs;Z)V

    .line 812
    .end local v6    # "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 810
    .end local v3    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    .end local v4    # "j":I
    .end local v5    # "childrenCount":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 823
    .end local v1    # "i":I
    :cond_7
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/nativescript/widgets/MeasureHelper;->canFix(Ljava/util/ArrayList;)Z

    move-result v1

    .line 824
    .local v1, "fixColumns":Z
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/nativescript/widgets/MeasureHelper;->canFix(Ljava/util/ArrayList;)Z

    move-result v2

    .line 826
    .local v2, "fixRows":Z
    if-eqz v1, :cond_8

    .line 827
    invoke-direct {p0}, Lorg/nativescript/widgets/MeasureHelper;->fixColumns()V

    .line 830
    :cond_8
    if-eqz v2, :cond_9

    .line 831
    invoke-direct {p0}, Lorg/nativescript/widgets/MeasureHelper;->fixRows()V

    .line 834
    :cond_9
    if-nez v1, :cond_a

    if-nez v2, :cond_a

    .line 837
    invoke-direct {p0}, Lorg/nativescript/widgets/MeasureHelper;->fakeMeasure()V

    .line 839
    invoke-direct {p0}, Lorg/nativescript/widgets/MeasureHelper;->fixColumns()V

    .line 842
    invoke-direct {p0}, Lorg/nativescript/widgets/MeasureHelper;->measureFixedColumnsNoStarRows()V

    .line 844
    invoke-direct {p0}, Lorg/nativescript/widgets/MeasureHelper;->fixRows()V

    goto :goto_6

    .line 845
    :cond_a
    if-eqz v1, :cond_b

    if-nez v2, :cond_b

    .line 847
    invoke-direct {p0}, Lorg/nativescript/widgets/MeasureHelper;->measureFixedColumnsNoStarRows()V

    .line 850
    invoke-direct {p0}, Lorg/nativescript/widgets/MeasureHelper;->fixRows()V

    goto :goto_6

    .line 851
    :cond_b
    if-nez v1, :cond_c

    if-eqz v2, :cond_c

    .line 853
    invoke-direct {p0}, Lorg/nativescript/widgets/MeasureHelper;->measureNoStarColumnsFixedRows()V

    .line 856
    invoke-direct {p0}, Lorg/nativescript/widgets/MeasureHelper;->fixColumns()V

    .line 860
    :cond_c
    :goto_6
    iget-object v3, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 861
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_f

    .line 862
    iget-object v4, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/nativescript/widgets/ItemGroup;

    .line 863
    .local v4, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    const/4 v5, 0x0

    .local v5, "j":I
    iget-object v6, v4, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "childCount":I
    :goto_8
    if-ge v5, v6, :cond_e

    .line 864
    iget-object v7, v4, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/nativescript/widgets/MeasureSpecs;

    .line 865
    .local v7, "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    iget-boolean v8, v7, Lorg/nativescript/widgets/MeasureSpecs;->measured:Z

    if-nez v8, :cond_d

    .line 866
    invoke-direct {p0, v7}, Lorg/nativescript/widgets/MeasureHelper;->measureChildFixedColumnsAndRows(Lorg/nativescript/widgets/MeasureSpecs;)V

    .line 863
    .end local v7    # "measureSpec":Lorg/nativescript/widgets/MeasureSpecs;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 861
    .end local v4    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    .end local v5    # "j":I
    .end local v6    # "childCount":I
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 873
    .end local v3    # "i":I
    :cond_f
    iget-boolean v3, p0, Lorg/nativescript/widgets/MeasureHelper;->stretchedHorizontally:Z

    const/high16 v4, -0x40800000    # -1.0f

    if-nez v3, :cond_10

    iget v3, p0, Lorg/nativescript/widgets/MeasureHelper;->minColumnStarValue:F

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_10

    iget v5, p0, Lorg/nativescript/widgets/MeasureHelper;->maxColumnStarValue:F

    cmpg-float v5, v3, v5

    if-gez v5, :cond_10

    .line 874
    iget-object v5, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lorg/nativescript/widgets/MeasureHelper;->updateStarLength(Ljava/util/ArrayList;F)V

    .line 879
    :cond_10
    iget-boolean v3, p0, Lorg/nativescript/widgets/MeasureHelper;->stretchedVertically:Z

    if-nez v3, :cond_11

    iget v3, p0, Lorg/nativescript/widgets/MeasureHelper;->minRowStarValue:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_11

    iget v4, p0, Lorg/nativescript/widgets/MeasureHelper;->maxRowStarValue:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_11

    .line 880
    iget-object v4, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lorg/nativescript/widgets/MeasureHelper;->updateStarLength(Ljava/util/ArrayList;F)V

    .line 883
    :cond_11
    iget-object v3, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/nativescript/widgets/MeasureHelper;->getMeasureLength(Ljava/util/ArrayList;)I

    move-result v3

    iput v3, p0, Lorg/nativescript/widgets/MeasureHelper;->measuredWidth:I

    .line 884
    iget-object v3, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/nativescript/widgets/MeasureHelper;->getMeasureLength(Ljava/util/ArrayList;)I

    move-result v3

    iput v3, p0, Lorg/nativescript/widgets/MeasureHelper;->measuredHeight:I

    .line 885
    return-void
.end method

.method public setInfinityHeight(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 535
    iput-boolean p1, p0, Lorg/nativescript/widgets/MeasureHelper;->infinityHeight:Z

    .line 537
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 538
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    .line 539
    .local v2, "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v2, p1}, Lorg/nativescript/widgets/ItemGroup;->setIsLengthInfinity(Z)V

    .line 537
    .end local v2    # "rowGroup":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public setInfinityWidth(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 526
    iput-boolean p1, p0, Lorg/nativescript/widgets/MeasureHelper;->infinityWidth:Z

    .line 528
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 529
    iget-object v2, p0, Lorg/nativescript/widgets/MeasureHelper;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/nativescript/widgets/ItemGroup;

    .line 530
    .local v2, "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    invoke-virtual {v2, p1}, Lorg/nativescript/widgets/ItemGroup;->setIsLengthInfinity(Z)V

    .line 528
    .end local v2    # "columnGroup":Lorg/nativescript/widgets/ItemGroup;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method
