.class public Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;
.super Ljava/lang/Object;
.source "DefaultAnnotationInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$ClassInfo;,
        Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$EnumInfo;
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;->name:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;->value:Ljava/lang/Object;

    .line 108
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;->value:Ljava/lang/Object;

    return-object v0
.end method
