.class public abstract Landroid/hardware/location/GeofenceHardwareCallback;
.super Ljava/lang/Object;
.source "GeofenceHardwareCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeofenceAdd(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 56
    return-void
.end method

.method public onGeofencePause(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 78
    return-void
.end method

.method public onGeofenceRemove(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 67
    return-void
.end method

.method public onGeofenceResume(II)V
    .registers 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 90
    return-void
.end method

.method public onGeofenceTransition(IILandroid/location/Location;JI)V
    .registers 7
    .param p1, "geofenceId"    # I
    .param p2, "transition"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "timestamp"    # J
    .param p6, "monitoringType"    # I

    .prologue
    .line 43
    return-void
.end method
