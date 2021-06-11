.class public Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;
.super Ljava/lang/Object;
.source "ClassDescriptor.java"

# interfaces
.implements Lcom/tns/bindings/desc/ClassDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/bindings/desc/ClassDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimitiveTypeInfo"
.end annotation


# instance fields
.field private final sig:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sig"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;->sig:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static getBoxedTypeName(Lcom/tns/bindings/desc/ClassDescriptor;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Lcom/tns/bindings/desc/ClassDescriptor;

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p0}, Lcom/tns/bindings/desc/ClassDescriptor;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 99
    invoke-interface {p0}, Lcom/tns/bindings/desc/ClassDescriptor;->getSignature()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 100
    .local v1, "ch":C
    const/16 v2, 0x46

    if-eq v1, v2, :cond_5

    const/16 v2, 0x53

    if-eq v1, v2, :cond_4

    const/16 v2, 0x56

    if-eq v1, v2, :cond_3

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x49

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_1
    const-class v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 109
    goto :goto_0

    .line 111
    :pswitch_2
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    goto :goto_0

    .line 120
    :cond_0
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 121
    goto :goto_0

    .line 117
    :cond_1
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 118
    goto :goto_0

    .line 105
    :cond_2
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 106
    goto :goto_0

    .line 102
    :cond_3
    const-class v2, Ljava/lang/Void;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 103
    goto :goto_0

    .line 114
    :cond_4
    const-class v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 115
    goto :goto_0

    .line 123
    :cond_5
    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 130
    .end local v1    # "ch":C
    :cond_6
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getComponentType()Lcom/tns/bindings/desc/ClassDescriptor;
    .locals 1

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstructors()[Lcom/tns/bindings/desc/MethodDescriptor;
    .locals 1

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tns/bindings/desc/MethodDescriptor;

    return-object v0
.end method

.method public getDeclaredMethods()[Lcom/tns/bindings/desc/MethodDescriptor;
    .locals 1

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tns/bindings/desc/MethodDescriptor;

    return-object v0
.end method

.method public getInterfaces()[Lcom/tns/bindings/desc/ClassDescriptor;
    .locals 1

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tns/bindings/desc/ClassDescriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;->sig:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;->sig:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperclass()Lcom/tns/bindings/desc/ClassDescriptor;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .line 63
    const/4 v0, 0x0

    return v0
.end method
