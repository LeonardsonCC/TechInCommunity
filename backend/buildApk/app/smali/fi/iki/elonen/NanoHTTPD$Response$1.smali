.class Lfi/iki/elonen/NanoHTTPD$Response$1;
.super Ljava/util/HashMap;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD$Response;


# direct methods
.method constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response;)V
    .locals 0
    .param p1, "this$0"    # Lfi/iki/elonen/NanoHTTPD$Response;

    .line 1532
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response$1;->this$0:Lfi/iki/elonen/NanoHTTPD$Response;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1532
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lfi/iki/elonen/NanoHTTPD$Response$1;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1535
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$1;->this$0:Lfi/iki/elonen/NanoHTTPD$Response;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$Response;->access$600(Lfi/iki/elonen/NanoHTTPD$Response;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
