.class Lcom/android/systemui/statusbar/policy/FlashlightController$5;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "FlashlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method

.method private setCameraAvailable(Z)V
    .locals 4
    .param p1, "available"    # Z

    .prologue
    .line 366
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    monitor-enter v2

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$1000(Lcom/android/systemui/statusbar/policy/FlashlightController;)Z

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 368
    .local v0, "changed":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$1002(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z

    .line 369
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    if-eqz v0, :cond_1

    .line 371
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FlashlightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchAvailabilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$1100(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V

    .line 374
    :cond_1
    return-void

    .line 367
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FlashlightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraAvailable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$900(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->setCameraAvailable(Z)V

    .line 354
    :cond_1
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FlashlightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraUnavailable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$900(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->setCameraAvailable(Z)V

    .line 362
    :cond_1
    return-void
.end method
