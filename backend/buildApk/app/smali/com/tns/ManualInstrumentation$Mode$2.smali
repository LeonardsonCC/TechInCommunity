.class final enum Lcom/tns/ManualInstrumentation$Mode$2;
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

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tns/ManualInstrumentation$Mode;-><init>(Ljava/lang/String;ILcom/tns/ManualInstrumentation$1;)V

    return-void
.end method


# virtual methods
.method protected start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/tns/ManualInstrumentation$Mode$DisabledFrame;->instance:Lcom/tns/ManualInstrumentation$Mode$DisabledFrame;

    return-object v0
.end method
