.class public Lorg/ow2/asmdex/util/RegisterShiftApplicationAdapter;
.super Lorg/ow2/asmdex/ApplicationVisitor;
.source "RegisterShiftApplicationAdapter.java"


# instance fields
.field protected shiftClassAdapter:Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;


# direct methods
.method public constructor <init>(ILorg/ow2/asmdex/ApplicationVisitor;Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "av"    # Lorg/ow2/asmdex/ApplicationVisitor;
    .param p3, "shiftClassAdapter"    # Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/ow2/asmdex/ApplicationVisitor;-><init>(ILorg/ow2/asmdex/ApplicationVisitor;)V

    .line 59
    iput-object p3, p0, Lorg/ow2/asmdex/util/RegisterShiftApplicationAdapter;->shiftClassAdapter:Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;

    .line 60
    return-void
.end method


# virtual methods
.method public visitClass(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/ClassVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "signature"    # [Ljava/lang/String;
    .param p4, "superName"    # Ljava/lang/String;
    .param p5, "interfaces"    # [Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lorg/ow2/asmdex/util/RegisterShiftApplicationAdapter;->av:Lorg/ow2/asmdex/ApplicationVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/ApplicationVisitor;->visitClass(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/ClassVisitor;

    move-result-object v0

    .line 67
    .local v0, "cv":Lorg/ow2/asmdex/ClassVisitor;
    iget-object v1, p0, Lorg/ow2/asmdex/util/RegisterShiftApplicationAdapter;->shiftClassAdapter:Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;

    invoke-virtual {v1, v0}, Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;->setClassVisitor(Lorg/ow2/asmdex/ClassVisitor;)V

    .line 68
    iget-object v1, p0, Lorg/ow2/asmdex/util/RegisterShiftApplicationAdapter;->shiftClassAdapter:Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;

    invoke-virtual {v1, p2}, Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;->setClassName(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lorg/ow2/asmdex/util/RegisterShiftApplicationAdapter;->shiftClassAdapter:Lorg/ow2/asmdex/util/RegisterShiftClassAdapter;

    return-object v1
.end method
