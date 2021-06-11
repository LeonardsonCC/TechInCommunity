.class public interface abstract Lcom/tns/bindings/desc/MethodDescriptor;
.super Ljava/lang/Object;
.source "MethodDescriptor.java"

# interfaces
.implements Lcom/tns/bindings/desc/Descriptor;


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterTypes()[Lcom/tns/bindings/desc/ClassDescriptor;
.end method

.method public abstract getReturnType()Lcom/tns/bindings/desc/ClassDescriptor;
.end method

.method public abstract isInterfaceMethod()Z
.end method

.method public abstract setAsInterfaceMethod()V
.end method

.method public abstract toGenericString()Ljava/lang/String;
.end method
