.class Lcom/tns/MethodResolver$Tuple;
.super Ljava/lang/Object;
.source "MethodResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/MethodResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tuple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final x:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TX;"
        }
    .end annotation
.end field

.field public final y:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TY;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;TY;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/tns/MethodResolver$Tuple;, "Lcom/tns/MethodResolver$Tuple<TX;TY;>;"
    .local p1, "x":Ljava/lang/Object;, "TX;"
    .local p2, "y":Ljava/lang/Object;, "TY;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/tns/MethodResolver$Tuple;->x:Ljava/lang/Object;

    .line 53
    iput-object p2, p0, Lcom/tns/MethodResolver$Tuple;->y:Ljava/lang/Object;

    .line 54
    return-void
.end method
