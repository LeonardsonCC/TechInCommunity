.class Lcom/tns/ManualInstrumentation$Mode$LogFrame;
.super Ljava/lang/Object;
.source "ManualInstrumentation.java"

# interfaces
.implements Lcom/tns/ManualInstrumentation$Frame;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/ManualInstrumentation$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogFrame"
.end annotation


# static fields
.field private static frames:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/tns/ManualInstrumentation$Mode$LogFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private name:Ljava/lang/String;

.field private start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->frames:Ljava/util/Stack;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tns/ManualInstrumentation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tns/ManualInstrumentation$1;

    .line 82
    invoke-direct {p0}, Lcom/tns/ManualInstrumentation$Mode$LogFrame;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Stack;
    .locals 1

    .line 82
    sget-object v0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->frames:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tns/ManualInstrumentation$Mode$LogFrame;J)J
    .locals 0
    .param p0, "x0"    # Lcom/tns/ManualInstrumentation$Mode$LogFrame;
    .param p1, "x1"    # J

    .line 82
    iput-wide p1, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->start:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/tns/ManualInstrumentation$Mode$LogFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tns/ManualInstrumentation$Mode$LogFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->name:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 7

    .line 91
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    .local v0, "end":J
    iget-wide v2, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->start:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x10

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 93
    iget-object v2, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->builder:Ljava/lang/StringBuilder;

    const-string v3, "Timeline: Runtime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v2, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->builder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v2, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->builder:Ljava/lang/StringBuilder;

    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v2, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->builder:Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->start:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    iget-object v2, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->builder:Ljava/lang/StringBuilder;

    const-string v3, "ms. - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v2, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    iget-object v2, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->builder:Ljava/lang/StringBuilder;

    const-string v3, "ms.)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, "JS"

    iget-object v3, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->builder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v0    # "end":J
    :cond_0
    sget-object v0, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->frames:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    nop

    .line 106
    return-void

    .line 104
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tns/ManualInstrumentation$Mode$LogFrame;->frames:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    throw v0
.end method
