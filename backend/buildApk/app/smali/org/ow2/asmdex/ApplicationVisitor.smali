.class public abstract Lorg/ow2/asmdex/ApplicationVisitor;
.super Ljava/lang/Object;
.source "ApplicationVisitor.java"


# instance fields
.field protected final api:I

.field protected av:Lorg/ow2/asmdex/ApplicationVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "api"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lorg/ow2/asmdex/ApplicationVisitor;->api:I

    .line 61
    return-void
.end method

.method public constructor <init>(ILorg/ow2/asmdex/ApplicationVisitor;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "av"    # Lorg/ow2/asmdex/ApplicationVisitor;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lorg/ow2/asmdex/ApplicationVisitor;->api:I

    .line 71
    iput-object p2, p0, Lorg/ow2/asmdex/ApplicationVisitor;->av:Lorg/ow2/asmdex/ApplicationVisitor;

    .line 72
    return-void
.end method


# virtual methods
.method public visit()V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationVisitor;->av:Lorg/ow2/asmdex/ApplicationVisitor;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lorg/ow2/asmdex/ApplicationVisitor;->visit()V

    .line 81
    :cond_0
    return-void
.end method

.method public visitClass(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/ClassVisitor;
    .locals 6
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "signature"    # [Ljava/lang/String;
    .param p4, "superName"    # Ljava/lang/String;
    .param p5, "interfaces"    # [Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationVisitor;->av:Lorg/ow2/asmdex/ApplicationVisitor;

    if-eqz v0, :cond_0

    .line 110
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/ow2/asmdex/ApplicationVisitor;->visitClass(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/ClassVisitor;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationVisitor;->av:Lorg/ow2/asmdex/ApplicationVisitor;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lorg/ow2/asmdex/ApplicationVisitor;->visitEnd()V

    .line 124
    :cond_0
    return-void
.end method
