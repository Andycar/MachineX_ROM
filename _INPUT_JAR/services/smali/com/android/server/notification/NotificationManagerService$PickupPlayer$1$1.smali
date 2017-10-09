.class Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;->onMotionListener(Landroid/hardware/motion/MREvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;)V
    .registers 2

    .prologue
    .line 3832
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3834
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mInCall:Z
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3835
    const-string v0, "NotificationService"

    const-string v1, "Pickup - mInCall is true, vibration will be returned"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    :goto_13
    return-void

    .line 3837
    :cond_14
    const-string v0, "NotificationService"

    const-string v1, "Pickup - mVibrator.vibrateImmVibe()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    # getter for: Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->ivt:[B
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->access$6300(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto :goto_13
.end method
