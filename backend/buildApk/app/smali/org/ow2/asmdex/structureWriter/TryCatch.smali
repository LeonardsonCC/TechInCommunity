.class public Lorg/ow2/asmdex/structureWriter/TryCatch;
.super Ljava/lang/Object;
.source "TryCatch.java"


# instance fields
.field private catchAllHandler:Lorg/ow2/asmdex/structureCommon/Label;

.field private final end:Lorg/ow2/asmdex/structureCommon/Label;

.field private exceptionHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/ExceptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final start:Lorg/ow2/asmdex/structureCommon/Label;


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureWriter/ExceptionHandler;)V
    .locals 1
    .param p1, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p2, "end"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "exceptionHandler"    # Lorg/ow2/asmdex/structureWriter/ExceptionHandler;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/TryCatch;->exceptionHandlers:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/TryCatch;->start:Lorg/ow2/asmdex/structureCommon/Label;

    .line 76
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/TryCatch;->end:Lorg/ow2/asmdex/structureCommon/Label;

    .line 77
    invoke-virtual {p0, p3}, Lorg/ow2/asmdex/structureWriter/TryCatch;->addExceptionHandler(Lorg/ow2/asmdex/structureWriter/ExceptionHandler;)V

    .line 78
    return-void
.end method


# virtual methods
.method public addExceptionHandler(Lorg/ow2/asmdex/structureWriter/ExceptionHandler;)V
    .locals 2
    .param p1, "exceptionHandler"    # Lorg/ow2/asmdex/structureWriter/ExceptionHandler;

    .line 85
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/TryCatch;->exceptionHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/TryCatch;->hasCatchAll()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->getHandler()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/TryCatch;->catchAllHandler:Lorg/ow2/asmdex/structureCommon/Label;

    goto :goto_0

    .line 89
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "A Try/Catch can\'t support more than one CatchAll."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "exceptionHandler":Lorg/ow2/asmdex/structureWriter/ExceptionHandler;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .restart local p1    # "exceptionHandler":Lorg/ow2/asmdex/structureWriter/ExceptionHandler;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public addExceptionHandlers(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/ExceptionHandler;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "exceptionHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/ExceptionHandler;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;

    .line 107
    .local v1, "exceptionHandler":Lorg/ow2/asmdex/structureWriter/ExceptionHandler;
    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/structureWriter/TryCatch;->addExceptionHandler(Lorg/ow2/asmdex/structureWriter/ExceptionHandler;)V

    .line 108
    .end local v1    # "exceptionHandler":Lorg/ow2/asmdex/structureWriter/ExceptionHandler;
    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public getCatchAllHandler()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/TryCatch;->catchAllHandler:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getEnd()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/TryCatch;->end:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getExceptionHandlers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/ExceptionHandler;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/TryCatch;->exceptionHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNbExceptionHandler()I
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/TryCatch;->exceptionHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getStart()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/TryCatch;->start:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public hasCatchAll()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/TryCatch;->catchAllHandler:Lorg/ow2/asmdex/structureCommon/Label;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
