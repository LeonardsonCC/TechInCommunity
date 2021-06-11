.class public Lcom/tns/bindings/AnnotationDescriptor$Parameter;
.super Ljava/lang/Object;
.source "AnnotationDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/bindings/AnnotationDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/tns/bindings/AnnotationDescriptor$Parameter;->name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/tns/bindings/AnnotationDescriptor$Parameter;->value:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tns/bindings/AnnotationDescriptor$Parameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/tns/bindings/AnnotationDescriptor$Parameter;->value:Ljava/lang/Object;

    return-object v0
.end method
