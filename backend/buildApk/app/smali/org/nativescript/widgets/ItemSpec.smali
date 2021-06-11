.class public Lorg/nativescript/widgets/ItemSpec;
.super Ljava/lang/Object;
.source "ItemSpec.java"


# instance fields
.field _actualLength:I

.field private _unitType:Lorg/nativescript/widgets/GridUnitType;

.field private _value:I

.field owner:Lorg/nativescript/widgets/GridLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    sget-object v0, Lorg/nativescript/widgets/GridUnitType;->star:Lorg/nativescript/widgets/GridUnitType;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/nativescript/widgets/ItemSpec;-><init>(ILorg/nativescript/widgets/GridUnitType;)V

    .line 17
    return-void
.end method

.method public constructor <init>(ILorg/nativescript/widgets/GridUnitType;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "unitType"    # Lorg/nativescript/widgets/GridUnitType;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/ItemSpec;->_actualLength:I

    .line 20
    iput p1, p0, Lorg/nativescript/widgets/ItemSpec;->_value:I

    .line 21
    iput-object p2, p0, Lorg/nativescript/widgets/ItemSpec;->_unitType:Lorg/nativescript/widgets/GridUnitType;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 29
    instance-of v0, p1, Lorg/nativescript/widgets/ItemSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 30
    return v1

    .line 33
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/nativescript/widgets/ItemSpec;

    .line 34
    .local v0, "other":Lorg/nativescript/widgets/ItemSpec;
    iget-object v2, p0, Lorg/nativescript/widgets/ItemSpec;->_unitType:Lorg/nativescript/widgets/GridUnitType;

    iget-object v3, v0, Lorg/nativescript/widgets/ItemSpec;->_unitType:Lorg/nativescript/widgets/GridUnitType;

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/nativescript/widgets/ItemSpec;->_value:I

    iget v3, v0, Lorg/nativescript/widgets/ItemSpec;->_value:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/nativescript/widgets/ItemSpec;->owner:Lorg/nativescript/widgets/GridLayout;

    iget-object v3, v0, Lorg/nativescript/widgets/ItemSpec;->owner:Lorg/nativescript/widgets/GridLayout;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getActualLength()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/nativescript/widgets/ItemSpec;->_actualLength:I

    return v0
.end method

.method public getGridUnitType()Lorg/nativescript/widgets/GridUnitType;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/nativescript/widgets/ItemSpec;->_unitType:Lorg/nativescript/widgets/GridUnitType;

    return-object v0
.end method

.method public getIsAbsolute()Z
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/nativescript/widgets/ItemSpec;->_unitType:Lorg/nativescript/widgets/GridUnitType;

    sget-object v1, Lorg/nativescript/widgets/GridUnitType;->pixel:Lorg/nativescript/widgets/GridUnitType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsAuto()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/nativescript/widgets/ItemSpec;->_unitType:Lorg/nativescript/widgets/GridUnitType;

    sget-object v1, Lorg/nativescript/widgets/GridUnitType;->auto:Lorg/nativescript/widgets/GridUnitType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsStar()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/nativescript/widgets/ItemSpec;->_unitType:Lorg/nativescript/widgets/GridUnitType;

    sget-object v1, Lorg/nativescript/widgets/GridUnitType;->star:Lorg/nativescript/widgets/GridUnitType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getValue()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/nativescript/widgets/ItemSpec;->_value:I

    return v0
.end method
