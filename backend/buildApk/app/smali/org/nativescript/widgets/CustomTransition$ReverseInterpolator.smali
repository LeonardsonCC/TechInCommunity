.class Lorg/nativescript/widgets/CustomTransition$ReverseInterpolator;
.super Ljava/lang/Object;
.source "CustomTransition.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/CustomTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReverseInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/CustomTransition;


# direct methods
.method private constructor <init>(Lorg/nativescript/widgets/CustomTransition;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/nativescript/widgets/CustomTransition$ReverseInterpolator;->this$0:Lorg/nativescript/widgets/CustomTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/CustomTransition;Lorg/nativescript/widgets/CustomTransition$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/CustomTransition;
    .param p2, "x1"    # Lorg/nativescript/widgets/CustomTransition$1;

    .line 81
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/CustomTransition$ReverseInterpolator;-><init>(Lorg/nativescript/widgets/CustomTransition;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "paramFloat"    # F

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method
