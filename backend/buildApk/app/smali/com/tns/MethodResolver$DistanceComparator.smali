.class Lcom/tns/MethodResolver$DistanceComparator;
.super Ljava/lang/Object;
.source "MethodResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/MethodResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DistanceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tns/MethodResolver$Tuple<",
        "*",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tns/MethodResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tns/MethodResolver$1;

    .line 57
    invoke-direct {p0}, Lcom/tns/MethodResolver$DistanceComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tns/MethodResolver$Tuple;Lcom/tns/MethodResolver$Tuple;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tns/MethodResolver$Tuple<",
            "*",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tns/MethodResolver$Tuple<",
            "*",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 60
    .local p1, "left":Lcom/tns/MethodResolver$Tuple;, "Lcom/tns/MethodResolver$Tuple<*Ljava/lang/Integer;>;"
    .local p2, "right":Lcom/tns/MethodResolver$Tuple;, "Lcom/tns/MethodResolver$Tuple<*Ljava/lang/Integer;>;"
    iget-object v0, p1, Lcom/tns/MethodResolver$Tuple;->y:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p2, Lcom/tns/MethodResolver$Tuple;->y:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 57
    check-cast p1, Lcom/tns/MethodResolver$Tuple;

    check-cast p2, Lcom/tns/MethodResolver$Tuple;

    invoke-virtual {p0, p1, p2}, Lcom/tns/MethodResolver$DistanceComparator;->compare(Lcom/tns/MethodResolver$Tuple;Lcom/tns/MethodResolver$Tuple;)I

    move-result p1

    return p1
.end method
