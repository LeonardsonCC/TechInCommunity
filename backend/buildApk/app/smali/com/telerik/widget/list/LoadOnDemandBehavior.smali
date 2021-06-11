.class public Lcom/telerik/widget/list/LoadOnDemandBehavior;
.super Lcom/telerik/widget/list/ListViewBehavior;
.source "LoadOnDemandBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;,
        Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;,
        Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_REMAINING_ITEMS:I = 0xa


# instance fields
.field private adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

.field private automaticDemandIsDefault:Z

.field private automaticDemandView:Landroid/view/View;

.field private indicatorsHolder:Landroid/view/ViewGroup;

.field private isAttachedToAdapter:Z

.field private isEnabled:Z

.field private isLoading:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;",
            ">;"
        }
    .end annotation
.end field

.field private loadingListener:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;

.field private manualDemandIsDefault:Z

.field private manualDemandView:Landroid/view/View;

.field private maxRemainingItems:I

.field private mode:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

.field private textBusy:Ljava/lang/String;

.field private textIdle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewBehavior;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->listeners:Ljava/util/List;

    .line 28
    sget-object v0, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->MANUAL:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    iput-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->mode:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isAttachedToAdapter:Z

    .line 31
    const/16 v1, 0xa

    iput v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->maxRemainingItems:I

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandIsDefault:Z

    .line 36
    iput-boolean v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandIsDefault:Z

    .line 38
    iput-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isLoading:Z

    .line 39
    iput-boolean v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isEnabled:Z

    .line 48
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->initListener()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "manualDemandView"    # Landroid/view/View;
    .param p2, "automaticDemandView"    # Landroid/view/View;

    .line 60
    invoke-direct {p0}, Lcom/telerik/widget/list/ListViewBehavior;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->listeners:Ljava/util/List;

    .line 28
    sget-object v0, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->MANUAL:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    iput-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->mode:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isAttachedToAdapter:Z

    .line 31
    const/16 v1, 0xa

    iput v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->maxRemainingItems:I

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandIsDefault:Z

    .line 36
    iput-boolean v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandIsDefault:Z

    .line 38
    iput-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isLoading:Z

    .line 39
    iput-boolean v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isEnabled:Z

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandView:Landroid/view/View;

    .line 63
    iput-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandIsDefault:Z

    .line 65
    :cond_0
    if-eqz p2, :cond_1

    .line 66
    iput-object p2, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandView:Landroid/view/View;

    .line 67
    iput-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandIsDefault:Z

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->initListener()V

    .line 70
    return-void
.end method

.method private attachIndicatorsToAdapter()V
    .locals 7

    .line 320
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->indicatorsHolder:Landroid/view/ViewGroup;

    .line 321
    iget-object v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->indicatorsHolder:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 323
    new-instance v0, Lcom/telerik/widget/list/ListViewTextHolder;

    iget-object v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->indicatorsHolder:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/telerik/widget/list/ListViewTextHolder;-><init>(Landroid/view/View;)V

    .line 324
    .local v0, "textHolder":Lcom/telerik/widget/list/ListViewTextHolder;
    iget-object v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->updateLayoutParams(Lcom/telerik/widget/list/ListViewHolder;Z)V

    .line 325
    iget-object v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    iget-object v2, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->loadingListener:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;

    invoke-virtual {v1, v2}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->addLoadingListener(Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;)V

    .line 326
    iget-object v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    iget-object v2, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->indicatorsHolder:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->maxRemainingItems:I

    iget-object v4, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->mode:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    sget-object v5, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->AUTOMATIC:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->updateOnDemandSettings(Landroid/view/ViewGroup;IZ)V

    .line 327
    iput-boolean v6, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isAttachedToAdapter:Z

    .line 328
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->handleElementsVisibility()V

    .line 329
    return-void
.end method

.method private createDefaultAutomaticDemandView()Landroid/view/View;
    .locals 4

    .line 276
    invoke-virtual {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 277
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/telerik/widget/list/R$layout;->on_demand_automatic:I

    invoke-virtual {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 278
    .local v1, "automaticDemand":Landroid/view/View;
    return-object v1
.end method

.method private createDefaultManualDemandView()Landroid/view/View;
    .locals 4

    .line 262
    invoke-virtual {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 263
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/telerik/widget/list/R$layout;->on_demand_manual:I

    invoke-virtual {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 264
    .local v1, "manualDemand":Landroid/view/View;
    new-instance v2, Lcom/telerik/widget/list/LoadOnDemandBehavior$2;

    invoke-direct {v2, p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior$2;-><init>(Lcom/telerik/widget/list/LoadOnDemandBehavior;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-virtual {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/telerik/widget/list/R$string;->on_demand_manual_button_idle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->textIdle:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->owner()Lcom/telerik/widget/list/RadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telerik/widget/list/RadListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/telerik/widget/list/R$string;->on_demand_manual_button_busy:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->textBusy:Ljava/lang/String;

    .line 272
    return-object v1
.end method

.method private detachIndicatorsFromAdapter()V
    .locals 6

    .line 341
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isAttachedToAdapter:Z

    if-nez v0, :cond_0

    .line 342
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->indicatorsHolder:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 345
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    iget-object v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->loadingListener:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;

    invoke-virtual {v0, v1}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->removeLoadingListener(Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;)V

    .line 346
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    const/4 v1, 0x0

    iget v2, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->maxRemainingItems:I

    iget-object v3, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->mode:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    sget-object v4, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->AUTOMATIC:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->updateOnDemandSettings(Landroid/view/ViewGroup;IZ)V

    .line 347
    iput-boolean v5, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isAttachedToAdapter:Z

    .line 348
    return-void
.end method

.method private handleElementsVisibility()V
    .locals 4

    .line 301
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isEnabled:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->mode:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    sget-object v2, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->MANUAL:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 307
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isLoading:Z

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    :goto_0
    return-void
.end method

.method private initListener()V
    .locals 1

    .line 243
    new-instance v0, Lcom/telerik/widget/list/LoadOnDemandBehavior$1;

    invoke-direct {v0, p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior$1;-><init>(Lcom/telerik/widget/list/LoadOnDemandBehavior;)V

    iput-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->loadingListener:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadingListener;

    .line 259
    return-void
.end method

.method private updateIndicatorState()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->mode:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    sget-object v1, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->MANUAL:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    if-ne v0, v1, :cond_2

    .line 283
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandIsDefault:Z

    if-nez v0, :cond_0

    .line 284
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandView:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isLoading:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->textBusy:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->textIdle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandView:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isLoading:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 289
    :cond_2
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandIsDefault:Z

    if-nez v0, :cond_3

    .line 290
    return-void

    .line 292
    :cond_3
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isLoading:Z

    if-eqz v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :goto_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;

    .line 163
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public endLoad()V
    .locals 2

    .line 194
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isLoading:Z

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isLoading:Z

    .line 196
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->updateIndicatorState()V

    .line 197
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;

    .line 198
    .local v1, "listener":Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;
    invoke-interface {v1}, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;->onLoadFinished()V

    .line 199
    .end local v1    # "listener":Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;
    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method public getMaxRemainingItems()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->maxRemainingItems:I

    return v0
.end method

.method public getMode()Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->mode:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isEnabled:Z

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isLoading:Z

    return v0
.end method

.method onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 236
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->detachIndicatorsFromAdapter()V

    .line 237
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAdapterChanged(Lcom/telerik/widget/list/ListViewWrapperAdapter;)V

    .line 238
    iput-object p1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 239
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->attachIndicatorsToAdapter()V

    .line 240
    return-void
.end method

.method public onAttached(Lcom/telerik/widget/list/RadListView;)V
    .locals 1
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 210
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onAttached(Lcom/telerik/widget/list/RadListView;)V

    .line 212
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->createDefaultManualDemandView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->manualDemandView:Landroid/view/View;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->createDefaultAutomaticDemandView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->automaticDemandView:Landroid/view/View;

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 220
    return-void

    .line 223
    :cond_2
    invoke-virtual {p1}, Lcom/telerik/widget/list/RadListView;->wrapperAdapter()Lcom/telerik/widget/list/ListViewWrapperAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 224
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->attachIndicatorsToAdapter()V

    .line 225
    return-void
.end method

.method public onDetached(Lcom/telerik/widget/list/RadListView;)V
    .locals 1
    .param p1, "listView"    # Lcom/telerik/widget/list/RadListView;

    .line 229
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->detachIndicatorsFromAdapter()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    .line 231
    invoke-super {p0, p1}, Lcom/telerik/widget/list/ListViewBehavior;->onDetached(Lcom/telerik/widget/list/RadListView;)V

    .line 232
    return-void
.end method

.method onLayoutChanged(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "layout"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 333
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    if-nez v0, :cond_0

    .line 334
    return-void

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->detachIndicatorsFromAdapter()V

    .line 337
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->attachIndicatorsToAdapter()V

    .line 338
    return-void
.end method

.method public removeListener(Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;

    .line 172
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 107
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isEnabled:Z

    if-ne v0, p1, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iput-boolean p1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isEnabled:Z

    .line 111
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isAttachedToAdapter:Z

    if-eqz v0, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->handleElementsVisibility()V

    .line 113
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    invoke-virtual {v0}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->getShouldLoadMoreOnDemand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->startLoad()V

    .line 117
    :cond_1
    return-void
.end method

.method public setMaxRemainingItems(I)V
    .locals 0
    .param p1, "maxRemainingItems"    # I

    .line 97
    iput p1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->maxRemainingItems:I

    .line 98
    return-void
.end method

.method public setMode(Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    .line 136
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->mode:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    if-ne v0, p1, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->mode:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    .line 140
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isAttachedToAdapter:Z

    if-eqz v0, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->handleElementsVisibility()V

    .line 142
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->adapter:Lcom/telerik/widget/list/ListViewWrapperAdapter;

    iget-object v1, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->indicatorsHolder:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->maxRemainingItems:I

    sget-object v3, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;->AUTOMATIC:Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandMode;

    if-ne p1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/telerik/widget/list/ListViewWrapperAdapter;->updateOnDemandSettings(Landroid/view/ViewGroup;IZ)V

    .line 143
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->updateIndicatorState()V

    .line 145
    :cond_2
    return-void
.end method

.method public startLoad()V
    .locals 2

    .line 180
    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->isLoading:Z

    .line 182
    invoke-direct {p0}, Lcom/telerik/widget/list/LoadOnDemandBehavior;->updateIndicatorState()V

    .line 183
    iget-object v0, p0, Lcom/telerik/widget/list/LoadOnDemandBehavior;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;

    .line 184
    .local v1, "listener":Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;
    invoke-interface {v1}, Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;->onLoadStarted()V

    .line 185
    .end local v1    # "listener":Lcom/telerik/widget/list/LoadOnDemandBehavior$LoadOnDemandListener;
    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method
