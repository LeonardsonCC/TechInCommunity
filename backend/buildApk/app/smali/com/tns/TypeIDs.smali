.class public Lcom/tns/TypeIDs;
.super Ljava/lang/Object;
.source "TypeIDs.java"


# static fields
.field public static Boolean:I

.field public static Byte:I

.field public static Char:I

.field public static Double:I

.field public static Float:I

.field public static Int:I

.field public static JsObject:I

.field public static Long:I

.field public static Null:I

.field public static Short:I

.field public static string:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const/4 v0, 0x0

    sput v0, Lcom/tns/TypeIDs;->Boolean:I

    .line 6
    const/4 v0, 0x1

    sput v0, Lcom/tns/TypeIDs;->Char:I

    .line 7
    const/4 v0, 0x2

    sput v0, Lcom/tns/TypeIDs;->Byte:I

    .line 8
    const/4 v0, 0x3

    sput v0, Lcom/tns/TypeIDs;->Short:I

    .line 9
    const/4 v0, 0x4

    sput v0, Lcom/tns/TypeIDs;->Int:I

    .line 10
    const/4 v0, 0x5

    sput v0, Lcom/tns/TypeIDs;->Long:I

    .line 11
    const/4 v0, 0x6

    sput v0, Lcom/tns/TypeIDs;->Float:I

    .line 12
    const/4 v0, 0x7

    sput v0, Lcom/tns/TypeIDs;->Double:I

    .line 14
    const/16 v0, 0x8

    sput v0, Lcom/tns/TypeIDs;->string:I

    .line 15
    const/16 v0, 0x9

    sput v0, Lcom/tns/TypeIDs;->JsObject:I

    .line 16
    const/16 v0, 0xa

    sput v0, Lcom/tns/TypeIDs;->Null:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetObjectTypeId(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 45
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget v0, Lcom/tns/TypeIDs;->Null:I

    return v0

    .line 47
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget v0, Lcom/tns/TypeIDs;->Int:I

    return v0

    .line 49
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    sget v0, Lcom/tns/TypeIDs;->Boolean:I

    return v0

    .line 51
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    sget v0, Lcom/tns/TypeIDs;->Char:I

    return v0

    .line 53
    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    sget v0, Lcom/tns/TypeIDs;->Byte:I

    return v0

    .line 55
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56
    sget v0, Lcom/tns/TypeIDs;->Short:I

    return v0

    .line 57
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58
    sget v0, Lcom/tns/TypeIDs;->Long:I

    return v0

    .line 59
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60
    sget v0, Lcom/tns/TypeIDs;->Float:I

    return v0

    .line 61
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 62
    sget v0, Lcom/tns/TypeIDs;->Double:I

    return v0

    .line 63
    :cond_8
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 64
    sget v0, Lcom/tns/TypeIDs;->string:I

    return v0

    .line 66
    :cond_9
    sget v0, Lcom/tns/TypeIDs;->JsObject:I

    return v0
.end method

.method public static GetObjectTypeId(Ljava/lang/Object;)I
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 19
    if-nez p0, :cond_0

    .line 20
    sget v0, Lcom/tns/TypeIDs;->Null:I

    return v0

    .line 21
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 22
    sget v0, Lcom/tns/TypeIDs;->Int:I

    return v0

    .line 23
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 24
    sget v0, Lcom/tns/TypeIDs;->Boolean:I

    return v0

    .line 25
    :cond_2
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_3

    .line 26
    sget v0, Lcom/tns/TypeIDs;->Char:I

    return v0

    .line 27
    :cond_3
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    .line 28
    sget v0, Lcom/tns/TypeIDs;->Byte:I

    return v0

    .line 29
    :cond_4
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 30
    sget v0, Lcom/tns/TypeIDs;->Short:I

    return v0

    .line 31
    :cond_5
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 32
    sget v0, Lcom/tns/TypeIDs;->Long:I

    return v0

    .line 33
    :cond_6
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 34
    sget v0, Lcom/tns/TypeIDs;->Float:I

    return v0

    .line 35
    :cond_7
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 36
    sget v0, Lcom/tns/TypeIDs;->Double:I

    return v0

    .line 37
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 38
    sget v0, Lcom/tns/TypeIDs;->string:I

    return v0

    .line 40
    :cond_9
    sget v0, Lcom/tns/TypeIDs;->JsObject:I

    return v0
.end method
