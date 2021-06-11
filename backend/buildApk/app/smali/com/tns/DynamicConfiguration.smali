.class public Lcom/tns/DynamicConfiguration;
.super Ljava/lang/Object;
.source "DynamicConfiguration.java"


# instance fields
.field public callingJsDir:Ljava/lang/String;

.field public final mainThreadScheduler:Lcom/tns/ThreadScheduler;

.field public final myThreadScheduler:Lcom/tns/ThreadScheduler;

.field public final workerId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lcom/tns/ThreadScheduler;Lcom/tns/ThreadScheduler;)V
    .locals 0
    .param p1, "workerId"    # Ljava/lang/Integer;
    .param p2, "myThreadScheduler"    # Lcom/tns/ThreadScheduler;
    .param p3, "mainThreadScheduler"    # Lcom/tns/ThreadScheduler;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tns/DynamicConfiguration;->workerId:Ljava/lang/Integer;

    .line 16
    iput-object p2, p0, Lcom/tns/DynamicConfiguration;->myThreadScheduler:Lcom/tns/ThreadScheduler;

    .line 17
    iput-object p3, p0, Lcom/tns/DynamicConfiguration;->mainThreadScheduler:Lcom/tns/ThreadScheduler;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/tns/ThreadScheduler;Lcom/tns/ThreadScheduler;Ljava/lang/String;)V
    .locals 0
    .param p1, "workerId"    # Ljava/lang/Integer;
    .param p2, "myThreadScheduler"    # Lcom/tns/ThreadScheduler;
    .param p3, "mainThreadScheduler"    # Lcom/tns/ThreadScheduler;
    .param p4, "callingJsDir"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/tns/DynamicConfiguration;-><init>(Ljava/lang/Integer;Lcom/tns/ThreadScheduler;Lcom/tns/ThreadScheduler;)V

    .line 22
    iput-object p4, p0, Lcom/tns/DynamicConfiguration;->callingJsDir:Ljava/lang/String;

    .line 23
    return-void
.end method
