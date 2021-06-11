.class Lorg/ow2/asmdex/tree/AnnotationNode$ClassString;
.super Ljava/lang/Object;
.source "AnnotationNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ow2/asmdex/tree/AnnotationNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassString"
.end annotation


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/ow2/asmdex/tree/AnnotationNode$ClassString;->value:Ljava/lang/String;

    .line 60
    return-void
.end method
