.class Lcom/android/settings/Settings$DrivingModeContentObserver;
.super Landroid/database/ContentObserver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrivingModeContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method public constructor <init>(Lcom/android/settings/Settings;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 6522
    iput-object p1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    .line 6523
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6524
    invoke-static {}, Lcom/android/settings/Settings;->access$1500()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p1, Lcom/android/settings/Settings;->am:Landroid/media/AudioManager;

    .line 6525
    return-void
.end method

.method private isSystemDrivingModeEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 6556
    :try_start_0
    invoke-static {}, Lcom/android/settings/Settings;->access$1500()Landroid/content/Context;

    move-result-object v0

    .line 6557
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 6558
    .local v2, "v":I
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 6561
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "v":I
    :cond_0
    :goto_0
    return v3

    .line 6559
    :catch_0
    move-exception v1

    .line 6560
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/settings/Settings;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Settings"

    const-string v5, "Driving mode settings not found."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 6529
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6530
    :cond_0
    const-string v1, "Settings"

    const-string v2, "Do not use driving mode "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6551
    :cond_1
    :goto_0
    return-void

    .line 6534
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/Settings$DrivingModeContentObserver;->isSystemDrivingModeEnabled()Z

    move-result v0

    .line 6536
    .local v0, "systemDrivingModeOn":Z
    if-nez v0, :cond_3

    .line 6537
    const-string v1, "Settings"

    const-string v2, "isSystemDrivingModeEnabled is : false "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6538
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v1}, Lcom/android/settings/Settings;->access$2800(Lcom/android/settings/Settings;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 6539
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    iget-object v1, v1, Lcom/android/settings/Settings;->am:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v2}, Lcom/android/settings/Settings;->access$2800(Lcom/android/settings/Settings;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 6540
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    iget-object v2, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v2}, Lcom/android/settings/Settings;->access$2800(Lcom/android/settings/Settings;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Settings;->access$2702(Lcom/android/settings/Settings;I)I

    .line 6541
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/settings/Settings;->access$2802(Lcom/android/settings/Settings;I)I

    goto :goto_0

    .line 6544
    :cond_3
    const-string v1, "Settings"

    const-string v2, "isSystemDrivingModeEnabled is : true "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6545
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v1}, Lcom/android/settings/Settings;->access$2800(Lcom/android/settings/Settings;)I

    move-result v1

    if-gez v1, :cond_4

    .line 6546
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    iget-object v2, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v2}, Lcom/android/settings/Settings;->access$2700(Lcom/android/settings/Settings;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Settings;->access$2802(Lcom/android/settings/Settings;I)I

    .line 6547
    :cond_4
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/settings/Settings;->access$2702(Lcom/android/settings/Settings;I)I

    .line 6548
    iget-object v1, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    iget-object v1, v1, Lcom/android/settings/Settings;->am:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/Settings$DrivingModeContentObserver;->this$0:Lcom/android/settings/Settings;

    invoke-static {v2}, Lcom/android/settings/Settings;->access$2700(Lcom/android/settings/Settings;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method
