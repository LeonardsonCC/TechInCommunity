.class public Lcom/tns/gen/android/view/Choreographer_FrameCallback;
.super Ljava/lang/Object;
.source "Choreographer_FrameCallback.java"

# interfaces
.implements Lcom/tns/NativeScriptHashCodeProvider;
.implements Landroid/view/Choreographer$FrameCallback;


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
.method public doFrame(J)V
    .locals 3
    .param p1, "param_0"    # J

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 18
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "doFrame"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public equals__super(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 26
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode__super()I
    .locals 1

    .line 22
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
