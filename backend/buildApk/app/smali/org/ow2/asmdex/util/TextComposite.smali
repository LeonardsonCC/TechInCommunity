.class public Lorg/ow2/asmdex/util/TextComposite;
.super Ljava/lang/Object;
.source "TextComposite.java"

# interfaces
.implements Lorg/ow2/asmdex/util/TextComponent;


# instance fields
.field private componentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/util/TextComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/util/TextComposite;->componentList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addComponent(Lorg/ow2/asmdex/util/TextComponent;)V
    .locals 1
    .param p1, "component"    # Lorg/ow2/asmdex/util/TextComponent;

    .line 62
    iget-object v0, p0, Lorg/ow2/asmdex/util/TextComposite;->componentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 52
    iget-object v0, p0, Lorg/ow2/asmdex/util/TextComposite;->componentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/util/TextComponent;

    .line 53
    .local v1, "component":Lorg/ow2/asmdex/util/TextComponent;
    invoke-interface {v1, p1}, Lorg/ow2/asmdex/util/TextComponent;->print(Ljava/io/PrintWriter;)V

    .line 54
    .end local v1    # "component":Lorg/ow2/asmdex/util/TextComponent;
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method
