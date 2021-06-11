.class public Lcom/telerik/android/data/LoadJSONTask;
.super Landroid/os/AsyncTask;
.source "LoadJSONTask.java"


# instance fields
.field private finishedListener:Lcom/telerik/android/common/Procedure;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    check-cast v1, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 24
    .local v1, "con":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 26
    .local v2, "input":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "utf-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 29
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1    # "con":Ljava/net/URLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    nop

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "jsonArray"    # Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/telerik/android/data/LoadJSONTask;->finishedListener:Lcom/telerik/android/common/Procedure;

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/telerik/android/common/Procedure;->apply(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public setFinishedListener(Lcom/telerik/android/common/Procedure;)V
    .locals 0
    .param p1, "finishedListener"    # Lcom/telerik/android/common/Procedure;

    .line 54
    iput-object p1, p0, Lcom/telerik/android/data/LoadJSONTask;->finishedListener:Lcom/telerik/android/common/Procedure;

    .line 55
    return-void
.end method
