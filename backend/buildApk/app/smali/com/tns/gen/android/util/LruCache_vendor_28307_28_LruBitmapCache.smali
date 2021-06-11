.class public Lcom/tns/gen/android/util/LruCache_vendor_28307_28_LruBitmapCache;
.super Landroid/util/LruCache;
.source "LruCache_vendor_28307_28_LruBitmapCache.java"

# interfaces
.implements Lcom/tns/NativeScriptHashCodeProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/tns/NativeScriptHashCodeProvider;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "param_0"    # I

    .line 12
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 13
    invoke-static {p0}, Lcom/tns/Runtime;->initInstance(Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public equals__super(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 28
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode__super()I
    .locals 1

    .line 24
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "param_0"    # Ljava/lang/Object;
    .param p2, "param_1"    # Ljava/lang/Object;

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
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "sizeOf"

    invoke-static {p0, v2, v1, v0}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
