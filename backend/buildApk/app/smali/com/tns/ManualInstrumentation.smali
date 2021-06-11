.class public Lcom/tns/ManualInstrumentation;
.super Ljava/lang/Object;
.source "ManualInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/ManualInstrumentation$Mode;,
        Lcom/tns/ManualInstrumentation$Frame;
    }
.end annotation


# static fields
.field private static mode:Lcom/tns/ManualInstrumentation$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-object v0, Lcom/tns/ManualInstrumentation$Mode;->Pending:Lcom/tns/ManualInstrumentation$Mode;

    sput-object v0, Lcom/tns/ManualInstrumentation;->mode:Lcom/tns/ManualInstrumentation$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600()Lcom/tns/ManualInstrumentation$Mode;
    .locals 1

    .line 10
    sget-object v0, Lcom/tns/ManualInstrumentation;->mode:Lcom/tns/ManualInstrumentation$Mode;

    return-object v0
.end method

.method public static setMode(Lcom/tns/ManualInstrumentation$Mode;)V
    .locals 2
    .param p0, "mode"    # Lcom/tns/ManualInstrumentation$Mode;

    .line 25
    sget-object v0, Lcom/tns/ManualInstrumentation;->mode:Lcom/tns/ManualInstrumentation$Mode;

    sget-object v1, Lcom/tns/ManualInstrumentation$Mode;->Pending:Lcom/tns/ManualInstrumentation$Mode;

    if-ne v0, v1, :cond_2

    .line 26
    sget-object v0, Lcom/tns/ManualInstrumentation$1;->$SwitchMap$com$tns$ManualInstrumentation$Mode:[I

    invoke-virtual {p0}, Lcom/tns/ManualInstrumentation$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->discardPending()V

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {}, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->printPending()V

    .line 35
    :cond_2
    :goto_0
    sput-object p0, Lcom/tns/ManualInstrumentation;->mode:Lcom/tns/ManualInstrumentation$Mode;

    .line 36
    return-void
.end method

.method public static setMode(Ljava/lang/String;)V
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7bc72bbf

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "timeline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 19
    sget-object v0, Lcom/tns/ManualInstrumentation$Mode;->Disabled:Lcom/tns/ManualInstrumentation$Mode;

    invoke-static {v0}, Lcom/tns/ManualInstrumentation;->setMode(Lcom/tns/ManualInstrumentation$Mode;)V

    goto :goto_2

    .line 16
    :cond_2
    sget-object v0, Lcom/tns/ManualInstrumentation$Mode;->Timeline:Lcom/tns/ManualInstrumentation$Mode;

    invoke-static {v0}, Lcom/tns/ManualInstrumentation;->setMode(Lcom/tns/ManualInstrumentation$Mode;)V

    .line 17
    nop

    .line 21
    :goto_2
    invoke-static {p0}, Lcom/tns/Runtime;->SetManualInstrumentationMode(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/tns/ManualInstrumentation;->mode:Lcom/tns/ManualInstrumentation$Mode;

    invoke-virtual {v0, p0}, Lcom/tns/ManualInstrumentation$Mode;->start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;

    move-result-object v0

    return-object v0
.end method
