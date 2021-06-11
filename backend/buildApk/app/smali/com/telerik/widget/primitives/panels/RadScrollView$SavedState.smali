.class Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "RadScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/widget/primitives/panels/RadScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public xScrollPosition:I

.field public yScrollPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2370
    new-instance v0, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState$1;

    invoke-direct {v0}, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState$1;-><init>()V

    sput-object v0, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2346
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2347
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2348
    .local v0, "values":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 2349
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;->xScrollPosition:I

    .line 2350
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;->xScrollPosition:I

    .line 2351
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 2342
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2343
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadScrollView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2366
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " scrollPositionX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;->xScrollPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scrollPositionY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;->yScrollPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2365
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2355
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2356
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2357
    .local v0, "values":[I
    iget v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;->xScrollPosition:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2358
    iget v1, p0, Lcom/telerik/widget/primitives/panels/RadScrollView$SavedState;->yScrollPosition:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 2359
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2361
    return-void
.end method
