.class public Lcom/samsung/wfd/WfdManager;
.super Ljava/lang/Object;
.source "WfdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdManager$Channel;,
        Lcom/samsung/wfd/WfdManager$ActionListener;,
        Lcom/samsung/wfd/WfdManager$ChannelListener;
    }
.end annotation


# static fields
.field public static final ACTION_LAUNCH_WFD_PICKER_DLG:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

.field public static final ACTION_LAUNCH_WFD_POPUP:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_POPUP"

.field public static final ACTION_LAUNCH_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_UPDATE"

.field public static final ACTION_PICK_WFD_NETWORK:Ljava/lang/String; = "com.samsung.wfd.PICK_WFD_NETWORK"

.field public static final ACTION_RESULT_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.RESULT_WFD_UPDATE"

.field public static final ACTION_SECURE_END:Ljava/lang/String; = "android.intent.action.SECURE_END"

.field public static final ACTION_SECURE_END_DONE:Ljava/lang/String; = "android.intent.action.SECURE_END_DONE"

.field public static final ACTION_SECURE_START:Ljava/lang/String; = "android.intent.action.SECURE_START"

.field public static final ACTION_SECURE_START_DONE:Ljava/lang/String; = "android.intent.action.SECURE_START_DONE"

.field public static final ACTION_WIFI_DISPLAY_BITRATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_BITRATE"

.field public static final ACTION_WIFI_DISPLAY_BUFFERING_DO:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_BUFFERING_DO"

.field public static final ACTION_WIFI_DISPLAY_BUFFERING_DONE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_BUFFERING_DONE"

.field public static final ACTION_WIFI_DISPLAY_RESOLUTION:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RESOLUTION"

.field public static final ACTION_WIFI_DISPLAY_TCP_PLAYBACK_CONTROL:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_TCP_PLAYBACK_CONTROL"

.field public static final ACTION_WIFI_DISPLAY_TCP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

.field public static final ACTION_WIFI_DISPLAY_UDP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

.field public static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_VIDEO"

.field private static final BASE:I = 0x22000

.field public static final BUSY:I = 0x2

.field public static final DISABLE_WFD:I = 0x22068

.field public static final DISABLE_WFD_FAILED:I = 0x22069

.field public static final DISABLE_WFD_SUCCEEDED:I = 0x2206a

.field public static final ENABLE_WFD:I = 0x22065

.field public static final ENABLE_WFD_DIALOG:I = 0x2206f

.field public static final ENABLE_WFD_FAILED:I = 0x22066

.field public static final ENABLE_WFD_SUCCEEDED:I = 0x22067

.field public static final ERROR:I = 0x0

.field public static final EXTRA_CAUSE_INFO:Ljava/lang/String; = "cause"

.field public static final EXTRA_CURRENT_RESOLUTION_INFO:Ljava/lang/String; = "curRes"

.field public static final EXTRA_CUSTOM_SETTING:Ljava/lang/String; = "wfdCustomSetting"

.field public static final EXTRA_INTENDED_CHANGEPATH:Ljava/lang/String; = "intendedChangePath"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_RESOLUTION_INFO:Ljava/lang/String; = "resBitMask"

.field public static final EXTRA_RESULT_RET:Ljava/lang/String; = "result"

.field public static final EXTRA_SAMPLE_COUNT:Ljava/lang/String; = "count"

.field public static final EXTRA_SIDESYNC_RESOLUTION:Ljava/lang/String; = "wfdSideSyncResolution"

.field public static final EXTRA_STATE_INFO:Ljava/lang/String; = "state"

.field public static final EXTRA_UPDATE_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_WFD_DEVICE:Ljava/lang/String; = "wfdPeerDeviceDescriptor"

.field public static final EXTRA_WFD_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_WFD_STATE:Ljava/lang/String; = "wfd_state"

.field public static final MODE_DEFAULT:I = -0x1

.field public static final MODE_HOME_SYNC_REMOTE_TOUCH:I = 0x1

.field public static final MODE_HOME_SYNC_SCREEN_MIRRORING:I = 0x2

.field public static final MODE_REMOTE_VIEWFINDER:I = 0x0

.field public static final MODE_SCREEN_MIRRORING:I = 0x3

.field public static final MODE_SIDESYNC:I = 0x4

.field public static final P2P_CONNECTION_ESTABLISHED:Ljava/lang/String; = "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

.field public static final P2P_CONNECTION_TERMINATED:Ljava/lang/String; = "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

.field public static final PAUSE_RTSP:I = 0x2206e

.field public static final POPUP_CAUSE_ALERT_RESTART:I = 0x22073

.field public static final POPUP_CAUSE_BLUETOOTH_OR_EARPHONE_ON:I = 0x2207c

.field public static final POPUP_CAUSE_CONNECTION_DISCONNECT:I = 0x2207b

.field public static final POPUP_CAUSE_DISCONNECT_NO_BUSY:I = 0x2207e

.field public static final POPUP_CAUSE_DONGLE_UPDATE:I = 0x22078

.field public static final POPUP_CAUSE_DONGLE_UPDATE_RESULT:I = 0x22079

.field public static final POPUP_CAUSE_HDMI_BUSY:I = 0x22074

.field public static final POPUP_CAUSE_HOTSPOT_BUSY:I = 0x22075

.field public static final POPUP_CAUSE_INVALID_HDCP_KEY:I = 0x22081

.field public static final POPUP_CAUSE_ONGOING_RESCAN:I = 0x22077

.field public static final POPUP_CAUSE_P2P_BUSY:I = 0x22072

.field public static final POPUP_CAUSE_POWER_SAVING_ENABLED:I = 0x22084

.field public static final POPUP_CAUSE_SBEAM_BUSY:I = 0x22076

.field public static final POPUP_CAUSE_SIDE_SYNC_RUNNING:I = 0x22085

.field public static final POPUP_CAUSE_SPLIT_WINDOW:I = 0x2207f

.field public static final POPUP_CAUSE_TERMINATE:I = 0x22070

.field public static final POPUP_CAUSE_WEAK_NETWORK:I = 0x2207a

.field public static final POPUP_FHD_PLAYBACK_STATE_ENABLED:I = 0x22086

.field public static final POPUP_FHD_RECORDING_STATE_ENABLED:I = 0x22087

.field public static final RESUME_RTSP:I = 0x2206d

.field public static final SILENT_POPUP_CAUSE_CONNECTION_DISCONNECT:I = 0x22083

.field public static final START_RTSP:I = 0x2206b

.field public static final STOP_RTSP:I = 0x2206c

.field private static final TAG:Ljava/lang/String; = "WfdManager"

.field public static final TEARDOWN:I = 0x22082

.field public static final UPDATE_RESOURCES:I = 0x22080

.field public static final WFD_SERVICE_STARTED:Ljava/lang/String; = "com.samsung.wfd.WFD_SERVICE_STARTED"

.field public static final WFD_SESSION_ENABLED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_ENABLED"

.field public static final WFD_SESSION_ESTABLISHED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

.field public static final WFD_SESSION_ESTABLISHING:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_ESTABLISHING"

.field public static final WFD_SESSION_PAUSE:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_PAUSE"

.field public static final WFD_SESSION_RESUME:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_RESUME"

.field public static final WFD_SESSION_START:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_START"

.field public static final WFD_SESSION_STOP:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_STOP"

.field public static final WFD_SESSION_STOPPED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_STOPPED"

.field public static final WFD_SESSION_TEARDOWN:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_TEARDOWN"

.field public static final WFD_SESSION_TERMINATED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_TERMINATED"

.field public static final WFD_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.samsung.wfd.STATE_CHANGED"

.field public static final WFD_STATE_DISABLED:I = 0x1

.field public static final WFD_STATE_ENABLED:I = 0x2

.field public static final WFD_STATE_ERROR:I = 0x6

.field public static final WFD_STATE_P2P_CONNECTED:I = 0x3

.field public static final WFD_STATE_SESSION_ESTABLISHED:I = 0x5

.field public static final WFD_STATE_SESSION_STARTING:I = 0x4

.field public static final WFD_STATE_SESSION_TEARDOWNING:I = 0x0

.field public static final WFD_STATE_UNKNOWN:I = -0x1

.field public static final WFD_TEARDOWN_FOR_AUDIO_OUT:Ljava/lang/String; = "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

.field public static final WFD_UNSUPPORTED:I = 0x1

.field public static final WIFIDISPLAY_CONTROL_FROM_BROKER:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_CONTROL_FROM_BROKER"

.field public static final WIFIDISPLAY_CONTROL_FROM_SERVICE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

.field public static final WIFIDISPLAY_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final WIFIDISPLAY_NOTI_CONNECTION_MODE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

.field public static final WIFIDISPLAY_NOTI_ERROR_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

.field public static final WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

.field public static final WIFIDISPLAY_PARAM_CHANGED_NOTIFICATION:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

.field public static final WIFIDISPLAY_RESOLUTION_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_REQ"

.field public static final WIFIDISPLAY_RESOLUTION_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

.field public static final WIFIDISPLAY_SESSION_INFO:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RES"

.field public static final WIFIDISPLAY_SESSION_STATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final WIFIDISPLAY_UPDATE_INPUT_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

.field public static final WIFIDISPLAY_UPDATE_URL_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

.field public static final WIFIDISPLAY_WEAK_NETWORK:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

.field public static final r_1024_768:I = 0x40

.field public static final r_1152_864:I = 0x80

.field public static final r_1280_1024:I = 0x1000

.field public static final r_1280_720:I = 0x8

.field public static final r_1280_768:I = 0x100

.field public static final r_1280_800:I = 0x200

.field public static final r_1360_768:I = 0x400

.field public static final r_1366_768:I = 0x800

.field public static final r_1400_1050:I = 0x2000

.field public static final r_1440_900:I = 0x4000

.field public static final r_1600_1200:I = 0x10000

.field public static final r_1600_900:I = 0x8000

.field public static final r_1680_1024:I = 0x20000

.field public static final r_1680_1050:I = 0x40000

.field public static final r_1920_1080:I = 0x10

.field public static final r_1920_1200:I = 0x80000

.field public static final r_640_360:I = 0x800000

.field public static final r_640_480:I = 0x1

.field public static final r_720_480:I = 0x2

.field public static final r_720_576:I = 0x4

.field public static final r_800_480:I = 0x100000

.field public static final r_800_600:I = 0x20

.field public static final r_848_480:I = 0x2000000

.field public static final r_854_480:I = 0x200000

.field public static final r_864_480:I = 0x400000

.field public static final r_960_540:I = 0x1000000

.field public static final r_unknown:I


# instance fields
.field mService:Lcom/samsung/wfd/IWfdManager;


# direct methods
.method public constructor <init>(Lcom/samsung/wfd/IWfdManager;)V
    .registers 2
    .param p1, "service"    # Lcom/samsung/wfd/IWfdManager;

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-object p1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    .line 461
    return-void
.end method


# virtual methods
.method public WFDGetStatus()Z
    .registers 3

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 805
    const/4 v0, 0x1

    .line 807
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public WFDGetSubtitleStatus()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 811
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 815
    :goto_5
    return v1

    .line 813
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->WFDGetSubtitleStatus()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 814
    :catch_d
    move-exception v0

    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public WFDGetSuspendStatus()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 839
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 843
    :goto_5
    return v1

    .line 841
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->WFDGetSuspendStatus()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 842
    :catch_d
    move-exception v0

    .line 843
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public WFDPostSubtitle(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "subtitle"    # Ljava/lang/String;
    .param p2, "nFontSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 830
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 834
    :goto_5
    return v1

    .line 832
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/wfd/IWfdManager;->WFDPostSubtitle(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 833
    :catch_d
    move-exception v0

    .line 834
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public WFDPostSuspend(Ljava/lang/String;)Z
    .registers 5
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 858
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 862
    :goto_5
    return v1

    .line 860
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->WFDPostSuspend(Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 861
    :catch_d
    move-exception v0

    .line 862
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public WFDSetSubtitleStatus(Z)Z
    .registers 5
    .param p1, "bStatus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 820
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 824
    :goto_5
    return v1

    .line 822
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->WFDSetSubtitleStatus(Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 823
    :catch_d
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public WFDSetSuspendStatus(Z)Z
    .registers 5
    .param p1, "bStatus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 848
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 852
    :goto_5
    return v1

    .line 850
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->WFDSetSuspendStatus(Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 851
    :catch_d
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public disableWfd(Lcom/samsung/wfd/WfdManager$Channel;)V
    .registers 4
    .param p1, "c"    # Lcom/samsung/wfd/WfdManager$Channel;

    .prologue
    .line 607
    if-nez p1, :cond_3

    .line 609
    :goto_2
    return-void

    .line 608
    :cond_3
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_2
.end method

.method public enableWfd(Lcom/samsung/wfd/WfdManager$Channel;)V
    .registers 5
    .param p1, "c"    # Lcom/samsung/wfd/WfdManager$Channel;

    .prologue
    .line 588
    if-nez p1, :cond_3

    .line 599
    :goto_2
    return-void

    .line 590
    :cond_3
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    .line 591
    .local v0, "restrictionPolicy":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v0, :cond_1d

    .line 592
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isWifiDirectAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 593
    iget-object v1, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x22068

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_2

    .line 598
    :cond_1d
    iget-object v1, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x22065

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_2
.end method

.method public getDisplayDeviceAddress()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 641
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 645
    :goto_5
    return-object v1

    .line 643
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getDisplayDeviceAddress()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 644
    :catch_d
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public getDisplayDeviceName()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 650
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 654
    :goto_5
    return-object v1

    .line 652
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getDisplayDeviceName()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 653
    :catch_d
    move-exception v0

    .line 654
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public getDisplayDeviceSecure()I
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 659
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 663
    :goto_5
    return v1

    .line 661
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getDisplayDeviceSecure()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 662
    :catch_d
    move-exception v0

    .line 663
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public getMessenger()Landroid/os/Messenger;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 920
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 924
    :goto_5
    return-object v1

    .line 922
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getMessenger()Landroid/os/Messenger;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 923
    :catch_d
    move-exception v0

    .line 924
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public getPreviousWifiState()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 695
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 699
    :goto_5
    return v1

    .line 697
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getPreviousWifiState()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 698
    :catch_d
    move-exception v0

    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 632
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 636
    :goto_5
    return-object v1

    .line 634
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 635
    :catch_d
    move-exception v0

    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public getWfdMode()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 904
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 908
    :goto_5
    return v1

    .line 906
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getWfdMode()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 907
    :catch_d
    move-exception v0

    .line 908
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public getWfdSinkResolution()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 798
    :goto_5
    return v1

    .line 796
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getWfdSinkResolution()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 797
    :catch_d
    move-exception v0

    .line 798
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public getWfdState()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 785
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 789
    :goto_5
    return v1

    .line 787
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->getWfdState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 788
    :catch_d
    move-exception v0

    .line 789
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public handleDown(I[I[I[I)V
    .registers 7
    .param p1, "pointers"    # I
    .param p2, "id"    # [I
    .param p3, "X"    # [I
    .param p4, "Y"    # [I

    .prologue
    .line 950
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_5

    .line 956
    :goto_4
    return-void

    .line 952
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/wfd/IWfdManager;->handleDown(I[I[I[I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 953
    :catch_b
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method public handleMove(I[I[I[I)V
    .registers 7
    .param p1, "pointers"    # I
    .param p2, "id"    # [I
    .param p3, "moveX"    # [I
    .param p4, "moveY"    # [I

    .prologue
    .line 940
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_5

    .line 946
    :goto_4
    return-void

    .line 942
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/wfd/IWfdManager;->handleMove(I[I[I[I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 943
    :catch_b
    move-exception v0

    .line 944
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method public handleUp(I[I[I[I)V
    .registers 7
    .param p1, "pointers"    # I
    .param p2, "id"    # [I
    .param p3, "X"    # [I
    .param p4, "Y"    # [I

    .prologue
    .line 960
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_5

    .line 966
    :goto_4
    return-void

    .line 962
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/wfd/IWfdManager;->handleUp(I[I[I[I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 963
    :catch_b
    move-exception v0

    .line 964
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)Lcom/samsung/wfd/WfdManager$Channel;
    .registers 9
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Lcom/samsung/wfd/WfdManager$ChannelListener;

    .prologue
    const/4 v2, 0x0

    .line 570
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 571
    .local v1, "messenger":Landroid/os/Messenger;
    if-nez v1, :cond_9

    move-object v0, v2

    .line 578
    :cond_8
    :goto_8
    return-object v0

    .line 573
    :cond_9
    new-instance v0, Lcom/samsung/wfd/WfdManager$Channel;

    invoke-direct {v0, p2, p3}, Lcom/samsung/wfd/WfdManager$Channel;-><init>(Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)V

    .line 574
    .local v0, "c":Lcom/samsung/wfd/WfdManager$Channel;
    iget-object v3, v0, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, v0, Lcom/samsung/wfd/WfdManager$Channel;->mHandler:Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, v2

    .line 578
    goto :goto_8
.end method

.method public isActiveUIBC()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 930
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 934
    :goto_5
    return v1

    .line 932
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->isActiveUIBC()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 933
    :catch_d
    move-exception v0

    .line 934
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public isDongleRenameAvailable()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 686
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 690
    :goto_5
    return v1

    .line 688
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->isDongleRenameAvailable()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 689
    :catch_d
    move-exception v0

    .line 690
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public isWfdEnabledPlayer()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 886
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 890
    :goto_5
    return v1

    .line 888
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->isWfdEnabledPlayer()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 889
    :catch_d
    move-exception v0

    .line 890
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public keyDown(II)V
    .registers 5
    .param p1, "key1"    # I
    .param p2, "key2"    # I

    .prologue
    .line 970
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_5

    .line 976
    :goto_4
    return-void

    .line 972
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/wfd/IWfdManager;->keyDown(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 973
    :catch_b
    move-exception v0

    .line 974
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method public keyUp(II)V
    .registers 5
    .param p1, "key1"    # I
    .param p2, "key2"    # I

    .prologue
    .line 980
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_5

    .line 986
    :goto_4
    return-void

    .line 982
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/wfd/IWfdManager;->keyUp(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 983
    :catch_b
    move-exception v0

    .line 984
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method public notifyContentFinish()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 877
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 881
    :goto_5
    return v1

    .line 879
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->notifyContentFinish()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 880
    :catch_d
    move-exception v0

    .line 881
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public notifyEnterHomeSyncApp()V
    .registers 3

    .prologue
    .line 990
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->notifyEnterHomeSyncApp()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 994
    :goto_5
    return-void

    .line 991
    :catch_6
    move-exception v0

    .line 992
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public notifyExitHomeSyncApp()V
    .registers 3

    .prologue
    .line 998
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->notifyExitHomeSyncApp()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1002
    :goto_5
    return-void

    .line 999
    :catch_6
    move-exception v0

    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public pauseRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .registers 4
    .param p1, "c"    # Lcom/samsung/wfd/WfdManager$Channel;

    .prologue
    .line 627
    if-nez p1, :cond_3

    .line 629
    :goto_2
    return-void

    .line 628
    :cond_3
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206e

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_2
.end method

.method public resumeRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .registers 4
    .param p1, "c"    # Lcom/samsung/wfd/WfdManager$Channel;

    .prologue
    .line 622
    if-nez p1, :cond_3

    .line 624
    :goto_2
    return-void

    .line 623
    :cond_3
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_2
.end method

.method public sendToWfdStartRTSP()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 759
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 763
    :goto_5
    return v1

    .line 761
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->sendToWfdStartRTSP()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 762
    :catch_d
    move-exception v0

    .line 763
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public sendToWfdStartRtspWithIface(Ljava/lang/String;)Z
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 749
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 753
    :goto_5
    return v1

    .line 751
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->sendToWfdStartRtspWithIface(Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 752
    :catch_d
    move-exception v0

    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .registers 4
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->setDeviceName(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 681
    :goto_6
    return v1

    .line 680
    :catch_7
    move-exception v0

    .line 681
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setDisplayDeviceAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->setDisplayDeviceAddress(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1010
    :goto_5
    return-void

    .line 1007
    :catch_6
    move-exception v0

    .line 1008
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setDisplayDeviceName(Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 1014
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->setDisplayDeviceName(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1018
    :goto_5
    return-void

    .line 1015
    :catch_6
    move-exception v0

    .line 1016
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setDisplayDeviceSecure(I)V
    .registers 4
    .param p1, "hdcp"    # I

    .prologue
    .line 668
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_5

    .line 674
    :goto_4
    return-void

    .line 670
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->setDisplayDeviceSecure(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 671
    :catch_b
    move-exception v0

    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method public setDisplayRotation(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 1022
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->setDisplayRotation(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1024
    :goto_6
    return v1

    .line 1023
    :catch_7
    move-exception v0

    .line 1024
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setSideSyncResolution(I)Z
    .registers 5
    .param p1, "bit"    # I

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 726
    :goto_5
    return v1

    .line 724
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->setSideSyncResolution(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 725
    :catch_d
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setWfdEnabled(I)Z
    .registers 5
    .param p1, "option"    # I

    .prologue
    const/4 v1, 0x0

    .line 713
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 717
    :goto_5
    return v1

    .line 715
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdEnabled(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 716
    :catch_d
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setWfdEnabledDialog(Z)Z
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 704
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 708
    :goto_5
    return v1

    .line 706
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdEnabledDialog(Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 707
    :catch_d
    move-exception v0

    .line 708
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setWfdEnabledPlayer(Z)Z
    .registers 5
    .param p1, "onetime"    # Z

    .prologue
    const/4 v1, 0x0

    .line 868
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 872
    :goto_5
    return v1

    .line 870
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdEnabledPlayer(Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 871
    :catch_d
    move-exception v0

    .line 872
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setWfdModeAlways()V
    .registers 3

    .prologue
    .line 895
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v1, :cond_5

    .line 901
    :goto_4
    return-void

    .line 897
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->setWfdModeAlways()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 898
    :catch_b
    move-exception v0

    .line 899
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method public setWfdRestart()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 767
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 771
    :goto_5
    return v1

    .line 769
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->setWfdRestart()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 770
    :catch_d
    move-exception v0

    .line 771
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setWfdRestartOption(I)Z
    .registers 5
    .param p1, "option"    # I

    .prologue
    const/4 v1, 0x0

    .line 776
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 780
    :goto_5
    return v1

    .line 778
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdRestartOption(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 779
    :catch_d
    move-exception v0

    .line 780
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setWfdTerminate()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 731
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 735
    :goto_5
    return v1

    .line 733
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2}, Lcom/samsung/wfd/IWfdManager;->setWfdTerminate()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 734
    :catch_d
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setWfdTerminateExt(Z)Z
    .registers 5
    .param p1, "intendedChangePath"    # Z

    .prologue
    const/4 v1, 0x0

    .line 740
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    if-nez v2, :cond_6

    .line 744
    :goto_5
    return v1

    .line 742
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v2, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdTerminateExt(Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 743
    :catch_d
    move-exception v0

    .line 744
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public startRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .registers 4
    .param p1, "c"    # Lcom/samsung/wfd/WfdManager$Channel;

    .prologue
    .line 612
    if-nez p1, :cond_3

    .line 614
    :goto_2
    return-void

    .line 613
    :cond_3
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206b

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_2
.end method

.method public stopRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .registers 4
    .param p1, "c"    # Lcom/samsung/wfd/WfdManager$Channel;

    .prologue
    .line 617
    if-nez p1, :cond_3

    .line 619
    :goto_2
    return-void

    .line 618
    :cond_3
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_2
.end method
