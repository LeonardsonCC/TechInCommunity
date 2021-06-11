.class public Lcom/telerik/android/common/DateTimeExtensions;
.super Ljava/lang/Object;
.source "DateTimeExtensions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHourOfYear(Ljava/util/Calendar;)I
    .locals 2
    .param p0, "dateTime"    # Ljava/util/Calendar;

    .line 38
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x18

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getMinuteOfYear(Ljava/util/Calendar;)I
    .locals 2
    .param p0, "dateTime"    # Ljava/util/Calendar;

    .line 48
    invoke-static {p0}, Lcom/telerik/android/common/DateTimeExtensions;->getHourOfYear(Ljava/util/Calendar;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getQuarterOfYear(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "dateTime"    # Ljava/util/Calendar;

    .line 28
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getSecondOfYear(Ljava/util/Calendar;)I
    .locals 2
    .param p0, "dateTime"    # Ljava/util/Calendar;

    .line 58
    invoke-static {p0}, Lcom/telerik/android/common/DateTimeExtensions;->getMinuteOfYear(Ljava/util/Calendar;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3c

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static subtract(Ljava/util/Calendar;Ljava/util/Calendar;)Lcom/telerik/android/common/TimeSpan;
    .locals 6
    .param p0, "value"    # Ljava/util/Calendar;
    .param p1, "value2"    # Ljava/util/Calendar;

    .line 18
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 19
    .local v0, "left":J
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 21
    .local v2, "right":J
    sub-long v4, v0, v2

    invoke-static {v4, v5}, Lcom/telerik/android/common/TimeSpan;->fromMilliseconds(J)Lcom/telerik/android/common/TimeSpan;

    move-result-object v4

    return-object v4
.end method
