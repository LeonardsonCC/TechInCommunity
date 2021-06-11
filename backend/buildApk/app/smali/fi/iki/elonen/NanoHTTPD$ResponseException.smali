.class public final Lfi/iki/elonen/NanoHTTPD$ResponseException;
.super Ljava/lang/Exception;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b2cc1565237327cL


# instance fields
.field private final status:Lfi/iki/elonen/NanoHTTPD$Response$Status;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .param p2, "message"    # Ljava/lang/String;

    .line 1785
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1786
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ResponseException;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1787
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1790
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1791
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ResponseException;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1792
    return-void
.end method


# virtual methods
.method public getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    .line 1795
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ResponseException;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object v0
.end method
