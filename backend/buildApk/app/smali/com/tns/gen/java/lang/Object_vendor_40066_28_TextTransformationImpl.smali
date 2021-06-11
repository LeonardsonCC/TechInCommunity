.class public Lcom/tns/gen/java/lang/Object_vendor_40066_28_TextTransformationImpl;
.super Ljava/lang/Object;
.source "Object_vendor_40066_28_TextTransformationImpl.java"

# interfaces
.implements Lcom/tns/NativeScriptHashCodeProvider;
.implements Landroid/text/method/TransformationMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p0}, Lcom/tns/Runtime;->initInstance(Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public equals__super(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 44
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "param_0"    # Ljava/lang/CharSequence;
    .param p2, "param_1"    # Landroid/view/View;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 19
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 20
    const-class v1, Ljava/lang/CharSequence;

    .line 21
    const-string v2, "getTransformation"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 20
    return-object v1
.end method

.method public hashCode__super()I
    .locals 1

    .line 40
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "param_0"    # Landroid/view/View;
    .param p2, "param_1"    # Ljava/lang/CharSequence;
    .param p3, "param_2"    # Z
    .param p4, "param_3"    # I
    .param p5, "param_4"    # Landroid/graphics/Rect;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 32
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 33
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 34
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 35
    const/4 v1, 0x4

    aput-object p5, v0, v1

    .line 36
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onFocusChanged"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
