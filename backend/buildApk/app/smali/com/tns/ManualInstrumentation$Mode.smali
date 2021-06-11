.class public abstract enum Lcom/tns/ManualInstrumentation$Mode;
.super Ljava/lang/Enum;
.source "ManualInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/ManualInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/ManualInstrumentation$Mode$PendingFrame;,
        Lcom/tns/ManualInstrumentation$Mode$LogFrame;,
        Lcom/tns/ManualInstrumentation$Mode$DisabledFrame;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tns/ManualInstrumentation$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tns/ManualInstrumentation$Mode;

.field public static final enum Disabled:Lcom/tns/ManualInstrumentation$Mode;

.field public static final enum Pending:Lcom/tns/ManualInstrumentation$Mode;

.field public static final enum Timeline:Lcom/tns/ManualInstrumentation$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lcom/tns/ManualInstrumentation$Mode$1;

    const/4 v1, 0x0

    const-string v2, "Pending"

    invoke-direct {v0, v2, v1}, Lcom/tns/ManualInstrumentation$Mode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tns/ManualInstrumentation$Mode;->Pending:Lcom/tns/ManualInstrumentation$Mode;

    .line 58
    new-instance v0, Lcom/tns/ManualInstrumentation$Mode$2;

    const/4 v2, 0x1

    const-string v3, "Disabled"

    invoke-direct {v0, v3, v2}, Lcom/tns/ManualInstrumentation$Mode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tns/ManualInstrumentation$Mode;->Disabled:Lcom/tns/ManualInstrumentation$Mode;

    .line 66
    new-instance v0, Lcom/tns/ManualInstrumentation$Mode$3;

    const/4 v3, 0x2

    const-string v4, "Timeline"

    invoke-direct {v0, v4, v3}, Lcom/tns/ManualInstrumentation$Mode$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tns/ManualInstrumentation$Mode;->Timeline:Lcom/tns/ManualInstrumentation$Mode;

    .line 46
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/tns/ManualInstrumentation$Mode;

    sget-object v5, Lcom/tns/ManualInstrumentation$Mode;->Pending:Lcom/tns/ManualInstrumentation$Mode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/tns/ManualInstrumentation$Mode;->Disabled:Lcom/tns/ManualInstrumentation$Mode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/tns/ManualInstrumentation$Mode;->$VALUES:[Lcom/tns/ManualInstrumentation$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tns/ManualInstrumentation$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/tns/ManualInstrumentation$1;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/tns/ManualInstrumentation$Mode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lcom/tns/ManualInstrumentation$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tns/ManualInstrumentation$Mode;

    return-object v0
.end method

.method public static values()[Lcom/tns/ManualInstrumentation$Mode;
    .locals 1

    .line 46
    sget-object v0, Lcom/tns/ManualInstrumentation$Mode;->$VALUES:[Lcom/tns/ManualInstrumentation$Mode;

    invoke-virtual {v0}, [Lcom/tns/ManualInstrumentation$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tns/ManualInstrumentation$Mode;

    return-object v0
.end method


# virtual methods
.method protected abstract start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;
.end method
