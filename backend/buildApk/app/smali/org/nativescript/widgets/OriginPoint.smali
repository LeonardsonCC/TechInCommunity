.class public Lorg/nativescript/widgets/OriginPoint;
.super Ljava/lang/Object;
.source "OriginPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nativescript/widgets/OriginPoint$PivotSetter;
    }
.end annotation


# static fields
.field private static layoutListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lorg/nativescript/widgets/OriginPoint$PivotSetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSetter(Landroid/view/View;)Lorg/nativescript/widgets/OriginPoint$PivotSetter;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, "setter":Lorg/nativescript/widgets/OriginPoint$PivotSetter;
    sget-object v1, Lorg/nativescript/widgets/OriginPoint;->layoutListeners:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lorg/nativescript/widgets/OriginPoint;->layoutListeners:Ljava/util/WeakHashMap;

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/nativescript/widgets/OriginPoint$PivotSetter;

    .line 32
    :goto_0
    if-nez v0, :cond_1

    .line 33
    new-instance v1, Lorg/nativescript/widgets/OriginPoint$PivotSetter;

    invoke-direct {v1}, Lorg/nativescript/widgets/OriginPoint$PivotSetter;-><init>()V

    move-object v0, v1

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 35
    sget-object v1, Lorg/nativescript/widgets/OriginPoint;->layoutListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_1
    return-object v0
.end method

.method public static setX(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # F

    .line 16
    invoke-static {p0}, Lorg/nativescript/widgets/OriginPoint;->getSetter(Landroid/view/View;)Lorg/nativescript/widgets/OriginPoint$PivotSetter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/nativescript/widgets/OriginPoint$PivotSetter;->setOriginX(Landroid/view/View;F)V

    .line 17
    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "y"    # F

    .line 20
    invoke-static {p0}, Lorg/nativescript/widgets/OriginPoint;->getSetter(Landroid/view/View;)Lorg/nativescript/widgets/OriginPoint$PivotSetter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/nativescript/widgets/OriginPoint$PivotSetter;->setOriginY(Landroid/view/View;F)V

    .line 21
    return-void
.end method
