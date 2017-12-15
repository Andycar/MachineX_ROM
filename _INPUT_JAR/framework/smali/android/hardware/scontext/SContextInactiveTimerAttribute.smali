.class public Landroid/hardware/scontext/SContextInactiveTimerAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextInactiveTimerAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextInactiveTimerAttribute"


# instance fields
.field private mAlertCount:I

.field private mDeviceType:I

.field private mDuration:I

.field private mEndTime:I

.field private mStartTime:I


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x5dc

    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    .line 32
    const/16 v0, 0xe10

    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    .line 34
    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    .line 36
    iput v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    .line 38
    iput v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    .line 44
    invoke-direct {p0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->setAttribute()V

    .line 45
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 9
    .param p1, "deviceType"    # I
    .param p2, "duration"    # I
    .param p3, "alertCount"    # I
    .param p4, "startTime"    # I
    .param p5, "endTime"    # I

    .prologue
    const/16 v2, 0x5dc

    const/4 v1, 0x1

    .line 69
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    .line 32
    const/16 v0, 0xe10

    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    .line 34
    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    .line 36
    iput v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    .line 38
    iput v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    .line 70
    iput p1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    .line 71
    iput p2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    .line 72
    iput p3, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    .line 73
    iput p4, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    .line 74
    iput p5, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    .line 75
    invoke-direct {p0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->setAttribute()V

    .line 76
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .prologue
    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "device_type"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string v1, "duration"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string v1, "alert_count"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string/jumbo v1, "start_time"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v1, "end_time"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const/16 v1, 0x23

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 113
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    if-eq v2, v1, :cond_13

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_13

    .line 83
    const-string v1, "SContextInactiveTimerAttribute"

    const-string v2, "The deivce type is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_12
    return v0

    .line 86
    :cond_13
    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    if-gez v2, :cond_1f

    .line 87
    const-string v1, "SContextInactiveTimerAttribute"

    const-string v2, "The duration is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 90
    :cond_1f
    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    if-gez v2, :cond_2b

    .line 91
    const-string v1, "SContextInactiveTimerAttribute"

    const-string v2, "The alert count is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 94
    :cond_2b
    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    if-gez v2, :cond_37

    .line 95
    const-string v1, "SContextInactiveTimerAttribute"

    const-string v2, "The start time is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 98
    :cond_37
    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    if-gez v2, :cond_43

    .line 99
    const-string v1, "SContextInactiveTimerAttribute"

    const-string v2, "The end time is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_43
    move v0, v1

    .line 102
    goto :goto_12
.end method
