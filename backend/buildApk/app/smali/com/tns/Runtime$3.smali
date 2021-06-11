.class Lcom/tns/Runtime$3;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/Runtime;->initInstanceFromPossibleNonMainThread(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$instance:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/tns/Runtime$3;->val$instance:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/tns/Runtime$3;->val$instance:Ljava/lang/Object;

    invoke-static {v0}, Lcom/tns/Runtime;->initInstance(Ljava/lang/Object;)V

    .line 773
    return-void
.end method
