.class final Lorg/nativescript/widgets/HorizontalScrollView$SavedState$1;
.super Ljava/lang/Object;
.source "HorizontalScrollView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/HorizontalScrollView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/nativescript/widgets/HorizontalScrollView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 307
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/HorizontalScrollView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lorg/nativescript/widgets/HorizontalScrollView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/nativescript/widgets/HorizontalScrollView$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 309
    new-instance v0, Lorg/nativescript/widgets/HorizontalScrollView$SavedState;

    invoke-direct {v0, p1}, Lorg/nativescript/widgets/HorizontalScrollView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 307
    invoke-virtual {p0, p1}, Lorg/nativescript/widgets/HorizontalScrollView$SavedState$1;->newArray(I)[Lorg/nativescript/widgets/HorizontalScrollView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/nativescript/widgets/HorizontalScrollView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 313
    new-array v0, p1, [Lorg/nativescript/widgets/HorizontalScrollView$SavedState;

    return-object v0
.end method
