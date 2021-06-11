.class Lcom/telerik/android/common/PropertyManager$PropertyBag;
.super Ljava/lang/Object;
.source "PropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/android/common/PropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertyBag"
.end annotation


# instance fields
.field private propertyBag:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/telerik/android/common/PropertyManager$PropertyBag;->propertyBag:[Ljava/lang/Object;

    .line 17
    sget-object v1, Lcom/telerik/android/common/PropertyManager;->UNSET_VALUE:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 18
    iget-object v0, p0, Lcom/telerik/android/common/PropertyManager$PropertyBag;->propertyBag:[Ljava/lang/Object;

    sget-object v1, Lcom/telerik/android/common/PropertyManager;->UNSET_VALUE:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 19
    iget-object v0, p0, Lcom/telerik/android/common/PropertyManager$PropertyBag;->propertyBag:[Ljava/lang/Object;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 20
    return-void
.end method


# virtual methods
.method public resolveValue()Ljava/lang/Object;
    .locals 5

    .line 23
    iget-object v0, p0, Lcom/telerik/android/common/PropertyManager$PropertyBag;->propertyBag:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 24
    .local v3, "value":Ljava/lang/Object;
    sget-object v4, Lcom/telerik/android/common/PropertyManager;->UNSET_VALUE:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 25
    return-object v3

    .line 23
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This property has no default value assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public setValueForKey(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/telerik/android/common/PropertyManager$PropertyBag;->propertyBag:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 34
    return-void
.end method
