.class public final Lcom/tns/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getDexThumb(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 23
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    .line 24
    .local v1, "code":J
    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 25
    .local v3, "updateTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static isDebuggableApp(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v1, "flags":I
    goto :goto_0

    .line 32
    .end local v1    # "flags":I
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 34
    .local v2, "flags":I
    invoke-static {p0}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 39
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move v1, v2

    .end local v2    # "flags":I
    .local v1, "flags":I
    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 40
    .local v0, "isDebuggableApp":Z
    :cond_1
    return v0
.end method

.method public static isPositive(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 98
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TRUE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    const-string v1, "yes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "YES"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    const-string v1, "enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ENABLED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 101
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static readSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "in":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 74
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/getprop"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 75
    .local v2, "proc":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 76
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 77
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {v0}, Lcom/tns/Util;->silentClose(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v1}, Lcom/tns/Util;->silentClose(Ljava/io/Closeable;)V

    .line 77
    return-object v3

    .line 81
    .end local v2    # "proc":Ljava/lang/Process;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/tns/Util;->silentClose(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v1}, Lcom/tns/Util;->silentClose(Ljava/io/Closeable;)V

    .line 83
    throw v2

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 81
    invoke-static {v0}, Lcom/tns/Util;->silentClose(Ljava/io/Closeable;)V

    .line 82
    invoke-static {v1}, Lcom/tns/Util;->silentClose(Ljava/io/Closeable;)V

    .line 79
    return-object v3
.end method

.method static runPlugin(Lcom/tns/Logger;Landroid/content/Context;)Z
    .locals 5
    .param p0, "logger"    # Lcom/tns/Logger;
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "success":Z
    const-string v1, "org.nativescript.livesync.LiveSyncPlugin"

    .line 47
    .local v1, "pluginClassName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 48
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 49
    .local v3, "metadataBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 50
    const-string v4, "com.tns.internal.Plugin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 56
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "metadataBundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 60
    .local v2, "liveSyncPluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tns/internal/Plugin;

    .line 61
    .local v3, "p":Lcom/tns/internal/Plugin;
    invoke-interface {v3, p1}, Lcom/tns/internal/Plugin;->execute(Landroid/content/Context;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v4

    .line 66
    .end local v2    # "liveSyncPluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "p":Lcom/tns/internal/Plugin;
    goto :goto_1

    .line 62
    :catch_1
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Lcom/tns/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return v0
.end method

.method private static silentClose(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 87
    if-nez p0, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    :goto_0
    return-void
.end method
