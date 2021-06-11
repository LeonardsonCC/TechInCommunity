.class public final Lcom/telerik/android/common/math/RadPolarCoordinates;
.super Ljava/lang/Object;
.source "RadPolarCoordinates.java"


# instance fields
.field public angle:D

.field public radius:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .param p1, "angle"    # D
    .param p3, "radius"    # D

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/telerik/android/common/math/RadPolarCoordinates;->angle:D

    .line 27
    iput-wide p3, p0, Lcom/telerik/android/common/math/RadPolarCoordinates;->radius:D

    .line 28
    return-void
.end method
