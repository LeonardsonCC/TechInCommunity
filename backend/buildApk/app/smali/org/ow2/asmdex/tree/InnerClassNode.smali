.class public Lorg/ow2/asmdex/tree/InnerClassNode;
.super Ljava/lang/Object;
.source "InnerClassNode.java"


# instance fields
.field public access:I

.field public innerName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public outerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/ow2/asmdex/tree/InnerClassNode;->name:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lorg/ow2/asmdex/tree/InnerClassNode;->outerName:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lorg/ow2/asmdex/tree/InnerClassNode;->innerName:Ljava/lang/String;

    .line 86
    iput p4, p0, Lorg/ow2/asmdex/tree/InnerClassNode;->access:I

    .line 87
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/ClassVisitor;)V
    .locals 4
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 95
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InnerClassNode;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/ow2/asmdex/tree/InnerClassNode;->outerName:Ljava/lang/String;

    iget-object v2, p0, Lorg/ow2/asmdex/tree/InnerClassNode;->innerName:Ljava/lang/String;

    iget v3, p0, Lorg/ow2/asmdex/tree/InnerClassNode;->access:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/ow2/asmdex/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    return-void
.end method
