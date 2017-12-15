.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$5;
.super Ljava/lang/Object;
.source "PedoCalibrationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->enable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)V
    .registers 2

    .prologue
    .line 293
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$5;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 299
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$5;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "passive"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$5;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager$5;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->mLooper:Landroid/os/Looper;
    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->access$700(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;)Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 303
    return-void
.end method
