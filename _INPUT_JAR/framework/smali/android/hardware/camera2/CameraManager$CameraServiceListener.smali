.class Landroid/hardware/camera2/CameraManager$CameraServiceListener;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraServiceListener"
.end annotation


# static fields
.field public static final STATUS_ENUMERATING:I = 0x2

.field public static final STATUS_NOT_AVAILABLE:I = -0x80000000

.field public static final STATUS_NOT_PRESENT:I = 0x0

.field public static final STATUS_PRESENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraServiceListener"


# instance fields
.field private final mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .registers 3

    .prologue
    .line 671
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 687
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/camera2/CameraManager$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "x1"    # Landroid/hardware/camera2/CameraManager$1;

    .prologue
    .line 671
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;-><init>(Landroid/hardware/camera2/CameraManager;)V

    return-void
.end method

.method private isAvailable(I)Z
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 697
    packed-switch p1, :pswitch_data_8

    .line 701
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 699
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 697
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method private postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .prologue
    .line 719
    invoke-direct {p0, p4}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 720
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraServiceListener$1;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraServiceListener$1;-><init>(Landroid/hardware/camera2/CameraManager$CameraServiceListener;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 736
    :goto_e
    return-void

    .line 728
    :cond_f
    new-instance v0, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraServiceListener;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method

.method private validStatus(I)Z
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 706
    sparse-switch p1, :sswitch_data_8

    .line 713
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 711
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 706
    nop

    :sswitch_data_8
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_5
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 693
    return-object p0
.end method

.method public onStatusChanged(II)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->access$200(Landroid/hardware/camera2/CameraManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 753
    :try_start_7
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->onStatusChangedLocked(ILjava/lang/String;)V

    .line 754
    monitor-exit v1

    .line 755
    return-void

    .line 754
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onStatusChangedLocked(ILjava/lang/String;)V
    .registers 15
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 758
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->DEBUG:Z
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->access$600(Landroid/hardware/camera2/CameraManager;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 759
    const-string v5, "CameraServiceListener"

    const-string v6, "Camera id %s has status changed to 0x%x"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p2, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_20
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->validStatus(I)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 764
    const-string v5, "CameraServiceListener"

    const-string v6, "Ignoring invalid device %s status 0x%x"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p2, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_3b
    :goto_3b
    return-void

    .line 769
    :cond_3c
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 771
    .local v4, "oldStatus":Ljava/lang/Integer;
    if-eqz v4, :cond_6c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_6c

    .line 772
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->DEBUG:Z
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->access$600(Landroid/hardware/camera2/CameraManager;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 773
    const-string v5, "CameraServiceListener"

    const-string v6, "Device status changed to 0x%x, which is what it already was"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 793
    :cond_6c
    if-eqz v4, :cond_a6

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v6

    if-ne v5, v6, :cond_a6

    .line 794
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->DEBUG:Z
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->access$600(Landroid/hardware/camera2/CameraManager;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 795
    const-string v5, "CameraServiceListener"

    const-string v6, "Device status was previously available (%d),  and is now again available (%d)so no new client visible update will be sent"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 805
    :cond_a6
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mCallbackMap:Landroid/util/ArrayMap;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->access$700(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 806
    .local v1, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b1
    if-ge v3, v1, :cond_3b

    .line 807
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mCallbackMap:Landroid/util/ArrayMap;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->access$700(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 808
    .local v2, "handler":Landroid/os/Handler;
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mCallbackMap:Landroid/util/ArrayMap;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->access$700(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 810
    .local v0, "callback":Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    invoke-direct {p0, v0, v2, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 806
    add-int/lit8 v3, v3, 0x1

    goto :goto_b1
.end method

.method public updateCallbackLocked(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 744
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 745
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 746
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 748
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_23
    return-void
.end method
