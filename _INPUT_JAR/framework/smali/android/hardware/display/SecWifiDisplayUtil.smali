.class public Landroid/hardware/display/SecWifiDisplayUtil;
.super Ljava/lang/Object;
.source "SecWifiDisplayUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/SecWifiDisplayUtil$1;
    }
.end annotation


# instance fields
.field private final GP_PACKAGE_NAME:Ljava/lang/String;

.field private final GP_RUNNING_STATE_CHECK_FILE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "SecWifiDisplayUtil"

    iput-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "com.samsung.groupcast"

    iput-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->GP_PACKAGE_NAME:Ljava/lang/String;

    .line 39
    const-string v0, ".gp_running_check"

    iput-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->GP_RUNNING_STATE_CHECK_FILE:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private getCPUPowerSavingMode()I
    .registers 5

    .prologue
    .line 92
    iget-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "psm_cpu_clock"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getPowerSavingMode()I
    .registers 5

    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "psm_switch"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private isHDMIConnected()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v3, 0x0

    .line 149
    .local v3, "isHDMIConnected":Z
    iget-object v4, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 150
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 152
    .local v0, "displays":[Landroid/view/Display;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v4, v0

    if-ge v2, v4, :cond_24

    .line 153
    aget-object v4, v0, v2

    if-eqz v4, :cond_21

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    .line 154
    const/4 v3, 0x1

    .line 152
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 157
    :cond_24
    const-string v4, "SecWifiDisplayUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHDMIConnected(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v3
.end method

.method private isHotspotOn()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "isHotspotOn":Z
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 177
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    .line 185
    :goto_13
    const-string v2, "SecWifiDisplayUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHotSpotOn(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v0

    .line 181
    :pswitch_2c
    const/4 v0, 0x1

    goto :goto_13

    .line 177
    :pswitch_data_2e
    .packed-switch 0xc
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method private isLimitedContentsPlaying()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_limited_contents_playing"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method private isP2pConnected()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, "isP2pConntected":Z
    iget-object v3, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 193
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 194
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_33

    .line 195
    const/4 v1, 0x1

    .line 199
    :goto_1a
    const-string v3, "SecWifiDisplayUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isP2pConntected(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v1

    .line 197
    :cond_33
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private isSideSyncAppRunning()Z
    .registers 8

    .prologue
    .line 124
    iget-object v5, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 127
    .local v1, "am":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v5, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 129
    .local v4, "pack":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3e

    .line 130
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "className":Ljava/lang/String;
    const-string v5, "com.sec.android.sidesync"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 132
    const-string v5, "SecWifiDisplayUtil"

    const-string v6, "isSideSyncAppRunning"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v5, 0x1

    .line 136
    .end local v2    # "className":Ljava/lang/String;
    :goto_3a
    return v5

    .line 129
    .restart local v2    # "className":Ljava/lang/String;
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 136
    .end local v2    # "className":Ljava/lang/String;
    :cond_3e
    const/4 v5, 0x0

    goto :goto_3a
.end method

.method private isSideSyncConnected()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sidesync_source_connect"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_12

    .line 143
    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method private isWfdConnected()Z
    .registers 4

    .prologue
    .line 234
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 235
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 236
    const/4 v1, 0x1

    .line 238
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private isWfdStatusOn()Z
    .registers 4

    .prologue
    .line 242
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 243
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    .line 244
    const/4 v1, 0x1

    .line 246
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private isWifiIbssEnabled()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 167
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v1

    return v1
.end method

.method private stopPeriodicScanning(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    .line 250
    iget-object v3, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 251
    .local v2, "tWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 252
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 253
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "stop"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 259
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2c
    return-void
.end method


# virtual methods
.method public checkExceptionalCase()I
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "ret":I
    :try_start_2
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_5} :catch_72

    move-result v2

    if-eqz v2, :cond_23

    .line 50
    const/4 v1, 0x0

    .line 74
    :goto_9
    const-string v2, "SecWifiDisplayUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkExceptionalCase ret value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 75
    :goto_22
    return v2

    .line 51
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isGroupPlayRunning()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 52
    const/4 v1, 0x7

    goto :goto_9

    .line 53
    :cond_2b
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isHotspotOn()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 54
    const/4 v1, 0x1

    goto :goto_9

    .line 55
    :cond_33
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isP2pConnected()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 56
    const/4 v1, 0x2

    goto :goto_9

    .line 57
    :cond_3b
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isHDMIConnected()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 58
    const/4 v1, 0x3

    goto :goto_9

    .line 59
    :cond_43
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isSideSyncConnected()Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isSideSyncAppRunning()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 60
    :cond_4f
    const/4 v1, 0x4

    goto :goto_9

    .line 61
    :cond_51
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->getCPUPowerSavingMode()I

    move-result v2

    if-ne v2, v3, :cond_5f

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->getPowerSavingMode()I

    move-result v2

    if-ne v2, v3, :cond_5f

    .line 62
    const/4 v1, 0x5

    goto :goto_9

    .line 63
    :cond_5f
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isLimitedContentsPlaying()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 64
    const/4 v1, 0x6

    goto :goto_9

    .line 65
    :cond_67
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWifiIbssEnabled()Z
    :try_end_6a
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_6a} :catch_72

    move-result v2

    if-eqz v2, :cond_70

    .line 66
    const/16 v1, 0x8

    goto :goto_9

    .line 68
    :cond_70
    const/4 v1, 0x0

    goto :goto_9

    .line 69
    :catch_72
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SecWifiDisplayUtil"

    const-string v3, "exception occured while using isScreenMirroringAvailable"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 72
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public isGroupPlayRunning()Z
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 96
    iget-object v10, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 97
    .local v0, "am":Landroid/app/ActivityManager;
    const v10, 0x7fffffff

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 98
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 99
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_43

    .line 100
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 101
    .local v7, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.samsung.groupcast"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 103
    :try_start_30
    iget-object v10, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string v11, "com.samsung.groupcast"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 104
    .local v3, "gpContext":Landroid/content/Context;
    const-string v10, ".gp_running_check"

    invoke-virtual {v3, v10}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_3e} :catch_49
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_3e} :catch_4e

    move-result-object v2

    .line 106
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_42} :catch_49
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_42} :catch_4e

    .line 117
    :goto_42
    const/4 v9, 0x1

    .line 120
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "gpContext":Landroid/content/Context;
    .end local v7    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_43
    :goto_43
    return v9

    .line 107
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "gpContext":Landroid/content/Context;
    .restart local v7    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_44
    move-exception v4

    .line 108
    .local v4, "ie":Ljava/io/IOException;
    :try_start_45
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45 .. :try_end_48} :catch_49
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_48} :catch_4e

    goto :goto_42

    .line 110
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "gpContext":Landroid/content/Context;
    .end local v4    # "ie":Ljava/io/IOException;
    :catch_49
    move-exception v6

    .line 111
    .local v6, "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_43

    .line 113
    .end local v6    # "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_4e
    move-exception v1

    .line 114
    .local v1, "fe":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_43
.end method

.method public setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V
    .registers 9
    .param p1, "state"    # Landroid/hardware/display/DisplayManager$WfdAppState;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 231
    :cond_9
    :goto_9
    return-void

    .line 209
    :cond_a
    sget-object v2, Landroid/hardware/display/SecWifiDisplayUtil$1;->$SwitchMap$android$hardware$display$DisplayManager$WfdAppState:[I

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager$WfdAppState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_64

    goto :goto_9

    .line 211
    :pswitch_16
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    .line 215
    :pswitch_23
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifip2p"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 216
    .local v1, "p2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 218
    .local v0, "mWifiP2pChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-direct {p0, v4}, Landroid/hardware/display/SecWifiDisplayUtil;->stopPeriodicScanning(Z)V

    .line 219
    invoke-virtual {v1, v0, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_9

    .line 222
    .end local v0    # "mWifiP2pChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .end local v1    # "p2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    :pswitch_41
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v2

    if-nez v2, :cond_9

    .line 223
    invoke-direct {p0, v5}, Landroid/hardware/display/SecWifiDisplayUtil;->stopPeriodicScanning(Z)V

    goto :goto_9

    .line 226
    :pswitch_4b
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdStatusOn()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 227
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    .line 209
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_16
        :pswitch_23
        :pswitch_41
        :pswitch_4b
    .end packed-switch
.end method
