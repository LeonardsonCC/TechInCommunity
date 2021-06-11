.class Lorg/nativescript/widgets/ItemGroup;
.super Ljava/lang/Object;
.source "GridLayout.java"


# instance fields
.field children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/nativescript/widgets/MeasureSpecs;",
            ">;"
        }
    .end annotation
.end field

.field public currentMeasureToFixCount:I

.field private infinityLength:Z

.field length:I

.field public measureToFix:I

.field measuredCount:I

.field rowOrColumn:Lorg/nativescript/widgets/ItemSpec;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/ItemSpec;)V
    .locals 2
    .param p1, "spec"    # Lorg/nativescript/widgets/ItemSpec;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/ItemGroup;->length:I

    .line 449
    iput v0, p0, Lorg/nativescript/widgets/ItemGroup;->measuredCount:I

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    .line 453
    iput v0, p0, Lorg/nativescript/widgets/ItemGroup;->measureToFix:I

    .line 454
    iput v0, p0, Lorg/nativescript/widgets/ItemGroup;->currentMeasureToFixCount:I

    .line 455
    iput-boolean v0, p0, Lorg/nativescript/widgets/ItemGroup;->infinityLength:Z

    .line 458
    iput-object p1, p0, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    .line 459
    return-void
.end method


# virtual methods
.method public getAllMeasured()Z
    .locals 2

    .line 472
    iget v0, p0, Lorg/nativescript/widgets/ItemGroup;->measuredCount:I

    iget-object v1, p0, Lorg/nativescript/widgets/ItemGroup;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCanBeFixed()Z
    .locals 2

    .line 476
    iget v0, p0, Lorg/nativescript/widgets/ItemGroup;->currentMeasureToFixCount:I

    iget v1, p0, Lorg/nativescript/widgets/ItemGroup;->measureToFix:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsAbsolute()Z
    .locals 1

    .line 488
    iget-object v0, p0, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v0}, Lorg/nativescript/widgets/ItemSpec;->getIsAbsolute()Z

    move-result v0

    return v0
.end method

.method public getIsAuto()Z
    .locals 1

    .line 480
    iget-object v0, p0, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v0}, Lorg/nativescript/widgets/ItemSpec;->getIsAuto()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v0}, Lorg/nativescript/widgets/ItemSpec;->getIsStar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/nativescript/widgets/ItemGroup;->infinityLength:Z

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

.method public getIsStar()Z
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v0}, Lorg/nativescript/widgets/ItemSpec;->getIsStar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/nativescript/widgets/ItemGroup;->infinityLength:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init()V
    .locals 2

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/ItemGroup;->measuredCount:I

    .line 467
    iput v0, p0, Lorg/nativescript/widgets/ItemGroup;->currentMeasureToFixCount:I

    .line 468
    iget-object v1, p0, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v1}, Lorg/nativescript/widgets/ItemSpec;->getIsAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/nativescript/widgets/ItemGroup;->rowOrColumn:Lorg/nativescript/widgets/ItemSpec;

    invoke-virtual {v0}, Lorg/nativescript/widgets/ItemSpec;->getValue()I

    move-result v0

    :cond_0
    iput v0, p0, Lorg/nativescript/widgets/ItemGroup;->length:I

    .line 469
    return-void
.end method

.method public setIsLengthInfinity(Z)V
    .locals 0
    .param p1, "infinityLength"    # Z

    .line 462
    iput-boolean p1, p0, Lorg/nativescript/widgets/ItemGroup;->infinityLength:Z

    .line 463
    return-void
.end method
