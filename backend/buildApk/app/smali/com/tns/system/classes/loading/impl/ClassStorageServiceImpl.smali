.class public Lcom/tns/system/classes/loading/impl/ClassStorageServiceImpl;
.super Ljava/lang/Object;
.source "ClassStorageServiceImpl.java"

# interfaces
.implements Lcom/tns/system/classes/loading/ClassStorageService;


# instance fields
.field private final classCache:Lcom/tns/system/classes/caching/ClassCache;

.field private final classLoadersCollection:Lcom/tns/system/classloaders/ClassLoadersCollection;


# direct methods
.method public constructor <init>(Lcom/tns/system/classes/caching/ClassCache;Lcom/tns/system/classloaders/ClassLoadersCollection;)V
    .locals 0
    .param p1, "classCache"    # Lcom/tns/system/classes/caching/ClassCache;
    .param p2, "classLoadersCollection"    # Lcom/tns/system/classloaders/ClassLoadersCollection;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/tns/system/classes/loading/impl/ClassStorageServiceImpl;->classCache:Lcom/tns/system/classes/caching/ClassCache;

    .line 15
    iput-object p2, p0, Lcom/tns/system/classes/loading/impl/ClassStorageServiceImpl;->classLoadersCollection:Lcom/tns/system/classloaders/ClassLoadersCollection;

    .line 16
    return-void
.end method


# virtual methods
.method public retrieveClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "lookupKey"    # Ljava/lang/String;
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
    iget-object v0, p0, Lcom/tns/system/classes/loading/impl/ClassStorageServiceImpl;->classCache:Lcom/tns/system/classes/caching/ClassCache;

    invoke-interface {v0, p1}, Lcom/tns/system/classes/caching/ClassCache;->getCachedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 23
    return-object v0

    .line 27
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 28
    iget-object v1, p0, Lcom/tns/system/classes/loading/impl/ClassStorageServiceImpl;->classCache:Lcom/tns/system/classes/caching/ClassCache;

    invoke-interface {v1, p1, v0}, Lcom/tns/system/classes/caching/ClassCache;->addClass(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object v0

    .line 30
    :catch_0
    move-exception v1

    .line 34
    iget-object v1, p0, Lcom/tns/system/classes/loading/impl/ClassStorageServiceImpl;->classLoadersCollection:Lcom/tns/system/classloaders/ClassLoadersCollection;

    invoke-interface {v1}, Lcom/tns/system/classloaders/ClassLoadersCollection;->getClassLoadersCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 36
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .line 37
    if-eqz v0, :cond_1

    .line 38
    iget-object v3, p0, Lcom/tns/system/classes/loading/impl/ClassStorageServiceImpl;->classCache:Lcom/tns/system/classes/caching/ClassCache;

    invoke-interface {v3, p1, v0}, Lcom/tns/system/classes/caching/ClassCache;->addClass(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    return-object v0

    .line 43
    :cond_1
    goto :goto_1

    .line 41
    :catch_1
    move-exception v3

    .line 44
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    :goto_1
    goto :goto_0

    .line 46
    :cond_2
    new-instance v1, Lcom/tns/system/classes/loading/LookedUpClassNotFound;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tns/system/classes/loading/LookedUpClassNotFound;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public storeClass(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "lookupKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 51
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/tns/system/classes/loading/impl/ClassStorageServiceImpl;->classCache:Lcom/tns/system/classes/caching/ClassCache;

    invoke-interface {v0, p1, p2}, Lcom/tns/system/classes/caching/ClassCache;->addClass(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    iget-object v0, p0, Lcom/tns/system/classes/loading/impl/ClassStorageServiceImpl;->classLoadersCollection:Lcom/tns/system/classloaders/ClassLoadersCollection;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tns/system/classloaders/ClassLoadersCollection;->addClassLoader(Ljava/lang/ClassLoader;)V

    .line 53
    return-void
.end method
