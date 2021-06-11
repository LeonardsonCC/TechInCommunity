.class final Lcom/telerik/android/data/RadDataSource$2;
.super Ljava/lang/Object;
.source "RadDataSource.java"

# interfaces
.implements Lcom/telerik/android/common/Procedure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telerik/android/data/RadDataSource;->createFromJsonUrl(Ljava/net/URL;Lcom/telerik/android/data/OnJSONDataSourceCreated;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/telerik/android/data/OnJSONDataSourceCreated;


# direct methods
.method constructor <init>(Lcom/telerik/android/data/OnJSONDataSourceCreated;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/telerik/android/data/RadDataSource$2;->val$result:Lcom/telerik/android/data/OnJSONDataSourceCreated;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/Object;

    .line 99
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telerik/android/data/RadDataSource;->createFromJson(Ljava/lang/String;)Lcom/telerik/android/data/RadDataSource;

    move-result-object v0

    .line 100
    .local v0, "dataSource":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<Lorg/json/JSONObject;>;"
    iget-object v1, p0, Lcom/telerik/android/data/RadDataSource$2;->val$result:Lcom/telerik/android/data/OnJSONDataSourceCreated;

    invoke-interface {v1, v0}, Lcom/telerik/android/data/OnJSONDataSourceCreated;->onDataSourceCreated(Lcom/telerik/android/data/RadDataSource;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "dataSource":Lcom/telerik/android/data/RadDataSource;, "Lcom/telerik/android/data/RadDataSource<Lorg/json/JSONObject;>;"
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/telerik/android/data/RadDataSource$2;->val$result:Lcom/telerik/android/data/OnJSONDataSourceCreated;

    invoke-interface {v1, v0}, Lcom/telerik/android/data/OnJSONDataSourceCreated;->onError(Lorg/json/JSONException;)V

    .line 104
    .end local v0    # "ex":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
