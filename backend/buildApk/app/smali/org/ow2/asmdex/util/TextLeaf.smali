.class public Lorg/ow2/asmdex/util/TextLeaf;
.super Ljava/lang/Object;
.source "TextLeaf.java"

# interfaces
.implements Lorg/ow2/asmdex/util/TextComponent;


# instance fields
.field protected text:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuffer;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/util/TextLeaf;->text:Ljava/lang/StringBuffer;

    .line 53
    iput-object p1, p0, Lorg/ow2/asmdex/util/TextLeaf;->text:Ljava/lang/StringBuffer;

    .line 54
    return-void
.end method


# virtual methods
.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 58
    iget-object v0, p0, Lorg/ow2/asmdex/util/TextLeaf;->text:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 59
    return-void
.end method
