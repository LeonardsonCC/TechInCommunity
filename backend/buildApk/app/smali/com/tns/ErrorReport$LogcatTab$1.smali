.class Lcom/tns/ErrorReport$LogcatTab$1;
.super Ljava/lang/Object;
.source "ErrorReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/ErrorReport$LogcatTab;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/ErrorReport$LogcatTab;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$logName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tns/ErrorReport$LogcatTab;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tns/ErrorReport$LogcatTab;

    .line 389
    iput-object p1, p0, Lcom/tns/ErrorReport$LogcatTab$1;->this$0:Lcom/tns/ErrorReport$LogcatTab;

    iput-object p2, p0, Lcom/tns/ErrorReport$LogcatTab$1;->val$logName:Ljava/lang/String;

    iput-object p3, p0, Lcom/tns/ErrorReport$LogcatTab$1;->val$container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .line 392
    invoke-static {}, Lcom/tns/ErrorReport;->access$300()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tns/ErrorReport;->verifyStoragePermissions(Landroid/app/Activity;)V

    .line 394
    invoke-static {}, Lcom/tns/ErrorReport;->isCheckingForPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/logcat-reports/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 399
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tns/ErrorReport$LogcatTab$1;->val$logName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    .local v2, "logcatReportFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 401
    .local v3, "stream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 402
    .local v4, "writer":Ljava/io/OutputStreamWriter;
    invoke-static {}, Lcom/tns/ErrorReport;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 405
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tns/ErrorReport$LogcatTab$1;->val$logName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "logPath":Ljava/lang/String;
    invoke-static {}, Lcom/tns/ErrorReport;->access$300()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ClipboardManager;

    .line 408
    .local v6, "clipboard":Landroid/content/ClipboardManager;
    const-string v7, "logPath"

    invoke-static {v7, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v7

    .line 409
    .local v7, "clip":Landroid/content/ClipData;
    invoke-virtual {v6, v7}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 411
    invoke-static {}, Lcom/tns/ErrorReport;->access$300()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Path copied to clipboard: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "logcatReportFile":Ljava/io/File;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    .end local v5    # "logPath":Ljava/lang/String;
    .end local v6    # "clipboard":Landroid/content/ClipboardManager;
    .end local v7    # "clip":Landroid/content/ClipData;
    goto :goto_0

    .line 412
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Could not write logcat report to sdcard. Make sure you have allowed access to external storage!"

    .line 414
    .local v2, "err":Ljava/lang/String;
    invoke-static {}, Lcom/tns/ErrorReport;->access$300()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 415
    iget-object v0, p0, Lcom/tns/ErrorReport$LogcatTab$1;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "err":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void
.end method
