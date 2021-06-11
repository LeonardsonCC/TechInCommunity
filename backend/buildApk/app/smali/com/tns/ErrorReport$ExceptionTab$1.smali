.class Lcom/tns/ErrorReport$ExceptionTab$1;
.super Ljava/lang/Object;
.source "ErrorReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tns/ErrorReport$ExceptionTab;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tns/ErrorReport$ExceptionTab;


# direct methods
.method constructor <init>(Lcom/tns/ErrorReport$ExceptionTab;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tns/ErrorReport$ExceptionTab;

    .line 360
    iput-object p1, p0, Lcom/tns/ErrorReport$ExceptionTab$1;->this$0:Lcom/tns/ErrorReport$ExceptionTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 363
    invoke-static {}, Lcom/tns/ErrorReport;->access$300()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 364
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-static {}, Lcom/tns/ErrorReport;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nsError"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 365
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 366
    return-void
.end method
