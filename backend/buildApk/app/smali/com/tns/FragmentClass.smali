.class public Lcom/tns/FragmentClass;
.super Lorg/nativescript/widgets/FragmentBase;
.source "FragmentClass.java"

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
    invoke-direct {p0}, Lorg/nativescript/widgets/FragmentBase;-><init>()V

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


# virtual methods
.method public equals__super(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 89
    invoke-super {p0, p1}, Lorg/nativescript/widgets/FragmentBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode__super()I
    .locals 1

    .line 85
    invoke-super {p0}, Lorg/nativescript/widgets/FragmentBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "param_0"    # Landroid/os/Bundle;

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 43
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onCreate"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 3
    .param p1, "param_0"    # I
    .param p2, "param_1"    # Z
    .param p3, "param_2"    # I

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 33
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    const-class v1, Landroid/animation/Animator;

    .line 36
    const-string v2, "onCreateAnimator"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 35
    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "param_0"    # Landroid/view/LayoutInflater;
    .param p2, "param_1"    # Landroid/view/ViewGroup;
    .param p3, "param_2"    # Landroid/os/Bundle;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 52
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 53
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 54
    const-class v1, Landroid/view/View;

    .line 55
    const-string v2, "onCreateView"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 54
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onDestroy"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onDestroyView"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3
    .param p1, "param_0"    # Z

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 27
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onHiddenChanged"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onPause"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "param_0"    # Landroid/os/Bundle;

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 61
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onSaveInstanceState"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onStop"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .local v0, "args":[Ljava/lang/Object;
    const-class v1, Ljava/lang/String;

    .line 21
    const-string v2, "toString"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    return-object v1
.end method
