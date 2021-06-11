.class Lcom/tns/ClassResolver;
.super Ljava/lang/Object;
.source "ClassResolver.java"


# instance fields
.field private final classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;


# direct methods
.method constructor <init>(Lcom/tns/system/classes/loading/ClassStorageService;)V
    .locals 0
    .param p1, "classStorageService"    # Lcom/tns/system/classes/loading/ClassStorageService;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/tns/ClassResolver;->classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

    .line 12
    return-void
.end method


# virtual methods
.method resolveClass(Ljava/lang/String;Ljava/lang/String;Lcom/tns/DexFactory;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 15
    .param p1, "baseClassName"    # Ljava/lang/String;
    .param p2, "fullClassName"    # Ljava/lang/String;
    .param p3, "dexFactory"    # Lcom/tns/DexFactory;
    .param p4, "methodOverrides"    # [Ljava/lang/String;
    .param p5, "implementedInterfaces"    # [Ljava/lang/String;
    .param p6, "isInterface"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tns/DexFactory;",
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

    .line 15
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    move-object/from16 v2, p2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 16
    .local v3, "canonicalClassName":Ljava/lang/String;
    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "canonicalBaseClassName":Ljava/lang/String;
    const-string v1, ""

    .line 18
    .local v1, "name":Ljava/lang/String;
    move-object v12, v3

    .line 20
    .local v12, "className":Ljava/lang/String;
    const/4 v13, 0x0

    .line 21
    .local v13, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "com.tns.gen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "com.tns.tests."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v14, v5

    .line 24
    .local v14, "isBindingClass":Z
    if-eqz v14, :cond_1

    .line 25
    move-object/from16 v5, p3

    move-object v6, v0

    move-object v7, v1

    move-object v8, v12

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcom/tns/DexFactory;->resolveClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v13

    .line 28
    :cond_1
    if-nez v13, :cond_2

    .line 29
    move-object v5, p0

    iget-object v6, v5, Lcom/tns/ClassResolver;->classStorageService:Lcom/tns/system/classes/loading/ClassStorageService;

    invoke-interface {v6, v12}, Lcom/tns/system/classes/loading/ClassStorageService;->retrieveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    goto :goto_1

    .line 28
    :cond_2
    move-object v5, p0

    .line 32
    :goto_1
    return-object v13
.end method
