.class public abstract Lorg/ow2/asmdex/FieldVisitor;
.super Ljava/lang/Object;
.source "FieldVisitor.java"


# instance fields
.field protected final api:I

.field protected fv:Lorg/ow2/asmdex/FieldVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "api"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lorg/ow2/asmdex/FieldVisitor;->api:I

    .line 66
    return-void
.end method

.method public constructor <init>(ILorg/ow2/asmdex/FieldVisitor;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "fv"    # Lorg/ow2/asmdex/FieldVisitor;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lorg/ow2/asmdex/FieldVisitor;->api:I

    .line 76
    iput-object p2, p0, Lorg/ow2/asmdex/FieldVisitor;->fv:Lorg/ow2/asmdex/FieldVisitor;

    .line 77
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 88
    iget-object v0, p0, Lorg/ow2/asmdex/FieldVisitor;->fv:Lorg/ow2/asmdex/FieldVisitor;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAttribute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "attr"    # Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lorg/ow2/asmdex/FieldVisitor;->fv:Lorg/ow2/asmdex/FieldVisitor;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/FieldVisitor;->visitAttribute(Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/ow2/asmdex/FieldVisitor;->fv:Lorg/ow2/asmdex/FieldVisitor;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lorg/ow2/asmdex/FieldVisitor;->visitEnd()V

    .line 116
    :cond_0
    return-void
.end method
