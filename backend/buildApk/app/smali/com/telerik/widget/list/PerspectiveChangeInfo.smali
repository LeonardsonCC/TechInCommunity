.class public Lcom/telerik/widget/list/PerspectiveChangeInfo;
.super Ljava/lang/Object;
.source "PerspectiveChangeInfo.java"


# static fields
.field public static final DEFAULT_ALPHA:F = 1.0f

.field public static final DEFAULT_DURATION:J = 0x12cL

.field public static final DEFAULT_ELEVATION:I = -0x1

.field public static final DEFAULT_TRANSLATION:F = -1.0f


# instance fields
.field private alpha:F

.field private animationDuration:J

.field private elevation:I

.field private owner:Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

.field private translateBottom:F

.field private translateEnd:F

.field private translateStart:F

.field private translateTop:F


# direct methods
.method public constructor <init>(Lcom/telerik/widget/list/DeckOfCardsLayoutManager;)V
    .locals 2
    .param p1, "owner"    # Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->animationDuration:J

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->alpha:F

    .line 21
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->translateStart:F

    .line 22
    iput v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->translateTop:F

    .line 23
    iput v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->translateEnd:F

    .line 24
    iput v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->translateBottom:F

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->elevation:I

    .line 29
    iput-object p1, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->owner:Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    .line 30
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->alpha:F

    return v0
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->animationDuration:J

    return-wide v0
.end method

.method public getElevation()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->elevation:I

    return v0
.end method

.method public getTranslateBottom()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->translateBottom:F

    return v0
.end method

.method public getTranslateEnd()F
    .locals 1

    .line 68
    iget v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->translateEnd:F

    return v0
.end method

.method public getTranslateStart()F
    .locals 1

    .line 50
    iget v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->translateStart:F

    return v0
.end method

.method public getTranslateTop()F
    .locals 1

    .line 59
    iget v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->translateTop:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 45
    iput p1, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->alpha:F

    .line 46
    iget-object v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->owner:Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    invoke-virtual {v0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->requestLayout()V

    .line 47
    return-void
.end method

.method public setAnimationDuration(J)V
    .locals 0
    .param p1, "animationDuration"    # J

    .line 37
    iput-wide p1, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->animationDuration:J

    .line 38
    return-void
.end method

.method public setElevation(I)V
    .locals 1
    .param p1, "elevation"    # I

    .line 90
    iput p1, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->elevation:I

    .line 91
    iget-object v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->owner:Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    invoke-virtual {v0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->requestLayout()V

    .line 92
    return-void
.end method

.method public setTranslateBottom(F)V
    .locals 1
    .param p1, "translateBottom"    # F

    .line 81
    iput p1, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->translateBottom:F

    .line 82
    iget-object v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->owner:Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    invoke-virtual {v0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->calculateFrontViewSize()V

    .line 83
    return-void
.end method

.method public setTranslateEnd(F)V
    .locals 1
    .param p1, "translateEnd"    # F

    .line 72
    iput p1, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->translateEnd:F

    .line 73
    iget-object v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->owner:Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    invoke-virtual {v0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->calculateFrontViewSize()V

    .line 74
    return-void
.end method

.method public setTranslateStart(F)V
    .locals 1
    .param p1, "translateStart"    # F

    .line 54
    iput p1, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->translateStart:F

    .line 55
    iget-object v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->owner:Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    invoke-virtual {v0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->calculateFrontViewSize()V

    .line 56
    return-void
.end method

.method public setTranslateTop(F)V
    .locals 1
    .param p1, "translateTop"    # F

    .line 63
    iput p1, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->translateTop:F

    .line 64
    iget-object v0, p0, Lcom/telerik/widget/list/PerspectiveChangeInfo;->owner:Lcom/telerik/widget/list/DeckOfCardsLayoutManager;

    invoke-virtual {v0}, Lcom/telerik/widget/list/DeckOfCardsLayoutManager;->calculateFrontViewSize()V

    .line 65
    return-void
.end method
