.class public Lcom/telerik/android/common/DataTuple;
.super Ljava/lang/Object;
.source "DataTuple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public firstValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public secondValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public thirdValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/telerik/android/common/DataTuple;, "Lcom/telerik/android/common/DataTuple<TT;TU;TV;>;"
    .local p1, "firstValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/telerik/android/common/DataTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/telerik/android/common/DataTuple;, "Lcom/telerik/android/common/DataTuple<TT;TU;TV;>;"
    .local p1, "firstValue":Ljava/lang/Object;, "TT;"
    .local p2, "secondValue":Ljava/lang/Object;, "TU;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/telerik/android/common/DataTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lcom/telerik/android/common/DataTuple;, "Lcom/telerik/android/common/DataTuple<TT;TU;TV;>;"
    .local p1, "firstValue":Ljava/lang/Object;, "TT;"
    .local p2, "secondValue":Ljava/lang/Object;, "TU;"
    .local p3, "thirdValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/telerik/android/common/DataTuple;->firstValue:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lcom/telerik/android/common/DataTuple;->secondValue:Ljava/lang/Object;

    .line 27
    iput-object p3, p0, Lcom/telerik/android/common/DataTuple;->thirdValue:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    .local p0, "this":Lcom/telerik/android/common/DataTuple;, "Lcom/telerik/android/common/DataTuple<TT;TU;TV;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/telerik/android/common/DataTuple;->firstValue:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/telerik/android/common/DataTuple;->secondValue:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/telerik/android/common/DataTuple;->thirdValue:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "FirstValue: %s SecondValue: %s ThirdValue: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
