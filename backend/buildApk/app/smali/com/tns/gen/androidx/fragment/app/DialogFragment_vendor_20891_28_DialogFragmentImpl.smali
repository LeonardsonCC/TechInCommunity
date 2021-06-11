.class public Lcom/tns/gen/androidx/fragment/app/DialogFragment_vendor_20891_28_DialogFragmentImpl;
.super Landroidx/fragment/app/DialogFragment;
.source "DialogFragment_vendor_20891_28_DialogFragmentImpl.java"

# interfaces
.implements Lcom/tns/NativeScriptHashCodeProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 12
    invoke-static {p0}, Lcom/tns/Runtime;->initInstance(Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public equals__super(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 55
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode__super()I
    .locals 1

    .line 51
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->hashCode()I

    move-result v0

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "param_0"    # Landroid/os/Bundle;

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 18
    const-class v1, Landroid/app/Dialog;

    .line 19
    const-string v2, "onCreateDialog"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    .line 18
    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "param_0"    # Landroid/view/LayoutInflater;
    .param p2, "param_1"    # Landroid/view/ViewGroup;
    .param p3, "param_2"    # Landroid/os/Bundle;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 39
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 40
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 41
    const-class v1, Landroid/view/View;

    .line 42
    const-string v2, "onCreateView"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 41
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onDestroy"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "param_0"    # Landroid/content/DialogInterface;

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 25
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onDismiss"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onStart"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method
