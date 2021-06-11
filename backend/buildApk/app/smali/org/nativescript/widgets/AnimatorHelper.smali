.class Lorg/nativescript/widgets/AnimatorHelper;
.super Ljava/lang/Object;
.source "AnimatorHelper.java"


# static fields
.field static final exitFakeResourceId:I = -0x14

.field static final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lorg/nativescript/widgets/AnimatorHelper;->version:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createDummyAnimator(J)Landroid/animation/Animator;
    .locals 5
    .param p0, "duration"    # J

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 13
    .local v0, "alphaValues":[F
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 14
    const/4 v2, 0x1

    aput v1, v0, v2

    .line 16
    const/4 v1, 0x0

    const-string v2, "alpha"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 17
    .local v1, "animator":Landroid/animation/Animator;
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_0

    .line 18
    invoke-virtual {v1, p0, p1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 21
    :cond_0
    return-object v1
.end method

.method static getAnimatorSetTotalDuration(Landroid/animation/AnimatorSet;)J
    .locals 6
    .param p0, "animatorSet"    # Landroid/animation/AnimatorSet;

    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .local v0, "totalDuration":J
    sget v2, Lorg/nativescript/widgets/AnimatorHelper;->version:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 55
    .local v3, "animator":Landroid/animation/Animator;
    invoke-static {v3}, Lorg/nativescript/widgets/AnimatorHelper;->getTotalDuration(Landroid/animation/Animator;)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 56
    .end local v3    # "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    return-wide v0
.end method

.method static getAnimatorTotalDuration(Landroid/animation/Animator;)J
    .locals 5
    .param p0, "animator"    # Landroid/animation/Animator;

    .line 34
    sget v0, Lorg/nativescript/widgets/AnimatorHelper;->version:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v0

    .local v0, "totalDuration":J
    goto :goto_0

    .line 37
    .end local v0    # "totalDuration":J
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    .line 38
    .local v0, "duration":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 39
    const-wide/16 v2, -0x1

    move-wide v0, v2

    .local v2, "totalDuration":J
    goto :goto_0

    .line 41
    .end local v2    # "totalDuration":J
    :cond_1
    invoke-virtual {p0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    move-wide v0, v2

    .line 45
    .local v0, "totalDuration":J
    :goto_0
    return-wide v0
.end method

.method static getTotalDuration(Landroid/animation/Animator;)J
    .locals 2
    .param p0, "animator"    # Landroid/animation/Animator;

    .line 25
    instance-of v0, p0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 26
    move-object v0, p0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lorg/nativescript/widgets/AnimatorHelper;->getAnimatorSetTotalDuration(Landroid/animation/AnimatorSet;)J

    move-result-wide v0

    return-wide v0

    .line 28
    :cond_0
    invoke-static {p0}, Lorg/nativescript/widgets/AnimatorHelper;->getAnimatorTotalDuration(Landroid/animation/Animator;)J

    move-result-wide v0

    return-wide v0
.end method
