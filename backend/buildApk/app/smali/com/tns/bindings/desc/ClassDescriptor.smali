.class public interface abstract Lcom/tns/bindings/desc/ClassDescriptor;
.super Ljava/lang/Object;
.source "ClassDescriptor.java"

# interfaces
.implements Lcom/tns/bindings/desc/Descriptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;
    }
.end annotation


# static fields
.field public static final BOOLEAN:Lcom/tns/bindings/desc/ClassDescriptor;

.field public static final BYTE:Lcom/tns/bindings/desc/ClassDescriptor;

.field public static final CHAR:Lcom/tns/bindings/desc/ClassDescriptor;

.field public static final DOUBLE:Lcom/tns/bindings/desc/ClassDescriptor;

.field public static final FLOAT:Lcom/tns/bindings/desc/ClassDescriptor;

.field public static final INT:Lcom/tns/bindings/desc/ClassDescriptor;

.field public static final LONG:Lcom/tns/bindings/desc/ClassDescriptor;

.field public static final SHORT:Lcom/tns/bindings/desc/ClassDescriptor;

.field public static final VOID:Lcom/tns/bindings/desc/ClassDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 153
    new-instance v0, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;

    const-string v1, "V"

    invoke-direct {v0, v1}, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->VOID:Lcom/tns/bindings/desc/ClassDescriptor;

    .line 154
    new-instance v0, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->BOOLEAN:Lcom/tns/bindings/desc/ClassDescriptor;

    .line 155
    new-instance v0, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;

    const-string v1, "C"

    invoke-direct {v0, v1}, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->CHAR:Lcom/tns/bindings/desc/ClassDescriptor;

    .line 156
    new-instance v0, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;

    const-string v1, "B"

    invoke-direct {v0, v1}, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->BYTE:Lcom/tns/bindings/desc/ClassDescriptor;

    .line 157
    new-instance v0, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;

    const-string v1, "S"

    invoke-direct {v0, v1}, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->SHORT:Lcom/tns/bindings/desc/ClassDescriptor;

    .line 158
    new-instance v0, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;

    const-string v1, "I"

    invoke-direct {v0, v1}, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->INT:Lcom/tns/bindings/desc/ClassDescriptor;

    .line 159
    new-instance v0, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;

    const-string v1, "J"

    invoke-direct {v0, v1}, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->LONG:Lcom/tns/bindings/desc/ClassDescriptor;

    .line 160
    new-instance v0, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;

    const-string v1, "F"

    invoke-direct {v0, v1}, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->FLOAT:Lcom/tns/bindings/desc/ClassDescriptor;

    .line 161
    new-instance v0, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;

    const-string v1, "D"

    invoke-direct {v0, v1}, Lcom/tns/bindings/desc/ClassDescriptor$PrimitiveTypeInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tns/bindings/desc/ClassDescriptor;->DOUBLE:Lcom/tns/bindings/desc/ClassDescriptor;

    return-void
.end method


# virtual methods
.method public abstract getComponentType()Lcom/tns/bindings/desc/ClassDescriptor;
.end method

.method public abstract getConstructors()[Lcom/tns/bindings/desc/MethodDescriptor;
.end method

.method public abstract getDeclaredMethods()[Lcom/tns/bindings/desc/MethodDescriptor;
.end method

.method public abstract getInterfaces()[Lcom/tns/bindings/desc/ClassDescriptor;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public abstract getSuperclass()Lcom/tns/bindings/desc/ClassDescriptor;
.end method

.method public abstract isArray()Z
.end method

.method public abstract isInterface()Z
.end method

.method public abstract isPrimitive()Z
.end method
