.class public Lcom/tns/gen/android/view/accessibility/AccessibilityManager_TouchExplorationStateChangeListener;
.super Ljava/lang/Object;
.source "AccessibilityManager_TouchExplorationStateChangeListener.java"

# interfaces
.implements Lcom/tns/NativeScriptHashCodeProvider;
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


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

.method public onTouchExplorationStateChanged(Z)V
    .locals 3
    .param p1, "param_0"    # Z

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 19
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "onTouchExplorationStateChanged"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method
