.class Lcom/tns/ErrorReport$Pager;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ErrorReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/ErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pager"
.end annotation


# instance fields
.field tabCount:I

.field final synthetic this$0:Lcom/tns/ErrorReport;


# direct methods
.method public constructor <init>(Lcom/tns/ErrorReport;Landroidx/fragment/app/FragmentManager;I)V
    .locals 0
    .param p2, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p3, "tabCount"    # I

    .line 324
    iput-object p1, p0, Lcom/tns/ErrorReport$Pager;->this$0:Lcom/tns/ErrorReport;

    .line 325
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 326
    iput p3, p0, Lcom/tns/ErrorReport$Pager;->tabCount:I

    .line 327
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 343
    iget v0, p0, Lcom/tns/ErrorReport$Pager;->tabCount:I

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .line 331
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 337
    const/4 v0, 0x0

    return-object v0

    .line 335
    :cond_0
    new-instance v0, Lcom/tns/ErrorReport$LogcatTab;

    invoke-direct {v0}, Lcom/tns/ErrorReport$LogcatTab;-><init>()V

    return-object v0

    .line 333
    :cond_1
    new-instance v0, Lcom/tns/ErrorReport$ExceptionTab;

    invoke-direct {v0}, Lcom/tns/ErrorReport$ExceptionTab;-><init>()V

    return-object v0
.end method
