.class public final enum Lcom/tns/system/classes/caching/impl/ClassCacheImpl;
.super Ljava/lang/Enum;
.source "ClassCacheImpl.java"

# interfaces
.implements Lcom/tns/system/classes/caching/ClassCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tns/system/classes/caching/impl/ClassCacheImpl;",
        ">;",
        "Lcom/tns/system/classes/caching/ClassCache;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tns/system/classes/caching/impl/ClassCacheImpl;

.field public static final enum INSTANCE:Lcom/tns/system/classes/caching/impl/ClassCacheImpl;

.field private static final NULL_CLASS_MESSAGE:Ljava/lang/String; = "Provide a non null class"

.field private static final NULL_OR_EMPTY_CLASS_NAME_MESSAGE:Ljava/lang/String; = "Provide a class name"


# instance fields
.field private classesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/tns/system/classes/caching/impl/ClassCacheImpl;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/tns/system/classes/caching/impl/ClassCacheImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tns/system/classes/caching/impl/ClassCacheImpl;->INSTANCE:Lcom/tns/system/classes/caching/impl/ClassCacheImpl;

    .line 9
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/tns/system/classes/caching/impl/ClassCacheImpl;

    aput-object v0, v2, v1

    sput-object v2, Lcom/tns/system/classes/caching/impl/ClassCacheImpl;->$VALUES:[Lcom/tns/system/classes/caching/impl/ClassCacheImpl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tns/system/classes/caching/impl/ClassCacheImpl;->classesCache:Ljava/util/Map;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tns/system/classes/caching/impl/ClassCacheImpl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/tns/system/classes/caching/impl/ClassCacheImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tns/system/classes/caching/impl/ClassCacheImpl;

    return-object v0
.end method

.method public static values()[Lcom/tns/system/classes/caching/impl/ClassCacheImpl;
    .locals 1

    .line 9
    sget-object v0, Lcom/tns/system/classes/caching/impl/ClassCacheImpl;->$VALUES:[Lcom/tns/system/classes/caching/impl/ClassCacheImpl;

    invoke-virtual {v0}, [Lcom/tns/system/classes/caching/impl/ClassCacheImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tns/system/classes/caching/impl/ClassCacheImpl;

    return-object v0
.end method


# virtual methods
.method public addClass(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 29
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_1

    .line 33
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/tns/system/classes/caching/impl/ClassCacheImpl;->classesCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Provide a class name"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Provide a non null class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCachedClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 20
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/tns/system/classes/caching/impl/ClassCacheImpl;->classesCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Provide a class name"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
