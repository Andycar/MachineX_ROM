.class public Lcom/android/systemui/statusbar/policy/WifiAccessPointController;
.super Ljava/lang/Object;
.source "WifiAccessPointController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ICONS:[I

.field private static final TAG:Ljava/lang/String; = "WifiAccessPointController"


# instance fields
.field private final mByStrength:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;

.field private mScanning:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->ICONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02013e
        0x7f020146
        0x7f020147
        0x7f020148
        0x7f020149
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;Lcom/android/systemui/statusbar/policy/WifiAccessPointController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mReceiver:Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;

    .line 159
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$2;-><init>(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mByStrength:Ljava/util/Comparator;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/WifiAccessPointController;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mScanning:Z

    return p1
.end method

.method private fireCallback([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V
    .locals 3
    .param p1, "aps"    # [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;

    .line 104
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;->onAccessPointsChanged([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V

    goto :goto_0

    .line 106
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;
    :cond_0
    return-void
.end method

.method private getConfiguredNetworksBySsid()Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    sget-object v3, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    .line 125
    :cond_1
    return-object v3

    .line 121
    :cond_2
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 122
    .local v3, "rt":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 123
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getConnectedNetworkId()I
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 115
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 109
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "v":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private updateAccessPoints()V
    .locals 14

    .prologue
    const/4 v12, -0x1

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->getConnectedNetworkId()I

    move-result v4

    .line 131
    .local v4, "connectedNetworkId":I
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 132
    .local v8, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->getConfiguredNetworksBySsid()Landroid/util/ArrayMap;

    move-result-object v3

    .line 134
    .local v3, "configured":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v1, "aps":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 136
    .local v10, "ssids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 137
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v7, :cond_0

    .line 140
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 141
    .local v9, "ssid":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 142
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 143
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 145
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v11, v7, Landroid/net/wifi/ScanResult;->level:I

    sget-object v13, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->ICONS:[I

    array-length v13, v13

    invoke-static {v11, v13}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v6

    .line 146
    .local v6, "level":I
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;-><init>()V

    .line 147
    .local v0, "ap":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;
    if-eqz v2, :cond_1

    iget v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :goto_1
    iput v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->networkId:I

    .line 148
    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->ssid:Ljava/lang/String;

    .line 149
    sget-object v11, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->ICONS:[I

    aget v11, v11, v6

    iput v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->iconId:I

    .line 150
    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->networkId:I

    if-eq v11, v12, :cond_2

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->networkId:I

    if-ne v11, v4, :cond_2

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->isConnected:Z

    .line 152
    iput v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->level:I

    .line 153
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v11, v12

    .line 147
    goto :goto_1

    .line 150
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 155
    .end local v0    # "ap":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "level":I
    .end local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v9    # "ssid":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mByStrength:Ljava/util/Comparator;

    invoke-static {v1, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    invoke-interface {v1, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->fireCallback([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V

    .line 157
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mReceiver:Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->setListening(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V
    .locals 3
    .param p1, "ap"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->networkId:I

    if-gez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->networkId:I

    new-instance v2, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$1;-><init>(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mReceiver:Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->setListening(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public scan()V
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mScanning:Z

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->mScanning:Z

    goto :goto_0
.end method
