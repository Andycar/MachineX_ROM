.class Lcom/android/server/location/FlpHardwareProvider$2;
.super Landroid/location/IFusedGeofenceHardware$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .registers 2

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Landroid/location/IFusedGeofenceHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .registers 3
    .param p1, "geofenceRequestsArray"    # [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$1300(Lcom/android/server/location/FlpHardwareProvider;[Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    .line 355
    return-void
.end method

.method public isSupported()Z
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeIsGeofencingSupported()Z
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$1200(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public modifyGeofenceOptions(IIIIII)V
    .registers 14
    .param p1, "geofenceId"    # I
    .param p2, "lastTransition"    # I
    .param p3, "monitorTransitions"    # I
    .param p4, "notificationResponsiveness"    # I
    .param p5, "unknownTimer"    # I
    .param p6, "sourcesToUse"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeModifyGeofenceOption(IIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/location/FlpHardwareProvider;->access$1700(Lcom/android/server/location/FlpHardwareProvider;IIIIII)V

    .line 386
    return-void
.end method

.method public pauseMonitoringGeofence(I)V
    .registers 3
    .param p1, "geofenceId"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativePauseGeofence(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$1500(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 365
    return-void
.end method

.method public removeGeofences([I)V
    .registers 3
    .param p1, "geofenceIds"    # [I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeRemoveGeofences([I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$1400(Lcom/android/server/location/FlpHardwareProvider;[I)V

    .line 360
    return-void
.end method

.method public resumeMonitoringGeofence(II)V
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$2;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeResumeGeofence(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$1600(Lcom/android/server/location/FlpHardwareProvider;II)V

    .line 370
    return-void
.end method
