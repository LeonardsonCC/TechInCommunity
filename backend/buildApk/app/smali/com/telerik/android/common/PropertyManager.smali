.class public abstract Lcom/telerik/android/common/PropertyManager;
.super Ljava/lang/Object;
.source "PropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/android/common/PropertyManager$PropertyMetadata;,
        Lcom/telerik/android/common/PropertyManager$PropertyBag;
    }
.end annotation


# static fields
.field protected static final DEFAULT_VALUE:I = 0x2

.field protected static final LOCAL_VALUE:I = 0x0

.field protected static final PALETTE_VALUE:I = 0x1

.field protected static final UNSET_VALUE:Ljava/lang/Object;

.field private static final propertiesMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/telerik/android/common/PropertyManager$PropertyMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static propertyKeyCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/telerik/android/common/PropertyManager;->UNSET_VALUE:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/telerik/android/common/PropertyManager;->propertyKeyCounter:I

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/telerik/android/common/PropertyManager;->propertiesMetadata:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static registerProperty(Ljava/lang/Object;Lcom/telerik/android/common/DependencyPropertyChangedListener;)I
    .locals 3
    .param p0, "defaultValue"    # Ljava/lang/Object;
    .param p1, "changeListener"    # Lcom/telerik/android/common/DependencyPropertyChangedListener;

    .line 63
    sget-object v0, Lcom/telerik/android/common/PropertyManager;->propertiesMetadata:Ljava/util/HashMap;

    sget v1, Lcom/telerik/android/common/PropertyManager;->propertyKeyCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;

    invoke-direct {v2, p0, p1}, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;-><init>(Ljava/lang/Object;Lcom/telerik/android/common/DependencyPropertyChangedListener;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget v0, Lcom/telerik/android/common/PropertyManager;->propertyKeyCounter:I

    .line 66
    .local v0, "result":I
    sget v1, Lcom/telerik/android/common/PropertyManager;->propertyKeyCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/telerik/android/common/PropertyManager;->propertyKeyCounter:I

    .line 67
    return v0
.end method


# virtual methods
.method public getValue(I)Ljava/lang/Object;
    .locals 3
    .param p1, "propertyKey"    # I

    .line 94
    sget-object v0, Lcom/telerik/android/common/PropertyManager;->propertiesMetadata:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;

    .line 95
    .local v0, "metadata":Lcom/telerik/android/common/PropertyManager$PropertyMetadata;
    iget-object v1, v0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->propertyBags:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, v0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->propertyBags:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/common/PropertyManager$PropertyBag;

    .line 98
    .local v1, "bag":Lcom/telerik/android/common/PropertyManager$PropertyBag;
    invoke-virtual {v1}, Lcom/telerik/android/common/PropertyManager$PropertyBag;->resolveValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 101
    .end local v1    # "bag":Lcom/telerik/android/common/PropertyManager$PropertyBag;
    :cond_0
    sget-object v1, Lcom/telerik/android/common/PropertyManager;->propertiesMetadata:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;

    invoke-virtual {v1}, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->defaultValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public resetPropertyValue(I)V
    .locals 2
    .param p1, "propertyKey"    # I

    .line 105
    sget-object v0, Lcom/telerik/android/common/PropertyManager;->UNSET_VALUE:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/telerik/android/common/PropertyManager;->setValue(IILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method public setValue(IILjava/lang/Object;)V
    .locals 4
    .param p1, "propertyKey"    # I
    .param p2, "valueTypeKey"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/telerik/android/common/PropertyManager;->propertiesMetadata:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;

    .line 78
    .local v0, "metadata":Lcom/telerik/android/common/PropertyManager$PropertyMetadata;
    iget-object v1, v0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->propertyBags:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, v0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->propertyBags:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/android/common/PropertyManager$PropertyBag;

    .local v1, "bag":Lcom/telerik/android/common/PropertyManager$PropertyBag;
    goto :goto_0

    .line 82
    .end local v1    # "bag":Lcom/telerik/android/common/PropertyManager$PropertyBag;
    :cond_0
    new-instance v1, Lcom/telerik/android/common/PropertyManager$PropertyBag;

    invoke-static {v0}, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->access$000(Lcom/telerik/android/common/PropertyManager$PropertyMetadata;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/telerik/android/common/PropertyManager$PropertyBag;-><init>(Ljava/lang/Object;)V

    .line 83
    .restart local v1    # "bag":Lcom/telerik/android/common/PropertyManager$PropertyBag;
    iget-object v2, v0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->propertyBags:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :goto_0
    invoke-virtual {v1, p2, p3}, Lcom/telerik/android/common/PropertyManager$PropertyBag;->setValueForKey(ILjava/lang/Object;)V

    .line 88
    invoke-virtual {v0}, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->getListener()Lcom/telerik/android/common/DependencyPropertyChangedListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v0}, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->getListener()Lcom/telerik/android/common/DependencyPropertyChangedListener;

    move-result-object v2

    invoke-interface {v2, p0, p2, p3}, Lcom/telerik/android/common/DependencyPropertyChangedListener;->onPropertyChanged(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 91
    :cond_1
    return-void
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 1
    .param p1, "propertyKey"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/telerik/android/common/PropertyManager;->setValue(IILjava/lang/Object;)V

    .line 72
    return-void
.end method
