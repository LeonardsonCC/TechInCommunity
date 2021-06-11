.class Lorg/ow2/asmdex/tree/MethodNode$1;
.super Ljava/util/ArrayList;
.source "MethodNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ow2/asmdex/tree/MethodNode;->visitAnnotationDefault()Lorg/ow2/asmdex/AnnotationVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7bafcb3f43691bf2L


# instance fields
.field final synthetic this$0:Lorg/ow2/asmdex/tree/MethodNode;


# direct methods
.method constructor <init>(Lorg/ow2/asmdex/tree/MethodNode;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/ow2/asmdex/tree/MethodNode;
    .param p2, "arg0"    # I

    .line 201
    iput-object p1, p0, Lorg/ow2/asmdex/tree/MethodNode$1;->this$0:Lorg/ow2/asmdex/tree/MethodNode;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lorg/ow2/asmdex/tree/MethodNode$1;->this$0:Lorg/ow2/asmdex/tree/MethodNode;

    iput-object p1, v0, Lorg/ow2/asmdex/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    .line 206
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
