.class Lcom/tns/ManualInstrumentation$Mode$PendingFrame;
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
    name = "PendingFrame"
.end annotation


# static fields
.field private static pendingFrames:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/tns/ManualInstrumentation$Mode$PendingFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private end:J

.field private name:Ljava/lang/String;

.field private start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->pendingFrames:Ljava/util/Stack;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->name:Ljava/lang/String;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->start:J

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/tns/ManualInstrumentation$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/tns/ManualInstrumentation$1;

    .line 109
    invoke-direct {p0, p1}, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static discardPending()V
    .locals 1

    .line 152
    sget-object v0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->pendingFrames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 153
    return-void
.end method

.method private print()V
    .locals 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Timeline: Runtime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "  ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-wide v1, p0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "ms. - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-wide v1, p0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "ms.)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JS"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public static printPending()V
    .locals 2

    .line 145
    sget-object v0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->pendingFrames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;

    .line 146
    .local v1, "f":Lcom/tns/ManualInstrumentation$Mode$PendingFrame;
    invoke-direct {v1}, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->print()V

    .line 147
    .end local v1    # "f":Lcom/tns/ManualInstrumentation$Mode$PendingFrame;
    goto :goto_0

    .line 148
    :cond_0
    sget-object v0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->pendingFrames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 149
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->end:J

    .line 123
    iget-wide v2, p0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 124
    invoke-static {}, Lcom/tns/ManualInstrumentation;->access$600()Lcom/tns/ManualInstrumentation$Mode;

    move-result-object v0

    sget-object v1, Lcom/tns/ManualInstrumentation$Mode;->Timeline:Lcom/tns/ManualInstrumentation$Mode;

    if-ne v0, v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->print()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lcom/tns/ManualInstrumentation;->access$600()Lcom/tns/ManualInstrumentation$Mode;

    move-result-object v0

    sget-object v1, Lcom/tns/ManualInstrumentation$Mode;->Pending:Lcom/tns/ManualInstrumentation$Mode;

    if-ne v0, v1, :cond_1

    .line 127
    sget-object v0, Lcom/tns/ManualInstrumentation$Mode$PendingFrame;->pendingFrames:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    :goto_0
    return-void
.end method
