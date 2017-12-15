.class public Landroid/sec/enterprise/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# static fields
.field public static final SVOICE_PACKAGE:Ljava/lang/String; = "com.vlingo.midas"

.field private static TAG:Ljava/lang/String; = null

.field public static final WFD_DISABLE:Ljava/lang/String; = "com.android.server.enterprise.WFD_DISABLE"

.field public static final settingsExceptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 54
    const-string v0, "RestrictionPolicy"

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 57
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.ActivityPicker"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.AppWidgetPickActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.settings.ChooseLockAdditionalPin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.settings.ChooseLockFaceWarning"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.settings.ChooseLockGeneric"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.settings.ChooseLockMotion"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings.ChooseLockPassword"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.settings.ChooseLockPattern"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.settings.ConfirmLockPassword"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.settings.ConfirmLockPattern"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.settings.DeviceAdminAdd"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.settings.bluetooth.DevicePickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.settings.wfd.WfdPickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.android.settings.bluetooth.BluetoothPairingDialog"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.settings.bluetooth.CheckBluetoothStateActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.android.settings.bluetooth.BluetoothEnableActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.android.settings.bluetooth.BluetoothEnablingActivity"

    aput-object v2, v0, v1

    sput-object v0, Landroid/sec/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAndroidBeamAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 415
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 416
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 417
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isAndroidBeamAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 422
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 419
    :catch_b
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isSBeamAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isAudioRecordAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 289
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 290
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 291
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isAudioRecordAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 296
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 293
    :catch_b
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isAudioRecordAllowed returning default value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isBackgroundProcessLimitAllowed()Z
    .registers 5

    .prologue
    .line 338
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 339
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 340
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isBackgroundProcessLimitAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 345
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 342
    :catch_b
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBackgroundProcessLimitAllowed returning default value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isBackupAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 240
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 241
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 242
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isBackupAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 247
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 244
    :catch_b
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBackupAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isCameraEnabled(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 126
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 127
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isCameraEnabled(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 132
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 129
    :catch_b
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isCameraEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isClipboardAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 182
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 183
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 184
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isClipboardAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 189
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 186
    :catch_b
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isClipboardAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isClipboardShareAllowed()Z
    .registers 5

    .prologue
    .line 369
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 370
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 371
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isClipboardShareAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 376
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 373
    :catch_b
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isClipboardShareAllowed returning default value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isGoogleCrashReportAllowed()Z
    .registers 5

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 221
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 222
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isGoogleCrashReportAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 227
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 224
    :catch_b
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isGoogleCrashReportAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isKillingActivitiesOnLeaveAllowed()Z
    .registers 5

    .prologue
    .line 354
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 355
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 356
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isKillingActivitiesOnLeaveAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 361
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 358
    :catch_b
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isKillingActivitiesOnLeaveAllowed returning default value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isMicrophoneEnabled(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 203
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 204
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 205
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isMicrophoneEnabled(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 210
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 207
    :catch_b
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isMicrophoneEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isNFCEnabled()Z
    .registers 5

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 143
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 144
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNFCEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 149
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 146
    :catch_b
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isNFCEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isNFCEnabledWithMsg(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 162
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 163
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isNFCEnabledWithMsg(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 169
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 166
    :catch_b
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isNFCEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isNonMarketAppAllowed()Z
    .registers 5

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 105
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 106
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNonMarketAppAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 111
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 108
    :catch_b
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isNonMarketAppAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isPowerOffAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 273
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 274
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 275
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isPowerOffAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 280
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 277
    :catch_b
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isPowerOffAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isSBeamAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 400
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 401
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 402
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSBeamAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 407
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 404
    :catch_b
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isSBeamAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isSVoiceAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 385
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 386
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 387
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSVoiceAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 392
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 389
    :catch_b
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isSVoiceAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isScreenCaptureEnabled(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 257
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 258
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 259
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isScreenCaptureEnabled(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 264
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 261
    :catch_b
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isScreenCaptureEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isSettingsChangesAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 88
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 89
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isSettingsChangesAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 94
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 91
    :catch_b
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isSettingsChangesAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isVideoRecordAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 304
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 305
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 306
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isVideoRecordAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 311
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 308
    :catch_b
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isAudioRecordAllowed returning default value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isWifiDirectAllowed(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 322
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 323
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 324
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isWifiDirectAllowed(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 329
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 326
    :catch_b
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isAudioRecordAllowed returning default value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method
