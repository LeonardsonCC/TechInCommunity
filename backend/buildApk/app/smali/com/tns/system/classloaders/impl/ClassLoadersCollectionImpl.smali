.class public final enum Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;
.super Ljava/lang/Enum;
.source "ClassLoadersCollectionImpl.java"

# interfaces
.implements Lcom/tns/system/classloaders/ClassLoadersCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;",
        ">;",
        "Lcom/tns/system/classloaders/ClassLoadersCollection;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;

.field public static final enum INSTANCE:Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;


# instance fields
.field private classLoaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;->INSTANCE:Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;

    .line 10
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;

    aput-object v0, v2, v1

    sput-object v2, Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;->$VALUES:[Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;->classLoaders:Ljava/util/Set;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;

    return-object v0
.end method

.method public static values()[Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;
    .locals 1

    .line 10
    sget-object v0, Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;->$VALUES:[Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;

    invoke-virtual {v0}, [Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;

    return-object v0
.end method


# virtual methods
.method public addClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 18
    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;->classLoaders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Provided class loader should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClassLoadersCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/tns/system/classloaders/impl/ClassLoadersCollectionImpl;->classLoaders:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
