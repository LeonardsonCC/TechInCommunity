.class public abstract Lorg/nativescript/widgets/FragmentBase;
.super Landroidx/fragment/app/Fragment;
.source "FragmentBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemovingParentFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 8
    invoke-virtual {p0}, Lorg/nativescript/widgets/FragmentBase;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 9
    .local v0, "parentFragment":Landroidx/fragment/app/Fragment;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    return-object v0
.end method
