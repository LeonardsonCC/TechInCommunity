.class public Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$EnumInfo;
.super Ljava/lang/Object;
.source "DefaultAnnotationInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumInfo"
.end annotation


# instance fields
.field public final enumDesc:Ljava/lang/String;

.field public final enumValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "enumDesc"    # Ljava/lang/String;
    .param p2, "enumValue"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$EnumInfo;->enumDesc:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$EnumInfo;->enumValue:Ljava/lang/String;

    .line 78
    return-void
.end method
