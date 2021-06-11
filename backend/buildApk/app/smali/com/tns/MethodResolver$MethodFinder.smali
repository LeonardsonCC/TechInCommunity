.class Lcom/tns/MethodResolver$MethodFinder;
.super Ljava/lang/Object;
.source "MethodResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/MethodResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodFinder"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final couldNotGetMethods:Z

.field private declaredMethods:[Ljava/lang/reflect/Method;

.field private matchingMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 495
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tns/MethodResolver$MethodFinder;->matchingMethods:Ljava/util/HashMap;

    .line 496
    iput-object p1, p0, Lcom/tns/MethodResolver$MethodFinder;->clazz:Ljava/lang/Class;

    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, "errorGettingMethods":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/tns/MethodResolver$MethodFinder;->declaredMethods:[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    goto :goto_0

    .line 500
    :catch_0
    move-exception v2

    .line 509
    .local v2, "error":Ljava/lang/NoClassDefFoundError;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/tns/MethodResolver$MethodFinder;->declaredMethods:[Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 515
    goto :goto_0

    .line 510
    :catch_1
    move-exception v3

    .line 513
    .local v3, "err":Ljava/lang/NoClassDefFoundError;
    new-array v4, v1, [Ljava/lang/reflect/Method;

    iput-object v4, p0, Lcom/tns/MethodResolver$MethodFinder;->declaredMethods:[Ljava/lang/reflect/Method;

    .line 514
    const/4 v0, 0x1

    .line 517
    .end local v2    # "error":Ljava/lang/NoClassDefFoundError;
    .end local v3    # "err":Ljava/lang/NoClassDefFoundError;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/tns/MethodResolver$MethodFinder;->getInterfaceDefaultMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-array v1, v1, [Ljava/lang/reflect/Method;

    .line 518
    .local v1, "interfaceDefaultMethods":[Ljava/lang/reflect/Method;
    :goto_1
    iget-object v2, p0, Lcom/tns/MethodResolver$MethodFinder;->declaredMethods:[Ljava/lang/reflect/Method;

    invoke-static {v2, v1}, Lcom/tns/MethodResolver$MethodFinder;->concatenate([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Method;

    iput-object v2, p0, Lcom/tns/MethodResolver$MethodFinder;->declaredMethods:[Ljava/lang/reflect/Method;

    .line 519
    iput-boolean v0, p0, Lcom/tns/MethodResolver$MethodFinder;->couldNotGetMethods:Z

    .line 520
    return-void
.end method

.method private static concatenate([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 523
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    .line 524
    .local v0, "aLen":I
    array-length v1, p1

    .line 527
    .local v1, "bLen":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 528
    .local v2, "c":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    return-object v2
.end method

.method private getInterfaceDefaultMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 535
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v0, "interfaceDefaultMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 537
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 538
    .local v5, "interfaze":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 539
    .local v9, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    .line 540
    .local v10, "methodModifiers":I
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 541
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "methodModifiers":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 537
    .end local v5    # "interfaze":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 546
    :cond_2
    new-array v2, v3, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Method;

    return-object v2
.end method


# virtual methods
.method public errorGettingMethods()Z
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/tns/MethodResolver$MethodFinder;->couldNotGetMethods:Z

    return v0
.end method

.method public getMatchingMethodWithArguments(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 582
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Class;

    .line 583
    .local v0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 584
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    .end local v1    # "i":I
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tns/MethodResolver$MethodFinder;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public getMatchingMethods(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Lcom/tns/MethodResolver$MethodFinder;->errorGettingMethods()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const/4 v0, 0x0

    return-object v0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/tns/MethodResolver$MethodFinder;->matchingMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 558
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    if-nez v0, :cond_4

    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 560
    iget-object v1, p0, Lcom/tns/MethodResolver$MethodFinder;->declaredMethods:[Ljava/lang/reflect/Method;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 561
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 562
    goto :goto_1

    .line 565
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    .line 566
    .local v5, "modifiers":I
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 567
    goto :goto_1

    .line 570
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "modifiers":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 573
    :cond_3
    iget-object v1, p0, Lcom/tns/MethodResolver$MethodFinder;->matchingMethods:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_4
    return-object v0
.end method
