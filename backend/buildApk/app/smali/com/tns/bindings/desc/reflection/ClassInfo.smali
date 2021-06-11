.class public Lcom/tns/bindings/desc/reflection/ClassInfo;
.super Ljava/lang/Object;
.source "ClassInfo.java"

# interfaces
.implements Lcom/tns/bindings/desc/ClassDescriptor;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 13
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 24
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/tns/bindings/desc/ClassDescriptor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/tns/bindings/desc/ClassDescriptor;

    .line 28
    .local v0, "other":Lcom/tns/bindings/desc/ClassDescriptor;
    invoke-virtual {p0}, Lcom/tns/bindings/desc/reflection/ClassInfo;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/tns/bindings/desc/ClassDescriptor;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 25
    .end local v0    # "other":Lcom/tns/bindings/desc/ClassDescriptor;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getComponentType()Lcom/tns/bindings/desc/ClassDescriptor;
    .locals 2

    .line 90
    new-instance v0, Lcom/tns/bindings/desc/reflection/ClassInfo;

    iget-object v1, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tns/bindings/desc/reflection/ClassInfo;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getConstructors()[Lcom/tns/bindings/desc/MethodDescriptor;
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 81
    .local v0, "ctors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v1, v0

    new-array v1, v1, [Lcom/tns/bindings/desc/MethodDescriptor;

    .line 82
    .local v1, "ret":[Lcom/tns/bindings/desc/MethodDescriptor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 83
    new-instance v3, Lcom/tns/bindings/desc/reflection/MethodInfo;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lcom/tns/bindings/desc/reflection/MethodInfo;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v3, v1, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getDeclaredMethods()[Lcom/tns/bindings/desc/MethodDescriptor;
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 96
    .local v0, "methods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    new-array v1, v1, [Lcom/tns/bindings/desc/MethodDescriptor;

    .line 97
    .local v1, "ret":[Lcom/tns/bindings/desc/MethodDescriptor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 98
    new-instance v3, Lcom/tns/bindings/desc/reflection/MethodInfo;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lcom/tns/bindings/desc/reflection/MethodInfo;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v3, v1, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getInterfaces()[Lcom/tns/bindings/desc/ClassDescriptor;
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, "ifaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    new-array v1, v1, [Lcom/tns/bindings/desc/ClassDescriptor;

    .line 107
    .local v1, "ret":[Lcom/tns/bindings/desc/ClassDescriptor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 108
    new-instance v3, Lcom/tns/bindings/desc/reflection/ClassInfo;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lcom/tns/bindings/desc/reflection/ClassInfo;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 50
    const-string v0, "V"

    .local v0, "sig":Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v0    # "sig":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 52
    const-string v0, "Z"

    .restart local v0    # "sig":Ljava/lang/String;
    goto :goto_0

    .line 53
    .end local v0    # "sig":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 54
    const-string v0, "C"

    .restart local v0    # "sig":Ljava/lang/String;
    goto :goto_0

    .line 55
    .end local v0    # "sig":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 56
    const-string v0, "B"

    .restart local v0    # "sig":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v0    # "sig":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 58
    const-string v0, "S"

    .restart local v0    # "sig":Ljava/lang/String;
    goto :goto_0

    .line 59
    .end local v0    # "sig":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 60
    const-string v0, "I"

    .restart local v0    # "sig":Ljava/lang/String;
    goto :goto_0

    .line 61
    .end local v0    # "sig":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 62
    const-string v0, "J"

    .restart local v0    # "sig":Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v0    # "sig":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 64
    const-string v0, "F"

    .restart local v0    # "sig":Ljava/lang/String;
    goto :goto_0

    .line 65
    .end local v0    # "sig":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8

    .line 66
    const-string v0, "D"

    .restart local v0    # "sig":Ljava/lang/String;
    goto :goto_0

    .line 68
    .end local v0    # "sig":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "sig":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public getSuperclass()Lcom/tns/bindings/desc/ClassDescriptor;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 116
    .local v0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    new-instance v1, Lcom/tns/bindings/desc/reflection/ClassInfo;

    invoke-direct {v1, v0}, Lcom/tns/bindings/desc/reflection/ClassInfo;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/tns/bindings/desc/reflection/ClassInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isSynthetic()Z

    move-result v0

    return v0
.end method
