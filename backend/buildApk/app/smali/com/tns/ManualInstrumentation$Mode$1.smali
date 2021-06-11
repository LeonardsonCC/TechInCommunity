.class final enum Lcom/tns/ManualInstrumentation$Mode$1;
.super Lcom/tns/ManualInstrumentation$Mode;
.source "ManualInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/ManualInstrumentation$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tns/ManualInstrumentation$Mode;-><init>(Ljava/lang/String;ILcom/tns/ManualInstrumentation$1;)V

    return-void
.end method


# virtual methods
.method protected start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;-><init>(Ljava/lang/String;Lcom/tns/ManualInstrumentation$1;)V

    return-object v0
.end method
