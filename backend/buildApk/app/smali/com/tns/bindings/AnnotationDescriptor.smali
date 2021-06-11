.class public Lcom/tns/bindings/AnnotationDescriptor;
.super Ljava/lang/Object;
.source "AnnotationDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/bindings/AnnotationDescriptor$Parameter;
    }
.end annotation


# instance fields
.field private final classname:Ljava/lang/String;

.field private final isRuntimeVisible:Z

.field private final parameters:[Lcom/tns/bindings/AnnotationDescriptor$Parameter;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/tns/bindings/AnnotationDescriptor$Parameter;Z)V
    .locals 0
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "parameters"    # [Lcom/tns/bindings/AnnotationDescriptor$Parameter;
    .param p3, "isRuntimeVisible"    # Z

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tns/bindings/AnnotationDescriptor;->classname:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/tns/bindings/AnnotationDescriptor;->parameters:[Lcom/tns/bindings/AnnotationDescriptor$Parameter;

    .line 27
    iput-boolean p3, p0, Lcom/tns/bindings/AnnotationDescriptor;->isRuntimeVisible:Z

    .line 28
    return-void
.end method


# virtual methods
.method public getAnnotationClassname()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tns/bindings/AnnotationDescriptor;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()[Lcom/tns/bindings/AnnotationDescriptor$Parameter;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tns/bindings/AnnotationDescriptor;->parameters:[Lcom/tns/bindings/AnnotationDescriptor$Parameter;

    return-object v0
.end method

.method public isRuntimeVisible()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/tns/bindings/AnnotationDescriptor;->isRuntimeVisible:Z

    return v0
.end method
