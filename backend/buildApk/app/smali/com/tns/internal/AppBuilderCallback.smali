.class public interface abstract Lcom/tns/internal/AppBuilderCallback;
.super Ljava/lang/Object;
.source "AppBuilderCallback.java"


# virtual methods
.method public abstract getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
.end method

.method public abstract getExtractPolicy()Lcom/tns/ExtractPolicy;
.end method

.method public abstract onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public abstract onLowMemory(Landroid/content/Context;)V
.end method

.method public abstract onTerminate(Landroid/content/Context;)V
.end method

.method public abstract onTrimMemory(Landroid/content/Context;I)V
.end method

.method public abstract shouldEnableDebugging(Landroid/content/Context;)Z
.end method
