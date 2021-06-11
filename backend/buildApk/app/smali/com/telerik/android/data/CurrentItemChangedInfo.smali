.class public Lcom/telerik/android/data/CurrentItemChangedInfo;
.super Ljava/lang/Object;
.source "CurrentItemChangedInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 4
    .local p0, "this":Lcom/telerik/android/data/CurrentItemChangedInfo;, "Lcom/telerik/android/data/CurrentItemChangedInfo<TE;>;"
    .local p1, "oldItem":Ljava/lang/Object;, "TE;"
    .local p2, "newItem":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method
