.class Lcom/tns/Runtime$5;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/Runtime;->dispatchCallJSMethodNative(ILjava/lang/String;ZJLjava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/Runtime;

.field final synthetic val$arr:[Ljava/lang/Object;

.field final synthetic val$discardUncaughtJsExceptions:Z

.field final synthetic val$isCtor:Z

.field final synthetic val$javaObjectID:I

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$returnType:I

.field final synthetic val$tmpArgs:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tns/Runtime;[Ljava/lang/Object;[Ljava/lang/Object;ILjava/lang/String;IZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/tns/Runtime;

    .line 1317
    iput-object p1, p0, Lcom/tns/Runtime$5;->this$0:Lcom/tns/Runtime;

    iput-object p2, p0, Lcom/tns/Runtime$5;->val$tmpArgs:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/tns/Runtime$5;->val$arr:[Ljava/lang/Object;

    iput p4, p0, Lcom/tns/Runtime$5;->val$javaObjectID:I

    iput-object p5, p0, Lcom/tns/Runtime$5;->val$methodName:Ljava/lang/String;

    iput p6, p0, Lcom/tns/Runtime$5;->val$returnType:I

    iput-boolean p7, p0, Lcom/tns/Runtime$5;->val$isCtor:Z

    iput-boolean p8, p0, Lcom/tns/Runtime$5;->val$discardUncaughtJsExceptions:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1320
    monitor-enter p0

    .line 1322
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/tns/Runtime$5;->this$0:Lcom/tns/Runtime;

    iget-object v2, p0, Lcom/tns/Runtime$5;->val$tmpArgs:[Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tns/Runtime;->access$2100(Lcom/tns/Runtime;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .line 1323
    .local v9, "packagedArgs":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/tns/Runtime$5;->val$arr:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tns/Runtime$5;->this$0:Lcom/tns/Runtime;

    iget-object v4, p0, Lcom/tns/Runtime$5;->this$0:Lcom/tns/Runtime;

    invoke-virtual {v4}, Lcom/tns/Runtime;->getRuntimeId()I

    move-result v4

    iget v5, p0, Lcom/tns/Runtime$5;->val$javaObjectID:I

    iget-object v6, p0, Lcom/tns/Runtime$5;->val$methodName:Ljava/lang/String;

    iget v7, p0, Lcom/tns/Runtime$5;->val$returnType:I

    iget-boolean v8, p0, Lcom/tns/Runtime$5;->val$isCtor:Z

    invoke-static/range {v3 .. v9}, Lcom/tns/Runtime;->access$2200(Lcom/tns/Runtime;IILjava/lang/String;IZ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Lcom/tns/NativeScriptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    .end local v9    # "packagedArgs":[Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1334
    iget-object v1, p0, Lcom/tns/Runtime$5;->val$arr:[Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1335
    :goto_0
    goto :goto_1

    .line 1333
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1324
    :catch_0
    move-exception v1

    .line 1325
    .local v1, "e":Lcom/tns/NativeScriptException;
    :try_start_2
    iget-boolean v2, p0, Lcom/tns/Runtime$5;->val$discardUncaughtJsExceptions:Z

    if-eqz v2, :cond_0

    .line 1326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" thread for callJSMethodNative\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1327
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/tns/Runtime$5;->this$0:Lcom/tns/Runtime;

    invoke-virtual {v3, v1, v2}, Lcom/tns/Runtime;->passDiscardedExceptionToJs(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1328
    const-string v3, "Warning"

    const-string v4, "NativeScript discarding uncaught JS exception!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1329
    nop

    .line 1333
    .end local v1    # "e":Lcom/tns/NativeScriptException;
    .end local v2    # "errorMessage":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1334
    iget-object v1, p0, Lcom/tns/Runtime$5;->val$arr:[Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    goto :goto_0

    .line 1336
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1337
    return-void

    .line 1330
    .restart local v1    # "e":Lcom/tns/NativeScriptException;
    :cond_0
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1333
    .end local v1    # "e":Lcom/tns/NativeScriptException;
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1334
    iget-object v2, p0, Lcom/tns/Runtime$5;->val$arr:[Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    .line 1335
    throw v1

    .line 1336
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
