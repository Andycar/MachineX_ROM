.class public final Landroid/hardware/location/GeofenceHardwareRequest;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequest.java"


# static fields
.field static final GEOFENCE_TYPE_CIRCLE:I


# instance fields
.field private mLastTransition:I

.field private mLatitude:D

.field private mLongitude:D

.field private mMonitorTransitions:I

.field private mNotificationResponsiveness:I

.field private mRadius:D

.field private mSourceTechnologies:I

.field private mType:I

.field private mUnknownTimer:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    .line 36
    const/16 v0, 0x7530

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    .line 37
    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    .line 39
    const/16 v0, 0x1388

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    return-void
.end method

.method public static createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;
    .registers 14
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "radius"    # D

    .prologue
    .line 58
    new-instance v1, Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-direct {v1}, Landroid/hardware/location/GeofenceHardwareRequest;-><init>()V

    .local v1, "geofenceRequest":Landroid/hardware/location/GeofenceHardwareRequest;
    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    .line 59
    invoke-direct/range {v1 .. v7}, Landroid/hardware/location/GeofenceHardwareRequest;->setCircularGeofence(DDD)V

    .line 60
    return-object v1
.end method

.method private setCircularGeofence(DDD)V
    .registers 8
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D

    .prologue
    .line 43
    iput-wide p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    .line 44
    iput-wide p3, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    .line 45
    iput-wide p5, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    .line 47
    return-void
.end method


# virtual methods
.method public getLastTransition()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    return v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 135
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 142
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    return-wide v0
.end method

.method public getMonitorTransitions()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    return v0
.end method

.method public getNotificationResponsiveness()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    return v0
.end method

.method public getRadius()D
    .registers 3

    .prologue
    .line 149
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    return-wide v0
.end method

.method public getSourceTechnologies()I
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    return v0
.end method

.method getType()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    return v0
.end method

.method public getUnknownTimer()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    return v0
.end method

.method public setLastTransition(I)V
    .registers 2
    .param p1, "lastTransition"    # I

    .prologue
    .line 71
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    .line 72
    return-void
.end method

.method public setMonitorTransitions(I)V
    .registers 2
    .param p1, "monitorTransitions"    # I

    .prologue
    .line 92
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    .line 93
    return-void
.end method

.method public setNotificationResponsiveness(I)V
    .registers 2
    .param p1, "notificationResponsiveness"    # I

    .prologue
    .line 106
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    .line 107
    return-void
.end method

.method public setSourceTechnologies(I)V
    .registers 6
    .param p1, "sourceTechnologies"    # I

    .prologue
    .line 117
    const/16 v1, 0x1f

    .line 123
    .local v1, "sourceTechnologiesAll":I
    and-int v0, p1, v1

    .line 124
    .local v0, "sanitizedSourceTechnologies":I
    if-nez v0, :cond_e

    .line 125
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "At least one valid source technology must be set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_e
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    .line 129
    return-void
.end method

.method public setUnknownTimer(I)V
    .registers 2
    .param p1, "unknownTimer"    # I

    .prologue
    .line 82
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    .line 83
    return-void
.end method
