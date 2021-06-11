.class public Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;
.super Lorg/ow2/asmdex/ClassVisitor;
.source "RegisterShiftClassAdapter.java"


# instance fields
.field protected className:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/ow2/asmdex/ClassVisitor;-><init>(ILorg/ow2/asmdex/ClassVisitor;)V

    .line 63
    return-void
.end method


# virtual methods
.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;->className:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setClassVisitor(Lorg/ow2/asmdex/ClassVisitor;)V
    .locals 0
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 70
    iput-object p1, p0, Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;->cv:Lorg/ow2/asmdex/ClassVisitor;

    .line 71
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;->cv:Lorg/ow2/asmdex/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v0

    .line 86
    .local v0, "mv":Lorg/ow2/asmdex/MethodVisitor;
    new-instance v1, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;

    iget v2, p0, Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;->api:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;-><init>(ILorg/ow2/asmdex/MethodVisitor;I)V

    return-object v1
.end method
