.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$1;
.super Ljava/lang/Object;
.source "CaCurrentLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .registers 14
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_f

    .line 129
    const-string v0, "Accuracy is low"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 144
    :goto_e
    return-void

    .line 133
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 134
    .local v2, "sysTime":J
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    .line 136
    .local v4, "timeStamp":J
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 137
    .local v6, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 138
    .local v8, "longitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    .line 142
    .local v10, "altitude":D
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->notifyCurrentLocationObserver(JJDDD)V

    goto :goto_e
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v0, "Location service is disabled"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "Location service is enabled"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 154
    packed-switch p2, :pswitch_data_18

    .line 167
    :goto_3
    return-void

    .line 156
    :pswitch_4
    const-string/jumbo v0, "out of service"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 159
    :pswitch_b
    const-string/jumbo v0, "temporarily unavailable"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 162
    :pswitch_12
    const-string v0, "available"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 154
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_4
        :pswitch_b
        :pswitch_12
    .end packed-switch
.end method
