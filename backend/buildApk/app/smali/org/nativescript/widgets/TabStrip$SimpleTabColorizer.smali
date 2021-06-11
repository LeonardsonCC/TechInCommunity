.class Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;
.super Ljava/lang/Object;
.source "TabStrip.java"

# interfaces
.implements Lorg/nativescript/widgets/TabLayout$TabColorizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/TabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTabColorizer"
.end annotation


# instance fields
.field private mIndicatorColors:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/TabStrip$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/TabStrip$1;

    .line 252
    invoke-direct {p0}, Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndicatorColor(I)I
    .locals 2
    .param p1, "position"    # I

    .line 257
    iget-object v0, p0, Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    array-length v1, v0

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method varargs setIndicatorColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .line 261
    iput-object p1, p0, Lorg/nativescript/widgets/TabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    .line 262
    return-void
.end method
