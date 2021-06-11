.class Lcom/tns/Runtime$4;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/Runtime;->callJSMethodFromPossibleNonMainThread(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$delay:J

.field final synthetic val$isConstructor:Z

.field final synthetic val$javaObject:Ljava/lang/Object;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$retType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/tns/Runtime$4;->val$javaObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tns/Runtime$4;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lcom/tns/Runtime$4;->val$retType:Ljava/lang/Class;

    iput-boolean p4, p0, Lcom/tns/Runtime$4;->val$isConstructor:Z

    iput-wide p5, p0, Lcom/tns/Runtime$4;->val$delay:J

    iput-object p7, p0, Lcom/tns/Runtime$4;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7

    .line 1127
    iget-object v0, p0, Lcom/tns/Runtime$4;->val$javaObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tns/Runtime$4;->val$methodName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tns/Runtime$4;->val$retType:Ljava/lang/Class;

    iget-boolean v3, p0, Lcom/tns/Runtime$4;->val$isConstructor:Z

    iget-wide v4, p0, Lcom/tns/Runtime$4;->val$delay:J

    iget-object v6, p0, Lcom/tns/Runtime$4;->val$args:[Ljava/lang/Object;

    invoke-static/range {v0 .. v6}, Lcom/tns/Runtime;->callJSMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;ZJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
