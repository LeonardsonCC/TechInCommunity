.class final enum Lcom/tns/ManualInstrumentation$Mode$3;
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

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tns/ManualInstrumentation$Mode;-><init>(Ljava/lang/String;ILcom/tns/ManualInstrumentation$1;)V

    return-void
.end method


# virtual methods
.method protected start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->access$200()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tns/ManualInstrumentation$Mode$LogFrame;-><init>(Lcom/tns/ManualInstrumentation$1;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->access$200()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;

    .line 69
    .local v0, "frame":Lcom/tns/ManualInstrumentation$Mode$LogFrame;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->access$402(Lcom/tns/ManualInstrumentation$Mode$LogFrame;J)J

    .line 70
    invoke-static {v0, p1}, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->access$502(Lcom/tns/ManualInstrumentation$Mode$LogFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    return-object v0
.end method
