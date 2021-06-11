.class public Lorg/nativescript/widgets/Async$Http$KeyValuePair;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/Async$Http;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyValuePair"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lorg/nativescript/widgets/Async$Http$KeyValuePair;->key:Ljava/lang/String;

    .line 322
    iput-object p2, p0, Lorg/nativescript/widgets/Async$Http$KeyValuePair;->value:Ljava/lang/String;

    .line 323
    return-void
.end method
