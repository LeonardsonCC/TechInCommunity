.class public Lorg/nativescript/widgets/FlexLine;
.super Ljava/lang/Object;
.source "FlexLine.java"


# instance fields
.field mBottom:I

.field mCrossSize:I

.field mDividerLengthInMainSize:I

.field mIndicesAlignSelfStretch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mItemCount:I

.field mLeft:I

.field mMainSize:I

.field mMaxBaseline:I

.field mRight:I

.field mTop:I

.field mTotalFlexGrow:F

.field mTotalFlexShrink:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const v0, 0x7fffffff

    iput v0, p0, Lorg/nativescript/widgets/FlexLine;->mLeft:I

    .line 36
    iput v0, p0, Lorg/nativescript/widgets/FlexLine;->mTop:I

    .line 39
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/nativescript/widgets/FlexLine;->mRight:I

    .line 42
    iput v0, p0, Lorg/nativescript/widgets/FlexLine;->mBottom:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/nativescript/widgets/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/nativescript/widgets/FlexLine;->mBottom:I

    return v0
.end method

.method public getCrossSize()I
    .locals 1

    .line 126
    iget v0, p0, Lorg/nativescript/widgets/FlexLine;->mCrossSize:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/nativescript/widgets/FlexLine;->mItemCount:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/nativescript/widgets/FlexLine;->mLeft:I

    return v0
.end method

.method public getMainSize()I
    .locals 1

    .line 119
    iget v0, p0, Lorg/nativescript/widgets/FlexLine;->mMainSize:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/nativescript/widgets/FlexLine;->mRight:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/nativescript/widgets/FlexLine;->mTop:I

    return v0
.end method

.method public getTotalFlexGrow()F
    .locals 1

    .line 140
    iget v0, p0, Lorg/nativescript/widgets/FlexLine;->mTotalFlexGrow:F

    return v0
.end method

.method public getTotalFlexShrink()F
    .locals 1

    .line 147
    iget v0, p0, Lorg/nativescript/widgets/FlexLine;->mTotalFlexShrink:F

    return v0
.end method
