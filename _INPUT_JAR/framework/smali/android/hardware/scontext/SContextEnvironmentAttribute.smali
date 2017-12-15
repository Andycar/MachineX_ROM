.class public Landroid/hardware/scontext/SContextEnvironmentAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextEnvironmentAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextEnvironmentAttribute"


# instance fields
.field private mSensorType:I

.field private mUpdateInterval:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    .line 33
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    .line 39
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;->setAttribute()V

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "sensorType"    # I
    .param p2, "updateInterval"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    .line 33
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    .line 58
    iput p1, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    .line 59
    iput p2, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    .line 60
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;->setAttribute()V

    .line 61
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .prologue
    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "sensor_type"

    iget v2, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string/jumbo v1, "update_interval"

    iget v2, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const/16 v1, 0x8

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 82
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 66
    iget v2, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mSensorType:I

    if-eq v2, v1, :cond_e

    .line 67
    const-string v1, "SContextEnvironmentAttribute"

    const-string v2, "The sensor type is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_d
    return v0

    .line 70
    :cond_e
    iget v2, p0, Landroid/hardware/scontext/SContextEnvironmentAttribute;->mUpdateInterval:I

    if-gez v2, :cond_1a

    .line 71
    const-string v1, "SContextEnvironmentAttribute"

    const-string v2, "The update interval is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_1a
    move v0, v1

    .line 74
    goto :goto_d
.end method
