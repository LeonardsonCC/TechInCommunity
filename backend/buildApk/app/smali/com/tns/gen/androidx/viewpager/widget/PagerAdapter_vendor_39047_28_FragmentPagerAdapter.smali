.class public Lcom/tns/gen/androidx/viewpager/widget/PagerAdapter_vendor_39047_28_FragmentPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PagerAdapter_vendor_39047_28_FragmentPagerAdapter.java"

# interfaces
.implements Lcom/tns/NativeScriptHashCodeProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 12
    invoke-static {p0}, Lcom/tns/Runtime;->initInstance(Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "param_0"    # Landroid/view/View;
    .param p2, "param_1"    # I
    .param p3, "param_2"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 83
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 84
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "destroyItem"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "param_0"    # Landroid/view/ViewGroup;
    .param p2, "param_1"    # I
    .param p3, "param_2"    # Ljava/lang/Object;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 44
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 45
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "destroyItem"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public equals__super(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 134
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 3
    .param p1, "param_0"    # Landroid/view/View;

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 100
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "finishUpdate"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "param_0"    # Landroid/view/ViewGroup;

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 60
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "finishUpdate"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public getCount()I
    .locals 3

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "getCount"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1, "param_0"    # Ljava/lang/Object;

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 118
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 119
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "getItemPosition"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "param_0"    # I

    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 125
    const-class v1, Ljava/lang/CharSequence;

    .line 126
    const-string v2, "getPageTitle"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 125
    return-object v1
.end method

.method public hashCode__super()I
    .locals 1

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .param p1, "param_0"    # Landroid/view/View;
    .param p2, "param_1"    # I

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 75
    const-class v1, Ljava/lang/Object;

    const-string v2, "instantiateItem"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "param_0"    # Landroid/view/ViewGroup;
    .param p2, "param_1"    # I

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    const-class v1, Ljava/lang/Object;

    const-string v2, "instantiateItem"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "param_0"    # Landroid/view/View;
    .param p2, "param_1"    # Ljava/lang/Object;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 23
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 24
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "isViewFromObject"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "param_0"    # Landroid/os/Parcelable;
    .param p2, "param_1"    # Ljava/lang/ClassLoader;

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 112
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 113
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "restoreState"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 3

    .line 104
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    .local v0, "args":[Ljava/lang/Object;
    const-class v1, Landroid/os/Parcelable;

    .line 106
    const-string v2, "saveState"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 105
    return-object v1
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "param_0"    # Landroid/view/View;
    .param p2, "param_1"    # I
    .param p3, "param_2"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 91
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 92
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 93
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "setPrimaryItem"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "param_0"    # Landroid/view/ViewGroup;
    .param p2, "param_1"    # I
    .param p3, "param_2"    # Ljava/lang/Object;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 54
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "setPrimaryItem"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 3
    .param p1, "param_0"    # Landroid/view/View;

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 67
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "startUpdate"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "param_0"    # Landroid/view/ViewGroup;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 30
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "startUpdate"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method
