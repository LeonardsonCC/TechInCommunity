.class public Lorg/ow2/asmdex/tree/MemberClassNode;
.super Ljava/lang/Object;
.source "MemberClassNode.java"


# instance fields
.field public innerName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public outerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/ow2/asmdex/tree/MemberClassNode;->name:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lorg/ow2/asmdex/tree/MemberClassNode;->outerName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lorg/ow2/asmdex/tree/MemberClassNode;->innerName:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/ClassVisitor;)V
    .locals 3
    .param p1, "cv"    # Lorg/ow2/asmdex/ClassVisitor;

    .line 57
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MemberClassNode;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/ow2/asmdex/tree/MemberClassNode;->outerName:Ljava/lang/String;

    iget-object v2, p0, Lorg/ow2/asmdex/tree/MemberClassNode;->innerName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lorg/ow2/asmdex/ClassVisitor;->visitMemberClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
