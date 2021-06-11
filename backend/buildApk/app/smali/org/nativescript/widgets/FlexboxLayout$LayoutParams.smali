.class public Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;
.super Lorg/nativescript/widgets/CommonLayoutParams;
.source "FlexboxLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/FlexboxLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final ALIGN_SELF_AUTO:I = -0x1

.field public static final ALIGN_SELF_BASELINE:I = 0x3

.field public static final ALIGN_SELF_CENTER:I = 0x2

.field public static final ALIGN_SELF_FLEX_END:I = 0x1

.field public static final ALIGN_SELF_FLEX_START:I = 0x0

.field public static final ALIGN_SELF_STRETCH:I = 0x4

.field public static final FLEX_BASIS_PERCENT_DEFAULT:F = -1.0f

.field private static final FLEX_GROW_DEFAULT:F = 0.0f

.field private static final FLEX_SHRINK_DEFAULT:F = 1.0f

.field private static final MAX_SIZE:I = 0xffffff

.field private static final ORDER_DEFAULT:I = 0x1


# instance fields
.field public alignSelf:I

.field public flexBasisPercent:F

.field public flexGrow:F

.field public flexShrink:F

.field public maxHeight:I

.field public maxWidth:I

.field public minHeight:I

.field public minWidth:I

.field public order:I

.field public wrapBefore:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2665
    invoke-direct {p0}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>()V

    .line 2592
    const/4 v0, 0x1

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->order:I

    .line 2599
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 2606
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 2618
    const/4 v0, -0x1

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    .line 2630
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 2645
    const v0, 0xffffff

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 2650
    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 2666
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2669
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2592
    const/4 v0, 0x1

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->order:I

    .line 2599
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 2606
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 2618
    const/4 v0, -0x1

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    .line 2630
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 2645
    const v0, 0xffffff

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 2650
    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 2670
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2673
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2592
    const/4 v0, 0x1

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->order:I

    .line 2599
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 2606
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 2618
    const/4 v0, -0x1

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    .line 2630
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 2645
    const v0, 0xffffff

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 2650
    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 2674
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/FrameLayout$LayoutParams;

    .line 2677
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 2592
    const/4 v0, 0x1

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->order:I

    .line 2599
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 2606
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 2618
    const/4 v0, -0x1

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    .line 2630
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 2645
    const v0, 0xffffff

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 2650
    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 2678
    return-void
.end method

.method public constructor <init>(Lorg/nativescript/widgets/CommonLayoutParams;)V
    .locals 1
    .param p1, "source"    # Lorg/nativescript/widgets/CommonLayoutParams;

    .line 2681
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Lorg/nativescript/widgets/CommonLayoutParams;)V

    .line 2592
    const/4 v0, 0x1

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->order:I

    .line 2599
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 2606
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 2618
    const/4 v0, -0x1

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    .line 2630
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 2645
    const v0, 0xffffff

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 2650
    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 2682
    return-void
.end method

.method public constructor <init>(Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;

    .line 2685
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/CommonLayoutParams;-><init>(Lorg/nativescript/widgets/CommonLayoutParams;)V

    .line 2592
    const/4 v0, 0x1

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->order:I

    .line 2599
    const/4 v0, 0x0

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 2606
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 2618
    const/4 v0, -0x1

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    .line 2630
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexBasisPercent:F

    .line 2645
    const v0, 0xffffff

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxWidth:I

    .line 2650
    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->maxHeight:I

    .line 2687
    iget v0, p1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->order:I

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->order:I

    .line 2688
    iget v0, p1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexGrow:F

    .line 2689
    iget v0, p1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->flexShrink:F

    .line 2690
    iget-boolean v0, p1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->wrapBefore:Z

    iput-boolean v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->wrapBefore:Z

    .line 2691
    iget v0, p1, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    iput v0, p0, Lorg/nativescript/widgets/FlexboxLayout$LayoutParams;->alignSelf:I

    .line 2692
    return-void
.end method
