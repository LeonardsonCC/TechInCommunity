.class public Lcom/tns/gen/android/webkit/WebViewClient_vendor_41661_28_WebViewClientImpl;
.super Landroid/webkit/WebViewClient;
.source "WebViewClient_vendor_41661_28_WebViewClientImpl.java"

# interfaces
.implements Lcom/tns/NativeScriptHashCodeProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 12
    invoke-static {p0}, Lcom/tns/Runtime;->initInstance(Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public equals__super(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 80
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode__super()I
    .locals 1

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "param_0"    # Landroid/webkit/WebView;
    .param p2, "param_1"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 46
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 47
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onPageFinished"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "param_0"    # Landroid/webkit/WebView;
    .param p2, "param_1"    # Ljava/lang/String;
    .param p3, "param_2"    # Landroid/graphics/Bitmap;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 38
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 39
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 40
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onPageStarted"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "param_0"    # Landroid/webkit/WebView;
    .param p2, "param_1"    # I
    .param p3, "param_2"    # Ljava/lang/String;
    .param p4, "param_3"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 59
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 60
    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 61
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onReceivedError"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .param p1, "param_0"    # Landroid/webkit/WebView;
    .param p2, "param_1"    # Landroid/webkit/WebResourceRequest;
    .param p3, "param_2"    # Landroid/webkit/WebResourceError;

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 70
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 71
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 72
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onReceivedError"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3
    .param p1, "param_0"    # Landroid/webkit/WebView;
    .param p2, "param_1"    # Landroid/webkit/WebResourceRequest;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 29
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 30
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 31
    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 30
    return v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "param_0"    # Landroid/webkit/WebView;
    .param p2, "param_1"    # Ljava/lang/String;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 20
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 21
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 22
    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 21
    return v1
.end method
