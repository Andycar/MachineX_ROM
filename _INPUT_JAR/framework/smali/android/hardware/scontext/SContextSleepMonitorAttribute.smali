.class public Landroid/hardware/scontext/SContextSleepMonitorAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextSleepMonitorAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextSleepMonitorAttribute"


# instance fields
.field private mSamplingInterval:I

.field private mSensibility:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0x50

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    .line 39
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->setAttribute()V

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "sensibility"    # I
    .param p2, "samplingInterval"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0x50

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    .line 56
    iput p1, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    .line 57
    iput p2, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    .line 58
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->setAttribute()V

    .line 59
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "sensibility"

    iget v2, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string/jumbo v1, "sampling_interval"

    iget v2, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const/16 v1, 0x1d

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 99
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 83
    iget v1, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    if-gez v1, :cond_d

    .line 84
    const-string v1, "SContextSleepMonitorAttribute"

    const-string v2, "The sensibility is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_c
    return v0

    .line 87
    :cond_d
    iget v1, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    if-gez v1, :cond_19

    .line 88
    const-string v1, "SContextSleepMonitorAttribute"

    const-string v2, "The sampling interval is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 91
    :cond_19
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public getSamplingInterval()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSamplingInterval:I

    return v0
.end method

.method public getSensibility()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;->mSensibility:I

    return v0
.end method
