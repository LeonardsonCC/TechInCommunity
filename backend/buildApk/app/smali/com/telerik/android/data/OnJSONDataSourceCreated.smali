.class public interface abstract Lcom/telerik/android/data/OnJSONDataSourceCreated;
.super Ljava/lang/Object;
.source "OnJSONDataSourceCreated.java"


# virtual methods
.method public abstract onDataSourceCreated(Lcom/telerik/android/data/RadDataSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telerik/android/data/RadDataSource<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(Lorg/json/JSONException;)V
.end method
