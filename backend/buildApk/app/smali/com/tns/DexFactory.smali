.class public Lcom/tns/DexFactory;
.super Ljava/lang/Object;
.source "DexFactory.java"


# static fields
.field private static final COM_TNS_GEN_PREFIX:Ljava/lang/String; = "com.tns.gen."

.field static totalGenTime:J

.field static totalLoadDexTime:J

.field static totalMultiDexTime:J


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

.field private final dexDir:Ljava/io/File;

.field private final dexThumb:Ljava/lang/String;

.field private injectedDexClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final logger:Lcom/tns/Logger;

.field private final odexDir:Ljava/io/File;

.field private proxyGenerator:Lcom/tns/bindings/ProxyGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tns/DexFactory;->totalGenTime:J

    .line 65
    sput-wide v0, Lcom/tns/DexFactory;->totalMultiDexTime:J

    .line 66
    sput-wide v0, Lcom/tns/DexFactory;->totalLoadDexTime:J

    return-void
.end method

.method constructor <init>(Lcom/tns/Logger;Ljava/lang/ClassLoader;Ljava/io/File;Ljava/lang/String;Lcom/tns/system/classes/loading/ClassStorageService;)V
    .locals 3
    .param p1, "logger"    # Lcom/tns/Logger;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "dexBaseDir"    # Ljava/io/File;
    .param p4, "dexThumb"    # Ljava/lang/String;
    .param p5, "classStorageService"    # Lcom/tns/system/classes/loading/ClassStorageService;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/DexFactory;->injectedDexClasses:Ljava/util/HashMap;

    .line 42
    iput-object p1, p0, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    .line 43
    iput-object p2, p0, Lcom/tns/DexFactory;->classLoader:Ljava/lang/ClassLoader;

    .line 44
    iput-object p3, p0, Lcom/tns/DexFactory;->dexDir:Ljava/io/File;

    .line 45
    iput-object p4, p0, Lcom/tns/DexFactory;->dexThumb:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tns/DexFactory;->dexDir:Ljava/io/File;

    const-string v2, "odex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tns/DexFactory;->odexDir:Ljava/io/File;

    .line 48
    new-instance v0, Lcom/tns/bindings/ProxyGenerator;

    iget-object v1, p0, Lcom/tns/DexFactory;->dexDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tns/bindings/ProxyGenerator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tns/DexFactory;->proxyGenerator:Lcom/tns/bindings/ProxyGenerator;

    .line 49
    invoke-interface {p1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/tns/bindings/ProxyGenerator;->IsLogEnabled:Z

    .line 51
    iget-object v0, p0, Lcom/tns/DexFactory;->dexDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tns/DexFactory;->dexDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/tns/DexFactory;->odexDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/tns/DexFactory;->odexDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/tns/DexFactory;->updateDexThumbAndPurgeCache()V

    .line 60
    iget-object v0, p0, Lcom/tns/DexFactory;->proxyGenerator:Lcom/tns/bindings/ProxyGenerator;

    iget-object v1, p0, Lcom/tns/DexFactory;->dexThumb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tns/bindings/ProxyGenerator;->setProxyThumb(Ljava/lang/String;)V

    .line 61
    iput-object p5, p0, Lcom/tns/DexFactory;->classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

    .line 62
    return-void
.end method

.method private generateDex(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .param p1, "proxyName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodOverrides"    # [Ljava/lang/String;
    .param p4, "implementedInterfaces"    # [Ljava/lang/String;
    .param p5, "isInterface"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static/range {p2 .. p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 243
    .local v2, "classToProxy":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 244
    .local v3, "methodOverridesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 246
    .local v4, "implementedInterfacesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/tns/bindings/desc/ClassDescriptor;>;"
    if-eqz v0, :cond_0

    .line 247
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v3, v5

    .line 248
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 249
    aget-object v6, v0, v5

    .line 251
    .local v6, "methodOverride":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v6    # "methodOverride":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 255
    .end local v5    # "i":I
    :cond_0
    array-length v5, v1

    if-lez v5, :cond_2

    .line 256
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 257
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 258
    new-instance v6, Lcom/tns/bindings/desc/reflection/ClassInfo;

    aget-object v7, v1, v5

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/tns/bindings/desc/reflection/ClassInfo;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 263
    .end local v5    # "j":I
    :cond_2
    const/4 v12, 0x0

    .line 264
    .local v12, "annotations":[Lcom/tns/bindings/AnnotationDescriptor;
    move-object v13, p0

    iget-object v5, v13, Lcom/tns/DexFactory;->proxyGenerator:Lcom/tns/bindings/ProxyGenerator;

    new-instance v7, Lcom/tns/bindings/desc/reflection/ClassInfo;

    invoke-direct {v7, v2}, Lcom/tns/bindings/desc/reflection/ClassInfo;-><init>(Ljava/lang/Class;)V

    move-object v6, p1

    move-object v8, v3

    move-object v9, v4

    move/from16 v10, p5

    move-object v11, v12

    invoke-virtual/range {v5 .. v11}, Lcom/tns/bindings/ProxyGenerator;->generateProxy(Ljava/lang/String;Lcom/tns/bindings/desc/ClassDescriptor;Ljava/util/HashSet;Ljava/util/HashSet;Z[Lcom/tns/bindings/AnnotationDescriptor;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getCachedProxyThumb(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p1, "proxyDir"    # Ljava/io/File;

    .line 350
    const-string v0, "Error while writing current proxy thumb: %s"

    const-string v1, "JS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "proxyThumb"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    .local v4, "cachedThumbFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 352
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 353
    .local v5, "in":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 354
    .local v6, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, "cachedThumb":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 356
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    return-object v7

    .line 351
    .end local v4    # "cachedThumbFile":Ljava/io/File;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "cachedThumb":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 364
    :catch_0
    move-exception v4

    .line 365
    .local v4, "e":Ljava/io/IOException;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 359
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 360
    .local v4, "e":Ljava/io/FileNotFoundException;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 369
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    nop

    .line 371
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getClassToProxyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 204
    move-object v0, p1

    .line 206
    .local v0, "classToProxy":Ljava/lang/String;
    const-string v1, "com.tns.gen."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    return-object v0

    .line 211
    :cond_1
    new-instance v1, Ljava/io/InvalidClassException;

    const-string v2, "Can\'t generate proxy of proxy"

    invoke-direct {v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getDexFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 218
    const-string v0, "$"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "classToProxyFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/tns/DexFactory;->dexThumb:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tns/DexFactory;->dexThumb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tns/DexFactory;->dexDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "dexFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v2, "dexFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "Looking for proxy file: "

    if-eqz v3, :cond_2

    .line 227
    iget-object v3, p0, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    invoke-interface {v3}, Lcom/tns/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Result: proxy file Found. ClassName: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 230
    :cond_1
    return-object v2

    .line 233
    :cond_2
    iget-object v3, p0, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    invoke-interface {v3}, Lcom/tns/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    iget-object v3, p0, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Result: NOT Found. Proxy Gen needed. ClassName: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 237
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method private purgeDexesByThumb(Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .param p1, "cachedDexThumb"    # Ljava/lang/String;
    .param p2, "pathToPurge"    # Ljava/io/File;

    .line 320
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 329
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 332
    aget-object v2, v0, v1

    .line 333
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 334
    .local v3, "purgeCandidate":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 335
    invoke-direct {p0, p1, v3}, Lcom/tns/DexFactory;->purgeDexesByThumb(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_1

    .line 337
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 338
    goto :goto_1

    .line 341
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 342
    iget-object v4, p0, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error purging cached proxy file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 331
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "purgeCandidate":Ljava/io/File;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 325
    .end local v0    # "children":[Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purge proxies path not a directory. Path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Purge path not a directory"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private saveNewDexThumb(Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "newDexThumb"    # Ljava/lang/String;
    .param p2, "dexDir"    # Ljava/io/File;

    .line 294
    const-string v0, "Error while writing current proxy thumb: %s"

    const-string v1, "JS"

    new-instance v2, Ljava/io/File;

    const-string v3, "proxyThumb"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    .local v2, "cachedThumbFile":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 297
    .local v5, "out":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .local v6, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v6, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 301
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 304
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 305
    goto :goto_0

    .line 303
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 304
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 305
    nop

    .end local v2    # "cachedThumbFile":Ljava/io/File;
    .end local p1    # "newDexThumb":Ljava/lang/String;
    .end local p2    # "dexDir":Ljava/io/File;
    throw v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 311
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "cachedThumbFile":Ljava/io/File;
    .restart local p1    # "newDexThumb":Ljava/lang/String;
    .restart local p2    # "dexDir":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 312
    .local v5, "e":Ljava/io/IOException;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 306
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 307
    .local v5, "e":Ljava/io/FileNotFoundException;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 316
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_0
    nop

    .line 317
    :cond_1
    :goto_1
    return-void
.end method

.method public static strJoin([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 189
    if-nez p0, :cond_0

    .line 190
    const-string v0, ""

    return-object v0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, "sbStr":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    .local v2, "il":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 195
    if-lez v1, :cond_1

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_1
    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    .end local v2    # "il":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateDexThumbAndPurgeCache()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/tns/DexFactory;->dexThumb:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/tns/DexFactory;->dexDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/tns/DexFactory;->getCachedProxyThumb(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "oldDexThumb":Ljava/lang/String;
    iget-object v1, p0, Lcom/tns/DexFactory;->dexThumb:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    return-void

    .line 277
    :cond_0
    if-eqz v0, :cond_1

    .line 278
    iget-object v1, p0, Lcom/tns/DexFactory;->dexDir:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/tns/DexFactory;->purgeDexesByThumb(Ljava/lang/String;Ljava/io/File;)V

    .line 279
    iget-object v1, p0, Lcom/tns/DexFactory;->odexDir:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/tns/DexFactory;->purgeDexesByThumb(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/tns/DexFactory;->purgeAllProxies()V

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/tns/DexFactory;->dexThumb:Ljava/lang/String;

    iget-object v2, p0, Lcom/tns/DexFactory;->dexDir:Ljava/io/File;

    invoke-direct {p0, v1, v2}, Lcom/tns/DexFactory;->saveNewDexThumb(Ljava/lang/String;Ljava/io/File;)V

    .line 286
    return-void

    .line 269
    .end local v0    # "oldDexThumb":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error generating proxy thumb 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 175
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "canonicalName":Ljava/lang/String;
    iget-object v1, p0, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    invoke-interface {v1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    invoke-interface {v1, v0}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/tns/DexFactory;->injectedDexClasses:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 181
    .local v1, "existingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 182
    return-object v1

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/tns/DexFactory;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method public purgeAllProxies()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/tns/DexFactory;->dexDir:Ljava/io/File;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/tns/DexFactory;->purgeDexesByThumb(Ljava/lang/String;Ljava/io/File;)V

    .line 290
    iget-object v0, p0, Lcom/tns/DexFactory;->odexDir:Ljava/io/File;

    invoke-direct {p0, v1, v0}, Lcom/tns/DexFactory;->purgeDexesByThumb(Ljava/lang/String;Ljava/io/File;)V

    .line 291
    return-void
.end method

.method public resolveClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 21
    .param p1, "baseClassName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "methodOverrides"    # [Ljava/lang/String;
    .param p5, "implementedInterfaces"    # [Ljava/lang/String;
    .param p6, "isInterface"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    const-string v1, "-"

    const-string v2, "_"

    const-string v0, "$"

    invoke-virtual {v8, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "fullClassName":Ljava/lang/String;
    move-object v9, v3

    .line 74
    .local v9, "originalFullClassName":Ljava/lang/String;
    :try_start_0
    iget-object v0, v7, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    invoke-interface {v0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, v7, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting pre-generated proxy class with name:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v0, v7, Lcom/tns/DexFactory;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    .local v0, "pregeneratedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, v7, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    invoke-interface {v4}, Lcom/tns/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    iget-object v4, v7, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pre-generated class found:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/tns/Logger;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_1
    return-object v0

    .line 85
    .end local v0    # "pregeneratedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, v7, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    invoke-interface {v4}, Lcom/tns/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    iget-object v4, v7, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pre-generated class not found:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v0, v7, Lcom/tns/DexFactory;->injectedDexClasses:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 96
    .local v0, "existingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_3

    .line 97
    return-object v0

    .line 101
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 102
    invoke-direct/range {p0 .. p1}, Lcom/tns/DexFactory;->getClassToProxyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .local v1, "classToProxy":Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v1    # "classToProxy":Ljava/lang/String;
    :cond_4
    invoke-direct {v7, v8}, Lcom/tns/DexFactory;->getClassToProxyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 108
    .local v10, "classToProxy":Ljava/lang/String;
    :goto_0
    invoke-direct {v7, v3}, Lcom/tns/DexFactory;->getClassToProxyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, "desiredDexClassName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p6, :cond_5

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.tns.gen."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 116
    :cond_5
    move-object v12, v3

    .end local v3    # "fullClassName":Ljava/lang/String;
    .local v12, "fullClassName":Ljava/lang/String;
    :goto_1
    invoke-direct {v7, v11}, Lcom/tns/DexFactory;->getDexFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 119
    .local v13, "dexFile":Ljava/io/File;
    if-nez v13, :cond_9

    .line 120
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 121
    .local v14, "startGenTime":J
    iget-object v1, v7, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    invoke-interface {v1}, Lcom/tns/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 122
    iget-object v1, v7, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    const-string v2, "generating proxy in place"

    invoke-interface {v1, v2}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 126
    :cond_6
    if-eqz p6, :cond_7

    .line 127
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v10

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/tns/DexFactory;->generateDex(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .local v1, "dexFilePath":Ljava/lang/String;
    goto :goto_2

    .line 129
    .end local v1    # "dexFilePath":Ljava/lang/String;
    :cond_7
    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v10

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/tns/DexFactory;->generateDex(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 131
    .restart local v1    # "dexFilePath":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v2

    .line 132
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 133
    .local v2, "stopGenTime":J
    sget-wide v4, Lcom/tns/DexFactory;->totalGenTime:J

    sub-long v16, v2, v14

    add-long v4, v4, v16

    sput-wide v4, Lcom/tns/DexFactory;->totalGenTime:J

    .line 134
    iget-object v4, v7, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    invoke-interface {v4}, Lcom/tns/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 135
    iget-object v4, v7, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished inplace gen took: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v0

    move-object/from16 v16, v1

    .end local v0    # "existingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "dexFilePath":Ljava/lang/String;
    .local v6, "existingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v16, "dexFilePath":Ljava/lang/String;
    sub-long v0, v2, v14

    long-to-double v0, v0

    const-wide v17, 0x412e848000000000L    # 1000000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 136
    iget-object v1, v7, Lcom/tns/DexFactory;->logger:Lcom/tns/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TotalGenTime:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v19, v2

    .end local v2    # "stopGenTime":J
    .local v19, "stopGenTime":J
    sget-wide v2, Lcom/tns/DexFactory;->totalGenTime:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v2, v17

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 134
    .end local v6    # "existingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "dexFilePath":Ljava/lang/String;
    .end local v19    # "stopGenTime":J
    .restart local v0    # "existingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "dexFilePath":Ljava/lang/String;
    .restart local v2    # "stopGenTime":J
    :cond_8
    move-object v6, v0

    move-object/from16 v16, v1

    move-wide/from16 v19, v2

    .end local v0    # "existingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "dexFilePath":Ljava/lang/String;
    .end local v2    # "stopGenTime":J
    .restart local v6    # "existingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "dexFilePath":Ljava/lang/String;
    .restart local v19    # "stopGenTime":J
    goto :goto_3

    .line 119
    .end local v6    # "existingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "startGenTime":J
    .end local v16    # "dexFilePath":Ljava/lang/String;
    .end local v19    # "stopGenTime":J
    .restart local v0    # "existingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    move-object v6, v0

    .line 141
    .end local v0    # "existingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "existingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dex"

    const-string v2, ".jar"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "jarFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "jarFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a

    .line 145
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 146
    .local v2, "jarFileStream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 148
    .local v3, "out":Ljava/util/zip/ZipOutputStream;
    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string v5, "classes.dex"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 149
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v5, v4

    new-array v4, v5, [B

    .line 150
    .local v4, "dexData":[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 151
    .local v5, "fi":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    array-length v15, v4

    invoke-virtual {v5, v4, v14, v15}, Ljava/io/FileInputStream;->read([BII)I

    .line 152
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 154
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 155
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 156
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 160
    .end local v2    # "jarFileStream":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v4    # "dexData":[B
    .end local v5    # "fi":Ljava/io/FileInputStream;
    :cond_a
    new-instance v2, Ldalvik/system/DexClassLoader;

    iget-object v3, v7, Lcom/tns/DexFactory;->odexDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v7, Lcom/tns/DexFactory;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v2, v0, v3, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 162
    .local v2, "dexClassLoader":Ldalvik/system/DexClassLoader;
    if-eqz p6, :cond_b

    .line 163
    invoke-virtual {v2, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .local v3, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_4

    .line 165
    .end local v3    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    invoke-virtual {v2, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 168
    .restart local v3    # "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    iget-object v4, v7, Lcom/tns/DexFactory;->classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/tns/system/classes/loading/ClassStorageService;->storeClass(Ljava/lang/String;Ljava/lang/Class;)V

    .line 169
    iget-object v4, v7, Lcom/tns/DexFactory;->injectedDexClasses:Ljava/util/HashMap;

    invoke-virtual {v4, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-object v3
.end method
