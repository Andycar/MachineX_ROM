.class public Lcom/android/settings/wifi/FreeWifiScanSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FreeWifiScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;,
        Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;
    }
.end annotation


# static fields
.field private static rssi:I

.field private static timeout:I


# instance fields
.field private SUPPLICANT_CONF_BKP_PATH:Ljava/lang/String;

.field private SUPPLICANT_CONF_PATH:Ljava/lang/String;

.field private accessPointsToConnect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/FreeWifiScanAccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private apIndex:I

.field private isInDialog:Z

.field private mAutoConnect:I

.field private mBlockScan:Z

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectOnlyOnce:Z

.field private mConnectableAps:Lcom/android/settings/ProgressCategory;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mContext:Landroid/content/Context;

.field private mDefaultAnsSettings:I

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mKeepConnectedSwitch:Landroid/preference/CheckBoxPreference;

.field private mLastScanResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mLastWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedApList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/FreeWifiScanAccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mScanPressed:Z

.field private mScanStateListener:Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;

.field private final mScanner:Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;

.field private mSsidForConnect:Ljava/lang/String;

.field private mSummaryListTriedAp:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserInputForConnect:Z

.field private mValidApList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/wifi/FreeWifiScanAccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

.field private previousSavedAp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field protected timeout_Handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/16 v0, -0x4b

    sput v0, Lcom/android/settings/wifi/FreeWifiScanSettings;->rssi:I

    .line 89
    const/16 v0, 0xd

    sput v0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    .line 91
    iput-boolean v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectOnlyOnce:Z

    .line 92
    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mDefaultAnsSettings:I

    .line 93
    iput v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mAutoConnect:I

    .line 94
    iput-boolean v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBlockScan:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    .line 98
    iput v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    .line 121
    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 122
    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    new-instance v0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;Lcom/android/settings/wifi/FreeWifiScanSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanner:Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;

    .line 125
    const-string v0, "/data/misc/wifi/wpa_supplicant.conf"

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->SUPPLICANT_CONF_PATH:Ljava/lang/String;

    .line 126
    const-string v0, "/data/misc/wifi/wpa_supplicant_copy.conf"

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->SUPPLICANT_CONF_BKP_PATH:Ljava/lang/String;

    .line 128
    iput-boolean v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->isInDialog:Z

    .line 1013
    new-instance v0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$16;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateConnectableApList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->setRefreshAction(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastScanResult:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/FreeWifiScanSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBlockScan:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/FreeWifiScanSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectOnlyOnce:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/FreeWifiScanSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/FreeWifiScanSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->saveAP(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/FreeWifiScanSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->setFreeWifiScanOpenApCheck(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/FreeWifiScanSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/FreeWifiScanSettings;->findAndUpdateOpenAp(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->isInDialog:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/FreeWifiScanSettings;)Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanStateListener:Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateUiConnecting()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mKeepConnectedSwitch:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateTitleAndProgressToDone()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateTitleAndProgressToScan()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->connectToOpenAp()V

    return-void
.end method

.method private connectToOpenAp()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 587
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBlockScan:Z

    .line 588
    const/4 v1, 0x0

    .line 589
    .local v1, "found":Z
    iget-boolean v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    if-eqz v5, :cond_0

    .line 590
    const-string v5, "FreeWifiScanSettings"

    const-string v6, "Scanning was interrupted due to manual connection failed, now Handled."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    .line 595
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 596
    .local v4, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v5, "FreeWifiScanSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "networkID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v5, "FreeWifiScanSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 600
    const-string v5, "FreeWifiScanSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accessPointsToConnect.size() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_6

    .line 602
    iget v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    if-lez v5, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-le v5, v10, :cond_3

    .line 604
    const-string v6, "FreeWifiScanSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removing ssid : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v3, 0x0

    .line 606
    .local v3, "isAvailableInConfig":Z
    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 607
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-nez v5, :cond_1

    .line 608
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 609
    const/4 v3, 0x1

    .line 614
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    if-nez v3, :cond_4

    .line 615
    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 622
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isAvailableInConfig":Z
    :cond_3
    :goto_0
    const-string v5, "FreeWifiScanSettings"

    const-string v6, "All Scanned AP tried, Now next scan results will be tried"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iput v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    .line 624
    iput-boolean v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBlockScan:Z

    .line 626
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/FreeWifiScanSettings$11;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$11;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 636
    iput-object v11, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    .line 702
    :goto_1
    return-void

    .line 617
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "isAvailableInConfig":Z
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0

    .line 641
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isAvailableInConfig":Z
    :cond_5
    const-string v5, "FreeWifiScanSettings"

    const-string v6, "All Scanned AP tried, Now next scan results will be tried"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iput v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    .line 643
    iput-boolean v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBlockScan:Z

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/FreeWifiScanSettings$12;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$12;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 654
    iput-object v11, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    goto :goto_1

    .line 658
    :cond_6
    if-nez v1, :cond_c

    .line 659
    const-string v6, "FreeWifiScanSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connecting to :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const-string v5, "FreeWifiScanSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AP index :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-boolean v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    if-nez v5, :cond_b

    .line 662
    iget v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    if-lez v5, :cond_9

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-le v5, v10, :cond_9

    .line 664
    const-string v6, "FreeWifiScanSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removing ssid : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v3, 0x0

    .line 666
    .restart local v3    # "isAvailableInConfig":Z
    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 667
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-nez v5, :cond_7

    .line 668
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 669
    const/4 v3, 0x1

    .line 674
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    if-nez v3, :cond_a

    .line 675
    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 684
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isAvailableInConfig":Z
    :cond_9
    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->generateOpenNetworkConfig()V

    .line 685
    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    .line 686
    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 687
    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    sget v6, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/FreeWifiScanSettings$13;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$13;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 677
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "isAvailableInConfig":Z
    :cond_a
    iget-object v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_2

    .line 681
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isAvailableInConfig":Z
    :cond_b
    iput-boolean v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    goto :goto_2

    .line 699
    :cond_c
    iget v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    .line 700
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->connectToOpenAp()V

    goto/16 :goto_1
.end method

.method private findAndUpdateOpenAp(Ljava/lang/String;I)V
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const v6, 0x7f0a1e8e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 540
    const-string v1, "FreeWifiScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value received : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ssid is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, p1}, Lcom/android/settings/ProgressCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 543
    .local v0, "pref":Landroid/preference/Preference;
    const-string v1, "FreeWifiScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRINTING PREF Key that will be searched for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pref is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-eqz v0, :cond_9

    .line 546
    const-string v1, "FreeWifiScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PREF found --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    if-nez p2, :cond_1

    .line 548
    const v1, 0x7f0a1e97

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 550
    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 552
    .restart local v0    # "pref":Landroid/preference/Preference;
    :cond_1
    if-ne p2, v5, :cond_2

    .line 553
    const v1, 0x7f0a1e90

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 554
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 556
    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 557
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 558
    const v1, 0x7f0a1e8c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 560
    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 561
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 562
    const v1, 0x7f0a1e91

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 564
    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 565
    :cond_4
    const/4 v1, 0x4

    if-ne p2, v1, :cond_6

    .line 566
    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 567
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 568
    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_5
    const-string v1, "FreeWifiScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT ABLE TO CONNECT to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 570
    :cond_6
    const/4 v1, 0x5

    if-ne p2, v1, :cond_7

    .line 571
    const v1, 0x7f0a0351

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 572
    const-string v1, "FreeWifiScanSettings"

    const-string v2, "CONNECTED TO OPEN AP OF USER CHOICE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 573
    :cond_7
    const/4 v1, 0x6

    if-ne p2, v1, :cond_8

    .line 574
    const v1, 0x7f0a1e99

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 576
    :cond_8
    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 577
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 578
    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 581
    :cond_9
    const-string v1, "FreeWifiScanSettings"

    const-string v2, "preference not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getIntentFilters()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 389
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 390
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v1, "android.net.wifi.OPEN_AP_CHECK_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    return-object v0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 919
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    const/4 v0, 0x1

    .line 929
    :goto_0
    return v0

    .line 921
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FT/PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 924
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FT/EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 927
    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    .line 929
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 932
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 939
    :cond_0
    :goto_0
    return v0

    .line 935
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 937
    goto :goto_0

    .line 939
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private saveAP(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .param p1, "mWifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 714
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 715
    .local v0, "ssid":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 716
    iget v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    if-lez v1, :cond_0

    .line 717
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSavedApList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    iget-object v4, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    const-string v1, "FreeWifiScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved AP :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into history list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    return-void
.end method

.method private saveAP(Landroid/net/wifi/WifiInfo;)V
    .locals 6
    .param p1, "mWifiinfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 705
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "ssid":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 707
    iget v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    if-lez v1, :cond_0

    .line 708
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSavedApList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    iget-object v4, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    const-string v1, "FreeWifiScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved AP :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into history list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    return-void
.end method

.method private setFreeWifiScanOpenApCheck(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 863
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 864
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 865
    const-string v2, "enable"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 869
    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 870
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xdd

    iput v2, v1, Landroid/os/Message;->what:I

    .line 871
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 872
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 873
    return-void

    .line 867
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const-string v2, "enable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setRefreshAction(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "refresh"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 910
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 911
    iget-boolean v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->isInDialog:Z

    if-eqz v2, :cond_1

    .line 912
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanStateListener:Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;->onScanCompleted(Ljava/lang/Boolean;)V

    .line 916
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 912
    goto :goto_0

    .line 914
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mOptionsMenu:Landroid/view/Menu;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private updateConnectableApList()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 475
    const-string v9, "FreeWifiScanSettings"

    const-string v10, "updateConnectableApList"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 477
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->clear()V

    .line 478
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->clear()V

    .line 479
    iput-boolean v11, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    .line 481
    iput v11, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->apIndex:I

    .line 483
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastScanResult:Ljava/util/List;

    .line 486
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastScanResult:Ljava/util/List;

    if-eqz v9, :cond_1

    .line 487
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastScanResult:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 488
    .local v6, "result":Landroid/net/wifi/ScanResult;
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v9

    if-nez v9, :cond_0

    iget v9, v6, Landroid/net/wifi/ScanResult;->level:I

    sget v10, Lcom/android/settings/wifi/FreeWifiScanSettings;->rssi:I

    if-le v9, v10, :cond_0

    .line 489
    iget-object v5, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 490
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 491
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    new-instance v10, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    iget-object v11, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v6}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v9, v5, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 497
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 498
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 499
    new-instance v1, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 501
    .local v1, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/wifi/FreeWifiScanAccessPoint;>;"
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    .line 503
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 505
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 506
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    .line 507
    .local v0, "accessPoint":Lcom/android/settings/wifi/FreeWifiScanAccessPoint;
    iget-object v9, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->bssid:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 508
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->update(Landroid/net/wifi/WifiInfo;)V

    goto :goto_1

    .line 513
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/FreeWifiScanAccessPoint;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 514
    const/4 v3, 0x0

    .line 516
    .local v3, "j":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    .line 517
    .restart local v0    # "accessPoint":Lcom/android/settings/wifi/FreeWifiScanAccessPoint;
    const-string v9, "FreeWifiScanSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Accesspoint data : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 519
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    invoke-virtual {v9, v3}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 521
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    iget-object v10, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 522
    const-string v9, "FreeWifiScanSettings"

    const-string v10, "updating preference list with title and summary !"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 524
    .local v7, "ssid":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    iget-object v10, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 525
    .local v8, "value":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lcom/android/settings/wifi/FreeWifiScanSettings$10;

    invoke-direct {v10, p0, v7, v8}, Lcom/android/settings/wifi/FreeWifiScanSettings$10;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 533
    .end local v7    # "ssid":Ljava/lang/String;
    .end local v8    # "value":I
    :cond_4
    invoke-virtual {v0}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->generateOpenNetworkConfig()V

    move v3, v4

    .line 534
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 536
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/FreeWifiScanAccessPoint;
    .end local v1    # "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/wifi/FreeWifiScanAccessPoint;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "j":I
    :cond_5
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 886
    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 888
    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 892
    const-string v3, "FreeWifiScanSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changing order:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 894
    .local v1, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/wifi/FreeWifiScanAccessPoint;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    .line 895
    .local v0, "accessPoint":Lcom/android/settings/wifi/FreeWifiScanAccessPoint;
    iget-object v3, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->bssid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 896
    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 900
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/FreeWifiScanAccessPoint;
    .end local v1    # "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/wifi/FreeWifiScanAccessPoint;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private updateTitleAndProgressToDone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 805
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 806
    return-void
.end method

.method private updateTitleAndProgressToScan()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 799
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f0a1e94

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 800
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 801
    return-void
.end method

.method private updateUiConnecting()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 384
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f0a1e98

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 386
    return-void
.end method

.method private updateUserInputForConnect(Ljava/lang/String;)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string v0, "FreeWifiScanSettings"

    const-string v1, "updateUserInputForConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/FreeWifiScanSettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/FreeWifiScanSettings$7;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method


# virtual methods
.method protected handleReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 397
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "action":Ljava/lang/String;
    const-string v6, "FreeWifiScanSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleReceivedEvent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 401
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 406
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 410
    :cond_2
    iget-boolean v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    if-eqz v6, :cond_0

    .line 411
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 412
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 413
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 414
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 415
    const-string v6, "wifiInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiInfo;

    .line 416
    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v5, :cond_3

    .line 417
    const-string v6, "FreeWifiScanSettings"

    const-string v7, "wifiinfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iput-boolean v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 426
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    const-string v6, "android.net.wifi.OPEN_AP_CHECK_RESULT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 427
    const-string v6, "FreeWifiScanSettings"

    const-string v7, "received intent FREE_WIFI_SCAN_OPEN_AP_CHECK_RESULT"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v6, "wifiInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiInfo;

    .line 429
    .local v2, "mInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "ssid":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_5

    .line 431
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 432
    const-string v6, "FreeWifiScanSettings"

    const-string v7, "Time out has happenned for this SSID, do not update"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 436
    :cond_5
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 437
    const-string v6, "FreeWifiScanSettings"

    const-string v7, "completed open ap check result before timeout"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    const-string v6, "free_wifi_scan_open_network_status"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 444
    .local v4, "value":I
    const-string v6, "FreeWifiScanSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssid received :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v6, "FreeWifiScanSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bssid received :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    iget v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mAutoConnect:I

    if-ne v6, v10, :cond_7

    .line 449
    const-string v6, "FreeWifiScanSettings"

    const-string v7, "FOUND internet AP !!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iput-boolean v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 440
    .end local v4    # "value":I
    :cond_6
    const-string v6, "FreeWifiScanSettings"

    const-string v7, "timeout already handled, ignore the open ap result"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 455
    .restart local v4    # "value":I
    :cond_7
    iget-boolean v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    if-eqz v6, :cond_8

    .line 456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 457
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateUserInputForConnect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/FreeWifiScanSettings;->saveAP(Landroid/net/wifi/WifiInfo;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/FreeWifiScanSettings$9;

    invoke-direct {v7, p0, v3, v4}, Lcom/android/settings/wifi/FreeWifiScanSettings$9;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 469
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->connectToOpenAp()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 178
    const-string v2, "FreeWifiScanSettings"

    const-string v3, "onActivityCreated"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    .line 181
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 183
    new-instance v2, Lcom/android/settings/wifi/FreeWifiScanSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$2;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 192
    new-instance v2, Lcom/android/settings/wifi/FreeWifiScanSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$3;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 203
    new-instance v2, Lcom/android/settings/wifi/FreeWifiScanSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$4;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 214
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mValidApList:Ljava/util/LinkedHashMap;

    .line 215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSavedApList:Ljava/util/ArrayList;

    .line 216
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    iput-boolean v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->isInDialog:Z

    .line 219
    iget-boolean v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->isInDialog:Z

    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanStateListener:Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;

    new-instance v3, Lcom/android/settings/wifi/FreeWifiScanSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$5;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    iput-object v3, v2, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->scanListner:Lcom/android/settings/wifi/FreeWifiScanPickerDialog$OnScanButtonPressed;

    .line 238
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    .line 239
    const-string v2, "FreeWifiScanSettings"

    const-string v3, "PRINTING LIST OF PREVIOUS NETWORKS CONFIGURED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 242
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    const-string v2, "FreeWifiScanSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSID of saved network"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 235
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/FreeWifiScanSettings;->setHasOptionsMenu(Z)V

    goto :goto_0

    .line 247
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/FreeWifiScanSettings;->setFreeWifiScanOpenApCheck(Z)V

    .line 248
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/settings/wifi/FreeWifiScanSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$6;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 255
    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getIntentFilters()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 257
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const-string v0, "FreeWifiScanSettings"

    const-string v3, "onCreate"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->setRetainInstance(Z)V

    .line 147
    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->addPreferencesFromResource(I)V

    .line 148
    const-string v0, "connectable_ap"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    .line 151
    const-string v0, "wifi_free_wifi_scan_keep_connected_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mKeepConnectedSwitch:Landroid/preference/CheckBoxPreference;

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectableAps:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 156
    new-instance v0, Lcom/android/settings/wifi/FreeWifiScanSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$1;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_free_wifi_scan_auto_connection_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mAutoConnect:I

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mKeepConnectedSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mKeepConnectedSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_free_wifi_scan_auto_connection_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 171
    goto :goto_0
.end method

.method public onDetach()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 811
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/settings/wifi/FreeWifiScanPickerDialog;->isLaunched:Ljava/lang/Boolean;

    .line 812
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 813
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 814
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 815
    const/4 v4, 0x0

    .line 816
    .local v4, "isAvailableInConfig":Z
    const/4 v5, -0x1

    .line 817
    .local v5, "network_id":I
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 818
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    if-nez v6, :cond_0

    .line 819
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 820
    const/4 v4, 0x1

    .line 825
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    if-nez v4, :cond_4

    .line 826
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 827
    .local v1, "current_configured_networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 828
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 829
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 833
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const-string v6, "FreeWifiScanSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v6, -0x1

    if-le v5, v6, :cond_4

    iget-boolean v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    if-eqz v6, :cond_4

    .line 835
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v5, v7}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 839
    .end local v1    # "current_configured_networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isAvailableInConfig":Z
    .end local v5    # "network_id":I
    :cond_4
    iget-boolean v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    if-eqz v6, :cond_5

    .line 840
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 842
    :cond_5
    const-string v6, "FreeWifiScanSettings"

    const-string v7, "reconnecting again in settings screen"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 844
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 846
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/FreeWifiScanSettings;->setFreeWifiScanOpenApCheck(Z)V

    .line 848
    const-string v6, "FreeWifiScanSettings"

    const-string v7, "Enabling all the networks with DISABLE_NETWORK_BY_FWS"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 850
    .local v2, "current_networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_7

    .line 851
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 852
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v7, 0xf

    if-ne v6, v7, :cond_6

    .line 853
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v9}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_0

    .line 857
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    const-string v6, "FreeWifiScanSettings"

    const-string v7, "onDetach gets called"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string v6, "FreeWifiScanSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current network ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "FreeWifiScanSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 269
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 284
    const-string v8, "FreeWifiScanSettings"

    const-string v9, "onPreferenceTreeClick"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v8, "wifi_free_wifi_scan_keep_connected_switch"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, p2

    .line 287
    check-cast v8, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v6, 0x1

    .line 288
    .local v6, "mCheck":Z
    :goto_0
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mKeepConnectedSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_free_wifi_scan_auto_connection_mode"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_free_wifi_scan_auto_connection_mode"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mAutoConnect:I

    .line 379
    .end local v6    # "mCheck":Z
    :goto_2
    const-string v8, "FreeWifiScanSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WIFI_FREE_WIFI_SCAN_AUTO_CONNECTION_MODE id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_free_wifi_scan_auto_connection_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v8, 0x1

    :goto_3
    return v8

    .line 287
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 289
    .end local p2    # "preference":Landroid/preference/Preference;
    .restart local v6    # "mCheck":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 300
    .end local v6    # "mCheck":Z
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_2
    iget-boolean v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 301
    const/4 v8, 0x1

    goto :goto_3

    .line 304
    :cond_3
    const-string v8, "FreeWifiScanSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "user wants to connect to open AP"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    .line 310
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 311
    const-string v8, "FreeWifiScanSettings"

    const-string v9, "User wants to connect to AP not updated with summary"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    const v9, 0x7f0a1e93

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 313
    const/4 v8, 0x1

    goto :goto_3

    .line 314
    :cond_4
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 315
    const-string v8, "FreeWifiScanSettings"

    const-string v9, "user wants to connect to AP with no free internet"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    const v9, 0x7f0a1e92

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 317
    const/4 v8, 0x1

    goto :goto_3

    .line 318
    :cond_5
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSummaryListTriedAp:Ljava/util/LinkedHashMap;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 319
    const-string v8, "FreeWifiScanSettings"

    const-string v9, "user wants to connect to AP with no free internet"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mContext:Landroid/content/Context;

    const v9, 0x7f0a1e92

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 321
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 324
    :cond_6
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mUserInputForConnect:Z

    .line 325
    const/4 v5, 0x0

    .line 326
    .local v5, "k":I
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    .line 327
    .local v0, "accessPoint":Lcom/android/settings/wifi/FreeWifiScanAccessPoint;
    iget-object v8, v0, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->ssid:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mSsidForConnect:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 334
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/FreeWifiScanAccessPoint;
    :cond_7
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v8, :cond_c

    .line 335
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 336
    const/4 v4, 0x0

    .line 337
    .local v4, "isAvailableInConfig":Z
    const/4 v7, -0x1

    .line 338
    .local v7, "network_id":I
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 339
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    if-nez v8, :cond_8

    .line 340
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 341
    const/4 v4, 0x1

    .line 346
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    if-nez v4, :cond_e

    .line 347
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 348
    .local v2, "current_configured_networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 349
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 350
    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 354
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    const-string v8, "FreeWifiScanSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "network id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v8, -0x1

    if-le v7, v8, :cond_c

    .line 356
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v8, v7, v9}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 363
    .end local v2    # "current_configured_networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4    # "isAvailableInConfig":Z
    .end local v7    # "network_id":I
    :cond_c
    :goto_5
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v8}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->generateOpenNetworkConfig()V

    .line 364
    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;

    invoke-virtual {v8}, Lcom/android/settings/wifi/FreeWifiScanAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v9, v8, v10}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 365
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    const/4 v9, 0x1

    sget v10, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout:I

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 367
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 369
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/FreeWifiScanSettings;->setFreeWifiScanOpenApCheck(Z)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/android/settings/wifi/FreeWifiScanSettings$8;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$8;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 329
    .restart local v0    # "accessPoint":Lcom/android/settings/wifi/FreeWifiScanAccessPoint;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 330
    goto/16 :goto_4

    .line 359
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/FreeWifiScanAccessPoint;
    .restart local v4    # "isAvailableInConfig":Z
    .restart local v7    # "network_id":I
    :cond_e
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_5
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 261
    const-string v0, "FreeWifiScanSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 263
    return-void
.end method

.method public scanPressed()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 724
    const-string v8, "FreeWifiScanSettings"

    const-string v9, "SCAN BUTTON PRESSED ! FRESH SCAN WILL BE STARTED!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iput-boolean v10, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z

    .line 727
    const-string v8, "FreeWifiScanSettings"

    const-string v9, "Disabling all the networks"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 729
    .local v6, "msg":Landroid/os/Message;
    const/16 v8, 0xcb

    iput v8, v6, Landroid/os/Message;->what:I

    .line 730
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 731
    .local v0, "args":Landroid/os/Bundle;
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 732
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 733
    .local v3, "current_networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 734
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v8, v10, :cond_0

    .line 735
    const-string v8, "netId"

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 736
    const-string v8, "reason"

    const/16 v9, 0xf

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0

    .line 743
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    .line 744
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->accessPointsToConnect:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 747
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/android/settings/wifi/FreeWifiScanSettings$14;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$14;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 756
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->timeout_Handler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 758
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v8, :cond_7

    .line 759
    const/4 v5, 0x0

    .line 760
    .local v5, "isAvailableInConfig":Z
    const/4 v7, -0x1

    .line 761
    .local v7, "network_id":I
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 762
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    if-nez v8, :cond_3

    .line 763
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 764
    const/4 v5, 0x1

    .line 769
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    if-nez v5, :cond_8

    .line 770
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 771
    .local v2, "current_configured_networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 772
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 773
    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 777
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    const-string v8, "FreeWifiScanSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "network id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v8, -0x1

    if-le v7, v8, :cond_7

    .line 779
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v9, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v8, v7, v9}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 785
    .end local v2    # "current_configured_networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v5    # "isAvailableInConfig":Z
    .end local v7    # "network_id":I
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->updateConnectableApList()V

    .line 787
    const-string v8, "FreeWifiScanSettings"

    const-string v9, "connecting to first AP"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iput-boolean v11, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mConnectOnlyOnce:Z

    .line 790
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/settings/wifi/FreeWifiScanSettings$15;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$15;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 796
    return-void

    .line 782
    .restart local v5    # "isAvailableInConfig":Z
    .restart local v7    # "network_id":I
    :cond_8
    iget-object v8, p0, Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_1
.end method
