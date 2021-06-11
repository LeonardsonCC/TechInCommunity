.class public Lcom/telerik/android/common/TimeSpan;
.super Ljava/lang/Object;
.source "TimeSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private max:Ljava/util/Calendar;

.field private min:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/android/common/TimeSpan;->min:Ljava/util/Calendar;

    .line 109
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/telerik/android/common/TimeSpan;->max:Ljava/util/Calendar;

    .line 112
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "min"    # Ljava/util/Calendar;
    .param p2, "max"    # Ljava/util/Calendar;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/telerik/android/common/TimeSpan;->min:Ljava/util/Calendar;

    .line 101
    iput-object p2, p0, Lcom/telerik/android/common/TimeSpan;->max:Ljava/util/Calendar;

    .line 102
    return-void
.end method

.method public static fromDays(J)Lcom/telerik/android/common/TimeSpan;
    .locals 6
    .param p0, "days"    # J

    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 22
    .local v0, "min":Ljava/util/Calendar;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 25
    .local v1, "max":Ljava/util/Calendar;
    const-wide/16 v2, 0x18

    mul-long v2, v2, p0

    const-wide/16 v4, 0x3c

    mul-long v2, v2, v4

    mul-long v2, v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 27
    new-instance v2, Lcom/telerik/android/common/TimeSpan;

    invoke-direct {v2, v0, v1}, Lcom/telerik/android/common/TimeSpan;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v2
.end method

.method public static fromHours(J)Lcom/telerik/android/common/TimeSpan;
    .locals 6
    .param p0, "hours"    # J

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, "min":Ljava/util/Calendar;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 72
    .local v1, "max":Ljava/util/Calendar;
    const-wide/16 v2, 0x3c

    mul-long v4, p0, v2

    mul-long v4, v4, v2

    const-wide/16 v2, 0x3e8

    mul-long v4, v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    new-instance v2, Lcom/telerik/android/common/TimeSpan;

    invoke-direct {v2, v0, v1}, Lcom/telerik/android/common/TimeSpan;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v2
.end method

.method public static fromMilliseconds(J)Lcom/telerik/android/common/TimeSpan;
    .locals 3
    .param p0, "millis"    # J

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 85
    .local v0, "min":Ljava/util/Calendar;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 88
    .local v1, "max":Ljava/util/Calendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 90
    new-instance v2, Lcom/telerik/android/common/TimeSpan;

    invoke-direct {v2, v0, v1}, Lcom/telerik/android/common/TimeSpan;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v2
.end method

.method public static fromMinutes(J)Lcom/telerik/android/common/TimeSpan;
    .locals 6
    .param p0, "minutes"    # J

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 53
    .local v0, "min":Ljava/util/Calendar;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 56
    .local v1, "max":Ljava/util/Calendar;
    const-wide/16 v2, 0x3c

    mul-long v2, v2, p0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 58
    new-instance v2, Lcom/telerik/android/common/TimeSpan;

    invoke-direct {v2, v0, v1}, Lcom/telerik/android/common/TimeSpan;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v2
.end method

.method public static fromSeconds(J)Lcom/telerik/android/common/TimeSpan;
    .locals 4
    .param p0, "seconds"    # J

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 38
    .local v0, "min":Ljava/util/Calendar;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 41
    .local v1, "max":Ljava/util/Calendar;
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 42
    new-instance v2, Lcom/telerik/android/common/TimeSpan;

    invoke-direct {v2, v0, v1}, Lcom/telerik/android/common/TimeSpan;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v2
.end method

.method public static getZero()Lcom/telerik/android/common/TimeSpan;
    .locals 1

    .line 121
    new-instance v0, Lcom/telerik/android/common/TimeSpan;

    invoke-direct {v0}, Lcom/telerik/android/common/TimeSpan;-><init>()V

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "param"    # Ljava/lang/Object;

    .line 144
    instance-of v0, p1, Lcom/telerik/android/common/TimeSpan;

    if-eqz v0, :cond_0

    .line 148
    move-object v0, p1

    check-cast v0, Lcom/telerik/android/common/TimeSpan;

    .line 150
    .local v0, "timeSpanParam":Lcom/telerik/android/common/TimeSpan;
    invoke-virtual {p0}, Lcom/telerik/android/common/TimeSpan;->getMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/telerik/android/common/TimeSpan;->getMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v1

    return v1

    .line 145
    .end local v0    # "timeSpanParam":Lcom/telerik/android/common/TimeSpan;
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Argument is not a TimeSpan instance."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMillis()J
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/telerik/android/common/TimeSpan;->max:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/telerik/android/common/TimeSpan;->min:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalDays()I
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/telerik/android/common/TimeSpan;->max:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/telerik/android/common/TimeSpan;->min:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
