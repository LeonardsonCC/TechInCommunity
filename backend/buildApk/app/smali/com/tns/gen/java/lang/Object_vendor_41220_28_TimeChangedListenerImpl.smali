.class public Lcom/tns/gen/java/lang/Object_vendor_41220_28_TimeChangedListenerImpl;
.super Ljava/lang/Object;
.source "Object_vendor_41220_28_TimeChangedListenerImpl.java"

# interfaces
.implements Lcom/tns/NativeScriptHashCodeProvider;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p0}, Lcom/tns/Runtime;->initInstance(Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public equals__super(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 29
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode__super()I
    .locals 1

    .line 25
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 3
    .param p1, "param_0"    # Landroid/widget/TimePicker;
    .param p2, "param_1"    # I
    .param p3, "param_2"    # I

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 21
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onTimeChanged"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method
