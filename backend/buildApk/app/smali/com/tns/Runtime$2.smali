.class Lcom/tns/Runtime$2;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/Runtime;->runScript(Ljava/io/File;Z)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/Runtime;

.field final synthetic val$arr:[Ljava/lang/Object;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tns/Runtime;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tns/Runtime;

    .line 709
    iput-object p1, p0, Lcom/tns/Runtime$2;->this$0:Lcom/tns/Runtime;

    iput-object p2, p0, Lcom/tns/Runtime$2;->val$arr:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/tns/Runtime$2;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 712
    monitor-enter p0

    .line 714
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/tns/Runtime$2;->val$arr:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tns/Runtime$2;->this$0:Lcom/tns/Runtime;

    iget-object v4, p0, Lcom/tns/Runtime$2;->this$0:Lcom/tns/Runtime;

    invoke-virtual {v4}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v4

    iget-object v5, p0, Lcom/tns/Runtime$2;->val$filePath:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/tns/Runtime;->access$2000(Lcom/tns/Runtime;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 717
    iget-object v1, p0, Lcom/tns/Runtime$2;->val$arr:[Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    .line 718
    nop

    .line 719
    monitor-exit p0

    .line 720
    return-void

    .line 716
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 717
    iget-object v2, p0, Lcom/tns/Runtime$2;->val$arr:[Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    .line 718
    throw v1

    .line 719
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
