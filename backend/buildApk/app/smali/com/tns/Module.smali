.class Lcom/tns/Module;
.super Ljava/lang/Object;
.source "Module.java"


# static fields
.field private static ApplicationFilesPath:Ljava/lang/String;

.field private static ModulesFilesPath:Ljava/lang/String;

.field private static NativeScriptModulesFilesPath:Ljava/lang/String;

.field private static RootDirsCount:I

.field private static RootPackageDir:Ljava/lang/String;

.field private static checkForExternalPath:Z

.field private static final folderAsModuleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field private static possibleException:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tns/Module;->initialized:Z

    .line 23
    const/4 v1, 0x0

    sput-object v1, Lcom/tns/Module;->possibleException:Ljava/lang/String;

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/tns/Module;->folderAsModuleCache:Ljava/util/HashMap;

    .line 27
    sput-boolean v0, Lcom/tns/Module;->checkForExternalPath:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bootstrapApp()Ljava/lang/String;
    .locals 5

    .line 309
    const-string v0, ""

    const-string v1, "Application entry point file not found. Please specify the file in package.json otherwise make sure the file index.js or bootstrap.js exists.\\nIf using typescript make sure your entry point file is transpiled to javascript."

    .line 312
    .local v1, "notFoundMessage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 314
    .local v2, "bootstrapFile":Ljava/io/File;
    :try_start_0
    const-string v3, "./"

    invoke-static {v3, v0}, Lcom/tns/Module;->resolvePathHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Lcom/tns/NativeScriptException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 321
    goto :goto_0

    .line 317
    :catch_0
    move-exception v3

    .line 318
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 325
    :try_start_1
    const-string v3, "./bootstrap"

    invoke-static {v3, v0}, Lcom/tns/Module;->resolvePathHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v2, v0

    .line 326
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lcom/tns/NativeScriptException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 329
    :catch_1
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 327
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 328
    .local v0, "ex":Lcom/tns/NativeScriptException;
    new-instance v3, Lcom/tns/NativeScriptException;

    invoke-direct {v3, v1, v0}, Lcom/tns/NativeScriptException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 336
    .end local v0    # "ex":Lcom/tns/NativeScriptException;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 315
    :catch_3
    move-exception v0

    .line 316
    .restart local v0    # "ex":Lcom/tns/NativeScriptException;
    new-instance v3, Lcom/tns/NativeScriptException;

    invoke-direct {v3, v1, v0}, Lcom/tns/NativeScriptException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static getApplicationFilesPath()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/tns/Module;->ApplicationFilesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Lcom/tns/Logger;Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p0, "logger"    # Lcom/tns/Logger;
    .param p1, "rootPackageDir"    # Ljava/io/File;
    .param p2, "applicationFilesDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    sget-boolean v0, Lcom/tns/Module;->initialized:Z

    if-eqz v0, :cond_0

    .line 31
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tns/Module;->RootPackageDir:Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tns/Module;->ApplicationFilesPath:Ljava/lang/String;

    .line 37
    const-string v0, "/app/"

    sput-object v0, Lcom/tns/Module;->ModulesFilesPath:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tns/Module;->ApplicationFilesPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/tns/Module;->RootDirsCount:I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tns/Module;->ApplicationFilesPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/tns_modules/tns-core-modules"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tns/Module;->NativeScriptModulesFilesPath:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tns/Module;->initialized:Z

    .line 44
    return-void
.end method

.method private static isFileExternal(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 81
    .local v0, "currentParentDir":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x0

    return v1

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static loadAsDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "currentPath"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/io/File;

    .line 227
    new-instance v0, Ljava/io/File;

    const-string v1, "/package.json"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    .local v0, "packageFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 230
    .local v1, "foundFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    :try_start_0
    invoke-static {v0}, Lcom/tns/FileSystem;->readJSONFile(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v2

    .line 233
    .local v2, "object":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 234
    const-string v3, "main"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "mainFile":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    .local v4, "pathFromMain":Ljava/io/File;
    invoke-static {p0, p1, v4}, Lcom/tns/Module;->resolveFromFileOrDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 238
    if-eqz v1, :cond_0

    .line 239
    return-object v1

    .line 248
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "mainFile":Ljava/lang/String;
    .end local v4    # "pathFromMain":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No value for main"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    new-instance v3, Lcom/tns/NativeScriptException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tns/NativeScriptException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 243
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/tns/NativeScriptException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tns/NativeScriptException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v3, "index.js"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 254
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v3, :cond_3

    .line 255
    return-object v1

    .line 259
    :cond_3
    nop

    .line 264
    return-object v2

    .line 257
    :catch_2
    move-exception v3

    .line 258
    .local v3, "e":Ljava/io/IOException;
    return-object v2
.end method

.method private static loadAsFile(Ljava/io/File;)Ljava/io/File;
    .locals 7
    .param p0, "path"    # Ljava/io/File;

    .line 199
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 200
    .local v0, "isJSFile":Z
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 201
    .local v1, "isSOFile":Z
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 203
    .local v2, "isJSONFile":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    const-string v3, ".js"

    .local v3, "fallbackExtension":Ljava/lang/String;
    goto :goto_1

    .line 204
    .end local v3    # "fallbackExtension":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v3, ""

    .line 209
    .restart local v3    # "fallbackExtension":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v4, "foundFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    .line 212
    .local v5, "canonicalFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    .line 213
    return-object v4

    .line 217
    .end local v5    # "canonicalFile":Ljava/io/File;
    :cond_2
    goto :goto_2

    .line 215
    :catch_0
    move-exception v5

    .line 219
    :goto_2
    const/4 v5, 0x0

    return-object v5
.end method

.method private static nodeModulesPaths(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "startDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "startFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "startDirParts":[Ljava/lang/String;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 274
    .local v3, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 275
    .local v6, "part":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v6    # "part":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 278
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v4, "possibleDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sget v6, Lcom/tns/Module;->RootDirsCount:I

    if-lt v5, v6, :cond_4

    .line 281
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 282
    .local v5, "lastDir":Ljava/lang/String;
    const-string v6, "node_modules"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "tns_modules"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 287
    :cond_1
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "currentDir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/node_modules"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, "finalDir":Ljava/lang/String;
    const-string v8, "app"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 292
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/tns_modules"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 295
    :cond_2
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 298
    .end local v5    # "lastDir":Ljava/lang/String;
    .end local v6    # "currentDir":Ljava/lang/String;
    .end local v7    # "finalDir":Ljava/lang/String;
    goto :goto_1

    .line 283
    .restart local v5    # "lastDir":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 284
    goto :goto_1

    .line 300
    .end local v5    # "lastDir":Ljava/lang/String;
    :cond_4
    return-object v4
.end method

.method private static prepareRelativeOrAbsoluteDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "baseDir"    # Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "fileOrDirectory":Ljava/io/File;
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 159
    :cond_0
    const-string v1, "~/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tns/Module;->ApplicationFilesPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tns/Module;->ModulesFilesPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 161
    :cond_1
    const-string v1, "./"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "../"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 165
    :cond_3
    :goto_0
    return-object v0
.end method

.method private static resolveFromFileOrDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileOrDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "foundModule":Ljava/io/File;
    invoke-static {p2}, Lcom/tns/Module;->loadAsFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    return-object v0

    .line 176
    :cond_0
    const-string v1, "~/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\", relative to: "

    const-string v3, "Failed to find module: \""

    if-eqz v1, :cond_1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tns/Module;->ModulesFilesPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tns/Module;->possibleException:Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tns/Module;->ApplicationFilesPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tns/Module;->possibleException:Ljava/lang/String;

    .line 183
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/tns/Module;->loadAsDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_2

    .line 187
    sget-object v1, Lcom/tns/Module;->folderAsModuleCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-object v0

    .line 192
    :cond_2
    return-object v0
.end method

.method private static resolvePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "baseDir"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tns/Module;->checkForExternalPath:Z

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-static {p0, p1}, Lcom/tns/Module;->resolvePathHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 62
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 67
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .local v1, "resolvedPath":Ljava/lang/String;
    goto :goto_1

    .line 68
    .end local v1    # "resolvedPath":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 75
    .local v1, "resolvedPath":Ljava/lang/String;
    :goto_1
    return-object v1
.end method

.method private static resolvePathHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "baseDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tns/NativeScriptException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "foundModule":Ljava/io/File;
    const-string v1, "~/"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tns/Module;->ApplicationFilesPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tns/Module;->ModulesFilesPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_1
    const-string v2, "./"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "../"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 116
    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tns/Module;->NativeScriptModulesFilesPath:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v1, "possibleNativeModule":Ljava/io/File;
    sget-object v2, Lcom/tns/Module;->folderAsModuleCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/tns/Module;->folderAsModuleCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 123
    :cond_3
    sget-object v2, Lcom/tns/Module;->NativeScriptModulesFilesPath:Ljava/lang/String;

    invoke-static {v2, p0, v1}, Lcom/tns/Module;->resolveFromFileOrDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    return-object v0

    .line 129
    :cond_4
    invoke-static {p1}, Lcom/tns/Module;->nodeModulesPaths(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, "possibleSearchDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 131
    .local v4, "possibleDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v5, "possibleRelativeModule":Ljava/io/File;
    sget-object v6, Lcom/tns/Module;->folderAsModuleCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 135
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/tns/Module;->folderAsModuleCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 138
    :cond_5
    invoke-static {v4, p0, v5}, Lcom/tns/Module;->resolveFromFileOrDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_6

    .line 140
    return-object v0

    .line 142
    .end local v4    # "possibleDir":Ljava/lang/String;
    .end local v5    # "possibleRelativeModule":Ljava/io/File;
    :cond_6
    goto :goto_0

    .line 102
    .end local v1    # "possibleNativeModule":Ljava/io/File;
    .end local v2    # "possibleSearchDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :goto_1
    invoke-static {p0, p1}, Lcom/tns/Module;->prepareRelativeOrAbsoluteDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 105
    .local v1, "possibleRelativeAbsoluteModule":Ljava/io/File;
    sget-object v2, Lcom/tns/Module;->folderAsModuleCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 106
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/tns/Module;->folderAsModuleCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 109
    :cond_8
    if-eqz v1, :cond_9

    .line 110
    invoke-static {p1, p0, v1}, Lcom/tns/Module;->resolveFromFileOrDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_9

    .line 112
    return-object v0

    .line 115
    .end local v1    # "possibleRelativeAbsoluteModule":Ljava/io/File;
    :cond_9
    nop

    .line 151
    :cond_a
    new-instance v1, Lcom/tns/NativeScriptException;

    sget-object v2, Lcom/tns/Module;->possibleException:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tns/NativeScriptException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
