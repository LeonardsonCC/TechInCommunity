.class public final Lcom/tns/LogcatLogger;
.super Ljava/lang/Object;
.source "LogcatLogger.java"

# interfaces
.implements Lcom/tns/Logger;


# static fields
.field private static final DEFAULT_LOG_TAG:Ljava/lang/String; = "TNS.Java"


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0, p1}, Lcom/tns/LogcatLogger;->initLogging(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method private initLogging(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-static {p1}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v0

    .line 37
    .local v0, "isDebuggableApp":Z
    if-eqz v0, :cond_0

    .line 38
    const-string v1, "nativescript.verbose.logging"

    invoke-static {v1}, Lcom/tns/Util;->readSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "verboseLoggingProp":Ljava/lang/String;
    invoke-static {v1}, Lcom/tns/Util;->isPositive(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tns/LogcatLogger;->setEnabled(Z)V

    .line 44
    .end local v1    # "verboseLoggingProp":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/tns/LogcatLogger;->enabled:Z

    return v0
.end method

.method public final setEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/tns/LogcatLogger;->enabled:Z

    .line 21
    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 24
    iget-boolean v0, p0, Lcom/tns/LogcatLogger;->enabled:Z

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "TNS.Java"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    return-void
.end method

.method public final write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 30
    iget-boolean v0, p0, Lcom/tns/LogcatLogger;->enabled:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method
