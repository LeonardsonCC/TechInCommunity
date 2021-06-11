.class Lcom/tns/MethodResolver;
.super Ljava/lang/Object;
.source "MethodResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/MethodResolver$MethodFinder;,
        Lcom/tns/MethodResolver$DistanceComparator;,
        Lcom/tns/MethodResolver$Tuple;
    }
.end annotation


# static fields
.field static candidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tns/MethodResolver$Tuple<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static constructorParamTypeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static distanceComparator:Lcom/tns/MethodResolver$DistanceComparator;

.field static methodOverloadsForClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/tns/MethodResolver$MethodFinder;",
            ">;"
        }
    .end annotation
.end field

.field private static primitiveTypesSignature:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    .line 20
    const-string v1, "Z"

    const-string v2, "boolean"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v2, "Boolean"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v1, "I"

    const-string v2, "int"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v2, "Integer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v1, "D"

    const-string v2, "double"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v2, "Double"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v1, "F"

    const-string v2, "float"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v2, "Float"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v1, "S"

    const-string v2, "short"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v2, "Short"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v1, "J"

    const-string v2, "long"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v2, "Long"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v1, "C"

    const-string v2, "char"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v2, "Character"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v1, "B"

    const-string v2, "byte"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v2, "Byte"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    const-string v1, "void"

    const-string v2, "V"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/tns/MethodResolver$DistanceComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tns/MethodResolver$DistanceComparator;-><init>(Lcom/tns/MethodResolver$1;)V

    sput-object v0, Lcom/tns/MethodResolver;->distanceComparator:Lcom/tns/MethodResolver$DistanceComparator;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tns/MethodResolver;->constructorParamTypeCache:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tns/MethodResolver;->methodOverloadsForClass:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tns/MethodResolver;->candidates:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertConstructorArgs(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Z
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 377
    .local p0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v0, 0x1

    .line 379
    .local v0, "success":Z
    if-nez p0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 381
    return v0

    .line 385
    :cond_0
    sget-object v1, Lcom/tns/MethodResolver;->constructorParamTypeCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    sget-object v1, Lcom/tns/MethodResolver;->constructorParamTypeCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .local v1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_0

    .line 388
    .end local v1    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 389
    .restart local v1    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v2, Lcom/tns/MethodResolver;->constructorParamTypeCache:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 393
    aget-object v3, v1, v2

    .line 395
    .local v3, "currParamType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 396
    invoke-static {v3, p1, v2}, Lcom/tns/MethodResolver;->convertPrimitiveArg(Ljava/lang/Class;[Ljava/lang/Object;I)Z

    move-result v0

    .line 399
    :cond_2
    if-nez v0, :cond_3

    .line 400
    goto :goto_2

    .line 392
    .end local v3    # "currParamType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 404
    .end local v2    # "i":I
    :cond_4
    :goto_2
    return v0
.end method

.method private static convertPrimitiveArg(Ljava/lang/Class;[Ljava/lang/Object;I)Z
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "argIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "I)Z"
        }
    .end annotation

    .line 408
    .local p0, "primitiveType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 410
    .local v0, "success":Z
    aget-object v1, p1, p2

    .line 411
    .local v1, "currentArg":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 414
    .local v2, "currentArgClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Ljava/lang/Short;

    .line 416
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Ljava/lang/Integer;

    .line 417
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Ljava/lang/Long;

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Ljava/lang/Float;

    .line 419
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Ljava/lang/Double;

    .line 420
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 421
    :cond_0
    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    .line 422
    .local v3, "n":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, p1, p2

    .line 423
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 425
    .end local v3    # "n":Ljava/lang/Number;
    :cond_1
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 426
    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/lang/Short;

    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/lang/Integer;

    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/lang/Long;

    .line 429
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/lang/Float;

    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/lang/Double;

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 432
    :cond_2
    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    .line 433
    .restart local v3    # "n":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, p1, p2

    .line 434
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 436
    .end local v3    # "n":Ljava/lang/Number;
    :cond_3
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 437
    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-class v3, Ljava/lang/Short;

    .line 438
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-class v3, Ljava/lang/Integer;

    .line 439
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-class v3, Ljava/lang/Long;

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-class v3, Ljava/lang/Float;

    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-class v3, Ljava/lang/Double;

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 443
    :cond_4
    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    .line 444
    .restart local v3    # "n":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, p2

    .line 445
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 447
    .end local v3    # "n":Ljava/lang/Number;
    :cond_5
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 448
    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-class v3, Ljava/lang/Short;

    .line 449
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-class v3, Ljava/lang/Integer;

    .line 450
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-class v3, Ljava/lang/Long;

    .line 451
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-class v3, Ljava/lang/Float;

    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-class v3, Ljava/lang/Double;

    .line 453
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 454
    :cond_6
    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    .line 455
    .restart local v3    # "n":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p1, p2

    .line 456
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 458
    .end local v3    # "n":Ljava/lang/Number;
    :cond_7
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 459
    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-class v3, Ljava/lang/Short;

    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-class v3, Ljava/lang/Integer;

    .line 461
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-class v3, Ljava/lang/Long;

    .line 462
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-class v3, Ljava/lang/Float;

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-class v3, Ljava/lang/Double;

    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 465
    :cond_8
    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    .line 466
    .restart local v3    # "n":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, p1, p2

    .line 467
    const/4 v0, 0x1

    goto :goto_0

    .line 469
    .end local v3    # "n":Ljava/lang/Number;
    :cond_9
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 470
    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-class v3, Ljava/lang/Short;

    .line 471
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-class v3, Ljava/lang/Integer;

    .line 472
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-class v3, Ljava/lang/Long;

    .line 473
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-class v3, Ljava/lang/Float;

    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-class v3, Ljava/lang/Double;

    .line 475
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 476
    :cond_a
    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    .line 477
    .restart local v3    # "n":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, p1, p2

    .line 478
    const/4 v0, 0x1

    goto :goto_0

    .line 480
    .end local v3    # "n":Ljava/lang/Number;
    :cond_b
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 481
    const-class v3, Ljava/lang/Character;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 482
    :cond_c
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 483
    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 486
    :cond_d
    :goto_0
    return v0
.end method

.method public static getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 69
    .local p0, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 72
    aget-object v2, p1, v1

    .line 73
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lcom/tns/MethodResolver;->getTypeSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {p0}, Lcom/tns/MethodResolver;->getTypeSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTypeSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 81
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 82
    const-string v0, "V"

    return-object v0

    .line 85
    :cond_0
    move-object v0, p0

    .line 87
    .local v0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, ""

    .line 88
    .local v1, "array":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    sget-object v2, Lcom/tns/MethodResolver;->primitiveTypesSignature:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    .local v2, "signature":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Lcom/tns/MethodResolver$Tuple;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/tns/MethodResolver$Tuple<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 265
    .local p0, "assignTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "assignFrom":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 266
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 268
    .local v1, "dist":I
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 269
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 270
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_0

    .line 271
    add-int/lit8 v1, v1, 0x0

    goto/16 :goto_1

    .line 272
    :cond_0
    const-class v2, Ljava/lang/Short;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_1

    .line 273
    add-int/lit16 v1, v1, 0x3e9

    goto/16 :goto_1

    .line 274
    :cond_1
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_2

    .line 275
    add-int/lit16 v1, v1, 0x3ea

    goto/16 :goto_1

    .line 276
    :cond_2
    const-class v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_3

    .line 277
    add-int/lit16 v1, v1, 0x3eb

    goto/16 :goto_1

    .line 278
    :cond_3
    const-class v2, Ljava/lang/Float;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_4

    .line 279
    add-int/lit16 v1, v1, 0x3ec

    goto/16 :goto_1

    .line 280
    :cond_4
    const-class v2, Ljava/lang/Double;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_26

    .line 281
    add-int/lit16 v1, v1, 0x3ed

    goto/16 :goto_1

    .line 283
    :cond_5
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 284
    const-class v2, Ljava/lang/Short;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_6

    .line 285
    add-int/lit8 v1, v1, 0x0

    goto/16 :goto_1

    .line 286
    :cond_6
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_7

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 288
    :cond_7
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_8

    .line 289
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_1

    .line 290
    :cond_8
    const-class v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_9

    .line 291
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_1

    .line 292
    :cond_9
    const-class v2, Ljava/lang/Float;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_a

    .line 293
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_1

    .line 294
    :cond_a
    const-class v2, Ljava/lang/Double;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_26

    .line 295
    add-int/lit8 v1, v1, 0x5

    goto/16 :goto_1

    .line 297
    :cond_b
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 298
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_c

    .line 299
    add-int/lit8 v1, v1, 0x0

    goto/16 :goto_1

    .line 300
    :cond_c
    const-class v2, Ljava/lang/Short;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_d

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 302
    :cond_d
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_e

    .line 303
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_1

    .line 304
    :cond_e
    const-class v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_f

    .line 305
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_1

    .line 306
    :cond_f
    const-class v2, Ljava/lang/Float;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_10

    .line 307
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_1

    .line 308
    :cond_10
    const-class v2, Ljava/lang/Double;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_26

    .line 309
    add-int/lit8 v1, v1, 0x5

    goto/16 :goto_1

    .line 311
    :cond_11
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 312
    const-class v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_12

    .line 313
    add-int/lit8 v1, v1, 0x0

    goto/16 :goto_1

    .line 314
    :cond_12
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_13

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 316
    :cond_13
    const-class v2, Ljava/lang/Short;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_14

    .line 317
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_1

    .line 318
    :cond_14
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_15

    .line 319
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_1

    .line 320
    :cond_15
    const-class v2, Ljava/lang/Float;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_16

    .line 321
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_1

    .line 322
    :cond_16
    const-class v2, Ljava/lang/Double;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_26

    .line 323
    add-int/lit8 v1, v1, 0x5

    goto/16 :goto_1

    .line 325
    :cond_17
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 326
    const-class v2, Ljava/lang/Float;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_18

    .line 327
    add-int/lit8 v1, v1, 0x0

    goto/16 :goto_1

    .line 328
    :cond_18
    const-class v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_19

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 330
    :cond_19
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_1a

    .line 331
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_1

    .line 332
    :cond_1a
    const-class v2, Ljava/lang/Short;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_1b

    .line 333
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_1

    .line 334
    :cond_1b
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_1c

    .line 335
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_1

    .line 336
    :cond_1c
    const-class v2, Ljava/lang/Double;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_26

    .line 337
    add-int/lit8 v1, v1, 0x5

    goto/16 :goto_1

    .line 339
    :cond_1d
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 340
    const-class v2, Ljava/lang/Double;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_1e

    .line 341
    add-int/lit8 v1, v1, 0x0

    goto/16 :goto_1

    .line 342
    :cond_1e
    const-class v2, Ljava/lang/Float;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_1f

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 344
    :cond_1f
    const-class v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_20

    .line 345
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 346
    :cond_20
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_21

    .line 347
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 348
    :cond_21
    const-class v2, Ljava/lang/Short;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_22

    .line 349
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 350
    :cond_22
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_26

    .line 351
    add-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 353
    :cond_23
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 354
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 355
    :cond_24
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 356
    const-class v2, Ljava/lang/Character;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 359
    :cond_25
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 361
    if-eqz v0, :cond_26

    .line 363
    move-object v2, p1

    .line 364
    .local v2, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    if-eqz v2, :cond_26

    .line 365
    add-int/lit16 v1, v1, 0x2710

    .line 366
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 371
    .end local v2    # "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_26
    :goto_1
    new-instance v2, Lcom/tns/MethodResolver$Tuple;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/tns/MethodResolver$Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 373
    .local v2, "ret":Lcom/tns/MethodResolver$Tuple;, "Lcom/tns/MethodResolver$Tuple<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    return-object v2
.end method

.method static resolveConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 16
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 197
    .local v1, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 199
    .local v3, "argLen":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 200
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_1

    .line 201
    return-object v5

    .line 204
    :cond_1
    aget-object v2, v1, v2

    return-object v2

    .line 207
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v4, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tns/MethodResolver$Tuple<Ljava/lang/reflect/Constructor<*>;Ljava/lang/Integer;>;>;"
    array-length v7, v1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_c

    aget-object v9, v1, v8

    .line 210
    .local v9, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x0

    .line 211
    .local v10, "dist":I
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 213
    .local v11, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v12, 0x1

    .line 215
    .local v12, "success":Z
    if-nez v0, :cond_4

    .line 216
    array-length v13, v11

    if-nez v13, :cond_3

    .line 217
    return-object v9

    .line 220
    :cond_3
    const/4 v12, 0x0

    goto :goto_5

    .line 222
    :cond_4
    array-length v13, v11

    if-eq v13, v3, :cond_5

    .line 223
    goto :goto_6

    .line 226
    :cond_5
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    array-length v14, v0

    if-ge v13, v14, :cond_9

    .line 227
    aget-object v14, v0, v13

    if-eqz v14, :cond_7

    .line 228
    aget-object v14, v0, v13

    instance-of v14, v14, Lcom/tns/NullObject;

    if-eqz v14, :cond_6

    .line 229
    aget-object v14, v0, v13

    check-cast v14, Lcom/tns/NullObject;

    invoke-virtual {v14}, Lcom/tns/NullObject;->getNullObjectClass()Ljava/lang/Class;

    move-result-object v14

    goto :goto_3

    .line 230
    :cond_6
    aget-object v14, v0, v13

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    :goto_3
    nop

    .line 232
    .local v14, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v15, v11, v13

    invoke-static {v15, v14}, Lcom/tns/MethodResolver;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Lcom/tns/MethodResolver$Tuple;

    move-result-object v15

    .line 233
    .local v15, "res":Lcom/tns/MethodResolver$Tuple;, "Lcom/tns/MethodResolver$Tuple<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v5, v15, Lcom/tns/MethodResolver$Tuple;->x:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 234
    .end local v12    # "success":Z
    .local v5, "success":Z
    iget-object v12, v15, Lcom/tns/MethodResolver$Tuple;->y:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v10, v12

    .line 235
    .end local v14    # "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "res":Lcom/tns/MethodResolver$Tuple;, "Lcom/tns/MethodResolver$Tuple<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    move v12, v5

    goto :goto_4

    .line 236
    .end local v5    # "success":Z
    .restart local v12    # "success":Z
    :cond_7
    aget-object v5, v11, v13

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    xor-int/2addr v5, v6

    move v12, v5

    .line 239
    :goto_4
    if-nez v12, :cond_8

    .line 240
    goto :goto_5

    .line 226
    :cond_8
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_2

    .line 245
    .end local v13    # "i":I
    :cond_9
    :goto_5
    if-eqz v12, :cond_b

    .line 246
    if-nez v10, :cond_a

    .line 247
    return-object v9

    .line 250
    :cond_a
    new-instance v5, Lcom/tns/MethodResolver$Tuple;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v5, v9, v13}, Lcom/tns/MethodResolver$Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v10    # "dist":I
    .end local v11    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v12    # "success":Z
    :cond_b
    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto :goto_1

    .line 254
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 255
    sget-object v5, Lcom/tns/MethodResolver;->distanceComparator:Lcom/tns/MethodResolver$DistanceComparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 256
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tns/MethodResolver$Tuple;

    iget-object v2, v2, Lcom/tns/MethodResolver$Tuple;->x:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 258
    .local v2, "selectedCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    return-object v2

    .line 261
    .end local v2    # "selectedCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_d
    const/4 v2, 0x0

    return-object v2
.end method

.method static resolveConstructorSignature(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/tns/MethodResolver;->resolveConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 191
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tns/MethodResolver;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method static resolveMethodOverload(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 105
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/tns/MethodResolver;->candidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 108
    .local v1, "argLength":I
    :goto_0
    move-object v2, p0

    .line 109
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 110
    .local v3, "iterationIndex":I
    :goto_1
    if-eqz v2, :cond_5

    .line 111
    sget-object v4, Lcom/tns/MethodResolver;->methodOverloadsForClass:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tns/MethodResolver$MethodFinder;

    .line 112
    .local v4, "finder":Lcom/tns/MethodResolver$MethodFinder;
    if-nez v4, :cond_1

    .line 113
    new-instance v5, Lcom/tns/MethodResolver$MethodFinder;

    invoke-direct {v5, v2}, Lcom/tns/MethodResolver$MethodFinder;-><init>(Ljava/lang/Class;)V

    move-object v4, v5

    .line 114
    sget-object v5, Lcom/tns/MethodResolver;->methodOverloadsForClass:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_1
    invoke-virtual {v4}, Lcom/tns/MethodResolver$MethodFinder;->errorGettingMethods()Z

    move-result v5

    if-nez v5, :cond_3

    .line 118
    invoke-virtual {v4, p1}, Lcom/tns/MethodResolver$MethodFinder;->getMatchingMethods(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 119
    .local v5, "matchingMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    sget-object v6, Lcom/tns/MethodResolver;->candidates:Ljava/util/ArrayList;

    invoke-static {p1, v6, p2, v1, v5}, Lcom/tns/MethodResolver;->tryFindMatches(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;ILjava/util/ArrayList;)V

    .line 120
    sget-object v6, Lcom/tns/MethodResolver;->candidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v3, :cond_2

    sget-object v6, Lcom/tns/MethodResolver;->candidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tns/MethodResolver$Tuple;

    iget-object v6, v6, Lcom/tns/MethodResolver$Tuple;->y:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    .line 122
    goto :goto_3

    .line 124
    .end local v5    # "matchingMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    :cond_2
    goto :goto_2

    .line 125
    :cond_3
    invoke-virtual {v4, p1, p2}, Lcom/tns/MethodResolver$MethodFinder;->getMatchingMethodWithArguments(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 126
    .local v5, "method":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_4

    .line 127
    sget-object v6, Lcom/tns/MethodResolver;->candidates:Ljava/util/ArrayList;

    new-instance v7, Lcom/tns/MethodResolver$Tuple;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/tns/MethodResolver$Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    goto :goto_3

    .line 132
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 133
    nop

    .end local v4    # "finder":Lcom/tns/MethodResolver$MethodFinder;
    add-int/lit8 v3, v3, 0x1

    .line 134
    goto :goto_1

    .line 136
    :cond_5
    :goto_3
    sget-object v4, Lcom/tns/MethodResolver;->candidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 137
    sget-object v4, Lcom/tns/MethodResolver;->candidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_6

    .line 138
    sget-object v4, Lcom/tns/MethodResolver;->candidates:Ljava/util/ArrayList;

    sget-object v5, Lcom/tns/MethodResolver;->distanceComparator:Lcom/tns/MethodResolver$DistanceComparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 141
    :cond_6
    sget-object v4, Lcom/tns/MethodResolver;->candidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tns/MethodResolver$Tuple;

    iget-object v0, v0, Lcom/tns/MethodResolver$Tuple;->x:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    .line 142
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tns/MethodResolver;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 145
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method static tryFindMatches(Ljava/lang/String;Ljava/util/ArrayList;[Ljava/lang/Object;ILjava/util/ArrayList;)V
    .locals 9
    .param p0, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/tns/MethodResolver$Tuple<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Integer;",
            ">;>;[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p1, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tns/MethodResolver$Tuple<Ljava/lang/reflect/Method;Ljava/lang/Integer;>;>;"
    .local p4, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 150
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 152
    .local v2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 154
    .local v3, "success":Z
    array-length v4, v2

    if-ne v4, p3, :cond_5

    .line 155
    const/4 v4, 0x0

    .line 156
    .local v4, "dist":I
    if-nez p3, :cond_0

    .line 157
    const/4 v3, 0x1

    goto :goto_4

    .line 159
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_4

    .line 160
    aget-object v6, p2, v5

    if-eqz v6, :cond_2

    .line 161
    aget-object v6, p2, v5

    instance-of v6, v6, Lcom/tns/NullObject;

    if-eqz v6, :cond_1

    .line 162
    aget-object v6, p2, v5

    check-cast v6, Lcom/tns/NullObject;

    invoke-virtual {v6}, Lcom/tns/NullObject;->getNullObjectClass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_2

    .line 163
    :cond_1
    aget-object v6, p2, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    :goto_2
    nop

    .line 165
    .local v6, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v7, v2, v5

    invoke-static {v7, v6}, Lcom/tns/MethodResolver;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Lcom/tns/MethodResolver$Tuple;

    move-result-object v7

    .line 166
    .local v7, "res":Lcom/tns/MethodResolver$Tuple;, "Lcom/tns/MethodResolver$Tuple<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v8, v7, Lcom/tns/MethodResolver$Tuple;->x:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 167
    iget-object v8, v7, Lcom/tns/MethodResolver$Tuple;->y:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v4, v8

    .line 168
    .end local v6    # "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "res":Lcom/tns/MethodResolver$Tuple;, "Lcom/tns/MethodResolver$Tuple<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    goto :goto_3

    .line 169
    :cond_2
    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    move v3, v6

    .line 172
    :goto_3
    if-nez v3, :cond_3

    .line 173
    goto :goto_4

    .line 159
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 178
    .end local v5    # "i":I
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 179
    new-instance v5, Lcom/tns/MethodResolver$Tuple;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/tns/MethodResolver$Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    if-nez v4, :cond_5

    .line 181
    goto :goto_5

    .line 185
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "success":Z
    .end local v4    # "dist":I
    :cond_5
    goto :goto_0

    .line 186
    :cond_6
    :goto_5
    return-void
.end method
