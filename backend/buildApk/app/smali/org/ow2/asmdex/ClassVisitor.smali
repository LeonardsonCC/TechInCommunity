.class public abstract Lorg/ow2/asmdex/ClassVisitor;
.super Ljava/lang/Object;
.source "ClassVisitor.java"


# instance fields
.field protected final api:I

.field protected cv:Lorg/ow2/asmdex/ClassVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "api"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lorg/ow2/asmdex/ClassVisitor;->api:I

    .line 76
    return-void
.end method

.method public constructor <init>(ILorg/ow2/asmdex/ClassVisitor;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "cv"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lorg/ow2/asmdex/ClassVisitor;->api:I

    .line 86
    iput-object p2, p0, Lorg/ow2/asmdex/ClassVisitor;->cv:Lorg/ow2/asmdex/ClassVisitor;

    .line 87
    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lorg/ow2/asmdex/ClassVisitor;->cv:Lorg/ow2/asmdex/ClassVisitor;

    if-eqz v0, :cond_0

    .line 125
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/ClassVisitor;->visit(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 175
    iget-object v0, p0, Lorg/ow2/asmdex/ClassVisitor;->cv:Lorg/ow2/asmdex/ClassVisitor;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/ow2/asmdex/AnnotationVisitor;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAttribute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "attr"    # Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lorg/ow2/asmdex/ClassVisitor;->cv:Lorg/ow2/asmdex/ClassVisitor;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/ClassVisitor;->visitAttribute(Ljava/lang/Object;)V

    .line 191
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/ow2/asmdex/ClassVisitor;->cv:Lorg/ow2/asmdex/ClassVisitor;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lorg/ow2/asmdex/ClassVisitor;->visitEnd()V

    .line 304
    :cond_0
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lorg/ow2/asmdex/ClassVisitor;->cv:Lorg/ow2/asmdex/ClassVisitor;

    if-eqz v0, :cond_0

    .line 261
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/FieldVisitor;

    move-result-object v0

    return-object v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 211
    iget-object v0, p0, Lorg/ow2/asmdex/ClassVisitor;->cv:Lorg/ow2/asmdex/ClassVisitor;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ow2/asmdex/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    :cond_0
    return-void
.end method

.method public visitMemberClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lorg/ow2/asmdex/ClassVisitor;->cv:Lorg/ow2/asmdex/ClassVisitor;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1, p2, p3}, Lorg/ow2/asmdex/ClassVisitor;->visitMemberClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lorg/ow2/asmdex/ClassVisitor;->cv:Lorg/ow2/asmdex/ClassVisitor;

    if-eqz v0, :cond_0

    .line 290
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lorg/ow2/asmdex/ClassVisitor;->cv:Lorg/ow2/asmdex/ClassVisitor;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1, p2, p3}, Lorg/ow2/asmdex/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lorg/ow2/asmdex/ClassVisitor;->cv:Lorg/ow2/asmdex/ClassVisitor;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
