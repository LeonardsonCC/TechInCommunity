.class public Lcom/tns/JavaScriptErrorMessage;
.super Ljava/lang/Object;
.source "JavaScriptErrorMessage.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private lineno:I

.field private message:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;

.field private threadName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "lineno"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/tns/JavaScriptErrorMessage;->message:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/tns/JavaScriptErrorMessage;->filename:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/tns/JavaScriptErrorMessage;->stackTrace:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/tns/JavaScriptErrorMessage;->lineno:I

    .line 15
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "lineno"    # I
    .param p5, "threadName"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tns/JavaScriptErrorMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    iput-object p5, p0, Lcom/tns/JavaScriptErrorMessage;->threadName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tns/JavaScriptErrorMessage;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getLineno()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/tns/JavaScriptErrorMessage;->lineno:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tns/JavaScriptErrorMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tns/JavaScriptErrorMessage;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tns/JavaScriptErrorMessage;->threadName:Ljava/lang/String;

    return-object v0
.end method
