.class Lcom/tns/NativeScriptSyncService$1;
.super Ljava/lang/Object;
.source "NativeScriptSyncService.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/NativeScriptSyncService;


# direct methods
.method constructor <init>(Lcom/tns/NativeScriptSyncService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tns/NativeScriptSyncService;

    .line 173
    iput-object p1, p0, Lcom/tns/NativeScriptSyncService$1;->this$0:Lcom/tns/NativeScriptSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .param p1, "pathname"    # Ljava/io/File;

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    return v0

    .line 180
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 181
    .local v0, "success":Z
    if-nez v0, :cond_1

    .line 182
    invoke-static {}, Lcom/tns/NativeScriptSyncService;->access$600()Lcom/tns/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Syncing: file not deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tns/Logger;->write(Ljava/lang/String;)V

    .line 184
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
