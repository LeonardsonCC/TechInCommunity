.class final enum Lorg/ow2/asmdex/ApplicationReader$VisitorType;
.super Ljava/lang/Enum;
.source "ApplicationReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ow2/asmdex/ApplicationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VisitorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ow2/asmdex/ApplicationReader$VisitorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ow2/asmdex/ApplicationReader$VisitorType;

.field public static final enum classVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

.field public static final enum fieldVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

.field public static final enum methodVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 182
    new-instance v0, Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    const/4 v1, 0x0

    const-string v2, "classVisitor"

    invoke-direct {v0, v2, v1}, Lorg/ow2/asmdex/ApplicationReader$VisitorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->classVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    new-instance v0, Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    const/4 v2, 0x1

    const-string v3, "methodVisitor"

    invoke-direct {v0, v3, v2}, Lorg/ow2/asmdex/ApplicationReader$VisitorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->methodVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    new-instance v0, Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    const/4 v3, 0x2

    const-string v4, "fieldVisitor"

    invoke-direct {v0, v4, v3}, Lorg/ow2/asmdex/ApplicationReader$VisitorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->fieldVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    sget-object v5, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->classVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    aput-object v5, v4, v1

    sget-object v1, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->methodVisitor:Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->$VALUES:[Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ow2/asmdex/ApplicationReader$VisitorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 182
    const-class v0, Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    return-object v0
.end method

.method public static values()[Lorg/ow2/asmdex/ApplicationReader$VisitorType;
    .locals 1

    .line 182
    sget-object v0, Lorg/ow2/asmdex/ApplicationReader$VisitorType;->$VALUES:[Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    invoke-virtual {v0}, [Lorg/ow2/asmdex/ApplicationReader$VisitorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ow2/asmdex/ApplicationReader$VisitorType;

    return-object v0
.end method
