.class public Lcom/tns/MessageType;
.super Ljava/lang/Object;
.source "MessageType.java"


# static fields
.field public static BubbleUpException:I

.field public static CloseWorker:I

.field public static Handshake:I

.field public static MainToWorker:I

.field public static TerminateAndCloseThread:I

.field public static TerminateThread:I

.field public static WorkerToMain:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput v0, Lcom/tns/MessageType;->Handshake:I

    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/tns/MessageType;->MainToWorker:I

    .line 9
    const/4 v0, 0x2

    sput v0, Lcom/tns/MessageType;->WorkerToMain:I

    .line 10
    const/4 v0, 0x4

    sput v0, Lcom/tns/MessageType;->TerminateThread:I

    .line 11
    const/4 v0, 0x6

    sput v0, Lcom/tns/MessageType;->CloseWorker:I

    .line 12
    const/4 v0, 0x7

    sput v0, Lcom/tns/MessageType;->BubbleUpException:I

    .line 13
    const/16 v0, 0x8

    sput v0, Lcom/tns/MessageType;->TerminateAndCloseThread:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
