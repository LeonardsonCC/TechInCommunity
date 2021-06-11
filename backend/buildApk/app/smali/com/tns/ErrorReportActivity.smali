.class public Lcom/tns/ErrorReportActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ErrorReportActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 16
    const v0, 0x7f0f0199

    invoke-virtual {p0, v0}, Lcom/tns/ErrorReportActivity;->setTheme(I)V

    .line 18
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/tns/ErrorReportActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 20
    .local v0, "app":Landroid/app/Application;
    new-instance v1, Lcom/tns/LogcatLogger;

    invoke-direct {v1, v0}, Lcom/tns/LogcatLogger;-><init>(Landroid/content/Context;)V

    .line 22
    .local v1, "logger":Lcom/tns/Logger;
    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lcom/tns/RuntimeHelper;->initLiveSync(Lcom/tns/Runtime;Lcom/tns/Logger;Landroid/content/Context;)V

    .line 24
    new-instance v2, Lcom/tns/ErrorReport;

    invoke-direct {v2, p0}, Lcom/tns/ErrorReport;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v2}, Lcom/tns/ErrorReport;->buildUI()V

    .line 25
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 39
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroidx/appcompat/app/AppCompatActivity;

    const-string v2, "onRequestPermissionsResult"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 40
    .local v1, "onRequestPermissionsResultMethod":Ljava/lang/reflect/Method;
    new-instance v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p2, v3, v0

    aput-object p3, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Lcom/tns/ErrorReport;->resetCheckingForPermissions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "onRequestPermissionsResultMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p0}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    :cond_0
    const-string v2, "Couldn\'t resolve permissions"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    invoke-static {}, Lcom/tns/ErrorReport;->resetCheckingForPermissions()V

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserLeaveHint()V

    .line 31
    invoke-static {}, Lcom/tns/ErrorReport;->isCheckingForPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {p0}, Lcom/tns/ErrorReport;->killProcess(Landroid/content/Context;)V

    .line 34
    :cond_0
    return-void
.end method
