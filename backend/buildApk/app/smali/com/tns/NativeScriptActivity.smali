.class public Lcom/tns/NativeScriptActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NativeScriptActivity.java"

# interfaces
.implements Lcom/tns/NativeScriptHashCodeProvider;


# annotations
.annotation runtime Lcom/tns/JavaScriptImplementation;
    javaScriptFile = "./vendor.js"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 13
    invoke-static {p0}, Lcom/tns/Runtime;->initInstance(Ljava/lang/Object;)V

    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "init"

    const/4 v3, 0x1

    invoke-static {p0, v2, v1, v3, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "param_0"    # I

    .line 19
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    .line 20
    invoke-static {p0}, Lcom/tns/Runtime;->initInstance(Ljava/lang/Object;)V

    .line 21
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 22
    .local v1, "args":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 23
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v3, "init"

    invoke-static {p0, v3, v2, v0, v1}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public equals__super(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 104
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode__super()I
    .locals 1

    .line 100
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "param_0"    # I
    .param p2, "param_1"    # I
    .param p3, "param_2"    # Landroid/content/Intent;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 62
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 63
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onActivityResult"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onBackPressed"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "param_0"    # Landroid/os/Bundle;

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 29
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onCreate"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "param_0"    # Landroid/os/Bundle;
    .param p2, "param_1"    # Landroid/os/PersistableBundle;

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 88
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 89
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onCreate"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onDestroy"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "param_0"    # Landroid/content/Intent;

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 69
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onNewIntent"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onPostResume"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "param_0"    # I
    .param p2, "param_1"    # [Ljava/lang/String;
    .param p3, "param_2"    # [I

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 74
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 75
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 76
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 77
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onRequestPermissionsResult"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "param_0"    # Landroid/os/Bundle;

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 55
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onSaveInstanceState"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "param_0"    # Landroid/os/Bundle;
    .param p2, "param_1"    # Landroid/os/PersistableBundle;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 95
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 96
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onSaveInstanceState"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onStart"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onStop"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method
