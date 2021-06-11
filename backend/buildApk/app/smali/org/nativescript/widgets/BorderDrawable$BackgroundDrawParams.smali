.class Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;
.super Ljava/lang/Object;
.source "BorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/BorderDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundDrawParams"
.end annotation


# instance fields
.field private posX:F

.field private posY:F

.field private repeatX:Z

.field private repeatY:Z

.field private sizeX:F

.field private sizeY:F

.field final synthetic this$0:Lorg/nativescript/widgets/BorderDrawable;


# direct methods
.method private constructor <init>(Lorg/nativescript/widgets/BorderDrawable;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->this$0:Lorg/nativescript/widgets/BorderDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->repeatX:Z

    .line 845
    iput-boolean p1, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->repeatY:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/nativescript/widgets/BorderDrawable;Lorg/nativescript/widgets/BorderDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/nativescript/widgets/BorderDrawable;
    .param p2, "x1"    # Lorg/nativescript/widgets/BorderDrawable$1;

    .line 843
    invoke-direct {p0, p1}, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;-><init>(Lorg/nativescript/widgets/BorderDrawable;)V

    return-void
.end method

.method static synthetic access$000(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;

    .line 843
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->sizeX:F

    return v0
.end method

.method static synthetic access$002(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;
    .param p1, "x1"    # F

    .line 843
    iput p1, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->sizeX:F

    return p1
.end method

.method static synthetic access$100(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;

    .line 843
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->sizeY:F

    return v0
.end method

.method static synthetic access$102(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;
    .param p1, "x1"    # F

    .line 843
    iput p1, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->sizeY:F

    return p1
.end method

.method static synthetic access$200(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;

    .line 843
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->posX:F

    return v0
.end method

.method static synthetic access$202(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;
    .param p1, "x1"    # F

    .line 843
    iput p1, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->posX:F

    return p1
.end method

.method static synthetic access$300(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)F
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;

    .line 843
    iget v0, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->posY:F

    return v0
.end method

.method static synthetic access$302(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;F)F
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;
    .param p1, "x1"    # F

    .line 843
    iput p1, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->posY:F

    return p1
.end method

.method static synthetic access$400(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)Z
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;

    .line 843
    iget-boolean v0, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->repeatX:Z

    return v0
.end method

.method static synthetic access$402(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;
    .param p1, "x1"    # Z

    .line 843
    iput-boolean p1, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->repeatX:Z

    return p1
.end method

.method static synthetic access$500(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;)Z
    .locals 1
    .param p0, "x0"    # Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;

    .line 843
    iget-boolean v0, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->repeatY:Z

    return v0
.end method

.method static synthetic access$502(Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;
    .param p1, "x1"    # Z

    .line 843
    iput-boolean p1, p0, Lorg/nativescript/widgets/BorderDrawable$BackgroundDrawParams;->repeatY:Z

    return p1
.end method
