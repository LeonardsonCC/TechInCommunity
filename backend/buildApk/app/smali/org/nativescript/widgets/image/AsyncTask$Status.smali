.class public final enum Lorg/nativescript/widgets/image/AsyncTask$Status;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nativescript/widgets/image/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/nativescript/widgets/image/AsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/nativescript/widgets/image/AsyncTask$Status;

.field public static final enum FINISHED:Lorg/nativescript/widgets/image/AsyncTask$Status;

.field public static final enum PENDING:Lorg/nativescript/widgets/image/AsyncTask$Status;

.field public static final enum RUNNING:Lorg/nativescript/widgets/image/AsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 282
    new-instance v0, Lorg/nativescript/widgets/image/AsyncTask$Status;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lorg/nativescript/widgets/image/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nativescript/widgets/image/AsyncTask$Status;->PENDING:Lorg/nativescript/widgets/image/AsyncTask$Status;

    .line 286
    new-instance v0, Lorg/nativescript/widgets/image/AsyncTask$Status;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lorg/nativescript/widgets/image/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nativescript/widgets/image/AsyncTask$Status;->RUNNING:Lorg/nativescript/widgets/image/AsyncTask$Status;

    .line 290
    new-instance v0, Lorg/nativescript/widgets/image/AsyncTask$Status;

    const/4 v3, 0x2

    const-string v4, "FINISHED"

    invoke-direct {v0, v4, v3}, Lorg/nativescript/widgets/image/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/nativescript/widgets/image/AsyncTask$Status;->FINISHED:Lorg/nativescript/widgets/image/AsyncTask$Status;

    .line 278
    const/4 v4, 0x3

    new-array v4, v4, [Lorg/nativescript/widgets/image/AsyncTask$Status;

    sget-object v5, Lorg/nativescript/widgets/image/AsyncTask$Status;->PENDING:Lorg/nativescript/widgets/image/AsyncTask$Status;

    aput-object v5, v4, v1

    sget-object v1, Lorg/nativescript/widgets/image/AsyncTask$Status;->RUNNING:Lorg/nativescript/widgets/image/AsyncTask$Status;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/nativescript/widgets/image/AsyncTask$Status;->$VALUES:[Lorg/nativescript/widgets/image/AsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/nativescript/widgets/image/AsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 278
    const-class v0, Lorg/nativescript/widgets/image/AsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/nativescript/widgets/image/AsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lorg/nativescript/widgets/image/AsyncTask$Status;
    .locals 1

    .line 278
    sget-object v0, Lorg/nativescript/widgets/image/AsyncTask$Status;->$VALUES:[Lorg/nativescript/widgets/image/AsyncTask$Status;

    invoke-virtual {v0}, [Lorg/nativescript/widgets/image/AsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/nativescript/widgets/image/AsyncTask$Status;

    return-object v0
.end method
