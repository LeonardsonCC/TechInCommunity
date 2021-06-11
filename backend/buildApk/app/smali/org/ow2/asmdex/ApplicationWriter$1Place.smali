.class Lorg/ow2/asmdex/ApplicationWriter$1Place;
.super Ljava/lang/Object;
.source "ApplicationWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ow2/asmdex/ApplicationWriter;->writeEncodedArrayItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Place"
.end annotation


# instance fields
.field public offset:I

.field public size:I

.field final synthetic this$0:Lorg/ow2/asmdex/ApplicationWriter;


# direct methods
.method public constructor <init>(Lorg/ow2/asmdex/ApplicationWriter;II)V
    .locals 0
    .param p1, "this$0"    # Lorg/ow2/asmdex/ApplicationWriter;
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 1057
    iput-object p1, p0, Lorg/ow2/asmdex/ApplicationWriter$1Place;->this$0:Lorg/ow2/asmdex/ApplicationWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput p2, p0, Lorg/ow2/asmdex/ApplicationWriter$1Place;->offset:I

    .line 1059
    iput p3, p0, Lorg/ow2/asmdex/ApplicationWriter$1Place;->size:I

    .line 1060
    return-void
.end method
