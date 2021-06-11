.class public Lcom/tns/StaticConfiguration;
.super Ljava/lang/Object;
.source "StaticConfiguration.java"


# instance fields
.field public final appConfig:Lcom/tns/AppConfig;

.field public final appDir:Ljava/io/File;

.field public final appName:Ljava/lang/String;

.field public final classLoader:Ljava/lang/ClassLoader;

.field public final dexDir:Ljava/io/File;

.field public final dexThumb:Ljava/lang/String;

.field public final isDebuggable:Z

.field public final logger:Lcom/tns/Logger;

.field public final nativeLibDir:Ljava/lang/String;

.field public final rootDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/tns/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;Ljava/io/File;Ljava/lang/String;Lcom/tns/AppConfig;Z)V
    .locals 0
    .param p1, "logger"    # Lcom/tns/Logger;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "nativeLibDir"    # Ljava/lang/String;
    .param p4, "rootDir"    # Ljava/io/File;
    .param p5, "appDir"    # Ljava/io/File;
    .param p6, "classLoader"    # Ljava/lang/ClassLoader;
    .param p7, "dexDir"    # Ljava/io/File;
    .param p8, "dexThumb"    # Ljava/lang/String;
    .param p9, "appConfig"    # Lcom/tns/AppConfig;
    .param p10, "isDebuggable"    # Z

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tns/StaticConfiguration;->logger:Lcom/tns/Logger;

    .line 21
    iput-object p2, p0, Lcom/tns/StaticConfiguration;->appName:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/tns/StaticConfiguration;->nativeLibDir:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/tns/StaticConfiguration;->rootDir:Ljava/io/File;

    .line 24
    iput-object p5, p0, Lcom/tns/StaticConfiguration;->appDir:Ljava/io/File;

    .line 25
    iput-object p6, p0, Lcom/tns/StaticConfiguration;->classLoader:Ljava/lang/ClassLoader;

    .line 26
    iput-object p7, p0, Lcom/tns/StaticConfiguration;->dexDir:Ljava/io/File;

    .line 27
    iput-object p8, p0, Lcom/tns/StaticConfiguration;->dexThumb:Ljava/lang/String;

    .line 28
    iput-object p9, p0, Lcom/tns/StaticConfiguration;->appConfig:Lcom/tns/AppConfig;

    .line 29
    iput-boolean p10, p0, Lcom/tns/StaticConfiguration;->isDebuggable:Z

    .line 30
    return-void
.end method
