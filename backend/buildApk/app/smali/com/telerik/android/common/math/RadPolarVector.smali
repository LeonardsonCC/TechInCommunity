.class public final Lcom/telerik/android/common/math/RadPolarVector;
.super Ljava/lang/Object;
.source "RadPolarVector.java"


# instance fields
.field public angle:D

.field public centerX:D

.field public centerY:D

.field public pointX:D

.field public pointY:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public center()Lcom/telerik/android/common/math/RadPoint;
    .locals 5

    .line 20
    new-instance v0, Lcom/telerik/android/common/math/RadPoint;

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadPolarVector;->centerX:D

    iget-wide v3, p0, Lcom/telerik/android/common/math/RadPolarVector;->centerY:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telerik/android/common/math/RadPoint;-><init>(DD)V

    return-object v0
.end method

.method public point()Lcom/telerik/android/common/math/RadPoint;
    .locals 5

    .line 27
    new-instance v0, Lcom/telerik/android/common/math/RadPoint;

    iget-wide v1, p0, Lcom/telerik/android/common/math/RadPolarVector;->pointX:D

    iget-wide v3, p0, Lcom/telerik/android/common/math/RadPolarVector;->pointY:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telerik/android/common/math/RadPoint;-><init>(DD)V

    return-object v0
.end method
