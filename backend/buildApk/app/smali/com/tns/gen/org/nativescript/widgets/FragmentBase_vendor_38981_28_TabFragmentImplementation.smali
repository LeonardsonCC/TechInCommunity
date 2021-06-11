.class public Lcom/tns/gen/org/nativescript/widgets/FragmentBase_vendor_38981_28_TabFragmentImplementation;
.super Lorg/nativescript/widgets/FragmentBase;
.source "FragmentBase_vendor_38981_28_TabFragmentImplementation.java"

# interfaces
.implements Lcom/tns/NativeScriptHashCodeProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/nativescript/widgets/FragmentBase;-><init>()V

    .line 12
    invoke-static {p0}, Lcom/tns/Runtime;->initInstance(Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public equals__super(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 48
    invoke-super {p0, p1}, Lorg/nativescript/widgets/FragmentBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode__super()I
    .locals 1

    .line 44
    invoke-super {p0}, Lorg/nativescript/widgets/FragmentBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
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
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onCreate"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "param_0"    # Landroid/view/LayoutInflater;
    .param p2, "param_1"    # Landroid/view/ViewGroup;
    .param p3, "param_2"    # Landroid/os/Bundle;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 27
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 28
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 29
    const-class v1, Landroid/view/View;

    .line 30
    const-string v2, "onCreateView"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 29
    return-object v1
.end method

.method public onDestroyView()V
    .locals 3

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onDestroyView"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onPause"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method
