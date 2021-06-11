.class final Lcom/tns/RuntimeHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "RuntimeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/RuntimeHelper;->registerTimezoneChangedListener(Landroid/content/Context;Lcom/tns/Runtime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runtime:Lcom/tns/Runtime;


# direct methods
.method constructor <init>(Lcom/tns/Runtime;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/tns/RuntimeHelper$1;->val$runtime:Lcom/tns/Runtime;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 281
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    const-string v3, "_android_runtime_pref_timezone_"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "oldTimezone":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "newTimezone":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 284
    const-string v4, ""

    .line 287
    :cond_1
    if-nez v2, :cond_2

    .line 288
    const-string v2, ""

    .line 291
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 292
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 294
    iget-object v3, p0, Lcom/tns/RuntimeHelper$1;->val$runtime:Lcom/tns/Runtime;

    invoke-virtual {v3}, Lcom/tns/Runtime;->ResetDateTimeConfigurationCache()V

    .line 296
    :cond_3
    return-void

    .line 276
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "oldTimezone":Ljava/lang/String;
    .end local v4    # "newTimezone":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method
