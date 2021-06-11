.class Lcom/tns/ManualInstrumentation$Mode$DisabledFrame;
.super Ljava/lang/Object;
.source "ManualInstrumentation.java"

# interfaces
.implements Lcom/tns/ManualInstrumentation$Frame;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/ManualInstrumentation$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisabledFrame"
.end annotation


# static fields
.field static instance:Lcom/tns/ManualInstrumentation$Mode$DisabledFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/tns/ManualInstrumentation$Mode$DisabledFrame;

    invoke-direct {v0}, Lcom/tns/ManualInstrumentation$Mode$DisabledFrame;-><init>()V

    sput-object v0, Lcom/tns/ManualInstrumentation$Mode$DisabledFrame;->instance:Lcom/tns/ManualInstrumentation$Mode$DisabledFrame;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 79
    return-void
.end method
