.class public Lcom/tns/NativeScriptApplication;
.super Landroid/app/Application;
.source "NativeScriptApplication.java"


# static fields
.field private static thiz:Lcom/tns/NativeScriptApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 12
    sput-object p0, Lcom/tns/NativeScriptApplication;->thiz:Lcom/tns/NativeScriptApplication;

    .line 13
    return-void
.end method

.method public static getInstance()Landroid/app/Application;
    .locals 1

    .line 37
    sget-object v0, Lcom/tns/NativeScriptApplication;->thiz:Lcom/tns/NativeScriptApplication;

    return-object v0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .line 29
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 32
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 34
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 16
    const-string v0, "NativeScriptApplication.onCreate"

    invoke-static {v0}, Lcom/tns/ManualInstrumentation;->start(Ljava/lang/String;)Lcom/tns/ManualInstrumentation$Frame;

    move-result-object v0

    .line 18
    .local v0, "frame":Lcom/tns/ManualInstrumentation$Frame;
    :try_start_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    invoke-static {p0}, Lcom/tns/RuntimeHelper;->initRuntime(Landroid/content/Context;)Lcom/tns/Runtime;

    move-result-object v1

    .line 20
    .local v1, "runtime":Lcom/tns/Runtime;
    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v1}, Lcom/tns/Runtime;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .end local v1    # "runtime":Lcom/tns/Runtime;
    :cond_0
    invoke-interface {v0}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 25
    nop

    .line 26
    return-void

    .line 24
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/tns/ManualInstrumentation$Frame;->close()V

    .line 25
    throw v1
.end method
