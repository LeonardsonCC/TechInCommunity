.class public Lcom/tns/gen/android/view/View_OnTouchListener;
.super Ljava/lang/Object;
.source "View_OnTouchListener.java"

# interfaces
.implements Lcom/tns/NativeScriptHashCodeProvider;
.implements Landroid/view/View$OnTouchListener;


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

    .line 27
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode__super()I
    .locals 1

    .line 23
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "param_0"    # Landroid/view/View;
    .param p2, "param_1"    # Landroid/view/MotionEvent;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 18
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 19
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "onTouch"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
