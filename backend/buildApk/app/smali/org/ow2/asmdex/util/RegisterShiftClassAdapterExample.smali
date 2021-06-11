.class public Lorg/ow2/asmdex/util/RegisterShiftClassAdapterExample;
.super Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;
.source "RegisterShiftClassAdapterExample.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "api"    # I

    .line 50
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;-><init>(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # [Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lorg/ow2/asmdex/util/RegisterShiftClassAdapterExample;->cv:Lorg/ow2/asmdex/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/MethodVisitor;

    move-result-object v0

    .line 59
    .local v0, "mv":Lorg/ow2/asmdex/MethodVisitor;
    const/4 v1, 0x1

    .line 60
    .local v1, "registerShift":I
    iget-object v2, p0, Lorg/ow2/asmdex/util/RegisterShiftClassAdapterExample;->className:Ljava/lang/String;

    const-string v3, "xx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "yy"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const/4 v1, 0x2

    .line 63
    :cond_0
    new-instance v2, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;

    iget v3, p0, Lorg/ow2/asmdex/util/RegisterShiftClassAdapterExample;->api:I

    invoke-direct {v2, v3, v0, v1}, Lorg/ow2/asmdex/util/RegisterShiftMethodAdapter;-><init>(ILorg/ow2/asmdex/MethodVisitor;I)V

    return-object v2
.end method
