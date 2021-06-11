.class Lcom/telerik/android/common/PropertyManager$PropertyMetadata;
.super Ljava/lang/Object;
.source "PropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/android/common/PropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertyMetadata"
.end annotation


# instance fields
.field private changedListener:Lcom/telerik/android/common/DependencyPropertyChangedListener;

.field private defaultValue:Ljava/lang/Object;

.field public propertyBags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/telerik/android/common/PropertyManager$PropertyBag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/telerik/android/common/DependencyPropertyChangedListener;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "listener"    # Lcom/telerik/android/common/DependencyPropertyChangedListener;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->propertyBags:Ljava/util/HashMap;

    .line 43
    sget-object v0, Lcom/telerik/android/common/PropertyManager;->UNSET_VALUE:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 47
    iput-object p1, p0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->defaultValue:Ljava/lang/Object;

    .line 48
    iput-object p2, p0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->changedListener:Lcom/telerik/android/common/DependencyPropertyChangedListener;

    .line 49
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default value cannot be null or UNSET_VALUE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/telerik/android/common/PropertyManager$PropertyMetadata;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/telerik/android/common/PropertyManager$PropertyMetadata;

    .line 37
    iget-object v0, p0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public defaultValue()Ljava/lang/Object;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getListener()Lcom/telerik/android/common/DependencyPropertyChangedListener;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/telerik/android/common/PropertyManager$PropertyMetadata;->changedListener:Lcom/telerik/android/common/DependencyPropertyChangedListener;

    return-object v0
.end method
