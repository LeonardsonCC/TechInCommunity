.class public Lorg/ow2/asmdex/structureReader/TryCatch;
.super Ljava/lang/Object;
.source "TryCatch.java"


# instance fields
.field private end:Lorg/ow2/asmdex/structureCommon/Label;

.field private handler:Lorg/ow2/asmdex/structureCommon/Label;

.field private start:Lorg/ow2/asmdex/structureCommon/Label;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Lorg/ow2/asmdex/structureCommon/Label;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p2, "end"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p3, "handler"    # Lorg/ow2/asmdex/structureCommon/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/ow2/asmdex/structureReader/TryCatch;->start:Lorg/ow2/asmdex/structureCommon/Label;

    .line 72
    iput-object p2, p0, Lorg/ow2/asmdex/structureReader/TryCatch;->end:Lorg/ow2/asmdex/structureCommon/Label;

    .line 73
    iput-object p3, p0, Lorg/ow2/asmdex/structureReader/TryCatch;->handler:Lorg/ow2/asmdex/structureCommon/Label;

    .line 74
    iput-object p4, p0, Lorg/ow2/asmdex/structureReader/TryCatch;->type:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public getEnd()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/ow2/asmdex/structureReader/TryCatch;->end:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getHandler()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/ow2/asmdex/structureReader/TryCatch;->handler:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getStart()Lorg/ow2/asmdex/structureCommon/Label;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/ow2/asmdex/structureReader/TryCatch;->start:Lorg/ow2/asmdex/structureCommon/Label;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/ow2/asmdex/structureReader/TryCatch;->type:Ljava/lang/String;

    return-object v0
.end method
