.class public Lcom/tns/bindings/desc/reflection/MethodInfo;
.super Ljava/lang/Object;
.source "MethodInfo.java"

# interfaces
.implements Lcom/tns/bindings/desc/MethodDescriptor;


# instance fields
.field private m_genericSig:Ljava/lang/String;

.field private final m_isAbstract:Z

.field private final m_isFinal:Z

.field private m_isInterface:Z

.field private final m_isPrivate:Z

.field private final m_isProtected:Z

.field private final m_isPublic:Z

.field private final m_isStatic:Z

.field private m_isSynthetic:Z

.field private m_name:Ljava/lang/String;

.field private m_parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private m_retType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "modifiers"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isStatic:Z

    .line 46
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isPrivate:Z

    .line 47
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isPublic:Z

    .line 48
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isProtected:Z

    .line 49
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isFinal:Z

    .line 50
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isAbstract:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 35
    .local p1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tns/bindings/desc/reflection/MethodInfo;-><init>(I)V

    .line 36
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isSynthetic:Z

    .line 37
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_parameterTypes:[Ljava/lang/Class;

    .line 38
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_retType:Ljava/lang/Class;

    .line 39
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_name:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_genericSig:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isInterface:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 25
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tns/bindings/desc/reflection/MethodInfo;-><init>(I)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isSynthetic:Z

    .line 27
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_parameterTypes:[Ljava/lang/Class;

    .line 28
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_retType:Ljava/lang/Class;

    .line 29
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_name:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_genericSig:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isInterface:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Lcom/tns/bindings/desc/ClassDescriptor;
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_parameterTypes:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Lcom/tns/bindings/desc/ClassDescriptor;

    .line 56
    .local v0, "ret":[Lcom/tns/bindings/desc/ClassDescriptor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_parameterTypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 57
    new-instance v2, Lcom/tns/bindings/desc/reflection/ClassInfo;

    iget-object v3, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_parameterTypes:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Lcom/tns/bindings/desc/reflection/ClassInfo;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getReturnType()Lcom/tns/bindings/desc/ClassDescriptor;
    .locals 2

    .line 69
    new-instance v0, Lcom/tns/bindings/desc/reflection/ClassInfo;

    iget-object v1, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_retType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/tns/bindings/desc/reflection/ClassInfo;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isAbstract:Z

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isFinal:Z

    return v0
.end method

.method public isInterfaceMethod()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isInterface:Z

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isPrivate:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isProtected:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isPublic:Z

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isStatic:Z

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isSynthetic:Z

    return v0
.end method

.method public setAsInterfaceMethod()V
    .locals 1

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_isInterface:Z

    .line 85
    return-void
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/tns/bindings/desc/reflection/MethodInfo;->m_genericSig:Ljava/lang/String;

    return-object v0
.end method
