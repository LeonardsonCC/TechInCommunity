.class public Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$ClassInfo;
.super Ljava/lang/Object;
.source "DefaultAnnotationInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassInfo"
.end annotation


# instance fields
.field public final className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/ow2/asmdex/specificAnnotationVisitors/DefaultAnnotationInformation$ClassInfo;->className:Ljava/lang/String;

    .line 97
    return-void
.end method
